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
#         subject = 'HELLO'
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_assign_α
n0_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n2_var_α
.Lx44_0:
                        .quad            .Lx44_0_s
.Lx44_0_s:
                        .string          "HELLO"
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # subject
                        mov              qword ptr [1879052296], rdx                    # subject
                        add              rsp, 16
                                                                                        jmp   n2_var_α
n1_assign_β:
                        add              rsp, 16
                                                                                        jmp   n2_var_α
#=======================================================================================================================
#         subject POS(0) 'H'  :f(e001)
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        sub              rsp, 176
                        mov              qword ptr [rsp + 0], 0
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
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # subject
                        mov              rdx, qword ptr [1879052296]                    # subject
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n3_match_head_α
n2_var_β:
                        add              rsp, 16
                        add              rsp, 176
                                                                                        jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n3_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
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
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx48_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n4_match_sequence_α
n3_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx48_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx48_1
                                                                                        jmp   .Lx48_0
.Lx48_1:
                        mov              r10, qword ptr [1879048192]
.Lx48_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx48_2
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
                        add              rsp, 176
                                                                                        jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n4_match_sequence_α:
                                                                                        jmp   n9_lit_integer_α
n4_match_sequence_as:
                                                                                        jmp   n5_match_release_α
n4_match_sequence_β:
                                                                                        jmp   n8_match_lit_β
n4_match_sequence_af:
                                                                                        jmp   n3_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n5_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx52_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx52_9
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
.Lx52_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx52_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx52_1:
                        test             rax, rax
                                                                                        je    .Lx52_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx52_3]
                        lea              rdx, [rip + .Lx52_4]
                                                                                        jmp   rax
.Lx52_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx52_1
.Lx52_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx52_1
.Lx52_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx52_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx52_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 96]
                        mov              r14, qword ptr [rsp + 104]
                        mov              r15, qword ptr [rsp + 112]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 120]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 176
                                                                                        jmp   n6_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'PASS W06/001: POS(0) matched'   :(t002)
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 28
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n7_assign_α
n6_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n13_lit_string_α
.Lx53_0:
                        .quad            .Lx53_0_s
.Lx53_0_s:
                        .string          "PASS W06/001: POS(0) matched"
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx54_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n13_lit_string_α
n7_assign_β:
                        add              rsp, 16
                                                                                        jmp   n13_lit_string_α
.Lx54_0:
                        .quad            .Lx54_0_s
.Lx54_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n8_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n3_match_head_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 72
                                                                                        jne   n3_match_head_β
                        add              r14d, 1
                                                                                        jmp   n5_match_release_α
n8_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n3_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:
                        mov              qword ptr [rsp + 144], 6
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rsp + 152], rax
                                                                                        jmp   n10_match_pos_α
n9_lit_integer_β:
                                                                                        jmp   n3_match_head_β
.Lx57_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n10_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n3_match_head_β
                                                                                        jmp   n8_match_lit_α
n10_match_pos_β:
                                                                                        jmp   n3_match_head_β
#=======================================================================================================================
# e001    OUTPUT = 'FAIL W06/001: POS(0) should match'
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 33
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n12_assign_α
n11_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n13_lit_string_α
.Lx59_0:
                        .quad            .Lx59_0_s
.Lx59_0_s:
                        .string          "FAIL W06/001: POS(0) should match"
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx60_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n13_lit_string_α
n12_assign_β:
                        add              rsp, 16
                                                                                        jmp   n13_lit_string_α
.Lx60_0:
                        .quad            .Lx60_0_s
.Lx60_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# t002    subject = 'HELLO'
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n14_assign_α
n13_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n15_var_α
.Lx61_0:
                        .quad            .Lx61_0_s
.Lx61_0_s:
                        .string          "HELLO"
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # subject
                        mov              qword ptr [1879052296], rdx                    # subject
                        add              rsp, 16
                                                                                        jmp   n15_var_α
n14_assign_β:
                        add              rsp, 16
                                                                                        jmp   n15_var_α
#=======================================================================================================================
#         subject 'EL' POS(3)  :f(e002)
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:
                        sub              rsp, 368
                        mov              qword ptr [rsp + 0], 0
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
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # subject
                        mov              rdx, qword ptr [1879052296]                    # subject
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n16_match_head_α
n15_var_β:
                        add              rsp, 16
                        add              rsp, 368
                                                                                        jmp   n24_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n16_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 288], r13                     # outer_Σ
                        mov              qword ptr [rsp + 296], r14                     # outer_δ
                        mov              qword ptr [rsp + 304], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 312], rax                     # cap_gen
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
.Lx65_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n17_match_sequence_α
n16_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx65_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx65_1
                                                                                        jmp   .Lx65_0
.Lx65_1:
                        mov              r10, qword ptr [1879048192]
.Lx65_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx65_2
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 288]
                        mov              r14, qword ptr [rsp + 296]
                        mov              r15, qword ptr [rsp + 304]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 312]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 368
                                                                                        jmp   n24_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n17_match_sequence_α:
                                                                                        jmp   n23_match_lit_α
n17_match_sequence_as:
                                                                                        jmp   n18_match_release_α
n17_match_sequence_β:
                                                                                        jmp   n22_match_pos_β
n17_match_sequence_af:
                                                                                        jmp   n16_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n18_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx69_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx69_9
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
.Lx69_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx69_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx69_1:
                        test             rax, rax
                                                                                        je    .Lx69_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx69_3]
                        lea              rdx, [rip + .Lx69_4]
                                                                                        jmp   rax
.Lx69_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx69_1
.Lx69_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx69_1
.Lx69_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx69_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx69_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 288]
                        mov              r14, qword ptr [rsp + 296]
                        mov              r15, qword ptr [rsp + 304]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 312]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 368
                                                                                        jmp   n19_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'PASS W06/002: POS(3) after EL matched'  :(t003)
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 37
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n20_assign_α
n19_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n26_lit_string_α
.Lx70_0:
                        .quad            .Lx70_0_s
.Lx70_0_s:
                        .string          "PASS W06/002: POS(3) after EL matched"
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx71_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n26_lit_string_α
n20_assign_β:
                        add              rsp, 16
                                                                                        jmp   n26_lit_string_α
.Lx71_0:
                        .quad            .Lx71_0_s
.Lx71_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:
                        mov              qword ptr [rsp + 336], 6
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rsp + 344], rax
                                                                                        jmp   n22_match_pos_α
n21_lit_integer_β:
                                                                                        jmp   n23_match_lit_β
.Lx72_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n22_match_pos_α:
                        mov              rax, 3
                        cmp              r14d, eax
                                                                                        jne   n23_match_lit_β
                                                                                        jmp   n18_match_release_α
n22_match_pos_β:
                                                                                        jmp   n23_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n23_match_lit_α:
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d
                                                                                        jg    n16_match_head_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 69
                                                                                        jne   n16_match_head_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 76
                                                                                        jne   n16_match_head_β
                        add              r14d, 2
                                                                                        jmp   n21_lit_integer_α
n23_match_lit_β:
                        sub              r14d, 2
                                                                                        jmp   n16_match_head_β
#=======================================================================================================================
# e002    OUTPUT = 'FAIL W06/002: POS(3) after EL should match'
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 42
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n25_assign_α
n24_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n26_lit_string_α
.Lx76_0:
                        .quad            .Lx76_0_s
.Lx76_0_s:
                        .string          "FAIL W06/002: POS(3) after EL should match"
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx77_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n26_lit_string_α
n25_assign_β:
                        add              rsp, 16
                                                                                        jmp   n26_lit_string_α
.Lx77_0:
                        .quad            .Lx77_0_s
.Lx77_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# t003    subject = 'HELLO'
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n27_assign_α
n26_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n28_var_α
.Lx78_0:
                        .quad            .Lx78_0_s
.Lx78_0_s:
                        .string          "HELLO"
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # subject
                        mov              qword ptr [1879052296], rdx                    # subject
                        add              rsp, 16
                                                                                        jmp   n28_var_α
n27_assign_β:
                        add              rsp, 16
                                                                                        jmp   n28_var_α
#=======================================================================================================================
#         subject POS(2) 'H'  :s(e003)
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:
                        sub              rsp, 560
                        mov              qword ptr [rsp + 0], 0
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
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # subject
                        mov              rdx, qword ptr [1879052296]                    # subject
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n29_match_head_α
n28_var_β:
                        add              rsp, 16
                        add              rsp, 560
                                                                                        jmp   n37_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n29_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 480], r13                     # outer_Σ
                        mov              qword ptr [rsp + 488], r14                     # outer_δ
                        mov              qword ptr [rsp + 496], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 504], rax                     # cap_gen
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
.Lx82_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n30_match_sequence_α
n29_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx82_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx82_1
                                                                                        jmp   .Lx82_0
.Lx82_1:
                        mov              r10, qword ptr [1879048192]
.Lx82_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx82_2
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 480]
                        mov              r14, qword ptr [rsp + 488]
                        mov              r15, qword ptr [rsp + 496]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 504]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 560
                                                                                        jmp   n37_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n30_match_sequence_α:
                                                                                        jmp   n35_lit_integer_α
n30_match_sequence_as:
                                                                                        jmp   n31_match_release_α
n30_match_sequence_β:
                                                                                        jmp   n34_match_lit_β
n30_match_sequence_af:
                                                                                        jmp   n29_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n31_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx86_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx86_9
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
.Lx86_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx86_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx86_1:
                        test             rax, rax
                                                                                        je    .Lx86_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx86_3]
                        lea              rdx, [rip + .Lx86_4]
                                                                                        jmp   rax
.Lx86_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx86_1
.Lx86_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx86_1
.Lx86_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx86_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx86_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 480]
                        mov              r14, qword ptr [rsp + 488]
                        mov              r15, qword ptr [rsp + 496]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 504]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 560
                                                                                        jmp   n32_lit_string_α
#=======================================================================================================================
# e003    OUTPUT = 'FAIL W06/003: POS(2) H should fail'
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 34
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n33_assign_α
n32_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx87_0:
                        .quad            .Lx87_0_s
.Lx87_0_s:
                        .string          "FAIL W06/003: POS(2) H should fail"
#-----------------------------------------------------------------------------------------------------------------------
n33_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx88_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
n33_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx88_0:
                        .quad            .Lx88_0_s
.Lx88_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n34_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n29_match_head_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 72
                                                                                        jne   n29_match_head_β
                        add              r14d, 1
                                                                                        jmp   n31_match_release_α
n34_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n29_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:
                        mov              qword ptr [rsp + 528], 6
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rsp + 536], rax
                                                                                        jmp   n36_match_pos_α
n35_lit_integer_β:
                                                                                        jmp   n29_match_head_β
.Lx91_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n36_match_pos_α:
                        mov              rax, 2
                        cmp              r14d, eax
                                                                                        jne   n29_match_head_β
                                                                                        jmp   n34_match_lit_α
n36_match_pos_β:
                                                                                        jmp   n29_match_head_β
#=======================================================================================================================
#         OUTPUT = 'PASS W06/003: POS(2) H correctly fails'  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 38
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n38_assign_α
n37_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx93_0:
                        .quad            .Lx93_0_s
.Lx93_0_s:
                        .string          "PASS W06/003: POS(2) H correctly fails"
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx94_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
n38_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx94_0:
                        .quad            .Lx94_0_s
.Lx94_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n39_goto_α:
                                                                                        jmp   n11_lit_string_α
n39_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n40_goto_α:
                                                                                        jmp   n13_lit_string_α
n40_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n41_goto_α:
                                                                                        jmp   n24_lit_string_α
n41_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n42_goto_α:
                                                                                        jmp   n26_lit_string_α
n42_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n43_goto_α:
                                                                                        jmp   n32_lit_string_α
n43_goto_β:
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
