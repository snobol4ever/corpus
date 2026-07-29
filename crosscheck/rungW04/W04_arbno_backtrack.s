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
                        sub              rsp, 264
                        mov              rdi, rsp
                        mov              ecx, 264
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 256], rbp
                        mov              rbp, rsp
main_α_body:
#=======================================================================================================================
#         subject = 'xxx'
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx14_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_assign_α
n0_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n4_var_α
.Lx14_0:
                        .quad            .Lx14_0_s
.Lx14_0_s:
                        .string          "xxx"
#-----------------------------------------------------------------------------------------------------------------------
n1_goto_α:
                                                                                        jmp   n3_lit_string_α
n1_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n4_var_α
n2_assign_β:
                                                                                        jmp   n4_var_α
#=======================================================================================================================
# e001    OUTPUT = 'FAIL W04/003: should have matched'
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx17_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n5_assign_α
n3_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx17_0:
                        .quad            .Lx17_0_s
.Lx17_0_s:
                        .string          "FAIL W04/003: should have matched"
#=======================================================================================================================
#         subject (ARBNO('ab') 'xxx')  :f(e001)
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n6_match_head_α
n4_var_β:
                                                                                        jmp   n3_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx19_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
n5_assign_β:
                                                                                        jmp   main_γ
.Lx19_0:
                        .quad            .Lx19_0_s
.Lx19_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n6_match_head_α:
                        mov              qword ptr [rbp + 96], r13
                        mov              qword ptr [rbp + 104], r14
                        mov              qword ptr [rbp + 112], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 120], rax
                        mov              qword ptr [rbp + 88], rbp
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
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
.Lx21_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n7_match_sequence_α
n6_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx21_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx21_1
                                                                                        jmp   .Lx21_0
.Lx21_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx21_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx21_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 96]
                        mov              r14, qword ptr [rbp + 104]
                        mov              r15, qword ptr [rbp + 112]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 120]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 88]
                                                                                        jmp   n3_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n7_match_sequence_α:
                                                                                        jmp   n9_match_arbno_α
n7_match_sequence_as:
                                                                                        jmp   n8_match_release_α
n7_match_sequence_β:
                                                                                        jmp   n10_match_lit_β
n7_match_sequence_af:
                                                                                        jmp   n6_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n8_match_release_α:
                        mov              rax, qword ptr [rsp + 32]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 40]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx25_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx25_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx25_1:
                        test             rax, rax
                                                                                        je    .Lx25_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx25_3]
                        lea              rdx, [rip + .Lx25_4]
                                                                                        jmp   rax
.Lx25_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx25_1
.Lx25_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx25_1
.Lx25_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx25_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx25_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 96]
                        mov              r14, qword ptr [rbp + 104]
                        mov              r15, qword ptr [rbp + 112]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 120]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 88]
                                                                                        jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_match_arbno_α:
                        sub              rsp, 48
                        mov              eax, 0
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 16], r14d
                        mov              dword ptr [rsp + 20], r14d
                        mov              dword ptr [rsp + 24], 1
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 40], rax
                                                                                        jmp   n10_match_lit_α
n9_match_arbno_β:
                        mov              r14d, dword ptr [rsp + 20]
                        mov              rax, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        sub              rsp, 48
                        mov              edx, 0
                        mov              qword ptr [rsp + 0], rdx
                        mov              qword ptr [rsp + 8], rdx
                        mov              dword ptr [rsp + 16], r14d
                        mov              dword ptr [rsp + 20], r14d
                        mov              dword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rcx
                                                                                        jmp   n12_match_lit_α
n9_match_arbno_as:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              r14d, eax
                                                                                        je    n12_match_lit_β
                        mov              dword ptr [rsp + 20], r14d
                                                                                        jmp   n10_match_lit_α
n9_match_arbno_af:
                        mov              eax, dword ptr [rsp + 24]
                        test             eax, eax
                                                                                        jnz   .Lx27_2
                        add              rsp, 48
                                                                                        jmp   n12_match_lit_β
.Lx27_2:
                        mov              r14d, dword ptr [rsp + 16]
                        add              rsp, 48
                                                                                        jmp   n6_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n10_match_lit_α:
                        mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d
                                                                                        jg    n9_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 120
                                                                                        jne   n9_match_arbno_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 120
                                                                                        jne   n9_match_arbno_β
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 120
                                                                                        jne   n9_match_arbno_β
                        add              r14d, 3
                                                                                        jmp   n8_match_release_α
n10_match_lit_β:
                        sub              r14d, 3
                                                                                        jmp   n9_match_arbno_β
#=======================================================================================================================
#         OUTPUT = 'PASS W04/003: arbno zero then literal'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n13_assign_α
n11_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx30_0:
                        .quad            .Lx30_0_s
.Lx30_0_s:
                        .string          "PASS W04/003: arbno zero then literal"
#-----------------------------------------------------------------------------------------------------------------------
n12_match_lit_α:
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d
                                                                                        jg    n9_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97
                                                                                        jne   n9_match_arbno_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 98
                                                                                        jne   n9_match_arbno_af
                        add              r14d, 2
                                                                                        jmp   n9_match_arbno_as
n12_match_lit_β:
                        sub              r14d, 2
                                                                                        jmp   n9_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx33_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
n13_assign_β:
                                                                                        jmp   main_γ
.Lx33_0:
                        .quad            .Lx33_0_s
.Lx33_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 256]
                        add              rsp, 264
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 256]
                        add              rsp, 264
                        ret
                        .section         .note.GNU-stack,"",@progbits
