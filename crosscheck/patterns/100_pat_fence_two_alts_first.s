                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "X"
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
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#=======================================================================================================================
#         X = 'AB'
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx21_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_assign_α
n0_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n2_var_α
.Lx21_0:
                        .quad            .Lx21_0_s
.Lx21_0_s:
                        .string          "AB"
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        add              rsp, 16
                                                                                        jmp   n2_var_α
n1_assign_β:
                        add              rsp, 16
                                                                                        jmp   n2_var_α
#=======================================================================================================================
#         X  POS(0) FENCE(LEN(1) | LEN(2)) LEN(1) RPOS(0)       :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        sub              rsp, 240
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n3_match_head_α
n2_var_β:
                        add              rsp, 16
                        add              rsp, 240
                                                                                        jmp   n17_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n3_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 88], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 96], r13
                        mov              qword ptr [rbp + 104], r14
                        mov              qword ptr [rbp + 112], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 120], rax
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
                        mov              qword ptr [rbp + 64], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 56], rax
                        mov              dword ptr [rbp + 48], 0
.Lx25_0:
                        mov              r14d, dword ptr [rbp + 48]
                                                                                        jmp   n4_lit_integer_α
n3_match_head_β:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, r15d
                                                                                        jg    .Lx25_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx25_1
                                                                                        jmp   .Lx25_0
.Lx25_1:
                        mov              rax, qword ptr [rbp + 56]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 64]
                        mov              r10, qword ptr [1879048192]
.Lx25_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx25_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 96]
                        mov              r14, qword ptr [rbp + 104]
                        mov              r15, qword ptr [rbp + 112]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 120]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 88]
                        add              rsp, 240
                                                                                        jmp   n17_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        mov              qword ptr [rsp + 208], 6
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rsp + 216], rax
                                                                                        jmp   n5_match_pos_α
n4_lit_integer_β:
                                                                                        jmp   n3_match_head_α
.Lx26_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n5_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n3_match_head_β
                                                                                        jmp   n6_match_fence1_α
n5_match_pos_β:
                                                                                        jmp   n3_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n6_match_fence1_α:
                        mov              qword ptr [rbp + 160], rsp
                                                                                        jmp   n14_match_alternate_α
n6_match_fence1_as:
                        mov              rsp, rbp
                        mov              qword ptr [rbp + 160], rbp
                                                                                        jmp   n7_match_sequence_α
n6_match_fence1_β:
n6_match_fence1_af:
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n3_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n7_match_sequence_α:
                                                                                        jmp   n13_match_len_α
n7_match_sequence_as:
                                                                                        jmp   n8_match_release_α
n7_match_sequence_β:
                                                                                        jmp   n12_match_rpos_β
n7_match_sequence_af:
                                                                                        jmp   n17_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n8_match_release_α:
                        mov              rax, qword ptr [rbp + 56]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 64]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx33_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx33_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx33_1:
                        test             rax, rax
                                                                                        je    .Lx33_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx33_3]
                        lea              rdx, [rip + .Lx33_4]
                                                                                        jmp   rax
.Lx33_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx33_1
.Lx33_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx33_1
.Lx33_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx33_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx33_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 96]
                        mov              r14, qword ptr [rbp + 104]
                        mov              r15, qword ptr [rbp + 112]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 120]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 88]
                        add              rsp, 240
                                                                                        jmp   n9_lit_string_α
#=======================================================================================================================
# YES     OUTPUT = 'matched first alt then continued'           :(END)
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 32
                        mov              rax, qword ptr [rip + .Lx34_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n10_assign_α
n9_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx34_0:
                        .quad            .Lx34_0_s
.Lx34_0_s:
                        .string          "matched first alt then continued"
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx35_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
n10_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx35_0:
                        .quad            .Lx35_0_s
.Lx35_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:
                        mov              qword ptr [rsp + 144], 6
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rsp + 152], rax
                                                                                        jmp   n12_match_rpos_α
n11_lit_integer_β:
                                                                                        jmp   n13_match_len_β
.Lx36_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n12_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n13_match_len_β
                                                                                        jmp   n8_match_release_α
n12_match_rpos_β:
                                                                                        jmp   n13_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n13_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n17_lit_string_α
                        add              r14d, 1
                                                                                        jmp   n11_lit_integer_α
n13_match_len_β:
                        sub              r14d, 1
                                                                                        jmp   n17_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n14_match_alternate_α:
                        mov              dword ptr [rbp + 176], r14d
                        lea              rax, [rip + .Lx40_21]
                        mov              qword ptr [rbp + 192], rax
                                                                                        jmp   n16_match_len_α
.Lx40_21:
                        lea              rax, [rip + .Lx40_19]
                        mov              qword ptr [rbp + 192], rax
                                                                                        jmp   n15_match_len_α
n14_match_alternate_s0:
                        lea              rax, [rip + .Lx40_40]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n14_match_alternate_as
n14_match_alternate_s1:
                        lea              rax, [rip + .Lx40_41]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n14_match_alternate_as
.Lx40_40:
                                                                                        jmp   n16_match_len_β
.Lx40_41:
                                                                                        jmp   n15_match_len_β
n14_match_alternate_as:
                                                                                        jmp   n6_match_fence1_as
n14_match_alternate_β:
                        mov              rax, qword ptr [rbp + 184]
                                                                                        jmp   rax
n14_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 176]
                        mov              rax, qword ptr [rbp + 192]
                                                                                        jmp   rax
.Lx40_19:
                                                                                        jmp   n6_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n15_match_len_α:
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d
                                                                                        jg    n14_match_alternate_af
                        add              r14d, 2
                                                                                        jmp   n14_match_alternate_s1
n15_match_len_β:
                        sub              r14d, 2
                                                                                        jmp   n14_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n16_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n14_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n14_match_alternate_s0
n16_match_len_β:
                        sub              r14d, 1
                                                                                        jmp   n14_match_alternate_af
#=======================================================================================================================
# NO      OUTPUT = 'unexpected fail'
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx43_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n18_assign_α
n17_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx43_0:
                        .quad            .Lx43_0_s
.Lx43_0_s:
                        .string          "unexpected fail"
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx44_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
n18_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx44_0:
                        .quad            .Lx44_0_s
.Lx44_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n19_goto_α:
                                                                                        jmp   n9_lit_string_α
n19_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n20_goto_α:
                                                                                        jmp   n17_lit_string_α
n20_goto_β:
                                                                                        jmp   main_ω
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
