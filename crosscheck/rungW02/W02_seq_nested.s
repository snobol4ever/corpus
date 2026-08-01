                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "subject"
.Lgvan1:                .string          "pat"
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
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#=======================================================================================================================
#         subject = 'xabc'
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 4                         # lit_string
                        mov              rax, qword ptr [rip + .Lx13_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n1_assign_α
.Lx13_0:
                        .quad            .Lx13_0_s
.Lx13_0_s:
                        .string          "xabc"
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              qword ptr [1879052288], rax                    # subject
                        mov              qword ptr [1879052296], rdx                    # subject
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 3                         # lit_string
                        mov              rax, qword ptr [rip + .Lx15_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n3_assign_α
.Lx15_0:
                        .quad            .Lx15_0_s
.Lx15_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              qword ptr [1879052304], rax                    # pat
                        mov              qword ptr [1879052312], rdx                    # pat
                        add              rsp, 32
                                                                                        jmp   n4_var_α
#=======================================================================================================================
#         subject pat              :f(e001)
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        sub              rsp, 128
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
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # subject
                        mov              rdx, qword ptr [1879052296]                    # subject
                        mov              qword ptr [rsp + 0], rax                       # subject
                        mov              qword ptr [rsp + 8], rdx                       # subject
                                                                                        jmp   n5_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n5_match_head_α:
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
                        mov              qword ptr [rbp + 32], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 24], rax
                        mov              dword ptr [rbp + 16], 0
.Lx19_0:
                        mov              r14d, dword ptr [rbp + 16]
                                                                                        jmp   n6_match_patref_α
n5_match_head_β:
                        add              dword ptr [rbp + 16], 1
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, r15d
                                                                                        jg    .Lx19_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx19_1
                                                                                        jmp   .Lx19_0
.Lx19_1:
                        mov              rax, qword ptr [rbp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 32]
                        mov              r10, qword ptr [1879048192]
.Lx19_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx19_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80]
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 88]                      # capgen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 8]
                        add              rsp, 128
                                                                                        jmp   n10_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_match_patref_α:
                        mov              rax, qword ptr [1879052304]                    # pat
                        mov              rdx, qword ptr [1879052312]                    # pat
                        cmp              eax, 3
                                                                                        jne   .Lx20_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx20_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx20_10
.Lx20_9:
                        xor              eax, eax
.Lx20_10:
                        test             rax, rax
                                                                                        jz    .Lx20_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx20_4]
                        lea              rdx, [rip + .Lx20_5]
                                                                                        jmp   rax
.Lx20_4:
                        lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rbp + 16], eax
                                                                                        jmp   n7_match_release_α
.Lx20_5:
                                                                                        jmp   n5_match_head_β
.Lx20_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx20_2:
                        test             rax, rax
                                                                                        je    .Lx20_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx20_7]
                        lea              rdx, [rip + .Lx20_8]
                                                                                        jmp   rax
.Lx20_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx20_2
.Lx20_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx20_2
.Lx20_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n5_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx20_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n7_match_release_α
.Lx20_6:
                        add              rsp, 16
                                                                                        jmp   n5_match_head_β
n6_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n7_match_release_α:
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
.Lx22_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx22_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx22_1:
                        test             rax, rax
                                                                                        je    .Lx22_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx22_3]
                        lea              rdx, [rip + .Lx22_4]
                                                                                        jmp   rax
.Lx22_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx22_1
.Lx22_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx22_1
.Lx22_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx22_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx22_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80]
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 88]                      # capgen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 8]
                        add              rsp, 128
                                                                                        jmp   n8_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'PASS W02/002: nested seq match succeeded'  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 40                        # lit_string
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n9_assign_α
.Lx23_0:
                        .quad            .Lx23_0_s
.Lx23_0_s:
                        .string          "PASS W02/002: nested seq match succeeded"
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              rdi, qword ptr [rip + .Lx24_0]                 # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx24_0:
                        .quad            .Lx24_0_s
.Lx24_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# e001    OUTPUT = 'FAIL W02/002: nested seq match should succeed'
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 45                        # lit_string
                        mov              rax, qword ptr [rip + .Lx25_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n11_assign_α
.Lx25_0:
                        .quad            .Lx25_0_s
.Lx25_0_s:
                        .string          "FAIL W02/002: nested seq match should succeed"
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              rdi, qword ptr [rip + .Lx26_0]                 # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx26_0:
                        .quad            .Lx26_0_s
.Lx26_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n12_goto_α:
                                                                                        jmp   n10_lit_string_α
n12_goto_β:
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
                        .section         .rodata
.S0:                    .string          "pat"
                        .text
                        .section         .note.GNU-stack,"",@progbits
