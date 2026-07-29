                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "V"
.Lgvan1:                .string          "W"
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
                        sub              rsp, 632
                        mov              rdi, rsp
                        mov              ecx, 632
                        xor              eax, eax
                        rep stosb
main_α_body:
#=======================================================================================================================
#  'AC' ? 'A' ARB . V ('B' | 'C')
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        mov              qword ptr [rsp + 224], 1
                        mov              rax, qword ptr [rip + .Lx34_0]
                        mov              qword ptr [rsp + 232], rax
                                                                                        jmp   n1_match_head_α
n0_lit_string_β:
                                                                                        jmp   n8_lit_string_α
.Lx34_0:
                        .quad            .Lx34_0_s
.Lx34_0_s:
                        .string          "AC"
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
.Lx36_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n2_match_sequence_α
n1_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx36_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx36_1
                                                                                        jmp   .Lx36_0
.Lx36_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx36_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx36_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 64]
                        mov              r14, qword ptr [rsp + 72]
                        mov              r15, qword ptr [rsp + 80]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 88]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n8_lit_string_α
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
.Lx40_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx40_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx40_1:
                        test             rax, rax
                                                                                        je    .Lx40_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx40_3]
                        lea              rdx, [rip + .Lx40_4]
                                                                                        jmp   rax
.Lx40_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx40_1
.Lx40_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx40_1
.Lx40_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx40_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx40_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 64]
                        mov              r14, qword ptr [rsp + 72]
                        mov              r15, qword ptr [rsp + 80]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 88]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n8_lit_string_α
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
                                                                                        jmp   n9_match_arb_α
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
                                                                                        jmp   n9_match_arb_β
#-----------------------------------------------------------------------------------------------------------------------
n7_match_alternate_α:
                        mov              dword ptr [rsp + 256], r14d
                        lea              rax, [rip + .Lx48_21]
                        mov              qword ptr [rsp + 272], rax
                                                                                        jmp   n10_match_lit_α
.Lx48_21:
                        lea              rax, [rip + .Lx48_19]
                        mov              qword ptr [rsp + 272], rax
                                                                                        jmp   n11_match_lit_α
n7_match_alternate_s0:
                        lea              rax, [rip + .Lx48_40]
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n7_match_alternate_as
n7_match_alternate_s1:
                        lea              rax, [rip + .Lx48_41]
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n7_match_alternate_as
.Lx48_40:
                                                                                        jmp   n10_match_lit_β
.Lx48_41:
                                                                                        jmp   n11_match_lit_β
n7_match_alternate_as:
                                                                                        jmp   n3_match_release_α
n7_match_alternate_β:
                        mov              rax, qword ptr [rsp + 264]
                                                                                        jmp   rax
n7_match_alternate_af:
                        mov              r14d, dword ptr [rsp + 256]
                        mov              rax, qword ptr [rsp + 272]
                                                                                        jmp   rax
.Lx48_19:
                                                                                        jmp   n6_match_assign_cond_β
#=======================================================================================================================
#  OUTPUT = 'V=[' V ']'
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n12_var_α
n8_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n14_lit_string_α
.Lx49_0:
                        .quad            .Lx49_0_s
.Lx49_0_s:
                        .string          "V=["
#-----------------------------------------------------------------------------------------------------------------------
n9_match_arb_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 64], 0
                        mov              eax, r14d
                        mov              dword ptr [rsp + 68], eax
                                                                                        jmp   n6_match_assign_cond_α
n9_match_arb_β:
                        add              dword ptr [rsp + 64], 1
                        mov              eax, dword ptr [rsp + 68]
                        add              eax, dword ptr [rsp + 64]
                        cmp              eax, r15d
                                                                                        jg    .Lx51_0
                        mov              r14d, eax
                                                                                        jmp   n6_match_assign_cond_α
.Lx51_0:
                        mov              r14d, dword ptr [rsp + 68]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n4_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n10_match_lit_α:
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
n10_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n7_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n11_match_lit_α:
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
n11_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n7_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n13_binop_α
n12_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n13_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n15_lit_string_α
n13_binop_β:
                        add              rsp, 32
                                                                                        jmp   n14_lit_string_α
#=======================================================================================================================
#  'AXB' ? 'A' ARB . W ('B' | 'C')
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        mov              qword ptr [rsp + 528], 1
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rsp + 536], rax
                                                                                        jmp   n16_match_head_α
n14_lit_string_β:
                                                                                        jmp   n25_lit_string_α
.Lx58_0:
                        .quad            .Lx58_0_s
.Lx58_0_s:
                        .string          "AXB"
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n17_binop_α
n15_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n14_lit_string_α
.Lx59_0:
                        .quad            .Lx59_0_s
.Lx59_0_s:
                        .string          "]"
#-----------------------------------------------------------------------------------------------------------------------
n16_match_head_α:
                        mov              qword ptr [rsp + 384], r13
                        mov              qword ptr [rsp + 392], r14
                        mov              qword ptr [rsp + 400], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 408], rax
                        mov              rdi, qword ptr [rsp + 528]
                        mov              rsi, qword ptr [rsp + 536]
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
.Lx61_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n18_match_sequence_α
n16_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx61_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx61_1
                                                                                        jmp   .Lx61_0
.Lx61_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx61_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx61_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 384]
                        mov              r14, qword ptr [rsp + 392]
                        mov              r15, qword ptr [rsp + 400]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 408]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n25_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n17_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n19_assign_α
n17_binop_β:
                        add              rsp, 32
                                                                                        jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n18_match_sequence_α:
                                                                                        jmp   n21_match_lit_α
n18_match_sequence_as:
                                                                                        jmp   n20_match_release_α
n18_match_sequence_β:
                                                                                        jmp   n24_match_alternate_β
n18_match_sequence_af:
                                                                                        jmp   n16_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx65_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n14_lit_string_α
n19_assign_β:
                                                                                        jmp   n14_lit_string_α
.Lx65_0:
                        .quad            .Lx65_0_s
.Lx65_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n20_match_release_α:
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
.Lx67_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx67_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx67_1:
                        test             rax, rax
                                                                                        je    .Lx67_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx67_3]
                        lea              rdx, [rip + .Lx67_4]
                                                                                        jmp   rax
.Lx67_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx67_1
.Lx67_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx67_1
.Lx67_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx67_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx67_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 384]
                        mov              r14, qword ptr [rsp + 392]
                        mov              r15, qword ptr [rsp + 400]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 408]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n25_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n21_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n16_match_head_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 65
                                                                                        jne   n16_match_head_β
                        add              r14d, 1
                                                                                        jmp   n22_match_assign_save_α
n21_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n16_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n22_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n26_match_arb_α
n22_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n21_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n23_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S1]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n24_match_alternate_α
n23_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n26_match_arb_β
#-----------------------------------------------------------------------------------------------------------------------
n24_match_alternate_α:
                        mov              dword ptr [rsp + 560], r14d
                        lea              rax, [rip + .Lx75_21]
                        mov              qword ptr [rsp + 576], rax
                                                                                        jmp   n27_match_lit_α
.Lx75_21:
                        lea              rax, [rip + .Lx75_19]
                        mov              qword ptr [rsp + 576], rax
                                                                                        jmp   n28_match_lit_α
n24_match_alternate_s0:
                        lea              rax, [rip + .Lx75_40]
                        mov              qword ptr [rsp + 568], rax
                                                                                        jmp   n24_match_alternate_as
n24_match_alternate_s1:
                        lea              rax, [rip + .Lx75_41]
                        mov              qword ptr [rsp + 568], rax
                                                                                        jmp   n24_match_alternate_as
.Lx75_40:
                                                                                        jmp   n27_match_lit_β
.Lx75_41:
                                                                                        jmp   n28_match_lit_β
n24_match_alternate_as:
                                                                                        jmp   n20_match_release_α
n24_match_alternate_β:
                        mov              rax, qword ptr [rsp + 568]
                                                                                        jmp   rax
n24_match_alternate_af:
                        mov              r14d, dword ptr [rsp + 560]
                        mov              rax, qword ptr [rsp + 576]
                                                                                        jmp   rax
.Lx75_19:
                                                                                        jmp   n23_match_assign_cond_β
#=======================================================================================================================
#  OUTPUT = 'W=[' W ']'
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n29_var_α
n25_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx76_0:
                        .quad            .Lx76_0_s
.Lx76_0_s:
                        .string          "W=["
#-----------------------------------------------------------------------------------------------------------------------
n26_match_arb_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 64], 0
                        mov              eax, r14d
                        mov              dword ptr [rsp + 68], eax
                                                                                        jmp   n23_match_assign_cond_α
n26_match_arb_β:
                        add              dword ptr [rsp + 64], 1
                        mov              eax, dword ptr [rsp + 68]
                        add              eax, dword ptr [rsp + 64]
                        cmp              eax, r15d
                                                                                        jg    .Lx78_0
                        mov              r14d, eax
                                                                                        jmp   n23_match_assign_cond_α
.Lx78_0:
                        mov              r14d, dword ptr [rsp + 68]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n21_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n27_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n24_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 66
                                                                                        jne   n24_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n24_match_alternate_s0
n27_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n24_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n28_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n24_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 67
                                                                                        jne   n24_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n24_match_alternate_s1
n28_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n24_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n30_binop_α
n29_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n30_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n31_lit_string_α
n30_binop_β:
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n32_binop_α
n31_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx85_0:
                        .quad            .Lx85_0_s
.Lx85_0_s:
                        .string          "]"
#-----------------------------------------------------------------------------------------------------------------------
n32_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n33_assign_α
n32_binop_β:
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n33_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx87_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
n33_assign_β:
                                                                                        jmp   main_γ
.Lx87_0:
                        .quad            .Lx87_0_s
.Lx87_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 632
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 632
                        ret
                        .section         .rodata
.S0:                    .string          "V"
.S1:                    .string          "W"
                        .text
                        .section         .note.GNU-stack,"",@progbits
