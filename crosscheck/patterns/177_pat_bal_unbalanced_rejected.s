                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        xor              esi, esi
                        call             main_α
                        xor              eax, eax
                        add              rsp, 24
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        .global          main_α
                        .global          main_β
                        .global          main_γ
                        .global          main_ω
                        sub              rsp, 600
                        mov              rdi, rsp
                        mov              ecx, 600
                        xor              eax, eax
                        rep stosb
main_α_body:
#=======================================================================================================================
#  ')A+B' ? POS(0) BAL RPOS(0)     :S(Y1)F(N1)
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        mov              qword ptr [rsp + 160], 1
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rsp + 168], rax
                                                                                        jmp   n9_match_head_α
n0_lit_string_β:
                                                                                        jmp   n11_lit_string_α
.Lx47_0:
                        .quad            .Lx47_0_s
.Lx47_0_s:
                        .string          ")A+B"
#-----------------------------------------------------------------------------------------------------------------------
n1_goto_α:
                                                                                        jmp   n10_lit_string_α
n1_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n2_goto_α:
                                                                                        jmp   n11_lit_string_α
n2_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n3_goto_α:
                                                                                        jmp   n12_lit_string_α
n3_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n4_goto_α:
                                                                                        jmp   n13_lit_string_α
n4_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n5_goto_α:
                                                                                        jmp   n14_lit_string_α
n5_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_goto_α:
                                                                                        jmp   n15_lit_string_α
n6_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_goto_α:
                                                                                        jmp   n16_lit_string_α
n7_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n8_goto_α:
                                                                                        jmp   n17_lit_string_α
n8_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n9_match_head_α:
                        mov              qword ptr [rsp + 64], r13
                        mov              qword ptr [rsp + 72], r14
                        mov              qword ptr [rsp + 80], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 88], rax
                        mov              rdi, qword ptr [rsp + 160]
                        mov              rsi, qword ptr [rsp + 168]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx57_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n18_match_sequence_α
n9_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx57_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx57_1
                                                                                        jmp   .Lx57_0
.Lx57_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx57_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx57_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 64]
                        mov              r14, qword ptr [rsp + 72]
                        mov              r15, qword ptr [rsp + 80]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 88]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n11_lit_string_α
#=======================================================================================================================
# Y1 OUTPUT = 'unbal1 MATCHED'     :(T2)
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n19_assign_α
n10_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n12_lit_string_α
.Lx58_0:
                        .quad            .Lx58_0_s
.Lx58_0_s:
                        .string          "unbal1 MATCHED"
#=======================================================================================================================
# N1 OUTPUT = 'unbal1 rejected'
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n20_assign_α
n11_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n12_lit_string_α
.Lx59_0:
                        .quad            .Lx59_0_s
.Lx59_0_s:
                        .string          "unbal1 rejected"
#=======================================================================================================================
# T2 '(A*(B+)' ? POS(0) BAL RPOS(0) :S(Y2)F(N2)
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        mov              qword ptr [rsp + 352], 1
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rsp + 360], rax
                                                                                        jmp   n21_match_head_α
n12_lit_string_β:
                                                                                        jmp   n14_lit_string_α
.Lx60_0:
                        .quad            .Lx60_0_s
.Lx60_0_s:
                        .string          "(A*(B+)"
#=======================================================================================================================
# Y2 OUTPUT = 'unbal2 MATCHED'     :(T3)
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n22_assign_α
n13_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n15_lit_string_α
.Lx61_0:
                        .quad            .Lx61_0_s
.Lx61_0_s:
                        .string          "unbal2 MATCHED"
#=======================================================================================================================
# N2 OUTPUT = 'unbal2 rejected'
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n23_assign_α
n14_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n15_lit_string_α
.Lx62_0:
                        .quad            .Lx62_0_s
.Lx62_0_s:
                        .string          "unbal2 rejected"
#=======================================================================================================================
# T3 '(X))' ? POS(0) BAL RPOS(0)   :S(Y3)F(N3)
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        mov              qword ptr [rsp + 544], 1
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rsp + 552], rax
                                                                                        jmp   n24_match_head_α
n15_lit_string_β:
                                                                                        jmp   n17_lit_string_α
.Lx63_0:
                        .quad            .Lx63_0_s
.Lx63_0_s:
                        .string          "(X))"
#=======================================================================================================================
# Y3 OUTPUT = 'unbal3 MATCHED'     :(END)
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n25_assign_α
n16_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx64_0:
                        .quad            .Lx64_0_s
.Lx64_0_s:
                        .string          "unbal3 MATCHED"
#=======================================================================================================================
# N3 OUTPUT = 'unbal3 rejected'
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n26_assign_α
n17_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx65_0:
                        .quad            .Lx65_0_s
.Lx65_0_s:
                        .string          "unbal3 rejected"
#-----------------------------------------------------------------------------------------------------------------------
n18_match_sequence_α:
                                                                                        jmp   n28_lit_integer_α
n18_match_sequence_as:
                                                                                        jmp   n27_match_release_α
n18_match_sequence_β:
                                                                                        jmp   n32_match_rpos_β
n18_match_sequence_af:
                                                                                        jmp   n9_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx68_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n12_lit_string_α
n19_assign_β:
                                                                                        jmp   n12_lit_string_α
.Lx68_0:
                        .quad            .Lx68_0_s
.Lx68_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx69_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n12_lit_string_α
n20_assign_β:
                                                                                        jmp   n12_lit_string_α
.Lx69_0:
                        .quad            .Lx69_0_s
.Lx69_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n21_match_head_α:
                        mov              qword ptr [rsp + 272], r13
                        mov              qword ptr [rsp + 280], r14
                        mov              qword ptr [rsp + 288], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 296], rax
                        mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx71_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n33_match_sequence_α
n21_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx71_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx71_1
                                                                                        jmp   .Lx71_0
.Lx71_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx71_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx71_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 272]
                        mov              r14, qword ptr [rsp + 280]
                        mov              r15, qword ptr [rsp + 288]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 296]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx72_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n15_lit_string_α
n22_assign_β:
                                                                                        jmp   n15_lit_string_α
.Lx72_0:
                        .quad            .Lx72_0_s
.Lx72_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx73_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n15_lit_string_α
n23_assign_β:
                                                                                        jmp   n15_lit_string_α
.Lx73_0:
                        .quad            .Lx73_0_s
.Lx73_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n24_match_head_α:
                        mov              qword ptr [rsp + 464], r13
                        mov              qword ptr [rsp + 472], r14
                        mov              qword ptr [rsp + 480], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 488], rax
                        mov              rdi, qword ptr [rsp + 544]
                        mov              rsi, qword ptr [rsp + 552]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx75_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n34_match_sequence_α
n24_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx75_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx75_1
                                                                                        jmp   .Lx75_0
.Lx75_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx75_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx75_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 464]
                        mov              r14, qword ptr [rsp + 472]
                        mov              r15, qword ptr [rsp + 480]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 488]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n17_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx76_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
n25_assign_β:
                                                                                        jmp   main_γ
.Lx76_0:
                        .quad            .Lx76_0_s
.Lx76_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n26_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx77_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
n26_assign_β:
                                                                                        jmp   main_γ
.Lx77_0:
                        .quad            .Lx77_0_s
.Lx77_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n27_match_release_α:
                        mov              rax, qword ptr [rsp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 32]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx79_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx79_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx79_1:
                        test             rax, rax
                                                                                        je    .Lx79_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx79_3]
                        lea              rdx, [rip + .Lx79_4]
                                                                                        jmp   rax
.Lx79_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx79_1
.Lx79_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx79_1
.Lx79_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx79_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx79_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 64]
                        mov              r14, qword ptr [rsp + 72]
                        mov              r15, qword ptr [rsp + 80]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 88]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n10_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:
                        mov              qword ptr [rsp + 160], 6
                        mov              rax, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rsp + 168], rax
                                                                                        jmp   n29_match_pos_α
n28_lit_integer_β:
                                                                                        jmp   n9_match_head_β
.Lx80_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n29_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n9_match_head_β
                                                                                        jmp   n30_match_bal_α
n29_match_pos_β:
                                                                                        jmp   n9_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n30_match_bal_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 48], 0
                        mov              eax, r14d
                        mov              dword ptr [rsp + 52], eax
                        mov              dword ptr [rsp + 56], 0
n30_match_bal_β:
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
                                                                                        jmp   n31_lit_integer_α
.Lx83_3:
                        mov              eax, dword ptr [rsp + 52]
                        mov              r14d, eax
                        add              rsp, 16
                                                                                        jmp   n9_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:
                        mov              qword ptr [rsp + 192], 6
                        mov              rax, qword ptr [rip + .Lx84_0]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n32_match_rpos_α
n31_lit_integer_β:
                                                                                        jmp   n30_match_bal_β
.Lx84_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n32_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n30_match_bal_β
                                                                                        jmp   n27_match_release_α
n32_match_rpos_β:
                                                                                        jmp   n30_match_bal_β
#-----------------------------------------------------------------------------------------------------------------------
n33_match_sequence_α:
                                                                                        jmp   n36_lit_integer_α
n33_match_sequence_as:
                                                                                        jmp   n35_match_release_α
n33_match_sequence_β:
                                                                                        jmp   n40_match_rpos_β
n33_match_sequence_af:
                                                                                        jmp   n21_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n34_match_sequence_α:
                                                                                        jmp   n42_lit_integer_α
n34_match_sequence_as:
                                                                                        jmp   n41_match_release_α
n34_match_sequence_β:
                                                                                        jmp   n46_match_rpos_β
n34_match_sequence_af:
                                                                                        jmp   n24_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n35_match_release_α:
                        mov              rax, qword ptr [rsp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 32]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx91_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx91_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx91_1:
                        test             rax, rax
                                                                                        je    .Lx91_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx91_3]
                        lea              rdx, [rip + .Lx91_4]
                                                                                        jmp   rax
.Lx91_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx91_1
.Lx91_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx91_1
.Lx91_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx91_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx91_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 272]
                        mov              r14, qword ptr [rsp + 280]
                        mov              r15, qword ptr [rsp + 288]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 296]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n13_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:
                        mov              qword ptr [rsp + 352], 6
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rsp + 360], rax
                                                                                        jmp   n37_match_pos_α
n36_lit_integer_β:
                                                                                        jmp   n21_match_head_β
.Lx92_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n37_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n21_match_head_β
                                                                                        jmp   n38_match_bal_α
n37_match_pos_β:
                                                                                        jmp   n21_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n38_match_bal_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 48], 0
                        mov              eax, r14d
                        mov              dword ptr [rsp + 52], eax
                        mov              dword ptr [rsp + 56], 0
n38_match_bal_β:
.Lx95_0:
                        mov              eax, dword ptr [rsp + 52]
                        add              eax, dword ptr [rsp + 48]
                        cmp              eax, r15d
                                                                                        jge   .Lx95_3
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        add              dword ptr [rsp + 48], 1
                        mov              edx, dword ptr [rsp + 56]
                        cmp              esi, 40
                                                                                        jne   .Lx95_1
                        add              edx, 1
                                                                                        jmp   .Lx95_2
.Lx95_1:
                        cmp              esi, 41
                                                                                        jne   .Lx95_2
                        sub              edx, 1
                        cmp              edx, 0
                                                                                        jl    .Lx95_3
.Lx95_2:
                        mov              dword ptr [rsp + 56], edx
                        test             edx, edx
                                                                                        jne   .Lx95_0
                        mov              eax, dword ptr [rsp + 52]
                        add              eax, dword ptr [rsp + 48]
                        mov              r14d, eax
                                                                                        jmp   n39_lit_integer_α
.Lx95_3:
                        mov              eax, dword ptr [rsp + 52]
                        mov              r14d, eax
                        add              rsp, 16
                                                                                        jmp   n21_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:
                        mov              qword ptr [rsp + 384], 6
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rsp + 392], rax
                                                                                        jmp   n40_match_rpos_α
n39_lit_integer_β:
                                                                                        jmp   n38_match_bal_β
.Lx96_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n40_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n38_match_bal_β
                                                                                        jmp   n35_match_release_α
n40_match_rpos_β:
                                                                                        jmp   n38_match_bal_β
#-----------------------------------------------------------------------------------------------------------------------
n41_match_release_α:
                        mov              rax, qword ptr [rsp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 32]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx99_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx99_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx99_1:
                        test             rax, rax
                                                                                        je    .Lx99_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx99_3]
                        lea              rdx, [rip + .Lx99_4]
                                                                                        jmp   rax
.Lx99_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx99_1
.Lx99_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx99_1
.Lx99_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx99_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx99_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 464]
                        mov              r14, qword ptr [rsp + 472]
                        mov              r15, qword ptr [rsp + 480]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 488]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n16_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:
                        mov              qword ptr [rsp + 544], 6
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rsp + 552], rax
                                                                                        jmp   n43_match_pos_α
n42_lit_integer_β:
                                                                                        jmp   n24_match_head_β
.Lx100_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n43_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n24_match_head_β
                                                                                        jmp   n44_match_bal_α
n43_match_pos_β:
                                                                                        jmp   n24_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n44_match_bal_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 48], 0
                        mov              eax, r14d
                        mov              dword ptr [rsp + 52], eax
                        mov              dword ptr [rsp + 56], 0
n44_match_bal_β:
.Lx103_0:
                        mov              eax, dword ptr [rsp + 52]
                        add              eax, dword ptr [rsp + 48]
                        cmp              eax, r15d
                                                                                        jge   .Lx103_3
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        add              dword ptr [rsp + 48], 1
                        mov              edx, dword ptr [rsp + 56]
                        cmp              esi, 40
                                                                                        jne   .Lx103_1
                        add              edx, 1
                                                                                        jmp   .Lx103_2
.Lx103_1:
                        cmp              esi, 41
                                                                                        jne   .Lx103_2
                        sub              edx, 1
                        cmp              edx, 0
                                                                                        jl    .Lx103_3
.Lx103_2:
                        mov              dword ptr [rsp + 56], edx
                        test             edx, edx
                                                                                        jne   .Lx103_0
                        mov              eax, dword ptr [rsp + 52]
                        add              eax, dword ptr [rsp + 48]
                        mov              r14d, eax
                                                                                        jmp   n45_lit_integer_α
.Lx103_3:
                        mov              eax, dword ptr [rsp + 52]
                        mov              r14d, eax
                        add              rsp, 16
                                                                                        jmp   n24_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:
                        mov              qword ptr [rsp + 576], 6
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rsp + 584], rax
                                                                                        jmp   n46_match_rpos_α
n45_lit_integer_β:
                                                                                        jmp   n44_match_bal_β
.Lx104_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n46_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n44_match_bal_β
                                                                                        jmp   n41_match_release_α
n46_match_rpos_β:
                                                                                        jmp   n44_match_bal_β
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 600
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 600
                        ret
                        .section         .note.GNU-stack,"",@progbits
