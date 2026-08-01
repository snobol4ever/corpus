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
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#=======================================================================================================================
#         subject = 'ABCDE'
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_assign_α
n0_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n2_var_α
.Lx39_0:
                        .quad            .Lx39_0_s
.Lx39_0_s:
                        .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        add              rsp, 16
                                                                                        jmp   n2_var_α
n1_assign_β:
                        add              rsp, 16
                                                                                        jmp   n2_var_α
#=======================================================================================================================
#         subject LEN(3) 'DE'  :f(e001)
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        sub              rsp, 160
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n3_match_head_α
n2_var_β:
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n10_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n3_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 96], r13
                        mov              qword ptr [rsp + 104], r14
                        mov              qword ptr [rsp + 112], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 120], rax
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
.Lx43_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n4_match_sequence_α
n3_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx43_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx43_1
                                                                                        jmp   .Lx43_0
.Lx43_1:
                        mov              r10, qword ptr [1879048192]
.Lx43_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx43_2
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 96]
                        mov              r14, qword ptr [rsp + 104]
                        mov              r15, qword ptr [rsp + 112]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 120]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 160
                                                                                        jmp   n10_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n4_match_sequence_α:
                                                                                        jmp   n9_match_len_α
n4_match_sequence_as:
                                                                                        jmp   n5_match_release_α
n4_match_sequence_β:
                                                                                        jmp   n8_match_lit_β
n4_match_sequence_af:
                                                                                        jmp   n3_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n5_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx47_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx47_9
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
                        mov              r13, qword ptr [rsp + 96]
                        mov              r14, qword ptr [rsp + 104]
                        mov              r15, qword ptr [rsp + 112]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 120]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 160
                                                                                        jmp   n6_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'PASS W06/001: LEN(3) then DE matched'   :(t002)
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 36
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n7_assign_α
n6_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n12_lit_string_α
.Lx48_0:
                        .quad            .Lx48_0_s
.Lx48_0_s:
                        .string          "PASS W06/001: LEN(3) then DE matched"
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx49_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n12_lit_string_α
n7_assign_β:
                        add              rsp, 16
                                                                                        jmp   n12_lit_string_α
.Lx49_0:
                        .quad            .Lx49_0_s
.Lx49_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n8_match_lit_α:
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d
                                                                                        jg    n9_match_len_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 68
                                                                                        jne   n9_match_len_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 69
                                                                                        jne   n9_match_len_β
                        add              r14d, 2
                                                                                        jmp   n5_match_release_α
n8_match_lit_β:
                        sub              r14d, 2
                                                                                        jmp   n9_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n9_match_len_α:
                        mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d
                                                                                        jg    n3_match_head_β
                        add              r14d, 3
                                                                                        jmp   n8_match_lit_α
n9_match_len_β:
                        sub              r14d, 3
                                                                                        jmp   n3_match_head_β
#=======================================================================================================================
# e001    OUTPUT = 'FAIL W06/001: LEN(3) then DE should match'
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 41
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n11_assign_α
n10_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n12_lit_string_α
.Lx53_0:
                        .quad            .Lx53_0_s
.Lx53_0_s:
                        .string          "FAIL W06/001: LEN(3) then DE should match"
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx54_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n12_lit_string_α
n11_assign_β:
                        add              rsp, 16
                                                                                        jmp   n12_lit_string_α
.Lx54_0:
                        .quad            .Lx54_0_s
.Lx54_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# t002    subject = 'ABCDE'
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n13_assign_α
n12_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n14_var_α
.Lx55_0:
                        .quad            .Lx55_0_s
.Lx55_0_s:
                        .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        add              rsp, 16
                                                                                        jmp   n14_var_α
n13_assign_β:
                        add              rsp, 16
                                                                                        jmp   n14_var_α
#=======================================================================================================================
#         subject LEN(0) 'ABCDE'  :f(e002)
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:
                        sub              rsp, 336
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n15_match_head_α
n14_var_β:
                        add              rsp, 16
                        add              rsp, 336
                                                                                        jmp   n22_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n15_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 272], r13
                        mov              qword ptr [rsp + 280], r14
                        mov              qword ptr [rsp + 288], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 296], rax
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
.Lx59_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n16_match_sequence_α
n15_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx59_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx59_1
                                                                                        jmp   .Lx59_0
.Lx59_1:
                        mov              r10, qword ptr [1879048192]
.Lx59_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx59_2
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 272]
                        mov              r14, qword ptr [rsp + 280]
                        mov              r15, qword ptr [rsp + 288]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 296]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 336
                                                                                        jmp   n22_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n16_match_sequence_α:
                                                                                        jmp   n21_match_len_α
n16_match_sequence_as:
                                                                                        jmp   n17_match_release_α
n16_match_sequence_β:
                                                                                        jmp   n20_match_lit_β
n16_match_sequence_af:
                                                                                        jmp   n15_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n17_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx63_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx63_9
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
.Lx63_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx63_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx63_1:
                        test             rax, rax
                                                                                        je    .Lx63_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx63_3]
                        lea              rdx, [rip + .Lx63_4]
                                                                                        jmp   rax
.Lx63_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx63_1
.Lx63_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx63_1
.Lx63_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx63_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx63_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 272]
                        mov              r14, qword ptr [rsp + 280]
                        mov              r15, qword ptr [rsp + 288]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 296]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 336
                                                                                        jmp   n18_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'PASS W06/002: LEN(0) then full string matched'  :(t003)
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 45
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n19_assign_α
n18_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n24_lit_string_α
.Lx64_0:
                        .quad            .Lx64_0_s
.Lx64_0_s:
                        .string          "PASS W06/002: LEN(0) then full string matched"
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx65_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n24_lit_string_α
n19_assign_β:
                        add              rsp, 16
                                                                                        jmp   n24_lit_string_α
.Lx65_0:
                        .quad            .Lx65_0_s
.Lx65_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n20_match_lit_α:
                        mov              eax, r14d
                        add              eax, 5
                        cmp              eax, r15d
                                                                                        jg    n21_match_len_β
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1145258561
                                                                                        jne   n21_match_len_β
                        movzx            eax, byte ptr [r13+rcx+4]
                        cmp              eax, 69
                                                                                        jne   n21_match_len_β
                        add              r14d, 5
                                                                                        jmp   n17_match_release_α
n20_match_lit_β:
                        sub              r14d, 5
                                                                                        jmp   n21_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n21_match_len_α:
                        mov              eax, r14d
                        add              eax, 0
                        cmp              eax, r15d
                                                                                        jg    n15_match_head_β
                        add              r14d, 0
                                                                                        jmp   n20_match_lit_α
n21_match_len_β:
                        sub              r14d, 0
                                                                                        jmp   n15_match_head_β
#=======================================================================================================================
# e002    OUTPUT = 'FAIL W06/002: LEN(0) then full string should match'
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 50
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n23_assign_α
n22_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n24_lit_string_α
.Lx69_0:
                        .quad            .Lx69_0_s
.Lx69_0_s:
                        .string          "FAIL W06/002: LEN(0) then full string should match"
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx70_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n24_lit_string_α
n23_assign_β:
                        add              rsp, 16
                                                                                        jmp   n24_lit_string_α
.Lx70_0:
                        .quad            .Lx70_0_s
.Lx70_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# t003    subject = 'AB'
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n25_assign_α
n24_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n26_var_α
.Lx71_0:
                        .quad            .Lx71_0_s
.Lx71_0_s:
                        .string          "AB"
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        add              rsp, 16
                                                                                        jmp   n26_var_α
n25_assign_β:
                        add              rsp, 16
                                                                                        jmp   n26_var_α
#=======================================================================================================================
#         subject LEN(5)  :s(e003)
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:
                        sub              rsp, 496
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n27_match_head_α
n26_var_β:
                        add              rsp, 16
                        add              rsp, 496
                                                                                        jmp   n32_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n27_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 448], r13
                        mov              qword ptr [rsp + 456], r14
                        mov              qword ptr [rsp + 464], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 472], rax
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
.Lx75_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n28_match_len_α
n27_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx75_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx75_1
                                                                                        jmp   .Lx75_0
.Lx75_1:
                        mov              r10, qword ptr [1879048192]
.Lx75_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx75_2
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 448]
                        mov              r14, qword ptr [rsp + 456]
                        mov              r15, qword ptr [rsp + 464]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 472]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 496
                                                                                        jmp   n32_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n28_match_len_α:
                        mov              eax, r14d
                        add              eax, 5
                        cmp              eax, r15d
                                                                                        jg    n27_match_head_β
                        add              r14d, 5
                                                                                        jmp   n29_match_release_α
n28_match_len_β:
                        sub              r14d, 5
                                                                                        jmp   n27_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n29_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx78_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx78_9
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
.Lx78_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx78_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx78_1:
                        test             rax, rax
                                                                                        je    .Lx78_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx78_3]
                        lea              rdx, [rip + .Lx78_4]
                                                                                        jmp   rax
.Lx78_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx78_1
.Lx78_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx78_1
.Lx78_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx78_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx78_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 448]
                        mov              r14, qword ptr [rsp + 456]
                        mov              r15, qword ptr [rsp + 464]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 472]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 496
                                                                                        jmp   n30_lit_string_α
#=======================================================================================================================
# e003    OUTPUT = 'FAIL W06/003: LEN(5) on short string should fail'
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 48
                        mov              rax, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n31_assign_α
n30_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx79_0:
                        .quad            .Lx79_0_s
.Lx79_0_s:
                        .string          "FAIL W06/003: LEN(5) on short string should fail"
#-----------------------------------------------------------------------------------------------------------------------
n31_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx80_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
n31_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx80_0:
                        .quad            .Lx80_0_s
.Lx80_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = 'PASS W06/003: LEN(5) on 2-char string correctly fails'  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 53
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n33_assign_α
n32_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx81_0:
                        .quad            .Lx81_0_s
.Lx81_0_s:
                        .string          "PASS W06/003: LEN(5) on 2-char string correctly fails"
#-----------------------------------------------------------------------------------------------------------------------
n33_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx82_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
n33_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx82_0:
                        .quad            .Lx82_0_s
.Lx82_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n34_goto_α:
                                                                                        jmp   n10_lit_string_α
n34_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n35_goto_α:
                                                                                        jmp   n12_lit_string_α
n35_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n36_goto_α:
                                                                                        jmp   n22_lit_string_α
n36_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n37_goto_α:
                                                                                        jmp   n24_lit_string_α
n37_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n38_goto_α:
                                                                                        jmp   n30_lit_string_α
n38_goto_β:
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
