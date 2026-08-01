                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#=======================================================================================================================
#  ')A+B' ? POS(0) BAL RPOS(0)     :S(Y1)F(N1)
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 176
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_match_head_α
n0_lit_string_β:
                        add              rsp, 16
                        add              rsp, 176
                                                                                        jmp   n35_lit_string_α
.Lx47_0:
                        .quad            .Lx47_0_s
.Lx47_0_s:
                        .string          ")A+B"
#-----------------------------------------------------------------------------------------------------------------------
n1_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 64], r13
                        mov              qword ptr [rsp + 72], r14
                        mov              qword ptr [rsp + 80], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 88], rax
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        mov              qword ptr [r10 + 8], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r10 + 16], rax
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx49_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n2_match_sequence_α
n1_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx49_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx49_1
                                                                                        jmp   .Lx49_0
.Lx49_1:
                        mov              r10, qword ptr [1879048192]
.Lx49_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx49_2
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 64]
                        mov              r14, qword ptr [rsp + 72]
                        mov              r15, qword ptr [rsp + 80]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 88]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 176
                                                                                        jmp   n35_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_match_sequence_α:
                                                                                        jmp   n31_lit_integer_α
n2_match_sequence_as:
                                                                                        jmp   n3_match_release_α
n2_match_sequence_β:
                                                                                        jmp   n29_match_rpos_β
n2_match_sequence_af:
                                                                                        jmp   n1_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n3_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx53_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx53_9
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx53_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx53_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx53_1:
                        test             rax, rax
                                                                                        je    .Lx53_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx53_3]
                        lea              rdx, [rip + .Lx53_4]
                                                                                        jmp   rax
.Lx53_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx53_1
.Lx53_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx53_1
.Lx53_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx53_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx53_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 64]
                        mov              r14, qword ptr [rsp + 72]
                        mov              r15, qword ptr [rsp + 80]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 88]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 176
                                                                                        jmp   n4_lit_string_α
#=======================================================================================================================
# Y1 OUTPUT = 'unbal1 MATCHED'     :(T2)
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n5_assign_α
n4_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n6_lit_string_α
.Lx54_0:
                        .quad            .Lx54_0_s
.Lx54_0_s:
                        .string          "unbal1 MATCHED"
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx55_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n6_lit_string_α
n5_assign_β:
                        add              rsp, 16
                                                                                        jmp   n6_lit_string_α
.Lx55_0:
                        .quad            .Lx55_0_s
.Lx55_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# T2 '(A*(B+)' ? POS(0) BAL RPOS(0) :S(Y2)F(N2)
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        sub              rsp, 256
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n7_match_head_α
n6_lit_string_β:
                        add              rsp, 16
                        add              rsp, 256
                                                                                        jmp   n40_lit_string_α
.Lx56_0:
                        .quad            .Lx56_0_s
.Lx56_0_s:
                        .string          "(A*(B+)"
#-----------------------------------------------------------------------------------------------------------------------
n7_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 160], r13
                        mov              qword ptr [rsp + 168], r14
                        mov              qword ptr [rsp + 176], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 184], rax
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        mov              qword ptr [r10 + 8], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r10 + 16], rax
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx58_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n8_match_sequence_α
n7_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx58_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx58_1
                                                                                        jmp   .Lx58_0
.Lx58_1:
                        mov              r10, qword ptr [1879048192]
.Lx58_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx58_2
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 160]
                        mov              r14, qword ptr [rsp + 168]
                        mov              r15, qword ptr [rsp + 176]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 184]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 256
                                                                                        jmp   n40_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n8_match_sequence_α:
                                                                                        jmp   n26_lit_integer_α
n8_match_sequence_as:
                                                                                        jmp   n9_match_release_α
n8_match_sequence_β:
                                                                                        jmp   n24_match_rpos_β
n8_match_sequence_af:
                                                                                        jmp   n7_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n9_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx62_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx62_9
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx62_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx62_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx62_1:
                        test             rax, rax
                                                                                        je    .Lx62_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx62_3]
                        lea              rdx, [rip + .Lx62_4]
                                                                                        jmp   rax
.Lx62_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx62_1
.Lx62_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx62_1
.Lx62_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx62_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx62_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 160]
                        mov              r14, qword ptr [rsp + 168]
                        mov              r15, qword ptr [rsp + 176]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 184]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 256
                                                                                        jmp   n10_lit_string_α
#=======================================================================================================================
# Y2 OUTPUT = 'unbal2 MATCHED'     :(T3)
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n11_assign_α
n10_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n12_lit_string_α
.Lx63_0:
                        .quad            .Lx63_0_s
.Lx63_0_s:
                        .string          "unbal2 MATCHED"
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx64_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n12_lit_string_α
n11_assign_β:
                        add              rsp, 16
                                                                                        jmp   n12_lit_string_α
.Lx64_0:
                        .quad            .Lx64_0_s
.Lx64_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# T3 '(X))' ? POS(0) BAL RPOS(0)   :S(Y3)F(N3)
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        sub              rsp, 448
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n13_match_head_α
n12_lit_string_β:
                        add              rsp, 16
                        add              rsp, 448
                                                                                        jmp   n45_lit_string_α
.Lx65_0:
                        .quad            .Lx65_0_s
.Lx65_0_s:
                        .string          "(X))"
#-----------------------------------------------------------------------------------------------------------------------
n13_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 352], r13
                        mov              qword ptr [rsp + 360], r14
                        mov              qword ptr [rsp + 368], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 376], rax
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        mov              qword ptr [r10 + 8], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r10 + 16], rax
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx67_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n14_match_sequence_α
n13_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx67_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx67_1
                                                                                        jmp   .Lx67_0
.Lx67_1:
                        mov              r10, qword ptr [1879048192]
.Lx67_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx67_2
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 352]
                        mov              r14, qword ptr [rsp + 360]
                        mov              r15, qword ptr [rsp + 368]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 376]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 448
                                                                                        jmp   n45_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n14_match_sequence_α:
                                                                                        jmp   n21_lit_integer_α
n14_match_sequence_as:
                                                                                        jmp   n15_match_release_α
n14_match_sequence_β:
                                                                                        jmp   n19_match_rpos_β
n14_match_sequence_af:
                                                                                        jmp   n13_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n15_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx71_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx71_9
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx71_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx71_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx71_1:
                        test             rax, rax
                                                                                        je    .Lx71_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx71_3]
                        lea              rdx, [rip + .Lx71_4]
                                                                                        jmp   rax
.Lx71_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx71_1
.Lx71_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx71_1
.Lx71_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx71_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx71_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 352]
                        mov              r14, qword ptr [rsp + 360]
                        mov              r15, qword ptr [rsp + 368]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 376]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 448
                                                                                        jmp   n16_lit_string_α
#=======================================================================================================================
# Y3 OUTPUT = 'unbal3 MATCHED'     :(END)
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n17_assign_α
n16_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx72_0:
                        .quad            .Lx72_0_s
.Lx72_0_s:
                        .string          "unbal3 MATCHED"
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx73_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
n17_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx73_0:
                        .quad            .Lx73_0_s
.Lx73_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:
                        mov              qword ptr [rsp + 464], 6
                        mov              rax, qword ptr [rip + .Lx74_0]
                        mov              qword ptr [rsp + 472], rax
                                                                                        jmp   n19_match_rpos_α
n18_lit_integer_β:
                                                                                        jmp   n20_match_bal_β
.Lx74_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n19_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n20_match_bal_β
                                                                                        jmp   n15_match_release_α
n19_match_rpos_β:
                                                                                        jmp   n20_match_bal_β
#-----------------------------------------------------------------------------------------------------------------------
n20_match_bal_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 48], 0
                        mov              eax, r14d
                        mov              dword ptr [rsp + 52], eax
                        mov              dword ptr [rsp + 56], 0
n20_match_bal_β:
.Lx77_0:
                        mov              eax, dword ptr [rsp + 52]
                        add              eax, dword ptr [rsp + 48]
                        cmp              eax, r15d
                                                                                        jge   .Lx77_3
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        add              dword ptr [rsp + 48], 1
                        mov              edx, dword ptr [rsp + 56]
                        cmp              esi, 40
                                                                                        jne   .Lx77_1
                        add              edx, 1
                                                                                        jmp   .Lx77_2
.Lx77_1:
                        cmp              esi, 41
                                                                                        jne   .Lx77_2
                        sub              edx, 1
                        cmp              edx, 0
                                                                                        jl    .Lx77_3
.Lx77_2:
                        mov              dword ptr [rsp + 56], edx
                        test             edx, edx
                                                                                        jne   .Lx77_0
                        mov              eax, dword ptr [rsp + 52]
                        add              eax, dword ptr [rsp + 48]
                        mov              r14d, eax
                                                                                        jmp   n18_lit_integer_α
.Lx77_3:
                        mov              eax, dword ptr [rsp + 52]
                        mov              r14d, eax
                        add              rsp, 16
                                                                                        jmp   n13_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:
                        mov              qword ptr [rsp + 432], 6
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rsp + 440], rax
                                                                                        jmp   n22_match_pos_α
n21_lit_integer_β:
                                                                                        jmp   n13_match_head_β
.Lx78_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n22_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n13_match_head_β
                                                                                        jmp   n20_match_bal_α
n22_match_pos_β:
                                                                                        jmp   n13_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_integer_α:
                        mov              qword ptr [rsp + 272], 6
                        mov              rax, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rsp + 280], rax
                                                                                        jmp   n24_match_rpos_α
n23_lit_integer_β:
                                                                                        jmp   n25_match_bal_β
.Lx80_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n24_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n25_match_bal_β
                                                                                        jmp   n9_match_release_α
n24_match_rpos_β:
                                                                                        jmp   n25_match_bal_β
#-----------------------------------------------------------------------------------------------------------------------
n25_match_bal_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 48], 0
                        mov              eax, r14d
                        mov              dword ptr [rsp + 52], eax
                        mov              dword ptr [rsp + 56], 0
n25_match_bal_β:
.Lx83_0:
                        mov              eax, dword ptr [rsp + 52]
                        add              eax, dword ptr [rsp + 48]
                        cmp              eax, r15d
                                                                                        jge   .Lx83_3
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        add              dword ptr [rsp + 48], 1
                        mov              edx, dword ptr [rsp + 56]
                        cmp              esi, 40
                                                                                        jne   .Lx83_1
                        add              edx, 1
                                                                                        jmp   .Lx83_2
.Lx83_1:
                        cmp              esi, 41
                                                                                        jne   .Lx83_2
                        sub              edx, 1
                        cmp              edx, 0
                                                                                        jl    .Lx83_3
.Lx83_2:
                        mov              dword ptr [rsp + 56], edx
                        test             edx, edx
                                                                                        jne   .Lx83_0
                        mov              eax, dword ptr [rsp + 52]
                        add              eax, dword ptr [rsp + 48]
                        mov              r14d, eax
                                                                                        jmp   n23_lit_integer_α
.Lx83_3:
                        mov              eax, dword ptr [rsp + 52]
                        mov              r14d, eax
                        add              rsp, 16
                                                                                        jmp   n7_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:
                        mov              qword ptr [rsp + 240], 6
                        mov              rax, qword ptr [rip + .Lx84_0]
                        mov              qword ptr [rsp + 248], rax
                                                                                        jmp   n27_match_pos_α
n26_lit_integer_β:
                                                                                        jmp   n7_match_head_β
.Lx84_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n27_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n7_match_head_β
                                                                                        jmp   n25_match_bal_α
n27_match_pos_β:
                                                                                        jmp   n7_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:
                        mov              qword ptr [rsp + 192], 6
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n29_match_rpos_α
n28_lit_integer_β:
                                                                                        jmp   n30_match_bal_β
.Lx86_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n29_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n30_match_bal_β
                                                                                        jmp   n3_match_release_α
n29_match_rpos_β:
                                                                                        jmp   n30_match_bal_β
#-----------------------------------------------------------------------------------------------------------------------
n30_match_bal_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 48], 0
                        mov              eax, r14d
                        mov              dword ptr [rsp + 52], eax
                        mov              dword ptr [rsp + 56], 0
n30_match_bal_β:
.Lx89_0:
                        mov              eax, dword ptr [rsp + 52]
                        add              eax, dword ptr [rsp + 48]
                        cmp              eax, r15d
                                                                                        jge   .Lx89_3
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        add              dword ptr [rsp + 48], 1
                        mov              edx, dword ptr [rsp + 56]
                        cmp              esi, 40
                                                                                        jne   .Lx89_1
                        add              edx, 1
                                                                                        jmp   .Lx89_2
.Lx89_1:
                        cmp              esi, 41
                                                                                        jne   .Lx89_2
                        sub              edx, 1
                        cmp              edx, 0
                                                                                        jl    .Lx89_3
.Lx89_2:
                        mov              dword ptr [rsp + 56], edx
                        test             edx, edx
                                                                                        jne   .Lx89_0
                        mov              eax, dword ptr [rsp + 52]
                        add              eax, dword ptr [rsp + 48]
                        mov              r14d, eax
                                                                                        jmp   n28_lit_integer_α
.Lx89_3:
                        mov              eax, dword ptr [rsp + 52]
                        mov              r14d, eax
                        add              rsp, 16
                                                                                        jmp   n1_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:
                        mov              qword ptr [rsp + 160], 6
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rsp + 168], rax
                                                                                        jmp   n32_match_pos_α
n31_lit_integer_β:
                                                                                        jmp   n1_match_head_β
.Lx90_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n32_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n1_match_head_β
                                                                                        jmp   n30_match_bal_α
n32_match_pos_β:
                                                                                        jmp   n1_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n33_goto_α:
                                                                                        jmp   n4_lit_string_α
n33_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n34_goto_α:
                                                                                        jmp   n35_lit_string_α
n34_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# N1 OUTPUT = 'unbal1 rejected'
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n36_assign_α
n35_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n6_lit_string_α
.Lx94_0:
                        .quad            .Lx94_0_s
.Lx94_0_s:
                        .string          "unbal1 rejected"
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx95_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n6_lit_string_α
n36_assign_β:
                        add              rsp, 16
                                                                                        jmp   n6_lit_string_α
.Lx95_0:
                        .quad            .Lx95_0_s
.Lx95_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n37_goto_α:
                                                                                        jmp   n6_lit_string_α
n37_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n38_goto_α:
                                                                                        jmp   n10_lit_string_α
n38_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n39_goto_α:
                                                                                        jmp   n40_lit_string_α
n39_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# N2 OUTPUT = 'unbal2 rejected'
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n41_assign_α
n40_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n12_lit_string_α
.Lx99_0:
                        .quad            .Lx99_0_s
.Lx99_0_s:
                        .string          "unbal2 rejected"
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx100_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n12_lit_string_α
n41_assign_β:
                        add              rsp, 16
                                                                                        jmp   n12_lit_string_α
.Lx100_0:
                        .quad            .Lx100_0_s
.Lx100_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n42_goto_α:
                                                                                        jmp   n12_lit_string_α
n42_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n43_goto_α:
                                                                                        jmp   n16_lit_string_α
n43_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n44_goto_α:
                                                                                        jmp   n45_lit_string_α
n44_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# N3 OUTPUT = 'unbal3 rejected'
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n46_assign_α
n45_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx104_0:
                        .quad            .Lx104_0_s
.Lx104_0_s:
                        .string          "unbal3 rejected"
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx105_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
n46_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx105_0:
                        .quad            .Lx105_0_s
.Lx105_0_s:
                        .string          "OUTPUT"
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
