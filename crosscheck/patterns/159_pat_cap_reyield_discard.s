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
                        sub              rsp, 248
                        mov              rdi, rsp
                        mov              ecx, 248
                        xor              eax, eax
                        rep stosb
main_α_body:
#=======================================================================================================================
#  'AXB' ? 'A' ARB . OUTPUT ('B' | 'C')
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        mov              qword ptr [rsp + 224], 1
                        mov              rax, qword ptr [rip + .Lx11_0]
                        mov              qword ptr [rsp + 232], rax
                                                                                        jmp   n1_match_head_α
n0_lit_string_β:
                                                                                        jmp   main_γ
.Lx11_0:
                        .quad            .Lx11_0_s
.Lx11_0_s:
                        .string          "AXB"
#-----------------------------------------------------------------------------------------------------------------------
n1_match_head_α:
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
.Lx13_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n2_match_sequence_α
n1_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx13_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx13_1
                                                                                        jmp   .Lx13_0
.Lx13_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx13_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx13_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 64]
                        mov              r14, qword ptr [rsp + 72]
                        mov              r15, qword ptr [rsp + 80]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 88]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n2_match_sequence_α:
                                                                                        jmp   n4_match_lit_α
n2_match_sequence_as:
                                                                                        jmp   n3_match_release_α
n2_match_sequence_β:
                                                                                        jmp   n7_match_alternate_β
n2_match_sequence_af:
                                                                                        jmp   n1_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n3_match_release_α:
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
.Lx17_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx17_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx17_1:
                        test             rax, rax
                                                                                        je    .Lx17_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx17_3]
                        lea              rdx, [rip + .Lx17_4]
                                                                                        jmp   rax
.Lx17_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx17_1
.Lx17_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx17_1
.Lx17_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx17_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx17_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 64]
                        mov              r14, qword ptr [rsp + 72]
                        mov              r15, qword ptr [rsp + 80]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 88]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n4_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n1_match_head_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 65
                                                                                        jne   n1_match_head_β
                        add              r14d, 1
                                                                                        jmp   n5_match_assign_save_α
n4_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n1_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n5_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n8_match_arb_α
n5_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n4_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n6_match_assign_cond_α:
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
                                                                                        jmp   n7_match_alternate_α
n6_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n8_match_arb_β
#-----------------------------------------------------------------------------------------------------------------------
n7_match_alternate_α:
                        mov              dword ptr [rsp + 256], r14d
                        lea              rax, [rip + .Lx25_21]
                        mov              qword ptr [rsp + 272], rax
                                                                                        jmp   n9_match_lit_α
.Lx25_21:
                        lea              rax, [rip + .Lx25_19]
                        mov              qword ptr [rsp + 272], rax
                                                                                        jmp   n10_match_lit_α
n7_match_alternate_s0:
                        lea              rax, [rip + .Lx25_40]
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n7_match_alternate_as
n7_match_alternate_s1:
                        lea              rax, [rip + .Lx25_41]
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n7_match_alternate_as
.Lx25_40:
                                                                                        jmp   n9_match_lit_β
.Lx25_41:
                                                                                        jmp   n10_match_lit_β
n7_match_alternate_as:
                                                                                        jmp   n3_match_release_α
n7_match_alternate_β:
                        mov              rax, qword ptr [rsp + 264]
                                                                                        jmp   rax
n7_match_alternate_af:
                        mov              r14d, dword ptr [rsp + 256]
                        mov              rax, qword ptr [rsp + 272]
                                                                                        jmp   rax
.Lx25_19:
                                                                                        jmp   n6_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n8_match_arb_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 64], 0
                        mov              eax, r14d
                        mov              dword ptr [rsp + 68], eax
                                                                                        jmp   n6_match_assign_cond_α
n8_match_arb_β:
                        add              dword ptr [rsp + 64], 1
                        mov              eax, dword ptr [rsp + 68]
                        add              eax, dword ptr [rsp + 64]
                        cmp              eax, r15d
                                                                                        jg    .Lx27_0
                        mov              r14d, eax
                                                                                        jmp   n6_match_assign_cond_α
.Lx27_0:
                        mov              r14d, dword ptr [rsp + 68]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n4_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n9_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n7_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 66
                                                                                        jne   n7_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n7_match_alternate_s0
n9_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n7_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n10_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n7_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 67
                                                                                        jne   n7_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n7_match_alternate_s1
n10_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n7_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 248
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 248
                        ret
                        .section         .rodata
.S0:                    .string          "OUTPUT"
                        .text
                        .section         .note.GNU-stack,"",@progbits
