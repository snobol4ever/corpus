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
                        sub              rsp, 728
                        mov              rdi, rsp
                        mov              ecx, 728
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 720], rbp
                        mov              rbp, rsp
main_α_body:
#=======================================================================================================================
#  'aabaab' ? POS(0) ARBNO(ARBNO('a') 'b') RPOS(0)              :S(Y1)F(N1)
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n6_match_head_α
.Lx39_0:
                        .quad            .Lx39_0_s
.Lx39_0_s:
                        .string          "aabaab"
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
                        mov              qword ptr [rbp + 64], r13
                        mov              qword ptr [rbp + 72], r14
                        mov              qword ptr [rbp + 80], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 88], rax
                        mov              qword ptr [rbp + 56], rbp
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 32], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 24], rax
                        mov              dword ptr [rbp + 16], 0
.Lx46_0:
                        mov              r14d, dword ptr [rbp + 16]
                                                                                        jmp   n12_match_sequence_α
n6_match_head_β:
                        add              dword ptr [rbp + 16], 1
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, r15d
                                                                                        jg    .Lx46_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx46_1
                                                                                        jmp   .Lx46_0
.Lx46_1:
                        mov              rax, qword ptr [rbp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 32]
                        mov              r10, qword ptr [1879048192]
.Lx46_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx46_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 88]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 56]
                                                                                        jmp   n8_lit_string_α
#=======================================================================================================================
# Y1 OUTPUT = '1:ok'                                            :(T2)
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n13_assign_α
.Lx47_0:
                        .quad            .Lx47_0_s
.Lx47_0_s:
                        .string          "1:ok"
#=======================================================================================================================
# N1 OUTPUT = '1:fail'
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n14_assign_α
.Lx48_0:
                        .quad            .Lx48_0_s
.Lx48_0_s:
                        .string          "1:fail"
#=======================================================================================================================
# T2 'aabxa' ? POS(0) ARBNO(ARBNO('a') 'b') RPOS(0)             :S(Y2)F(N2)
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 672], 1
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n15_match_head_α
.Lx49_0:
                        .quad            .Lx49_0_s
.Lx49_0_s:
                        .string          "aabxa"
#=======================================================================================================================
# Y2 OUTPUT = '2:ok'                                            :(END)
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n16_assign_α
.Lx50_0:
                        .quad            .Lx50_0_s
.Lx50_0_s:
                        .string          "2:ok"
#=======================================================================================================================
# N2 OUTPUT = '2:fail'
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n17_assign_α
.Lx51_0:
                        .quad            .Lx51_0_s
.Lx51_0_s:
                        .string          "2:fail"
#-----------------------------------------------------------------------------------------------------------------------
n12_match_sequence_α:
                        mov              dword ptr [rbp + 96], r14d
                                                                                        jmp   n19_lit_integer_α
n12_match_sequence_as:
                                                                                        jmp   n18_match_release_α
n12_match_sequence_β:
                                                                                        jmp   n23_match_rpos_β
n12_match_sequence_af:
                                                                                        jmp   n6_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx54_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n9_lit_string_α
.Lx54_0:
                        .quad            .Lx54_0_s
.Lx54_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx55_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n9_lit_string_α
.Lx55_0:
                        .quad            .Lx55_0_s
.Lx55_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n15_match_head_α:
                        mov              qword ptr [rbp + 432], r13
                        mov              qword ptr [rbp + 440], r14
                        mov              qword ptr [rbp + 448], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 456], rax
                        mov              qword ptr [rbp + 424], rbp
                        mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 400], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 392], rax
                        mov              dword ptr [rbp + 384], 0
.Lx57_0:
                        mov              r14d, dword ptr [rbp + 384]
                                                                                        jmp   n24_match_sequence_α
n15_match_head_β:
                        add              dword ptr [rbp + 384], 1
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, r15d
                                                                                        jg    .Lx57_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx57_1
                                                                                        jmp   .Lx57_0
.Lx57_1:
                        mov              rax, qword ptr [rbp + 392]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 400]
                        mov              r10, qword ptr [1879048192]
.Lx57_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx57_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 432]
                        mov              r14, qword ptr [rbp + 440]
                        mov              r15, qword ptr [rbp + 448]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 456]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 424]
                                                                                        jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx58_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx58_0:
                        .quad            .Lx58_0_s
.Lx58_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx59_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx59_0:
                        .quad            .Lx59_0_s
.Lx59_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n18_match_release_α:
                        mov              rax, qword ptr [rbp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 32]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx61_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx61_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx61_1:
                        test             rax, rax
                                                                                        je    .Lx61_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx61_3]
                        lea              rdx, [rip + .Lx61_4]
                                                                                        jmp   rax
.Lx61_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx61_1
.Lx61_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx61_1
.Lx61_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx61_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx61_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 88]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 56]
                                                                                        jmp   n7_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:
                        mov              qword ptr [rbp + 128], 6
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n20_match_pos_α
n19_lit_integer_β:
                                                                                        jmp   n6_match_head_β
.Lx62_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n20_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n6_match_head_β
                                                                                        jmp   n21_match_arbno_α
n20_match_pos_β:
                                                                                        jmp   n6_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n21_match_arbno_α:
                        mov              dword ptr [rbp + 160], r14d
                        mov              dword ptr [rbp + 164], r14d
                        mov              dword ptr [rbp + 168], 0
                        mov              qword ptr [rbp + 184], rsp
                        mov              qword ptr [rbp + 176], 0
                                                                                        jmp   n22_lit_integer_α
n21_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 164]
                        mov              rax, qword ptr [rbp + 176]
                        sub              rsp, 144
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 176], rsp
                        mov              rbp, rsp
                        add              rbp, -168
                                                                                        jmp   n25_match_sequence_α
n21_match_arbno_as:
                        mov              eax, dword ptr [rbp + 176]
                        cmp              r14d, eax
                                                                                        je    n25_match_sequence_β
                        mov              rbp, qword ptr [rbp + 168]
                        mov              eax, dword ptr [rbp + 168]
                        add              eax, 1
                        mov              dword ptr [rbp + 168], eax
                        mov              dword ptr [rbp + 164], r14d
                                                                                        jmp   n22_lit_integer_α
n21_match_arbno_af:
                        mov              rax, qword ptr [rbp + 184]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              rsp, [rbp + 312]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 168]
                        test             ecx, ecx
                                                                                        jz    .Lx65_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 168], ecx
                        mov              qword ptr [rbp + 176], rax
                        lea              rbp, [rax + -168]
                                                                                        jmp   n25_match_sequence_β
.Lx65_2:
                        mov              r14d, dword ptr [rbp + 160]
                        mov              rsp, qword ptr [rbp + 184]
                                                                                        jmp   n20_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:
                        mov              qword ptr [rbp + 304], 6
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n23_match_rpos_α
n22_lit_integer_β:
                                                                                        jmp   n21_match_arbno_β
.Lx66_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n23_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n21_match_arbno_β
                                                                                        jmp   n18_match_release_α
n23_match_rpos_β:
                                                                                        jmp   n21_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n24_match_sequence_α:
                        mov              dword ptr [rbp + 464], r14d
                                                                                        jmp   n28_lit_integer_α
n24_match_sequence_as:
                                                                                        jmp   n27_match_release_α
n24_match_sequence_β:
                                                                                        jmp   n32_match_rpos_β
n24_match_sequence_af:
                                                                                        jmp   n15_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n25_match_sequence_α:
                        mov              dword ptr [rbp + 208], r14d
                                                                                        jmp   n33_match_arbno_α
n25_match_sequence_as:
                                                                                        jmp   n21_match_arbno_as
n25_match_sequence_β:
                                                                                        jmp   n26_match_lit_β
n25_match_sequence_af:
                                                                                        jmp   n21_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n26_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n33_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 98
                                                                                        jne   n33_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n21_match_arbno_as
n26_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n33_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n27_match_release_α:
                        mov              rax, qword ptr [rbp + 392]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 400]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx75_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx75_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx75_1:
                        test             rax, rax
                                                                                        je    .Lx75_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx75_3]
                        lea              rdx, [rip + .Lx75_4]
                                                                                        jmp   rax
.Lx75_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx75_1
.Lx75_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx75_1
.Lx75_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx75_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx75_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 432]
                        mov              r14, qword ptr [rbp + 440]
                        mov              r15, qword ptr [rbp + 448]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 456]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 424]
                                                                                        jmp   n10_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:
                        mov              qword ptr [rbp + 480], 6
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n29_match_pos_α
n28_lit_integer_β:
                                                                                        jmp   n15_match_head_β
.Lx76_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n29_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n15_match_head_β
                                                                                        jmp   n30_match_arbno_α
n29_match_pos_β:
                                                                                        jmp   n15_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n30_match_arbno_α:
                        mov              dword ptr [rbp + 512], r14d
                        mov              dword ptr [rbp + 516], r14d
                        mov              dword ptr [rbp + 520], 0
                        mov              qword ptr [rbp + 536], rsp
                        mov              qword ptr [rbp + 528], 0
                                                                                        jmp   n31_lit_integer_α
n30_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 516]
                        mov              rax, qword ptr [rbp + 528]
                        sub              rsp, 144
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 528], rsp
                        mov              rbp, rsp
                        add              rbp, -520
                                                                                        jmp   n34_match_sequence_α
n30_match_arbno_as:
                        mov              eax, dword ptr [rbp + 528]
                        cmp              r14d, eax
                                                                                        je    n34_match_sequence_β
                        mov              rbp, qword ptr [rbp + 520]
                        mov              eax, dword ptr [rbp + 520]
                        add              eax, 1
                        mov              dword ptr [rbp + 520], eax
                        mov              dword ptr [rbp + 516], r14d
                                                                                        jmp   n31_lit_integer_α
n30_match_arbno_af:
                        mov              rax, qword ptr [rbp + 536]
                        mov              rdx, qword ptr [rbp + 520]
                        lea              rsp, [rbp + 664]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 520]
                        test             ecx, ecx
                                                                                        jz    .Lx79_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 520], ecx
                        mov              qword ptr [rbp + 528], rax
                        lea              rbp, [rax + -520]
                                                                                        jmp   n34_match_sequence_β
.Lx79_2:
                        mov              r14d, dword ptr [rbp + 512]
                        mov              rsp, qword ptr [rbp + 536]
                                                                                        jmp   n29_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:
                        mov              qword ptr [rbp + 656], 6
                        mov              rax, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n32_match_rpos_α
n31_lit_integer_β:
                                                                                        jmp   n30_match_arbno_β
.Lx80_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n32_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n30_match_arbno_β
                                                                                        jmp   n27_match_release_α
n32_match_rpos_β:
                                                                                        jmp   n30_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n33_match_arbno_α:
                        mov              dword ptr [rbp + 240], r14d
                        mov              dword ptr [rbp + 244], r14d
                        mov              dword ptr [rbp + 248], 0
                        mov              qword ptr [rbp + 264], rsp
                        mov              qword ptr [rbp + 256], 0
                                                                                        jmp   n26_match_lit_α
n33_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 244]
                        mov              rax, qword ptr [rbp + 256]
                        sub              rsp, 48
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 256], rsp
                        mov              rbp, rsp
                        add              rbp, -248
                                                                                        jmp   n36_match_lit_α
n33_match_arbno_as:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              r14d, eax
                                                                                        je    n36_match_lit_β
                        mov              rbp, qword ptr [rbp + 248]
                        mov              eax, dword ptr [rbp + 248]
                        add              eax, 1
                        mov              dword ptr [rbp + 248], eax
                        mov              dword ptr [rbp + 244], r14d
                                                                                        jmp   n26_match_lit_α
n33_match_arbno_af:
                        mov              rax, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              rsp, [rbp + 296]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 248]
                        test             ecx, ecx
                                                                                        jz    .Lx83_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 248], ecx
                        mov              qword ptr [rbp + 256], rax
                        lea              rbp, [rax + -248]
                                                                                        jmp   n36_match_lit_β
.Lx83_2:
                        mov              r14d, dword ptr [rbp + 240]
                        mov              rsp, qword ptr [rbp + 264]
                                                                                        jmp   n21_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n34_match_sequence_α:
                        mov              dword ptr [rbp + 560], r14d
                                                                                        jmp   n37_match_arbno_α
n34_match_sequence_as:
                                                                                        jmp   n30_match_arbno_as
n34_match_sequence_β:
                                                                                        jmp   n35_match_lit_β
n34_match_sequence_af:
                                                                                        jmp   n30_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n35_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n37_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 98
                                                                                        jne   n37_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n30_match_arbno_as
n35_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n37_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n36_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n33_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97
                                                                                        jne   n33_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n33_match_arbno_as
n36_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n33_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n37_match_arbno_α:
                        mov              dword ptr [rbp + 592], r14d
                        mov              dword ptr [rbp + 596], r14d
                        mov              dword ptr [rbp + 600], 0
                        mov              qword ptr [rbp + 616], rsp
                        mov              qword ptr [rbp + 608], 0
                                                                                        jmp   n35_match_lit_α
n37_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 596]
                        mov              rax, qword ptr [rbp + 608]
                        sub              rsp, 48
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 608], rsp
                        mov              rbp, rsp
                        add              rbp, -600
                                                                                        jmp   n38_match_lit_α
n37_match_arbno_as:
                        mov              eax, dword ptr [rbp + 608]
                        cmp              r14d, eax
                                                                                        je    n38_match_lit_β
                        mov              rbp, qword ptr [rbp + 600]
                        mov              eax, dword ptr [rbp + 600]
                        add              eax, 1
                        mov              dword ptr [rbp + 600], eax
                        mov              dword ptr [rbp + 596], r14d
                                                                                        jmp   n35_match_lit_α
n37_match_arbno_af:
                        mov              rax, qword ptr [rbp + 616]
                        mov              rdx, qword ptr [rbp + 600]
                        lea              rsp, [rbp + 648]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 600]
                        test             ecx, ecx
                                                                                        jz    .Lx91_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 600], ecx
                        mov              qword ptr [rbp + 608], rax
                        lea              rbp, [rax + -600]
                                                                                        jmp   n38_match_lit_β
.Lx91_2:
                        mov              r14d, dword ptr [rbp + 592]
                        mov              rsp, qword ptr [rbp + 616]
                                                                                        jmp   n30_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n38_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n37_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97
                                                                                        jne   n37_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n37_match_arbno_as
n38_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n37_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 720]
                        add              rsp, 728
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 720]
                        add              rsp, 728
                        ret
                        .section         .note.GNU-stack,"",@progbits
