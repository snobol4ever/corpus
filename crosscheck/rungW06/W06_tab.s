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
                        sub              rsp, 600
                        mov              rdi, rsp
                        mov              ecx, 600
                        xor              eax, eax
                        rep stosb
main_α_body:
#=======================================================================================================================
#         subject = 'ABCDE'
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx45_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n6_assign_α
n0_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n12_var_α
.Lx45_0:
                        .quad            .Lx45_0_s
.Lx45_0_s:
                        .string          "ABCDE"
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
                                                                                        jmp   n12_var_α
n6_assign_β:
                                                                                        jmp   n12_var_α
#=======================================================================================================================
# e001    OUTPUT = 'FAIL W06/001: TAB(3) then DE should match'
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n13_assign_α
n7_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n8_lit_string_α
.Lx52_0:
                        .quad            .Lx52_0_s
.Lx52_0_s:
                        .string          "FAIL W06/001: TAB(3) then DE should match"
#=======================================================================================================================
# t002    subject = 'ABCDE'
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n14_assign_α
n8_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n19_var_α
.Lx53_0:
                        .quad            .Lx53_0_s
.Lx53_0_s:
                        .string          "ABCDE"
#=======================================================================================================================
# e002    OUTPUT = 'FAIL W06/002: AB TAB(2) CDE should match'
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n15_assign_α
n9_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n10_lit_string_α
.Lx54_0:
                        .quad            .Lx54_0_s
.Lx54_0_s:
                        .string          "FAIL W06/002: AB TAB(2) CDE should match"
#=======================================================================================================================
# t003    subject = 'ABCDE'
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n16_assign_α
n10_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n20_var_α
.Lx55_0:
                        .quad            .Lx55_0_s
.Lx55_0_s:
                        .string          "ABCDE"
#=======================================================================================================================
# e003    OUTPUT = 'FAIL W06/003: TAB(1) behind cursor should fail'
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n17_assign_α
n11_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx56_0:
                        .quad            .Lx56_0_s
.Lx56_0_s:
                        .string          "FAIL W06/003: TAB(1) behind cursor should fail"
#=======================================================================================================================
#         subject TAB(3) 'DE'  :f(e001)
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                                                                                        jmp   n18_match_head_α
n12_var_β:
                                                                                        jmp   n7_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx58_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n8_lit_string_α
n13_assign_β:
                                                                                        jmp   n8_lit_string_α
.Lx58_0:
                        .quad            .Lx58_0_s
.Lx58_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n19_var_α
n14_assign_β:
                                                                                        jmp   n19_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx60_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n10_lit_string_α
n15_assign_β:
                                                                                        jmp   n10_lit_string_α
.Lx60_0:
                        .quad            .Lx60_0_s
.Lx60_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n20_var_α
n16_assign_β:
                                                                                        jmp   n20_var_α
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx62_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
n17_assign_β:
                                                                                        jmp   main_γ
.Lx62_0:
                        .quad            .Lx62_0_s
.Lx62_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n18_match_head_α:
                        mov              qword ptr [rsp + 96], r13
                        mov              qword ptr [rsp + 104], r14
                        mov              qword ptr [rsp + 112], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 120], rax
                        mov              rdi, qword ptr [rsp + 160]
                        mov              rsi, qword ptr [rsp + 168]
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
.Lx64_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n21_match_sequence_α
n18_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx64_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx64_1
                                                                                        jmp   .Lx64_0
.Lx64_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx64_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx64_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 96]
                        mov              r14, qword ptr [rsp + 104]
                        mov              r15, qword ptr [rsp + 112]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 120]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n7_lit_string_α
#=======================================================================================================================
#         subject 'AB' TAB(2) 'CDE'  :f(e002)
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                                                                                        jmp   n22_match_head_α
n19_var_β:
                                                                                        jmp   n9_lit_string_α
#=======================================================================================================================
#         subject 'ABC' TAB(1)  :s(e003)
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                                                                                        jmp   n23_match_head_α
n20_var_β:
                                                                                        jmp   n24_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n21_match_sequence_α:
                                                                                        jmp   n26_lit_integer_α
n21_match_sequence_as:
                                                                                        jmp   n25_match_release_α
n21_match_sequence_β:
                                                                                        jmp   n28_match_lit_β
n21_match_sequence_af:
                                                                                        jmp   n18_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n22_match_head_α:
                        mov              qword ptr [rsp + 288], r13
                        mov              qword ptr [rsp + 296], r14
                        mov              qword ptr [rsp + 304], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 312], rax
                        mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
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
.Lx70_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n29_match_sequence_α
n22_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx70_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx70_1
                                                                                        jmp   .Lx70_0
.Lx70_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx70_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx70_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 288]
                        mov              r14, qword ptr [rsp + 296]
                        mov              r15, qword ptr [rsp + 304]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 312]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n23_match_head_α:
                        mov              qword ptr [rsp + 480], r13
                        mov              qword ptr [rsp + 488], r14
                        mov              qword ptr [rsp + 496], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 504], rax
                        mov              rdi, qword ptr [rsp + 544]
                        mov              rsi, qword ptr [rsp + 552]
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
.Lx72_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n30_match_sequence_α
n23_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx72_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx72_1
                                                                                        jmp   .Lx72_0
.Lx72_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx72_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx72_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 480]
                        mov              r14, qword ptr [rsp + 488]
                        mov              r15, qword ptr [rsp + 496]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 504]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n24_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'PASS W06/003: TAB(1) behind cursor correctly fails'  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n31_assign_α
n24_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx73_0:
                        .quad            .Lx73_0_s
.Lx73_0_s:
                        .string          "PASS W06/003: TAB(1) behind cursor correctly fails"
#-----------------------------------------------------------------------------------------------------------------------
n25_match_release_α:
                        mov              rax, qword ptr [rsp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 32]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx75_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx75_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx75_1:
                        test             rax, rax
                                                                                        je    .Lx75_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx75_3]
                        lea              rdx, [rip + .Lx75_4]
                                                                                        jmp   rax
.Lx75_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx75_1
.Lx75_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx75_1
.Lx75_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx75_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx75_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 96]
                        mov              r14, qword ptr [rsp + 104]
                        mov              r15, qword ptr [rsp + 112]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 120]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n32_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:
                        mov              qword ptr [rsp + 192], 6
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n27_match_tab_α
n26_lit_integer_β:
                                                                                        jmp   n18_match_head_β
.Lx76_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n27_match_tab_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 48], r14d
                        mov              rax, 3
                        cmp              r14d, eax
                                                                                        jle   .Lx77_239
                        add              rsp, 16
                                                                                        jmp   n18_match_head_β
.Lx77_239:
                        cmp              r15d, eax
                                                                                        jge   .Lx77_240
                        add              rsp, 16
                                                                                        jmp   n18_match_head_β
.Lx77_240:
                        mov              r14d, eax
                                                                                        jmp   n28_match_lit_α
n27_match_tab_β:
                        mov              r14d, dword ptr [rsp + 48]
                        add              rsp, 16
                                                                                        jmp   n18_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n28_match_lit_α:
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d
                                                                                        jg    n27_match_tab_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 68
                                                                                        jne   n27_match_tab_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 69
                                                                                        jne   n27_match_tab_β
                        add              r14d, 2
                                                                                        jmp   n25_match_release_α
n28_match_lit_β:
                        sub              r14d, 2
                                                                                        jmp   n27_match_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n29_match_sequence_α:
                                                                                        jmp   n34_match_lit_α
n29_match_sequence_as:
                                                                                        jmp   n33_match_release_α
n29_match_sequence_β:
                                                                                        jmp   n37_match_lit_β
n29_match_sequence_af:
                                                                                        jmp   n22_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n30_match_sequence_α:
                                                                                        jmp   n39_match_lit_α
n30_match_sequence_as:
                                                                                        jmp   n38_match_release_α
n30_match_sequence_β:
                                                                                        jmp   n41_match_tab_β
n30_match_sequence_af:
                                                                                        jmp   n23_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n31_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx84_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
n31_assign_β:
                                                                                        jmp   main_γ
.Lx84_0:
                        .quad            .Lx84_0_s
.Lx84_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = 'PASS W06/001: TAB(3) then DE matched'   :(t002)
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n42_assign_α
n32_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n8_lit_string_α
.Lx85_0:
                        .quad            .Lx85_0_s
.Lx85_0_s:
                        .string          "PASS W06/001: TAB(3) then DE matched"
#-----------------------------------------------------------------------------------------------------------------------
n33_match_release_α:
                        mov              rax, qword ptr [rsp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 32]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx87_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx87_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx87_1:
                        test             rax, rax
                                                                                        je    .Lx87_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx87_3]
                        lea              rdx, [rip + .Lx87_4]
                                                                                        jmp   rax
.Lx87_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx87_1
.Lx87_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx87_1
.Lx87_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx87_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx87_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 288]
                        mov              r14, qword ptr [rsp + 296]
                        mov              r15, qword ptr [rsp + 304]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 312]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n43_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n34_match_lit_α:
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d
                                                                                        jg    n22_match_head_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 65
                                                                                        jne   n22_match_head_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 66
                                                                                        jne   n22_match_head_β
                        add              r14d, 2
                                                                                        jmp   n35_lit_integer_α
n34_match_lit_β:
                        sub              r14d, 2
                                                                                        jmp   n22_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:
                        mov              qword ptr [rsp + 384], 6
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rsp + 392], rax
                                                                                        jmp   n36_match_tab_α
n35_lit_integer_β:
                                                                                        jmp   n34_match_lit_β
.Lx90_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n36_match_tab_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 48], r14d
                        mov              rax, 2
                        cmp              r14d, eax
                                                                                        jle   .Lx91_239
                        add              rsp, 16
                                                                                        jmp   n34_match_lit_β
.Lx91_239:
                        cmp              r15d, eax
                                                                                        jge   .Lx91_240
                        add              rsp, 16
                                                                                        jmp   n34_match_lit_β
.Lx91_240:
                        mov              r14d, eax
                                                                                        jmp   n37_match_lit_α
n36_match_tab_β:
                        mov              r14d, dword ptr [rsp + 48]
                        add              rsp, 16
                                                                                        jmp   n34_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n37_match_lit_α:
                        mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d
                                                                                        jg    n36_match_tab_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 67
                                                                                        jne   n36_match_tab_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 68
                                                                                        jne   n36_match_tab_β
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 69
                                                                                        jne   n36_match_tab_β
                        add              r14d, 3
                                                                                        jmp   n33_match_release_α
n37_match_lit_β:
                        sub              r14d, 3
                                                                                        jmp   n36_match_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n38_match_release_α:
                        mov              rax, qword ptr [rsp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 32]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx95_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx95_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx95_1:
                        test             rax, rax
                                                                                        je    .Lx95_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx95_3]
                        lea              rdx, [rip + .Lx95_4]
                                                                                        jmp   rax
.Lx95_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx95_1
.Lx95_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx95_1
.Lx95_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx95_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx95_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 480]
                        mov              r14, qword ptr [rsp + 488]
                        mov              r15, qword ptr [rsp + 496]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 504]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n39_match_lit_α:
                        mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d
                                                                                        jg    n23_match_head_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 65
                                                                                        jne   n23_match_head_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 66
                                                                                        jne   n23_match_head_β
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 67
                                                                                        jne   n23_match_head_β
                        add              r14d, 3
                                                                                        jmp   n40_lit_integer_α
n39_match_lit_β:
                        sub              r14d, 3
                                                                                        jmp   n23_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:
                        mov              qword ptr [rsp + 576], 6
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rsp + 584], rax
                                                                                        jmp   n41_match_tab_α
n40_lit_integer_β:
                                                                                        jmp   n39_match_lit_β
.Lx98_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n41_match_tab_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 48], r14d
                        mov              rax, 1
                        cmp              r14d, eax
                                                                                        jle   .Lx99_239
                        add              rsp, 16
                                                                                        jmp   n39_match_lit_β
.Lx99_239:
                        cmp              r15d, eax
                                                                                        jge   .Lx99_240
                        add              rsp, 16
                                                                                        jmp   n39_match_lit_β
.Lx99_240:
                        mov              r14d, eax
                                                                                        jmp   n38_match_release_α
n41_match_tab_β:
                        mov              r14d, dword ptr [rsp + 48]
                        add              rsp, 16
                                                                                        jmp   n39_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx100_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n8_lit_string_α
n42_assign_β:
                                                                                        jmp   n8_lit_string_α
.Lx100_0:
                        .quad            .Lx100_0_s
.Lx100_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = 'PASS W06/002: AB TAB(2) CDE matched'  :(t003)
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n44_assign_α
n43_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n10_lit_string_α
.Lx101_0:
                        .quad            .Lx101_0_s
.Lx101_0_s:
                        .string          "PASS W06/002: AB TAB(2) CDE matched"
#-----------------------------------------------------------------------------------------------------------------------
n44_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx102_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n10_lit_string_α
n44_assign_β:
                                                                                        jmp   n10_lit_string_α
.Lx102_0:
                        .quad            .Lx102_0_s
.Lx102_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 600
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 600
                        ret
                        .section         .note.GNU-stack,"",@progbits
