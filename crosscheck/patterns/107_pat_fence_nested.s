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
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_assign_α
n0_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n2_var_α
.Lx19_0:
                        .quad            .Lx19_0_s
.Lx19_0_s:
                        .string          "AB"
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # X
                        mov              qword ptr [1879052296], rdx
                        add              rsp, 16
                                                                                        jmp   n2_var_α
n1_assign_β:
                        add              rsp, 16
                                                                                        jmp   n2_var_α
#=======================================================================================================================
#         X  POS(0) FENCE(FENCE(LEN(1)) | LEN(2)) RPOS(0)       :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        sub              rsp, 224
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
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # X
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n3_match_begin_α
n2_var_β:
                        add              rsp, 16
                        add              rsp, 224
                                                                                        jmp   n15_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n3_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 88], rbp                      # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 96], r13                      # outer_Σ
                        mov              qword ptr [rbp + 104], r14                     # outer_δ
                        mov              qword ptr [rbp + 112], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 120], rax                     # cap_gen
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]                    # cas_top
                        mov              qword ptr [r10 + 0], 0
                        mov              qword ptr [r10 + 8], rsp                       # cas_rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r10 + 16], rax                      # cas_patstk
                        add              r10, 24
                        mov              qword ptr [1879048192], r10                    # cas_top
                        mov              qword ptr [rbp + 64], rsp                      # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 56], rax                      # patstk_mark
                        mov              dword ptr [rbp + 48], 0                        # start_δ
.Lx23_0:
                        mov              r14d, dword ptr [rbp + 48]
                                                                                        jmp   n4_lit_integer_α
n3_match_begin_β:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, r15d
                                                                                        jg    .Lx23_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx23_1
                                                                                        jmp   .Lx23_0
.Lx23_1:
                        mov              rax, qword ptr [rbp + 56]                      # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 64]
                        mov              r10, qword ptr [1879048192]
.Lx23_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx23_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 96]                      # outer_Σ
                        mov              r14, qword ptr [rbp + 104]                     # outer_δ
                        mov              r15, qword ptr [rbp + 112]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 120]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 88]                      # old_rbp
                        add              rsp, 224
                                                                                        jmp   n15_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        mov              qword ptr [rsp + 192], 3                       # result
                        mov              rax, qword ptr [rip + .Lx24_0]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n5_match_pos_α
n4_lit_integer_β:
                                                                                        jmp   n3_match_begin_α
.Lx24_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n5_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n3_match_begin_β
                                                                                        jmp   n6_match_fence1_α
n5_match_pos_β:
                                                                                        jmp   n3_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n6_match_fence1_α:
                        mov              qword ptr [rbp + 144], rsp
                                                                                        jmp   n12_match_alternate_α
n6_match_fence1_as:
                        mov              rsp, rbp
                        mov              qword ptr [rbp + 144], rbp
                                                                                        jmp   n7_lit_integer_α
n6_match_fence1_β:
n6_match_fence1_af:
                        mov              rsp, qword ptr [rbp + 144]
                                                                                        jmp   n3_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        mov              qword ptr [rsp + 128], 3                       # result
                        mov              rax, qword ptr [rip + .Lx28_0]
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n8_match_rpos_α
n7_lit_integer_β:
                        mov              rbp, qword ptr [rbp + 88]                      # old_rbp
                        add              rsp, 224
                                                                                        jmp   n15_lit_string_α
.Lx28_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n8_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        je    .Lx29_240
                        mov              rbp, qword ptr [rbp + 88]                      # old_rbp
                        add              rsp, 224
                                                                                        jmp   n15_lit_string_α
.Lx29_240:
                                                                                        jmp   n9_match_end_α
n8_match_rpos_β:
                        mov              rbp, qword ptr [rbp + 88]
                        add              rsp, 224
                                                                                        jmp   n15_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_match_end_α:
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
.Lx31_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx31_5
                        lea              rdi, [r10 + 24]
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
                        mov              r10, qword ptr [1879048192]
.Lx31_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx31_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 96]                      # outer_Σ
                        mov              r14, qword ptr [rbp + 104]                     # outer_δ
                        mov              r15, qword ptr [rbp + 112]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 120]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 88]                      # old_rbp
                        add              rsp, 224
                                                                                        jmp   n10_lit_string_α
#=======================================================================================================================
# YES     OUTPUT = 'inner LEN(1) then outer alt LEN(2)'         :(END)
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 34
                        mov              rax, qword ptr [rip + .Lx32_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n11_assign_α
n10_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx32_0:
                        .quad            .Lx32_0_s
.Lx32_0_s:
                        .string          "inner LEN(1) then outer alt LEN(2)"
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx33_0]                 # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
n11_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx33_0:
                        .quad            .Lx33_0_s
.Lx33_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n12_match_alternate_α:
                        mov              dword ptr [rbp + 160], r14d
                        lea              rax, [rip + .Lx35_21]
                        mov              qword ptr [rbp + 176], rax
                                                                                        jmp   n14_match_len_α
.Lx35_21:
                        lea              rax, [rip + .Lx35_19]
                        mov              qword ptr [rbp + 176], rax
                                                                                        jmp   n13_match_len_α
n12_match_alternate_s0:
                        lea              rax, [rip + .Lx35_40]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n12_match_alternate_as
n12_match_alternate_s1:
                        lea              rax, [rip + .Lx35_41]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n12_match_alternate_as
.Lx35_40:
                                                                                        jmp   n14_match_len_β
.Lx35_41:
                                                                                        jmp   n13_match_len_β
n12_match_alternate_as:
                                                                                        jmp   n6_match_fence1_as
n12_match_alternate_β:
                        mov              rax, qword ptr [rbp + 168]
                                                                                        jmp   rax
n12_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 160]
                        mov              rax, qword ptr [rbp + 176]
                                                                                        jmp   rax
.Lx35_19:
                                                                                        jmp   n6_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n13_match_len_α:
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d
                                                                                        jg    n12_match_alternate_af
                        add              r14d, 2
                                                                                        jmp   n12_match_alternate_s1
n13_match_len_β:
                        sub              r14d, 2
                                                                                        jmp   n12_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n14_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n12_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n12_match_alternate_s0
n14_match_len_β:
                        sub              r14d, 1
                                                                                        jmp   n12_match_alternate_af
#=======================================================================================================================
# NO      OUTPUT = 'doubly sealed'
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 13
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n16_assign_α
n15_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx38_0:
                        .quad            .Lx38_0_s
.Lx38_0_s:
                        .string          "doubly sealed"
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx39_0]                 # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
n16_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx39_0:
                        .quad            .Lx39_0_s
.Lx39_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n17_goto_α:
                                                                                        jmp   n10_lit_string_α
n17_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n18_goto_α:
                                                                                        jmp   n15_lit_string_α
n18_goto_β:
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
