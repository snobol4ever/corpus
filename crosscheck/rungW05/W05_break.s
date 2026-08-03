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
                        mov              r12, qword ptr [0x70000000]
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#=======================================================================================================================
#         subject = 'key:value'
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx21_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_assign_α
.Lx21_0:
                        .quad            .Lx21_0_s
.Lx21_0_s:
                        .string          "key:value"
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # subject
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n3_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n4_statement_begin_α
#=======================================================================================================================
#         subject BREAK(':')  :f(e001)
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:
                                                                                        jmp   n5_var_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # subject
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n6_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n6_match_begin_α:
                        sub              rsp, 128
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
                        mov              rdi, qword ptr [rsp + 128]                     # var
                        mov              rsi, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 96], r13                      # outer_Σ
                        mov              qword ptr [rsp + 104], r14                     # outer_δ
                        mov              qword ptr [rsp + 112], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 120], rax                     # cap_gen
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
                        mov              qword ptr [rsp + 16], rax                      # rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax                       # patstk_mark
                        mov              dword ptr [rsp + 0], 0                         # start_δ
.Lx29_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n7_match_break_α
n6_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx29_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx29_1
                                                                                        jmp   .Lx29_0
.Lx29_1:
                        mov              r10, qword ptr [1879048192]
.Lx29_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx29_2
                        mov              rax, qword ptr [r10 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]                       # cas_rsp_mark
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 96]                      # outer_Σ
                        mov              r14, qword ptr [rsp + 104]                     # outer_δ
                        mov              r15, qword ptr [rsp + 112]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 120]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 144
                                                                                        jmp   n14_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n7_match_break_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx31_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx31_237
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n6_match_begin_β
.Lx31_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 58
                                                                                        je    .Lx31_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx31_238
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n6_match_begin_β
.Lx31_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 58
                                                                                        je    .Lx31_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx31_239
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n6_match_begin_β
.Lx31_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 58
                                                                                        je    .Lx31_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx31_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n6_match_begin_β
.Lx31_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 58
                                                                                        je    .Lx31_1
                        add              ecx, 1
                                                                                        jmp   .Lx31_0
.Lx31_1:
                        mov              dword ptr [rsp + 32], r14d
                        mov              r14d, ecx
                                                                                        jmp   n8_match_end_α
n7_match_break_β:
                        mov              r14d, dword ptr [rsp + 32]
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n6_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n8_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx33_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx33_9
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
                        mov              r13, qword ptr [rsp + 112]                     # outer_Σ
                        mov              r14, qword ptr [rsp + 120]                     # outer_δ
                        mov              r15, qword ptr [rsp + 128]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 136]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n9_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n9_statement_end_α:
                        add              rsp, 160
                                                                                        jmp   n10_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'PASS W05/004: break matched'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_begin_α:
                                                                                        jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 27
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n12_assign_α
.Lx38_0:
                        .quad            .Lx38_0_s
.Lx38_0_s:
                        .string          "PASS W05/004: break matched"
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx39_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n13_statement_end_α
.Lx39_0:
                        .quad            .Lx39_0_s
.Lx39_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#=======================================================================================================================
# e001    OUTPUT = 'FAIL W05/004: break should match'
#-----------------------------------------------------------------------------------------------------------------------
n14_statement_begin_α:
                                                                                        jmp   n15_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 32
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n16_assign_α
.Lx44_0:
                        .quad            .Lx44_0_s
.Lx44_0_s:
                        .string          "FAIL W05/004: break should match"
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx45_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n17_statement_end_α
.Lx45_0:
                        .quad            .Lx45_0_s
.Lx45_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n18_goto_α:
                                                                                        jmp   n14_statement_begin_α
n18_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
