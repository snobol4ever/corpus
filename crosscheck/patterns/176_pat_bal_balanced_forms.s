                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "X"
.Lgvan1:                .string          "Y"
.Lgvan2:                .string          "Z"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .section         .text
                        .intel_syntax    noprefix
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
                        sub              rsp, 888
                        mov              rdi, rsp
                        mov              ecx, 888
                        xor              eax, eax
                        rep stosb
main_α_body:
#=======================================================================================================================
#  '(A!(C:D))' ? POS(0) BAL . X RPOS(0)   :F(N1)
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        mov              qword ptr [rsp + 224], 1
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rsp + 232], rax
                                                                                        jmp   n6_match_head_α
n0_lit_string_β:
                                                                                        jmp   n7_lit_string_α
.Lx56_0:
                        .quad            .Lx56_0_s
.Lx56_0_s:
                        .string          "(A!(C:D))"
#-----------------------------------------------------------------------------------------------------------------------
n1_goto_α:
                                                                                        jmp   n7_lit_string_α
n1_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n2_goto_α:
                                                                                        jmp   n8_lit_string_α
n2_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n3_goto_α:
                                                                                        jmp   n9_lit_string_α
n3_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n4_goto_α:
                                                                                        jmp   n10_lit_string_α
n4_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n5_goto_α:
                                                                                        jmp   n11_lit_string_α
n5_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_match_head_α:
                        mov              qword ptr [rsp + 64], r13
                        mov              qword ptr [rsp + 72], r14
                        mov              qword ptr [rsp + 80], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 88], rax
                        mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
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
.Lx63_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n12_match_sequence_α
n6_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx63_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx63_1
                                                                                        jmp   .Lx63_0
.Lx63_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx63_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx63_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 64]
                        mov              r14, qword ptr [rsp + 72]
                        mov              r15, qword ptr [rsp + 80]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 88]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n7_lit_string_α
#=======================================================================================================================
# N1 OUTPUT = 'bal1 FAILED'
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n13_assign_α
n7_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n8_lit_string_α
.Lx64_0:
                        .quad            .Lx64_0_s
.Lx64_0_s:
                        .string          "bal1 FAILED"
#=======================================================================================================================
# T2 '(AB)+(CD)' ? POS(0) BAL . Y RPOS(0)  :F(N2)
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        mov              qword ptr [rsp + 512], 1
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rsp + 520], rax
                                                                                        jmp   n14_match_head_α
n8_lit_string_β:
                                                                                        jmp   n9_lit_string_α
.Lx65_0:
                        .quad            .Lx65_0_s
.Lx65_0_s:
                        .string          "(AB)+(CD)"
#=======================================================================================================================
# N2 OUTPUT = 'bal2 FAILED'
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n15_assign_α
n9_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n10_lit_string_α
.Lx66_0:
                        .quad            .Lx66_0_s
.Lx66_0_s:
                        .string          "bal2 FAILED"
#=======================================================================================================================
# T3 '9395' ? POS(0) BAL . Z RPOS(0)       :F(N3)
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        mov              qword ptr [rsp + 800], 1
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rsp + 808], rax
                                                                                        jmp   n16_match_head_α
n10_lit_string_β:
                                                                                        jmp   n11_lit_string_α
.Lx67_0:
                        .quad            .Lx67_0_s
.Lx67_0_s:
                        .string          "9395"
#=======================================================================================================================
# N3 OUTPUT = 'bal3 FAILED'
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n17_assign_α
n11_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx68_0:
                        .quad            .Lx68_0_s
.Lx68_0_s:
                        .string          "bal3 FAILED"
#-----------------------------------------------------------------------------------------------------------------------
n12_match_sequence_α:
                                                                                        jmp   n19_lit_integer_α
n12_match_sequence_as:
                                                                                        jmp   n18_match_release_α
n12_match_sequence_β:
                                                                                        jmp   n24_match_rpos_β
n12_match_sequence_af:
                                                                                        jmp   n6_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx71_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n8_lit_string_α
n13_assign_β:
                                                                                        jmp   n8_lit_string_α
.Lx71_0:
                        .quad            .Lx71_0_s
.Lx71_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n14_match_head_α:
                        mov              qword ptr [rsp + 368], r13
                        mov              qword ptr [rsp + 376], r14
                        mov              qword ptr [rsp + 384], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 392], rax
                        mov              rdi, qword ptr [rsp + 512]
                        mov              rsi, qword ptr [rsp + 520]
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
.Lx73_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n25_match_sequence_α
n14_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx73_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx73_1
                                                                                        jmp   .Lx73_0
.Lx73_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx73_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx73_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 368]
                        mov              r14, qword ptr [rsp + 376]
                        mov              r15, qword ptr [rsp + 384]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 392]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx74_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n10_lit_string_α
n15_assign_β:
                                                                                        jmp   n10_lit_string_α
.Lx74_0:
                        .quad            .Lx74_0_s
.Lx74_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n16_match_head_α:
                        mov              qword ptr [rsp + 656], r13
                        mov              qword ptr [rsp + 664], r14
                        mov              qword ptr [rsp + 672], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 680], rax
                        mov              rdi, qword ptr [rsp + 800]
                        mov              rsi, qword ptr [rsp + 808]
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
.Lx76_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n26_match_sequence_α
n16_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx76_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx76_1
                                                                                        jmp   .Lx76_0
.Lx76_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx76_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx76_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 656]
                        mov              r14, qword ptr [rsp + 664]
                        mov              r15, qword ptr [rsp + 672]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 680]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx77_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
n17_assign_β:
                                                                                        jmp   main_γ
.Lx77_0:
                        .quad            .Lx77_0_s
.Lx77_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n18_match_release_α:
                        mov              rax, qword ptr [rsp + 40]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 48]
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
                                                                                        jmp   n27_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:
                        mov              qword ptr [rsp + 160], 6
                        mov              rax, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rsp + 168], rax
                                                                                        jmp   n20_match_pos_α
n19_lit_integer_β:
                                                                                        jmp   n6_match_head_β
.Lx80_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n20_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n6_match_head_β
                                                                                        jmp   n21_match_assign_save_α
n20_match_pos_β:
                                                                                        jmp   n6_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n21_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n28_match_bal_α
n21_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n6_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n22_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n23_lit_integer_α
n22_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n28_match_bal_β
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_integer_α:
                        mov              qword ptr [rsp + 272], 6
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rsp + 280], rax
                                                                                        jmp   n24_match_rpos_α
n23_lit_integer_β:
                                                                                        jmp   n22_match_assign_cond_β
.Lx86_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n24_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n22_match_assign_cond_β
                                                                                        jmp   n18_match_release_α
n24_match_rpos_β:
                                                                                        jmp   n22_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n25_match_sequence_α:
                                                                                        jmp   n30_lit_integer_α
n25_match_sequence_as:
                                                                                        jmp   n29_match_release_α
n25_match_sequence_β:
                                                                                        jmp   n35_match_rpos_β
n25_match_sequence_af:
                                                                                        jmp   n14_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n26_match_sequence_α:
                                                                                        jmp   n37_lit_integer_α
n26_match_sequence_as:
                                                                                        jmp   n36_match_release_α
n26_match_sequence_β:
                                                                                        jmp   n42_match_rpos_β
n26_match_sequence_af:
                                                                                        jmp   n16_match_head_β
#=======================================================================================================================
#  OUTPUT = 'bal1=' X                      :(T2)
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n43_var_α
n27_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n8_lit_string_α
.Lx92_0:
                        .quad            .Lx92_0_s
.Lx92_0_s:
                        .string          "bal1="
#-----------------------------------------------------------------------------------------------------------------------
n28_match_bal_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 64], 0
                        mov              eax, r14d
                        mov              dword ptr [rsp + 68], eax
                        mov              dword ptr [rsp + 72], 0
n28_match_bal_β:
.Lx94_0:
                        mov              eax, dword ptr [rsp + 68]
                        add              eax, dword ptr [rsp + 64]
                        cmp              eax, r15d
                                                                                        jge   .Lx94_3
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        add              dword ptr [rsp + 64], 1
                        mov              edx, dword ptr [rsp + 72]
                        cmp              esi, 40
                                                                                        jne   .Lx94_1
                        add              edx, 1
                                                                                        jmp   .Lx94_2
.Lx94_1:
                        cmp              esi, 41
                                                                                        jne   .Lx94_2
                        sub              edx, 1
                        cmp              edx, 0
                                                                                        jl    .Lx94_3
.Lx94_2:
                        mov              dword ptr [rsp + 72], edx
                        test             edx, edx
                                                                                        jne   .Lx94_0
                        mov              eax, dword ptr [rsp + 68]
                        add              eax, dword ptr [rsp + 64]
                        mov              r14d, eax
                                                                                        jmp   n22_match_assign_cond_α
.Lx94_3:
                        mov              eax, dword ptr [rsp + 68]
                        mov              r14d, eax
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n6_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n29_match_release_α:
                        mov              rax, qword ptr [rsp + 40]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 48]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx96_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx96_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx96_1:
                        test             rax, rax
                                                                                        je    .Lx96_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx96_3]
                        lea              rdx, [rip + .Lx96_4]
                                                                                        jmp   rax
.Lx96_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx96_1
.Lx96_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx96_1
.Lx96_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx96_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx96_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 368]
                        mov              r14, qword ptr [rsp + 376]
                        mov              r15, qword ptr [rsp + 384]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 392]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n44_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:
                        mov              qword ptr [rsp + 448], 6
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rsp + 456], rax
                                                                                        jmp   n31_match_pos_α
n30_lit_integer_β:
                                                                                        jmp   n14_match_head_β
.Lx97_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n31_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n14_match_head_β
                                                                                        jmp   n32_match_assign_save_α
n31_match_pos_β:
                                                                                        jmp   n14_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n32_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n45_match_bal_α
n32_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n14_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n33_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S1]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n34_lit_integer_α
n33_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n45_match_bal_β
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:
                        mov              qword ptr [rsp + 560], 6
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rsp + 568], rax
                                                                                        jmp   n35_match_rpos_α
n34_lit_integer_β:
                                                                                        jmp   n33_match_assign_cond_β
.Lx103_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n35_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n33_match_assign_cond_β
                                                                                        jmp   n29_match_release_α
n35_match_rpos_β:
                                                                                        jmp   n33_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n36_match_release_α:
                        mov              rax, qword ptr [rsp + 40]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 48]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx106_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx106_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx106_1:
                        test             rax, rax
                                                                                        je    .Lx106_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx106_3]
                        lea              rdx, [rip + .Lx106_4]
                                                                                        jmp   rax
.Lx106_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx106_1
.Lx106_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx106_1
.Lx106_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx106_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx106_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 656]
                        mov              r14, qword ptr [rsp + 664]
                        mov              r15, qword ptr [rsp + 672]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 680]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n46_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:
                        mov              qword ptr [rsp + 736], 6
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rsp + 744], rax
                                                                                        jmp   n38_match_pos_α
n37_lit_integer_β:
                                                                                        jmp   n16_match_head_β
.Lx107_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n38_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n16_match_head_β
                                                                                        jmp   n39_match_assign_save_α
n38_match_pos_β:
                                                                                        jmp   n16_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n39_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n47_match_bal_α
n39_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n16_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n40_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S2]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n41_lit_integer_α
n40_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n47_match_bal_β
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:
                        mov              qword ptr [rsp + 848], 6
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rsp + 856], rax
                                                                                        jmp   n42_match_rpos_α
n41_lit_integer_β:
                                                                                        jmp   n40_match_assign_cond_β
.Lx113_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n42_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n40_match_assign_cond_β
                                                                                        jmp   n36_match_release_α
n42_match_rpos_β:
                                                                                        jmp   n40_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n48_binop_α
n43_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n8_lit_string_α
#=======================================================================================================================
#  OUTPUT = 'bal2=' Y                      :(T3)
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n49_var_α
n44_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n10_lit_string_α
.Lx116_0:
                        .quad            .Lx116_0_s
.Lx116_0_s:
                        .string          "bal2="
#-----------------------------------------------------------------------------------------------------------------------
n45_match_bal_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 64], 0
                        mov              eax, r14d
                        mov              dword ptr [rsp + 68], eax
                        mov              dword ptr [rsp + 72], 0
n45_match_bal_β:
.Lx118_0:
                        mov              eax, dword ptr [rsp + 68]
                        add              eax, dword ptr [rsp + 64]
                        cmp              eax, r15d
                                                                                        jge   .Lx118_3
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        add              dword ptr [rsp + 64], 1
                        mov              edx, dword ptr [rsp + 72]
                        cmp              esi, 40
                                                                                        jne   .Lx118_1
                        add              edx, 1
                                                                                        jmp   .Lx118_2
.Lx118_1:
                        cmp              esi, 41
                                                                                        jne   .Lx118_2
                        sub              edx, 1
                        cmp              edx, 0
                                                                                        jl    .Lx118_3
.Lx118_2:
                        mov              dword ptr [rsp + 72], edx
                        test             edx, edx
                                                                                        jne   .Lx118_0
                        mov              eax, dword ptr [rsp + 68]
                        add              eax, dword ptr [rsp + 64]
                        mov              r14d, eax
                                                                                        jmp   n33_match_assign_cond_α
.Lx118_3:
                        mov              eax, dword ptr [rsp + 68]
                        mov              r14d, eax
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n14_match_head_β
#=======================================================================================================================
#  OUTPUT = 'bal3=' Z                      :(END)
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n50_var_α
n46_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx119_0:
                        .quad            .Lx119_0_s
.Lx119_0_s:
                        .string          "bal3="
#-----------------------------------------------------------------------------------------------------------------------
n47_match_bal_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 64], 0
                        mov              eax, r14d
                        mov              dword ptr [rsp + 68], eax
                        mov              dword ptr [rsp + 72], 0
n47_match_bal_β:
.Lx121_0:
                        mov              eax, dword ptr [rsp + 68]
                        add              eax, dword ptr [rsp + 64]
                        cmp              eax, r15d
                                                                                        jge   .Lx121_3
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        add              dword ptr [rsp + 64], 1
                        mov              edx, dword ptr [rsp + 72]
                        cmp              esi, 40
                                                                                        jne   .Lx121_1
                        add              edx, 1
                                                                                        jmp   .Lx121_2
.Lx121_1:
                        cmp              esi, 41
                                                                                        jne   .Lx121_2
                        sub              edx, 1
                        cmp              edx, 0
                                                                                        jl    .Lx121_3
.Lx121_2:
                        mov              dword ptr [rsp + 72], edx
                        test             edx, edx
                                                                                        jne   .Lx121_0
                        mov              eax, dword ptr [rsp + 68]
                        add              eax, dword ptr [rsp + 64]
                        mov              r14d, eax
                                                                                        jmp   n40_match_assign_cond_α
.Lx121_3:
                        mov              eax, dword ptr [rsp + 68]
                        mov              r14d, eax
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n16_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n48_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n51_assign_α
n48_binop_β:
                        add              rsp, 32
                                                                                        jmp   n8_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n52_binop_α
n49_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n10_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n53_binop_α
n50_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx125_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n8_lit_string_α
n51_assign_β:
                                                                                        jmp   n8_lit_string_α
.Lx125_0:
                        .quad            .Lx125_0_s
.Lx125_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n52_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n54_assign_α
n52_binop_β:
                        add              rsp, 32
                                                                                        jmp   n10_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n53_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n55_assign_α
n53_binop_β:
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n54_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx128_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n10_lit_string_α
n54_assign_β:
                                                                                        jmp   n10_lit_string_α
.Lx128_0:
                        .quad            .Lx128_0_s
.Lx128_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx129_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
n55_assign_β:
                                                                                        jmp   main_γ
.Lx129_0:
                        .quad            .Lx129_0_s
.Lx129_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 888
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 888
                        ret
                        .section         .rodata
.S0:                    .string          "X"
.S1:                    .string          "Y"
.S2:                    .string          "Z"
                        .text
                        .section         .note.GNU-stack,"",@progbits
