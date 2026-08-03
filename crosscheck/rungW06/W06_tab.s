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
#         subject = 'ABCDE'
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_lit_string_α
n0_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_assign_α
n1_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n4_statement_begin_α
.Lx71_0:
                        .quad            .Lx71_0_s
.Lx71_0_s:
                        .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # subject
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n3_statement_end_α
n2_assign_β:
                        add              rsp, 16
                                                                                        jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n4_statement_begin_α
n3_statement_end_β:
                        add              rsp, 16
                                                                                        jmp   n4_statement_begin_α
#=======================================================================================================================
#         subject TAB(3) 'DE'  :f(e001)
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:
                                                                                        jmp   n5_var_α
n4_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # subject
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n6_match_begin_α
n5_var_β:
                        add              rsp, 16
                                                                                        jmp   n17_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n6_match_begin_α:
                        sub              rsp, 160
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
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              rdi, qword ptr [rsp + 160]                     # var
                        mov              rsi, qword ptr [rsp + 168]
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
.Lx79_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n7_match_sequence_α
n6_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx79_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx79_1
                                                                                        jmp   .Lx79_0
.Lx79_1:
                        mov              r10, qword ptr [1879048192]
.Lx79_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx79_2
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
                        add              rsp, 176
                                                                                        jmp   n17_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n7_match_sequence_α:
                                                                                        jmp   n15_lit_integer_α
n7_match_sequence_as:
                                                                                        jmp   n8_match_end_α
n7_match_sequence_β:
                                                                                        jmp   n14_match_lit_β
n7_match_sequence_af:
                                                                                        jmp   n6_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n8_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx83_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx83_9
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
.Lx83_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx83_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx83_1:
                        test             rax, rax
                                                                                        je    .Lx83_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx83_3]
                        lea              rdx, [rip + .Lx83_4]
                                                                                        jmp   rax
.Lx83_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx83_1
.Lx83_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx83_1
.Lx83_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx83_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx83_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 96]                      # outer_Σ
                        mov              r14, qword ptr [rsp + 104]                     # outer_δ
                        mov              r15, qword ptr [rsp + 112]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 120]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n9_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n9_statement_end_α:
                        add              rsp, 176
                                                                                        jmp   n10_statement_begin_α
n9_statement_end_β:
                        add              rsp, 176
                                                                                        jmp   n17_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'PASS W06/001: TAB(3) then DE matched'   :(t002)
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_begin_α:
                                                                                        jmp   n11_lit_string_α
n10_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 36
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n12_assign_α
n11_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n21_statement_begin_α
.Lx88_0:
                        .quad            .Lx88_0_s
.Lx88_0_s:
                        .string          "PASS W06/001: TAB(3) then DE matched"
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx89_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n13_statement_end_α
n12_assign_β:
                        add              rsp, 16
                                                                                        jmp   n21_statement_begin_α
.Lx89_0:
                        .quad            .Lx89_0_s
.Lx89_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n21_statement_begin_α
n13_statement_end_β:
                        add              rsp, 16
                                                                                        jmp   n21_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n14_match_lit_α:
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d
                                                                                        jg    n16_match_tab_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 68
                                                                                        jne   n16_match_tab_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 69
                                                                                        jne   n16_match_tab_β
                        add              r14d, 2
                                                                                        jmp   n8_match_end_α
n14_match_lit_β:
                        sub              r14d, 2
                                                                                        jmp   n16_match_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:
                        mov              qword ptr [rsp + 144], 3                       # result
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rsp + 152], rax
                                                                                        jmp   n16_match_tab_α
n15_lit_integer_β:
                                                                                        jmp   n6_match_begin_β
.Lx94_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n16_match_tab_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              rax, 3
                        cmp              r14d, eax
                                                                                        jle   .Lx95_239
                        add              rsp, 16
                                                                                        jmp   n6_match_begin_β
.Lx95_239:
                        cmp              r15d, eax
                                                                                        jge   .Lx95_240
                        add              rsp, 16
                                                                                        jmp   n6_match_begin_β
.Lx95_240:
                        mov              r14d, eax
                                                                                        jmp   n14_match_lit_α
n16_match_tab_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n6_match_begin_β
#=======================================================================================================================
# e001    OUTPUT = 'FAIL W06/001: TAB(3) then DE should match'
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_begin_α:
                                                                                        jmp   n18_lit_string_α
n17_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 41
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n19_assign_α
n18_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n21_statement_begin_α
.Lx98_0:
                        .quad            .Lx98_0_s
.Lx98_0_s:
                        .string          "FAIL W06/001: TAB(3) then DE should match"
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx99_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n20_statement_end_α
n19_assign_β:
                        add              rsp, 16
                                                                                        jmp   n21_statement_begin_α
.Lx99_0:
                        .quad            .Lx99_0_s
.Lx99_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n21_statement_begin_α
n20_statement_end_β:
                        add              rsp, 16
                                                                                        jmp   n21_statement_begin_α
#=======================================================================================================================
# t002    subject = 'ABCDE'
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_begin_α:
                                                                                        jmp   n22_lit_string_α
n21_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n23_assign_α
n22_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n25_statement_begin_α
.Lx104_0:
                        .quad            .Lx104_0_s
.Lx104_0_s:
                        .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # subject
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n24_statement_end_α
n23_assign_β:
                        add              rsp, 16
                                                                                        jmp   n25_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n25_statement_begin_α
n24_statement_end_β:
                        add              rsp, 16
                                                                                        jmp   n25_statement_begin_α
#=======================================================================================================================
#         subject 'AB' TAB(2) 'CDE'  :f(e002)
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_begin_α:
                                                                                        jmp   n26_var_α
n25_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # subject
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n27_match_begin_α
n26_var_β:
                        add              rsp, 16
                                                                                        jmp   n39_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n27_match_begin_α:
                        sub              rsp, 352
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
                        mov              rdi, qword ptr [rsp + 352]                     # var
                        mov              rsi, qword ptr [rsp + 360]
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
                        mov              qword ptr [rsp + 16], rax                      # rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax                       # patstk_mark
                        mov              dword ptr [rsp + 0], 0                         # start_δ
.Lx112_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n28_match_sequence_α
n27_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx112_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx112_1
                                                                                        jmp   .Lx112_0
.Lx112_1:
                        mov              r10, qword ptr [1879048192]
.Lx112_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx112_2
                        mov              rax, qword ptr [r10 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]                       # cas_rsp_mark
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 288]                     # outer_Σ
                        mov              r14, qword ptr [rsp + 296]                     # outer_δ
                        mov              r15, qword ptr [rsp + 304]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 312]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 368
                                                                                        jmp   n39_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n28_match_sequence_α:
                                                                                        jmp   n38_match_lit_α
n28_match_sequence_as:
                                                                                        jmp   n29_match_end_α
n28_match_sequence_β:
                                                                                        jmp   n35_match_lit_β
n28_match_sequence_af:
                                                                                        jmp   n27_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n29_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx116_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx116_9
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
.Lx116_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx116_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx116_1:
                        test             rax, rax
                                                                                        je    .Lx116_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx116_3]
                        lea              rdx, [rip + .Lx116_4]
                                                                                        jmp   rax
.Lx116_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx116_1
.Lx116_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx116_1
.Lx116_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx116_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx116_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 288]                     # outer_Σ
                        mov              r14, qword ptr [rsp + 296]                     # outer_δ
                        mov              r15, qword ptr [rsp + 304]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 312]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n30_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_end_α:
                        add              rsp, 368
                                                                                        jmp   n31_statement_begin_α
n30_statement_end_β:
                        add              rsp, 368
                                                                                        jmp   n39_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'PASS W06/002: AB TAB(2) CDE matched'  :(t003)
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_begin_α:
                                                                                        jmp   n32_lit_string_α
n31_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 35
                        mov              rax, qword ptr [rip + .Lx121_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n33_assign_α
n32_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n43_statement_begin_α
.Lx121_0:
                        .quad            .Lx121_0_s
.Lx121_0_s:
                        .string          "PASS W06/002: AB TAB(2) CDE matched"
#-----------------------------------------------------------------------------------------------------------------------
n33_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx122_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n34_statement_end_α
n33_assign_β:
                        add              rsp, 16
                                                                                        jmp   n43_statement_begin_α
.Lx122_0:
                        .quad            .Lx122_0_s
.Lx122_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n43_statement_begin_α
n34_statement_end_β:
                        add              rsp, 16
                                                                                        jmp   n43_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n35_match_lit_α:
                        mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d
                                                                                        jg    n37_match_tab_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 67
                                                                                        jne   n37_match_tab_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 68
                                                                                        jne   n37_match_tab_β
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 69
                                                                                        jne   n37_match_tab_β
                        add              r14d, 3
                                                                                        jmp   n29_match_end_α
n35_match_lit_β:
                        sub              r14d, 3
                                                                                        jmp   n37_match_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:
                        mov              qword ptr [rsp + 336], 3                       # result
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rsp + 344], rax
                                                                                        jmp   n37_match_tab_α
n36_lit_integer_β:
                                                                                        jmp   n38_match_lit_β
.Lx127_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n37_match_tab_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              rax, 2
                        cmp              r14d, eax
                                                                                        jle   .Lx128_239
                        add              rsp, 16
                                                                                        jmp   n38_match_lit_β
.Lx128_239:
                        cmp              r15d, eax
                                                                                        jge   .Lx128_240
                        add              rsp, 16
                                                                                        jmp   n38_match_lit_β
.Lx128_240:
                        mov              r14d, eax
                                                                                        jmp   n35_match_lit_α
n37_match_tab_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n38_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n38_match_lit_α:
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d
                                                                                        jg    n27_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 65
                                                                                        jne   n27_match_begin_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 66
                                                                                        jne   n27_match_begin_β
                        add              r14d, 2
                                                                                        jmp   n36_lit_integer_α
n38_match_lit_β:
                        sub              r14d, 2
                                                                                        jmp   n27_match_begin_β
#=======================================================================================================================
# e002    OUTPUT = 'FAIL W06/002: AB TAB(2) CDE should match'
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_begin_α:
                                                                                        jmp   n40_lit_string_α
n39_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 40
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n41_assign_α
n40_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n43_statement_begin_α
.Lx133_0:
                        .quad            .Lx133_0_s
.Lx133_0_s:
                        .string          "FAIL W06/002: AB TAB(2) CDE should match"
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx134_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n42_statement_end_α
n41_assign_β:
                        add              rsp, 16
                                                                                        jmp   n43_statement_begin_α
.Lx134_0:
                        .quad            .Lx134_0_s
.Lx134_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n43_statement_begin_α
n42_statement_end_β:
                        add              rsp, 16
                                                                                        jmp   n43_statement_begin_α
#=======================================================================================================================
# t003    subject = 'ABCDE'
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_begin_α:
                                                                                        jmp   n44_lit_string_α
n43_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n45_assign_α
n44_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n47_statement_begin_α
.Lx139_0:
                        .quad            .Lx139_0_s
.Lx139_0_s:
                        .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # subject
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n46_statement_end_α
n45_assign_β:
                        add              rsp, 16
                                                                                        jmp   n47_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n47_statement_begin_α
n46_statement_end_β:
                        add              rsp, 16
                                                                                        jmp   n47_statement_begin_α
#=======================================================================================================================
#         subject 'ABC' TAB(1)  :s(e003)
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_begin_α:
                                                                                        jmp   n48_var_α
n47_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n48_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # subject
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n49_match_begin_α
n48_var_β:
                        add              rsp, 16
                                                                                        jmp   n60_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n49_match_begin_α:
                        sub              rsp, 544
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
                        mov              rdi, qword ptr [rsp + 544]                     # var
                        mov              rsi, qword ptr [rsp + 552]
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
                        mov              qword ptr [rsp + 16], rax                      # rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax                       # patstk_mark
                        mov              dword ptr [rsp + 0], 0                         # start_δ
.Lx147_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n50_match_sequence_α
n49_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx147_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx147_1
                                                                                        jmp   .Lx147_0
.Lx147_1:
                        mov              r10, qword ptr [1879048192]
.Lx147_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx147_2
                        mov              rax, qword ptr [r10 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]                       # cas_rsp_mark
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 480]                     # outer_Σ
                        mov              r14, qword ptr [rsp + 488]                     # outer_δ
                        mov              r15, qword ptr [rsp + 496]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 504]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 560
                                                                                        jmp   n60_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n50_match_sequence_α:
                                                                                        jmp   n59_match_lit_α
n50_match_sequence_as:
                                                                                        jmp   n51_match_end_α
n50_match_sequence_β:
                                                                                        jmp   n58_match_tab_β
n50_match_sequence_af:
                                                                                        jmp   n49_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n51_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx151_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx151_9
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
.Lx151_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx151_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx151_1:
                        test             rax, rax
                                                                                        je    .Lx151_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx151_3]
                        lea              rdx, [rip + .Lx151_4]
                                                                                        jmp   rax
.Lx151_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx151_1
.Lx151_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx151_1
.Lx151_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx151_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx151_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 480]                     # outer_Σ
                        mov              r14, qword ptr [rsp + 488]                     # outer_δ
                        mov              r15, qword ptr [rsp + 496]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 504]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n52_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_end_α:
                        add              rsp, 560
                                                                                        jmp   n53_statement_begin_α
n52_statement_end_β:
                        add              rsp, 560
                                                                                        jmp   n60_statement_begin_α
#=======================================================================================================================
# e003    OUTPUT = 'FAIL W06/003: TAB(1) behind cursor should fail'
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_begin_α:
                                                                                        jmp   n54_lit_string_α
n53_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 46
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n55_assign_α
n54_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx156_0:
                        .quad            .Lx156_0_s
.Lx156_0_s:
                        .string          "FAIL W06/003: TAB(1) behind cursor should fail"
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx157_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n56_statement_end_α
n55_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx157_0:
                        .quad            .Lx157_0_s
.Lx157_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
n56_statement_end_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:
                        mov              qword ptr [rsp + 528], 3                       # result
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rsp + 536], rax
                                                                                        jmp   n58_match_tab_α
n57_lit_integer_β:
                                                                                        jmp   n59_match_lit_β
.Lx160_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n58_match_tab_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              rax, 1
                        cmp              r14d, eax
                                                                                        jle   .Lx161_239
                        add              rsp, 16
                                                                                        jmp   n59_match_lit_β
.Lx161_239:
                        cmp              r15d, eax
                                                                                        jge   .Lx161_240
                        add              rsp, 16
                                                                                        jmp   n59_match_lit_β
.Lx161_240:
                        mov              r14d, eax
                                                                                        jmp   n51_match_end_α
n58_match_tab_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n59_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n59_match_lit_α:
                        mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d
                                                                                        jg    n49_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 65
                                                                                        jne   n49_match_begin_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 66
                                                                                        jne   n49_match_begin_β
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 67
                                                                                        jne   n49_match_begin_β
                        add              r14d, 3
                                                                                        jmp   n57_lit_integer_α
n59_match_lit_β:
                        sub              r14d, 3
                                                                                        jmp   n49_match_begin_β
#=======================================================================================================================
#         OUTPUT = 'PASS W06/003: TAB(1) behind cursor correctly fails'  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_begin_α:
                                                                                        jmp   n61_lit_string_α
n60_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 50
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n62_assign_α
n61_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx166_0:
                        .quad            .Lx166_0_s
.Lx166_0_s:
                        .string          "PASS W06/003: TAB(1) behind cursor correctly fails"
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx167_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n63_statement_end_α
n62_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx167_0:
                        .quad            .Lx167_0_s
.Lx167_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
n63_statement_end_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n64_goto_α:
                                                                                        jmp   n17_statement_begin_α
n64_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n65_goto_α:
                                                                                        jmp   n21_statement_begin_α
n65_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n66_goto_α:
                                                                                        jmp   n39_statement_begin_α
n66_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n67_goto_α:
                                                                                        jmp   n43_statement_begin_α
n67_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n68_goto_α:
                                                                                        jmp   n53_statement_begin_α
n68_goto_β:
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
