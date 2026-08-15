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
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#=======================================================================================================================
#         subject = 'ABCDE'
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:                                                         jmp   n1_lit_string_α
n0_statement_begin_β:                                                         jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_assign_α
.Lx60_0:                .quad            .Lx60_0_s
.Lx60_0_s:              .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:            mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # subject
                        mov              qword ptr [r9 + 8], rdx;             jmp   n3_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:     add              rsp, 16;                             jmp   n4_statement_begin_α
#=======================================================================================================================
#         subject TAB(3) 'DE'  :f(e001)
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:                                                         jmp   n5_var_α
n4_statement_begin_β:                                                         jmp   n15_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:               sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # subject
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n6_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n6_match_begin_α:       mov              rdi, qword ptr [rsp + 0]             # var
                        mov              rsi, qword ptr [rsp + 8]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 24
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              dword ptr [rbp + -40], 0             # start_δ
.Lx68_0:                mov              r14d, dword ptr [rbp + -40];         jmp   n7_match_tab_α
n6_match_begin_β:       lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx68_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx68_1
                                                                              jmp   .Lx68_0
.Lx68_1:
n6_match_begin_af:      mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 16;                             jmp   n15_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n7_match_tab_α:         sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              rax, 3
                        cmp              r14d, eax;                           jle   .Lx69_239
                        add              rsp, 16;                             jmp   n6_match_begin_β
.Lx69_239:              cmp              r15d, eax;                           jge   .Lx69_240
                        add              rsp, 16;                             jmp   n6_match_begin_β
.Lx69_240:              mov              r14d, eax;                           jmp   n8_match_lit_α
n7_match_tab_β:         mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n6_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n8_match_lit_α:         mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d;                           jg    n7_match_tab_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 68;                             jne   n7_match_tab_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 69;                             jne   n7_match_tab_β
                        add              r14d, 2;                             jmp   n9_match_end_α
n8_match_lit_β:         sub              r14d, 2;                             jmp   n7_match_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n9_match_end_α:         push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              rdi, qword ptr [rbp + -8]            # cas_mark
                        mov              rdx, r13
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_end_ok_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx73_1:                test             rax, rax;                            je    .Lx73_2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx73_3]
                        lea              rdx, [rip + .Lx73_4];                jmp   rax
.Lx73_3:                mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx73_1
.Lx73_4:                mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx73_1
.Lx73_2:                call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n10_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_end_α:    add              rsp, 16;                             jmp   n11_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'PASS W06/001: TAB(3) then DE matched'   :(t002)
#-----------------------------------------------------------------------------------------------------------------------
n11_statement_begin_α:                                                        jmp   n12_lit_string_α
n11_statement_begin_β:                                                        jmp   n19_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 36
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n13_assign_α
.Lx78_0:                .quad            .Lx78_0_s
.Lx78_0_s:              .string          "PASS W06/001: TAB(3) then DE matched"
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n14_statement_end_α
.Lx79_0:                .quad            .Lx79_0_s
.Lx79_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n14_statement_end_α:    add              rsp, 16;                             jmp   n19_statement_begin_α
#=======================================================================================================================
# e001    OUTPUT = 'FAIL W06/001: TAB(3) then DE should match'
#-----------------------------------------------------------------------------------------------------------------------
n15_statement_begin_α:                                                        jmp   n16_lit_string_α
n15_statement_begin_β:                                                        jmp   n19_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 41
                        mov              rax, qword ptr [rip + .Lx84_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n17_assign_α
.Lx84_0:                .quad            .Lx84_0_s
.Lx84_0_s:              .string          "FAIL W06/001: TAB(3) then DE should match"
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n18_statement_end_α
.Lx85_0:                .quad            .Lx85_0_s
.Lx85_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_end_α:    add              rsp, 16;                             jmp   n19_statement_begin_α
#=======================================================================================================================
# t002    subject = 'ABCDE'
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_begin_α:                                                        jmp   n20_lit_string_α
n19_statement_begin_β:                                                        jmp   n23_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n21_assign_α
.Lx90_0:                .quad            .Lx90_0_s
.Lx90_0_s:              .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n21_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # subject
                        mov              qword ptr [r9 + 8], rdx;             jmp   n22_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n22_statement_end_α:    add              rsp, 16;                             jmp   n23_statement_begin_α
#=======================================================================================================================
#         subject 'AB' TAB(2) 'CDE'  :f(e002)
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_begin_α:                                                        jmp   n24_var_α
n23_statement_begin_β:                                                        jmp   n35_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # subject
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n25_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n25_match_begin_α:      mov              rdi, qword ptr [rsp + 0]             # var
                        mov              rsi, qword ptr [rsp + 8]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 24
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              dword ptr [rbp + -40], 0             # start_δ
.Lx98_0:                mov              r14d, dword ptr [rbp + -40];         jmp   n26_match_lit_α
n25_match_begin_β:      lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx98_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx98_1
                                                                              jmp   .Lx98_0
.Lx98_1:
n25_match_begin_af:     mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 16;                             jmp   n35_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n26_match_lit_α:        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d;                           jg    n25_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 65;                             jne   n25_match_begin_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 66;                             jne   n25_match_begin_β
                        add              r14d, 2;                             jmp   n27_match_tab_α
n26_match_lit_β:        sub              r14d, 2;                             jmp   n25_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n27_match_tab_α:        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              rax, 2
                        cmp              r14d, eax;                           jle   .Lx101_239
                        add              rsp, 16;                             jmp   n26_match_lit_β
.Lx101_239:             cmp              r15d, eax;                           jge   .Lx101_240
                        add              rsp, 16;                             jmp   n26_match_lit_β
.Lx101_240:             mov              r14d, eax;                           jmp   n28_match_lit_α
n27_match_tab_β:        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n26_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n28_match_lit_α:        mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d;                           jg    n27_match_tab_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 67;                             jne   n27_match_tab_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 68;                             jne   n27_match_tab_β
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 69;                             jne   n27_match_tab_β
                        add              r14d, 3;                             jmp   n29_match_end_α
n28_match_lit_β:        sub              r14d, 3;                             jmp   n27_match_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n29_match_end_α:        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              rdi, qword ptr [rbp + -8]            # cas_mark
                        mov              rdx, r13
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_end_ok_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx105_1:               test             rax, rax;                            je    .Lx105_2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx105_3]
                        lea              rdx, [rip + .Lx105_4];               jmp   rax
.Lx105_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx105_1
.Lx105_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx105_1
.Lx105_2:               call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n30_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_end_α:    add              rsp, 16;                             jmp   n31_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'PASS W06/002: AB TAB(2) CDE matched'  :(t003)
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_begin_α:                                                        jmp   n32_lit_string_α
n31_statement_begin_β:                                                        jmp   n39_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 35
                        mov              rax, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n33_assign_α
.Lx110_0:               .quad            .Lx110_0_s
.Lx110_0_s:             .string          "PASS W06/002: AB TAB(2) CDE matched"
#-----------------------------------------------------------------------------------------------------------------------
n33_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n34_statement_end_α
.Lx111_0:               .quad            .Lx111_0_s
.Lx111_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_end_α:    add              rsp, 16;                             jmp   n39_statement_begin_α
#=======================================================================================================================
# e002    OUTPUT = 'FAIL W06/002: AB TAB(2) CDE should match'
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_begin_α:                                                        jmp   n36_lit_string_α
n35_statement_begin_β:                                                        jmp   n39_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 40
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n37_assign_α
.Lx116_0:               .quad            .Lx116_0_s
.Lx116_0_s:             .string          "FAIL W06/002: AB TAB(2) CDE should match"
#-----------------------------------------------------------------------------------------------------------------------
n37_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n38_statement_end_α
.Lx117_0:               .quad            .Lx117_0_s
.Lx117_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n38_statement_end_α:    add              rsp, 16;                             jmp   n39_statement_begin_α
#=======================================================================================================================
# t003    subject = 'ABCDE'
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_begin_α:                                                        jmp   n40_lit_string_α
n39_statement_begin_β:                                                        jmp   n43_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx122_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n41_assign_α
.Lx122_0:               .quad            .Lx122_0_s
.Lx122_0_s:             .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # subject
                        mov              qword ptr [r9 + 8], rdx;             jmp   n42_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_end_α:    add              rsp, 16;                             jmp   n43_statement_begin_α
#=======================================================================================================================
#         subject 'ABC' TAB(1)  :s(e003)
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_begin_α:                                                        jmp   n44_var_α
n43_statement_begin_β:                                                        jmp   n50_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # subject
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n45_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n45_match_begin_α:      mov              rdi, qword ptr [rsp + 0]             # var
                        mov              rsi, qword ptr [rsp + 8]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 24
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              dword ptr [rbp + -40], 0             # start_δ
.Lx130_0:               mov              r14d, dword ptr [rbp + -40];         jmp   n46_match_lit_α
n45_match_begin_β:      lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx130_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx130_1
                                                                              jmp   .Lx130_0
.Lx130_1:
n45_match_begin_af:     mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 16;                             jmp   n50_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n46_match_lit_α:        mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d;                           jg    n45_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 65;                             jne   n45_match_begin_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 66;                             jne   n45_match_begin_β
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 67;                             jne   n45_match_begin_β
                        add              r14d, 3;                             jmp   n47_match_tab_α
n46_match_lit_β:        sub              r14d, 3;                             jmp   n45_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n47_match_tab_α:        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              rax, 1
                        cmp              r14d, eax;                           jle   .Lx133_239
                        add              rsp, 16;                             jmp   n46_match_lit_β
.Lx133_239:             cmp              r15d, eax;                           jge   .Lx133_240
                        add              rsp, 16;                             jmp   n46_match_lit_β
.Lx133_240:             mov              r14d, eax;                           jmp   n48_match_end_α
n47_match_tab_β:        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n46_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n48_match_end_α:        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              rdi, qword ptr [rbp + -8]            # cas_mark
                        mov              rdx, r13
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_end_ok_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx135_1:               test             rax, rax;                            je    .Lx135_2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx135_3]
                        lea              rdx, [rip + .Lx135_4];               jmp   rax
.Lx135_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx135_1
.Lx135_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx135_1
.Lx135_2:               call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n49_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_end_α:    add              rsp, 16;                             jmp   n54_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'PASS W06/003: TAB(1) behind cursor correctly fails'  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_begin_α:                                                        jmp   n51_lit_string_α
n50_statement_begin_β:                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 50
                        mov              rax, qword ptr [rip + .Lx140_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n52_assign_α
.Lx140_0:               .quad            .Lx140_0_s
.Lx140_0_s:             .string          "PASS W06/003: TAB(1) behind cursor correctly fails"
#-----------------------------------------------------------------------------------------------------------------------
n52_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n53_statement_end_α
.Lx141_0:               .quad            .Lx141_0_s
.Lx141_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_end_α:    add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# e003    OUTPUT = 'FAIL W06/003: TAB(1) behind cursor should fail'
#-----------------------------------------------------------------------------------------------------------------------
n54_statement_begin_α:                                                        jmp   n55_lit_string_α
n54_statement_begin_β:                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 46
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n56_assign_α
.Lx146_0:               .quad            .Lx146_0_s
.Lx146_0_s:             .string          "FAIL W06/003: TAB(1) behind cursor should fail"
#-----------------------------------------------------------------------------------------------------------------------
n56_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx147_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n57_statement_end_α
.Lx147_0:               .quad            .Lx147_0_s
.Lx147_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_end_α:    add              rsp, 16;                             jmp   main_γ
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
