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
                        sub              rsp, 344
                        mov              rdi, rsp
                        mov              ecx, 344
                        xor              eax, eax
                        rep stosb
main_α_body:
#=======================================================================================================================
#  'B2' ? ('A' | 'B') . OUTPUT ('1' | '2' | '3') . OUTPUT
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        mov              qword ptr [rsp + 320], 1
                        mov              rax, qword ptr [rip + .Lx15_0]
                        mov              qword ptr [rsp + 328], rax
                                                                                        jmp   n1_match_head_α
n0_lit_string_β:
                                                                                        jmp   main_γ
.Lx15_0:
                        .quad            .Lx15_0_s
.Lx15_0_s:
                        .string          "B2"
#-----------------------------------------------------------------------------------------------------------------------
n1_match_head_α:
                        mov              qword ptr [rsp + 64], r13
                        mov              qword ptr [rsp + 72], r14
                        mov              qword ptr [rsp + 80], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 88], rax
                        mov              rdi, qword ptr [rsp + 320]
                        mov              rsi, qword ptr [rsp + 328]
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
.Lx17_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n2_match_sequence_α
n1_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx17_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx17_1
                                                                                        jmp   .Lx17_0
.Lx17_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx17_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx17_2
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
                                                                                        jmp   n4_match_assign_save_α
n2_match_sequence_as:
                                                                                        jmp   n3_match_release_α
n2_match_sequence_β:
                                                                                        jmp   n7_match_assign_cond_β
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
.Lx21_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx21_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx21_1:
                        test             rax, rax
                                                                                        je    .Lx21_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx21_3]
                        lea              rdx, [rip + .Lx21_4]
                                                                                        jmp   rax
.Lx21_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx21_1
.Lx21_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx21_1
.Lx21_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx21_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx21_6
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
n4_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n8_match_alternate_α
n4_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n1_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n5_match_assign_cond_α:
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
                                                                                        jmp   n6_match_assign_save_α
n5_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n8_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n6_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n9_match_alternate_α
n6_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n5_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n7_match_assign_cond_α:
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
                                                                                        jmp   n3_match_release_α
n7_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n9_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n8_match_alternate_α:
                        mov              dword ptr [rsp + 224], r14d
                        lea              rax, [rip + .Lx31_21]
                        mov              qword ptr [rsp + 240], rax
                                                                                        jmp   n10_match_lit_α
.Lx31_21:
                        lea              rax, [rip + .Lx31_19]
                        mov              qword ptr [rsp + 240], rax
                                                                                        jmp   n11_match_lit_α
n8_match_alternate_s0:
                        lea              rax, [rip + .Lx31_40]
                        mov              qword ptr [rsp + 232], rax
                                                                                        jmp   n8_match_alternate_as
n8_match_alternate_s1:
                        lea              rax, [rip + .Lx31_41]
                        mov              qword ptr [rsp + 232], rax
                                                                                        jmp   n8_match_alternate_as
.Lx31_40:
                                                                                        jmp   n10_match_lit_β
.Lx31_41:
                                                                                        jmp   n11_match_lit_β
n8_match_alternate_as:
                                                                                        jmp   n5_match_assign_cond_α
n8_match_alternate_β:
                        mov              rax, qword ptr [rsp + 232]
                                                                                        jmp   rax
n8_match_alternate_af:
                        mov              r14d, dword ptr [rsp + 224]
                        mov              rax, qword ptr [rsp + 240]
                                                                                        jmp   rax
.Lx31_19:
                                                                                        jmp   n4_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n9_match_alternate_α:
                        mov              dword ptr [rsp + 352], r14d
                        lea              rax, [rip + .Lx33_21]
                        mov              qword ptr [rsp + 368], rax
                                                                                        jmp   n12_match_lit_α
.Lx33_21:
                        lea              rax, [rip + .Lx33_22]
                        mov              qword ptr [rsp + 368], rax
                                                                                        jmp   n13_match_lit_α
.Lx33_22:
                        lea              rax, [rip + .Lx33_19]
                        mov              qword ptr [rsp + 368], rax
                                                                                        jmp   n14_match_lit_α
n9_match_alternate_s0:
                        lea              rax, [rip + .Lx33_40]
                        mov              qword ptr [rsp + 360], rax
                                                                                        jmp   n9_match_alternate_as
n9_match_alternate_s1:
                        lea              rax, [rip + .Lx33_41]
                        mov              qword ptr [rsp + 360], rax
                                                                                        jmp   n9_match_alternate_as
n9_match_alternate_s2:
                        lea              rax, [rip + .Lx33_42]
                        mov              qword ptr [rsp + 360], rax
                                                                                        jmp   n9_match_alternate_as
.Lx33_40:
                                                                                        jmp   n12_match_lit_β
.Lx33_41:
                                                                                        jmp   n13_match_lit_β
.Lx33_42:
                                                                                        jmp   n14_match_lit_β
n9_match_alternate_as:
                                                                                        jmp   n7_match_assign_cond_α
n9_match_alternate_β:
                        mov              rax, qword ptr [rsp + 360]
                                                                                        jmp   rax
n9_match_alternate_af:
                        mov              r14d, dword ptr [rsp + 352]
                        mov              rax, qword ptr [rsp + 368]
                                                                                        jmp   rax
.Lx33_19:
                                                                                        jmp   n6_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n10_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n8_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 65
                                                                                        jne   n8_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n8_match_alternate_s0
n10_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n8_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n11_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n8_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 66
                                                                                        jne   n8_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n8_match_alternate_s1
n11_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n8_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n12_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n9_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 49
                                                                                        jne   n9_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n9_match_alternate_s0
n12_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n9_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n13_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n9_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 50
                                                                                        jne   n9_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n9_match_alternate_s1
n13_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n9_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n14_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n9_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 51
                                                                                        jne   n9_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n9_match_alternate_s2
n14_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n9_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 344
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 344
                        ret
                        .section         .rodata
.S0:                    .string          "OUTPUT"
                        .text
                        .section         .note.GNU-stack,"",@progbits
