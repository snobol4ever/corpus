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
                        sub              rsp, 296
                        mov              rdi, rsp
                        mov              ecx, 296
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 288], rbp
                        mov              rbp, rsp
main_α_body:
#=======================================================================================================================
#         X = 'aXYb'
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n3_assign_α
n0_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n6_var_α
.Lx23_0:
                        .quad            .Lx23_0_s
.Lx23_0_s:
                        .string          "aXYb"
#-----------------------------------------------------------------------------------------------------------------------
n1_goto_α:
                                                                                        jmp   n4_lit_string_α
n1_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n2_goto_α:
                                                                                        jmp   n5_lit_string_α
n2_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n6_var_α
n3_assign_β:
                                                                                        jmp   n6_var_α
#=======================================================================================================================
# YES     OUTPUT = 'longer alt was tried (NOT fenced)'          :(END)
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx27_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n7_assign_α
n4_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx27_0:
                        .quad            .Lx27_0_s
.Lx27_0_s:
                        .string          "longer alt was tried (NOT fenced)"
#=======================================================================================================================
# NO      OUTPUT = 'fenced'
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx28_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n8_assign_α
n5_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx28_0:
                        .quad            .Lx28_0_s
.Lx28_0_s:
                        .string          "fenced"
#=======================================================================================================================
#         X  POS(0) 'a' FENCE('X' | 'XY')  'b'  RPOS(0)         :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n9_match_head_α
n6_var_β:
                                                                                        jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx30_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
n7_assign_β:
                                                                                        jmp   main_γ
.Lx30_0:
                        .quad            .Lx30_0_s
.Lx30_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx31_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
n8_assign_β:
                                                                                        jmp   main_γ
.Lx31_0:
                        .quad            .Lx31_0_s
.Lx31_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n9_match_head_α:
                        mov              qword ptr [rbp + 96], r13
                        mov              qword ptr [rbp + 104], r14
                        mov              qword ptr [rbp + 112], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 120], rax
                        mov              qword ptr [rbp + 88], rbp
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 64], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 56], rax
                        mov              dword ptr [rbp + 48], 0
.Lx33_0:
                        mov              r14d, dword ptr [rbp + 48]
                                                                                        jmp   n10_match_sequence_α
n9_match_head_β:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, r15d
                                                                                        jg    .Lx33_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx33_1
                                                                                        jmp   .Lx33_0
.Lx33_1:
                        mov              rax, qword ptr [rbp + 56]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 64]
                        mov              r10, qword ptr [1879048192]
.Lx33_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx33_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 96]
                        mov              r14, qword ptr [rbp + 104]
                        mov              r15, qword ptr [rbp + 112]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 120]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 88]
                                                                                        jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n10_match_sequence_α:
                                                                                        jmp   n12_lit_integer_α
n10_match_sequence_as:
                                                                                        jmp   n11_match_fence1_α
n10_match_sequence_β:
                                                                                        jmp   n14_match_lit_β
n10_match_sequence_af:
                                                                                        jmp   n9_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n11_match_fence1_α:
                        mov              qword ptr [rbp + 160], rsp
                                                                                        jmp   n16_match_alternate_α
n11_match_fence1_as:
                        mov              rsp, rbp
                        mov              qword ptr [rbp + 160], rbp
                                                                                        jmp   n15_match_sequence_α
n11_match_fence1_β:
n11_match_fence1_af:
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n9_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:
                        mov              qword ptr [rbp + 224], 6
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n13_match_pos_α
n12_lit_integer_β:
                                                                                        jmp   n9_match_head_β
.Lx38_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n13_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n9_match_head_β
                                                                                        jmp   n14_match_lit_α
n13_match_pos_β:
                                                                                        jmp   n9_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n14_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n9_match_head_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97
                                                                                        jne   n9_match_head_β
                        add              r14d, 1
                                                                                        jmp   n11_match_fence1_α
n14_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n9_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n15_match_sequence_α:
                                                                                        jmp   n18_match_lit_α
n15_match_sequence_as:
                                                                                        jmp   n17_match_release_α
n15_match_sequence_β:
                                                                                        jmp   n20_match_rpos_β
n15_match_sequence_af:
                                                                                        jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n16_match_alternate_α:
                        mov              dword ptr [rbp + 176], r14d
                        lea              rax, [rip + .Lx45_21]
                        mov              qword ptr [rbp + 192], rax
                                                                                        jmp   n21_match_lit_α
.Lx45_21:
                        lea              rax, [rip + .Lx45_19]
                        mov              qword ptr [rbp + 192], rax
                                                                                        jmp   n22_match_lit_α
n16_match_alternate_s0:
                        lea              rax, [rip + .Lx45_40]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n16_match_alternate_as
n16_match_alternate_s1:
                        lea              rax, [rip + .Lx45_41]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n16_match_alternate_as
.Lx45_40:
                                                                                        jmp   n21_match_lit_β
.Lx45_41:
                                                                                        jmp   n22_match_lit_β
n16_match_alternate_as:
                                                                                        jmp   n11_match_fence1_as
n16_match_alternate_β:
                        mov              rax, qword ptr [rbp + 184]
                                                                                        jmp   rax
n16_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 176]
                        mov              rax, qword ptr [rbp + 192]
                                                                                        jmp   rax
.Lx45_19:
                                                                                        jmp   n11_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n17_match_release_α:
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
.Lx47_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx47_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx47_1:
                        test             rax, rax
                                                                                        je    .Lx47_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx47_3]
                        lea              rdx, [rip + .Lx47_4]
                                                                                        jmp   rax
.Lx47_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx47_1
.Lx47_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx47_1
.Lx47_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx47_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx47_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 96]
                        mov              r14, qword ptr [rbp + 104]
                        mov              r15, qword ptr [rbp + 112]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 120]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 88]
                                                                                        jmp   n4_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n18_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n5_lit_string_α
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 98
                                                                                        jne   n5_lit_string_α
                        add              r14d, 1
                                                                                        jmp   n19_lit_integer_α
n18_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:
                        mov              qword ptr [rbp + 144], 6
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n20_match_rpos_α
n19_lit_integer_β:
                                                                                        jmp   n18_match_lit_β
.Lx50_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n20_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n18_match_lit_β
                                                                                        jmp   n17_match_release_α
n20_match_rpos_β:
                                                                                        jmp   n18_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n21_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n16_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 88
                                                                                        jne   n16_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n16_match_alternate_s0
n21_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n16_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n22_match_lit_α:
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d
                                                                                        jg    n16_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 88
                                                                                        jne   n16_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 89
                                                                                        jne   n16_match_alternate_af
                        add              r14d, 2
                                                                                        jmp   n16_match_alternate_s1
n22_match_lit_β:
                        sub              r14d, 2
                                                                                        jmp   n16_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 288]
                        add              rsp, 296
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 288]
                        add              rsp, 296
                        ret
                        .section         .note.GNU-stack,"",@progbits
