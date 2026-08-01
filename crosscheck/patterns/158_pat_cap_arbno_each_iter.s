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
#  'abc' POS(0) ARBNO(LEN(1) . OUTPUT) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 288
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0                         # stmt_claim
                        mov              qword ptr [rsp + 16], 0                        # stmt_claim
                        mov              qword ptr [rsp + 24], 0                        # stmt_claim
                        mov              qword ptr [rsp + 32], 0                        # stmt_claim
                        mov              qword ptr [rsp + 40], 0                        # stmt_claim
                        mov              qword ptr [rsp + 48], 0                        # stmt_claim
                        mov              qword ptr [rsp + 56], 0                        # stmt_claim
                        mov              qword ptr [rsp + 64], 0                        # stmt_claim
                        mov              qword ptr [rsp + 72], 0                        # stmt_claim
                        mov              qword ptr [rsp + 80], 0                        # stmt_claim
                        mov              qword ptr [rsp + 88], 0                        # stmt_claim
                        mov              qword ptr [rsp + 96], 0                        # stmt_claim
                        mov              qword ptr [rsp + 104], 0                       # stmt_claim
                        mov              qword ptr [rsp + 112], 0                       # stmt_claim
                        mov              qword ptr [rsp + 120], 0                       # stmt_claim
                        mov              qword ptr [rsp + 128], 0                       # stmt_claim
                        mov              qword ptr [rsp + 136], 0                       # stmt_claim
                        mov              qword ptr [rsp + 144], 0                       # stmt_claim
                        mov              qword ptr [rsp + 152], 0                       # stmt_claim
                        mov              qword ptr [rsp + 160], 0                       # stmt_claim
                        mov              qword ptr [rsp + 168], 0                       # stmt_claim
                        mov              qword ptr [rsp + 176], 0                       # stmt_claim
                        mov              qword ptr [rsp + 184], 0                       # stmt_claim
                        mov              qword ptr [rsp + 192], 0                       # stmt_claim
                        mov              qword ptr [rsp + 200], 0                       # stmt_claim
                        mov              qword ptr [rsp + 208], 0                       # stmt_claim
                        mov              qword ptr [rsp + 216], 0                       # stmt_claim
                        mov              qword ptr [rsp + 224], 0                       # stmt_claim
                        mov              qword ptr [rsp + 232], 0                       # stmt_claim
                        mov              qword ptr [rsp + 240], 0                       # stmt_claim
                        mov              qword ptr [rsp + 248], 0                       # stmt_claim
                        mov              qword ptr [rsp + 256], 0                       # stmt_claim
                        mov              qword ptr [rsp + 264], 0                       # stmt_claim
                        mov              qword ptr [rsp + 272], 0                       # stmt_claim
                        mov              qword ptr [rsp + 280], 0                       # stmt_claim
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 3                         # lit_string
                        mov              rax, qword ptr [rip + .Lx12_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n1_match_head_α
n0_lit_string_β:
                        add              rsp, 16
                        add              rsp, 288
                                                                                        jmp   main_γ
.Lx12_0:
                        .quad            .Lx12_0_s
.Lx12_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n1_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 56], rbp                      # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 64], r13                      # outer_Σ
                        mov              qword ptr [rbp + 72], r14                      # outer_δ
                        mov              qword ptr [rbp + 80], r15                      # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 88], rax                      # cap_gen
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
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx14_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n2_match_sequence_α
n1_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx14_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx14_1
                                                                                        jmp   .Lx14_0
.Lx14_1:
                        mov              r10, qword ptr [1879048192]
.Lx14_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx14_2
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80]
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 88]                      # capgen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 56]
                        add              rsp, 288
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n2_match_sequence_α:
                                                                                        jmp   n10_lit_integer_α
n2_match_sequence_as:
                                                                                        jmp   n3_match_release_α
n2_match_sequence_β:
                                                                                        jmp   n5_match_rpos_β
n2_match_sequence_af:
                                                                                        jmp   n1_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n3_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx18_8:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx18_8
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
.Lx18_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx18_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx18_1:
                        test             rax, rax
                                                                                        je    .Lx18_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx18_3]
                        lea              rdx, [rip + .Lx18_4]
                                                                                        jmp   rax
.Lx18_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx18_1
.Lx18_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx18_1
.Lx18_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx18_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx18_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80]
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 88]                      # capgen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 56]
                        add              rsp, 288
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        mov              qword ptr [rsp + 256], 6                       # lit_integer
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rsp + 264], rax                     # lit_integer
                                                                                        jmp   n5_match_rpos_α
n4_lit_integer_β:
                                                                                        jmp   n6_match_arbno_β
.Lx19_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n5_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n6_match_arbno_β
                                                                                        jmp   n3_match_release_α
n5_match_rpos_β:
                                                                                        jmp   n6_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n6_match_arbno_α:
                        sub              rsp, 272
                        mov              eax, 0
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rax
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rax
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rax
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rax
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rax
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rax
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rax
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rax
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rax
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rax
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rax
                        mov              dword ptr [rsp + 240], r14d
                        mov              dword ptr [rsp + 244], r14d
                        mov              dword ptr [rsp + 248], 1
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n4_lit_integer_α
n6_match_arbno_β:
                        mov              r14d, dword ptr [rsp + 244]
                        mov              rax, qword ptr [rsp + 256]
                        mov              rcx, qword ptr [rsp + 264]
                        sub              rsp, 256
                        mov              edx, 0
                        mov              qword ptr [rsp + 0], rdx
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], rdx
                        mov              qword ptr [rsp + 24], rdx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rdx
                        mov              qword ptr [rsp + 48], rdx
                        mov              qword ptr [rsp + 56], rdx
                        mov              qword ptr [rsp + 64], rdx
                        mov              qword ptr [rsp + 72], rdx
                        mov              qword ptr [rsp + 80], rdx
                        mov              qword ptr [rsp + 88], rdx
                        mov              qword ptr [rsp + 96], rdx
                        mov              qword ptr [rsp + 104], rdx
                        mov              qword ptr [rsp + 112], rdx
                        mov              qword ptr [rsp + 120], rdx
                        mov              qword ptr [rsp + 128], rdx
                        mov              qword ptr [rsp + 136], rdx
                        mov              qword ptr [rsp + 144], rdx
                        mov              qword ptr [rsp + 152], rdx
                        mov              qword ptr [rsp + 160], rdx
                        mov              qword ptr [rsp + 168], rdx
                        mov              qword ptr [rsp + 176], rdx
                        mov              qword ptr [rsp + 184], rdx
                        mov              qword ptr [rsp + 192], rdx
                        mov              qword ptr [rsp + 200], rdx
                        mov              qword ptr [rsp + 208], rdx
                        mov              qword ptr [rsp + 216], rdx
                        mov              dword ptr [rsp + 224], r14d
                        mov              dword ptr [rsp + 228], r14d
                        mov              dword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rcx
                                                                                        jmp   n7_match_assign_save_α
n6_match_arbno_as:
                        mov              eax, dword ptr [rsp + 240]
                        cmp              r14d, eax
                                                                                        je    n9_match_assign_cond_β
                        mov              dword ptr [rsp + 244], r14d
                                                                                        jmp   n4_lit_integer_α
n6_match_arbno_af:
                        mov              eax, dword ptr [rsp + 232]
                        test             eax, eax
                                                                                        jnz   .Lx22_2
                        add              rsp, 256
                                                                                        jmp   n9_match_assign_cond_β
.Lx22_2:
                        mov              r14d, dword ptr [rsp + 224]
                        add              rsp, 256
                                                                                        jmp   n11_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n7_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n8_match_len_α
n7_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n6_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n8_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx25_240
                        add              rsp, 16
                                                                                        jmp   n6_match_arbno_af
.Lx25_240:
                        add              r14d, 1
                                                                                        jmp   n9_match_assign_cond_α
n8_match_len_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n6_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n9_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
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
                                                                                        jmp   n6_match_arbno_as
n9_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n8_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        mov              qword ptr [rsp + 128], 6                       # lit_integer
                        mov              rax, qword ptr [rip + .Lx28_0]
                        mov              qword ptr [rsp + 136], rax                     # lit_integer
                                                                                        jmp   n11_match_pos_α
n10_lit_integer_β:
                                                                                        jmp   n1_match_head_β
.Lx28_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n11_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n1_match_head_β
                                                                                        jmp   n6_match_arbno_α
n11_match_pos_β:
                                                                                        jmp   n1_match_head_β
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
                        .section         .rodata
.S0:                    .string          "OUTPUT"
                        .text
                        .section         .note.GNU-stack,"",@progbits
