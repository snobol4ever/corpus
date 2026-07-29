                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "Q"
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
                        sub              rsp, 600
                        mov              rdi, rsp
                        mov              ecx, 600
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 592], rbp
                        mov              rbp, rsp
main_α_body:
#=======================================================================================================================
#  Q = 'a'
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n6_assign_α
.Lx37_0:
                        .quad            .Lx37_0_s
.Lx37_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n1_goto_α:
                                                                                        jmp   n7_lit_string_α
n1_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n2_goto_α:
                                                                                        jmp   n8_lit_string_α
n2_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n3_goto_α:
                                                                                        jmp   n9_lit_string_α
n3_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n4_goto_α:
                                                                                        jmp   n10_lit_string_α
n4_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n5_goto_α:
                                                                                        jmp   n11_lit_string_α
n5_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n12_lit_string_α
#=======================================================================================================================
# Y1 OUTPUT = '1:ok'                                            :(T2)
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n13_assign_α
.Lx44_0:
                        .quad            .Lx44_0_s
.Lx44_0_s:
                        .string          "1:ok"
#=======================================================================================================================
# N1 OUTPUT = '1:fail'
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx45_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n14_assign_α
.Lx45_0:
                        .quad            .Lx45_0_s
.Lx45_0_s:
                        .string          "1:fail"
#=======================================================================================================================
# T2 Q = 'aa'
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n15_assign_α
.Lx46_0:
                        .quad            .Lx46_0_s
.Lx46_0_s:
                        .string          "aa"
#=======================================================================================================================
# Y2 OUTPUT = '2:ok'                                            :(END)
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n16_assign_α
.Lx47_0:
                        .quad            .Lx47_0_s
.Lx47_0_s:
                        .string          "2:ok"
#=======================================================================================================================
# N2 OUTPUT = '2:fail'
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n17_assign_α
.Lx48_0:
                        .quad            .Lx48_0_s
.Lx48_0_s:
                        .string          "2:fail"
#=======================================================================================================================
#  'aaa' ? POS(0) ARBNO(*Q) RPOS(0)                             :S(Y1)F(N1)
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n18_match_head_α
.Lx49_0:
                        .quad            .Lx49_0_s
.Lx49_0_s:
                        .string          "aaa"
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx50_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n9_lit_string_α
.Lx50_0:
                        .quad            .Lx50_0_s
.Lx50_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx51_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n9_lit_string_α
.Lx51_0:
                        .quad            .Lx51_0_s
.Lx51_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n19_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx53_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx53_0:
                        .quad            .Lx53_0_s
.Lx53_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx54_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx54_0:
                        .quad            .Lx54_0_s
.Lx54_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n18_match_head_α:
                        mov              qword ptr [rbp + 96], r13
                        mov              qword ptr [rbp + 104], r14
                        mov              qword ptr [rbp + 112], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 120], rax
                        mov              qword ptr [rbp + 88], rbp
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
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
.Lx56_0:
                        mov              r14d, dword ptr [rbp + 48]
                                                                                        jmp   n20_match_sequence_α
n18_match_head_β:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, r15d
                                                                                        jg    .Lx56_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx56_1
                                                                                        jmp   .Lx56_0
.Lx56_1:
                        mov              rax, qword ptr [rbp + 56]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 64]
                        mov              r10, qword ptr [1879048192]
.Lx56_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx56_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 96]
                        mov              r14, qword ptr [rbp + 104]
                        mov              r15, qword ptr [rbp + 112]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 120]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 88]
                                                                                        jmp   n8_lit_string_α
#=======================================================================================================================
#  'aaa' ? POS(0) ARBNO(*Q) RPOS(0)                             :S(Y2)F(N2)
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n21_match_head_α
.Lx57_0:
                        .quad            .Lx57_0_s
.Lx57_0_s:
                        .string          "aaa"
#-----------------------------------------------------------------------------------------------------------------------
n20_match_sequence_α:
                        mov              dword ptr [rbp + 128], r14d
                                                                                        jmp   n23_lit_integer_α
n20_match_sequence_as:
                                                                                        jmp   n22_match_release_α
n20_match_sequence_β:
                                                                                        jmp   n27_match_rpos_β
n20_match_sequence_af:
                                                                                        jmp   n18_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n21_match_head_α:
                        mov              qword ptr [rbp + 384], r13
                        mov              qword ptr [rbp + 392], r14
                        mov              qword ptr [rbp + 400], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 408], rax
                        mov              qword ptr [rbp + 376], rbp
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 352], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 344], rax
                        mov              dword ptr [rbp + 336], 0
.Lx61_0:
                        mov              r14d, dword ptr [rbp + 336]
                                                                                        jmp   n28_match_sequence_α
n21_match_head_β:
                        add              dword ptr [rbp + 336], 1
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, r15d
                                                                                        jg    .Lx61_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx61_1
                                                                                        jmp   .Lx61_0
.Lx61_1:
                        mov              rax, qword ptr [rbp + 344]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 352]
                        mov              r10, qword ptr [1879048192]
.Lx61_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx61_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 384]
                        mov              r14, qword ptr [rbp + 392]
                        mov              r15, qword ptr [rbp + 400]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 408]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 376]
                                                                                        jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n22_match_release_α:
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
                        mov              r13, qword ptr [rbp + 96]
                        mov              r14, qword ptr [rbp + 104]
                        mov              r15, qword ptr [rbp + 112]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 120]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 88]
                                                                                        jmp   n7_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_integer_α:
                        mov              qword ptr [rbp + 144], 6
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n24_match_pos_α
n23_lit_integer_β:
                                                                                        jmp   n18_match_head_β
.Lx64_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n24_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n18_match_head_β
                                                                                        jmp   n25_match_arbno_α
n24_match_pos_β:
                                                                                        jmp   n18_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n25_match_arbno_α:
                        mov              dword ptr [rbp + 176], r14d
                        mov              dword ptr [rbp + 180], r14d
                        mov              dword ptr [rbp + 184], 0
                        mov              qword ptr [rbp + 200], rsp
                        mov              qword ptr [rbp + 192], 0
                                                                                        jmp   n26_lit_integer_α
n25_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 180]
                        mov              rax, qword ptr [rbp + 192]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 192], rsp
                        mov              rbp, rsp
                        add              rbp, -184
                                                                                        jmp   n29_match_defer_α
n25_match_arbno_as:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              r14d, eax
                                                                                        je    n29_match_defer_β
                        mov              rbp, qword ptr [rbp + 184]
                        mov              eax, dword ptr [rbp + 184]
                        add              eax, 1
                        mov              dword ptr [rbp + 184], eax
                        mov              dword ptr [rbp + 180], r14d
                                                                                        jmp   n26_lit_integer_α
n25_match_arbno_af:
                        mov              rax, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              rsp, [rbp + 248]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 184]
                        test             ecx, ecx
                                                                                        jz    .Lx67_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 184], ecx
                        mov              qword ptr [rbp + 192], rax
                        lea              rbp, [rax + -184]
                                                                                        jmp   n29_match_defer_β
.Lx67_2:
                        mov              r14d, dword ptr [rbp + 176]
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   n24_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:
                        mov              qword ptr [rbp + 240], 6
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n27_match_rpos_α
n26_lit_integer_β:
                                                                                        jmp   n25_match_arbno_β
.Lx68_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n27_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n25_match_arbno_β
                                                                                        jmp   n22_match_release_α
n27_match_rpos_β:
                                                                                        jmp   n25_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n28_match_sequence_α:
                        mov              dword ptr [rbp + 416], r14d
                                                                                        jmp   n31_lit_integer_α
n28_match_sequence_as:
                                                                                        jmp   n30_match_release_α
n28_match_sequence_β:
                                                                                        jmp   n35_match_rpos_β
n28_match_sequence_af:
                                                                                        jmp   n21_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n29_match_defer_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx72_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx72_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx72_10
.Lx72_9:
                        xor              eax, eax
.Lx72_10:
                        test             rax, rax
                                                                                        jz    .Lx72_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx72_4]
                        lea              rdx, [rip + .Lx72_5]
                                                                                        jmp   rax
.Lx72_4:
                                                                                        jmp   n25_match_arbno_as
.Lx72_5:
                                                                                        jmp   n25_match_arbno_af
.Lx72_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx72_2:
                        test             rax, rax
                                                                                        je    .Lx72_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx72_7]
                        lea              rdx, [rip + .Lx72_8]
                                                                                        jmp   rax
.Lx72_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx72_2
.Lx72_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx72_2
.Lx72_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n25_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx72_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n25_match_arbno_as
.Lx72_6:
                        add              rsp, 16
                                                                                        jmp   n25_match_arbno_af
n29_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n30_match_release_α:
                        mov              rax, qword ptr [rbp + 344]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 352]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx74_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx74_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx74_1:
                        test             rax, rax
                                                                                        je    .Lx74_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx74_3]
                        lea              rdx, [rip + .Lx74_4]
                                                                                        jmp   rax
.Lx74_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx74_1
.Lx74_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx74_1
.Lx74_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx74_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx74_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 384]
                        mov              r14, qword ptr [rbp + 392]
                        mov              r15, qword ptr [rbp + 400]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 408]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 376]
                                                                                        jmp   n10_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:
                        mov              qword ptr [rbp + 432], 6
                        mov              rax, qword ptr [rip + .Lx75_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n32_match_pos_α
n31_lit_integer_β:
                                                                                        jmp   n21_match_head_β
.Lx75_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n32_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n21_match_head_β
                                                                                        jmp   n33_match_arbno_α
n32_match_pos_β:
                                                                                        jmp   n21_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n33_match_arbno_α:
                        mov              dword ptr [rbp + 464], r14d
                        mov              dword ptr [rbp + 468], r14d
                        mov              dword ptr [rbp + 472], 0
                        mov              qword ptr [rbp + 488], rsp
                        mov              qword ptr [rbp + 480], 0
                                                                                        jmp   n34_lit_integer_α
n33_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 468]
                        mov              rax, qword ptr [rbp + 480]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 480], rsp
                        mov              rbp, rsp
                        add              rbp, -472
                                                                                        jmp   n36_match_defer_α
n33_match_arbno_as:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              r14d, eax
                                                                                        je    n36_match_defer_β
                        mov              rbp, qword ptr [rbp + 472]
                        mov              eax, dword ptr [rbp + 472]
                        add              eax, 1
                        mov              dword ptr [rbp + 472], eax
                        mov              dword ptr [rbp + 468], r14d
                                                                                        jmp   n34_lit_integer_α
n33_match_arbno_af:
                        mov              rax, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              rsp, [rbp + 536]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 472]
                        test             ecx, ecx
                                                                                        jz    .Lx78_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 472], ecx
                        mov              qword ptr [rbp + 480], rax
                        lea              rbp, [rax + -472]
                                                                                        jmp   n36_match_defer_β
.Lx78_2:
                        mov              r14d, dword ptr [rbp + 464]
                        mov              rsp, qword ptr [rbp + 488]
                                                                                        jmp   n32_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:
                        mov              qword ptr [rbp + 528], 6
                        mov              rax, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n35_match_rpos_α
n34_lit_integer_β:
                                                                                        jmp   n33_match_arbno_β
.Lx79_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n35_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n33_match_arbno_β
                                                                                        jmp   n30_match_release_α
n35_match_rpos_β:
                                                                                        jmp   n33_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n36_match_defer_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx81_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx81_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx81_10
.Lx81_9:
                        xor              eax, eax
.Lx81_10:
                        test             rax, rax
                                                                                        jz    .Lx81_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx81_4]
                        lea              rdx, [rip + .Lx81_5]
                                                                                        jmp   rax
.Lx81_4:
                                                                                        jmp   n33_match_arbno_as
.Lx81_5:
                                                                                        jmp   n33_match_arbno_af
.Lx81_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx81_2:
                        test             rax, rax
                                                                                        je    .Lx81_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx81_7]
                        lea              rdx, [rip + .Lx81_8]
                                                                                        jmp   rax
.Lx81_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx81_2
.Lx81_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx81_2
.Lx81_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n33_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx81_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n33_match_arbno_as
.Lx81_6:
                        add              rsp, 16
                                                                                        jmp   n33_match_arbno_af
n36_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 592]
                        add              rsp, 600
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 592]
                        add              rsp, 600
                        ret
                        .section         .rodata
.S0:                    .string          "Q"
                        .text
                        .section         .note.GNU-stack,"",@progbits
