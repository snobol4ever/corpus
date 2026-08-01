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
#  'ABC' ? POS(0) BAL $ OUTPUT FAIL
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 208
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx12_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_match_head_α
n0_lit_string_β:
                        add              rsp, 16
                        add              rsp, 208
                                                                                        jmp   n4_lit_string_α
.Lx12_0:
                        .quad            .Lx12_0_s
.Lx12_0_s:
                        .string          "ABC"
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
                        mov              r13, qword ptr [rsp + 64]
                        mov              r14, qword ptr [rsp + 72]
                        mov              r15, qword ptr [rsp + 80]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 88]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 208
                                                                                        jmp   n4_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_match_sequence_α:
                                                                                        jmp   n10_lit_integer_α
n2_match_sequence_as:
                                                                                        jmp   n3_match_release_α
n2_match_sequence_β:
                                                                                        jmp   n6_goto_β
n2_match_sequence_af:
                                                                                        jmp   n1_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n3_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx18_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx18_9
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
                        mov              r13, qword ptr [rsp + 64]
                        mov              r14, qword ptr [rsp + 72]
                        mov              r15, qword ptr [rsp + 80]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 88]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 208
                                                                                        jmp   n4_lit_string_α
#=======================================================================================================================
#  OUTPUT = 'done'
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n5_assign_α
n4_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx19_0:
                        .quad            .Lx19_0_s
.Lx19_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx20_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
n5_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx20_0:
                        .quad            .Lx20_0_s
.Lx20_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n6_goto_α:
                                                                                        jmp   n9_match_assign_imm_β
n6_goto_β:
                                                                                        jmp   n9_match_assign_imm_β
#-----------------------------------------------------------------------------------------------------------------------
n7_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n8_match_bal_α
n7_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n1_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n8_match_bal_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 64], 0
                        mov              eax, r14d
                        mov              dword ptr [rsp + 68], eax
                        mov              dword ptr [rsp + 72], 0
n8_match_bal_β:
.Lx25_0:
                        mov              eax, dword ptr [rsp + 68]
                        add              eax, dword ptr [rsp + 64]
                        cmp              eax, r15d
                                                                                        jge   .Lx25_3
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        add              dword ptr [rsp + 64], 1
                        mov              edx, dword ptr [rsp + 72]
                        cmp              esi, 40
                                                                                        jne   .Lx25_1
                        add              edx, 1
                                                                                        jmp   .Lx25_2
.Lx25_1:
                        cmp              esi, 41
                                                                                        jne   .Lx25_2
                        sub              edx, 1
                        cmp              edx, 0
                                                                                        jl    .Lx25_3
.Lx25_2:
                        mov              dword ptr [rsp + 72], edx
                        test             edx, edx
                                                                                        jne   .Lx25_0
                        mov              eax, dword ptr [rsp + 68]
                        add              eax, dword ptr [rsp + 64]
                        mov              r14d, eax
                                                                                        jmp   n9_match_assign_imm_α
.Lx25_3:
                        mov              eax, dword ptr [rsp + 68]
                        mov              r14d, eax
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n9_match_assign_imm_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rdi, [rip + .S0]
                        mov              esi, eax
                        mov              edx, r14d
                        mov              ecx, 1
                        call             rt_cap_open@PLT
                        test             rax, rax
                                                                                        je    .Lx27_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx27_2]
                        lea              rdx, [rip + .Lx27_3]
                                                                                        jmp   rax
.Lx27_2:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_cap_finish@PLT
                                                                                        jmp   .Lx27_1
.Lx27_3:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_cap_finish@PLT
.Lx27_1:
                                                                                        jmp   n6_goto_α
n9_match_assign_imm_β:
                                                                                        jmp   n8_match_bal_β
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        mov              qword ptr [rsp + 160], 6
                        mov              rax, qword ptr [rip + .Lx28_0]
                        mov              qword ptr [rsp + 168], rax
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
                                                                                        jmp   n7_match_assign_save_α
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
