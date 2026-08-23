                        .intel_syntax    noprefix
                        .text
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
                        .section         .rodata
.Lgvan0:                .string          "X"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:   mov              r11, 1
                        mov              r10, 0;                              jmp   n1_statement_end_α
n0_statement_begin_β:   mov              r11, 1;                              jmp   n2_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_statement_end_α:     mov              r11, 2
                        mov              r10, 1;                              jmp   n2_statement_begin_α
#=======================================================================================================================
#         DIFFER(&ANCHOR, 0)                         :F(e001)
#-----------------------------------------------------------------------------------------------------------------------
n2_statement_begin_α:   mov              r11, 3
                        mov              r10, 2;                              jmp   n3_keyword_snobol4_α
n2_statement_begin_β:   mov              r11, 3;                              jmp   n11_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n3_keyword_snobol4_α:   sub              rsp, 16
                        mov              r11, 4
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rdx, qword ptr [rcx]
                        mov              rax, 3
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n4_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:       sub              rsp, 16
                        mov              r11, 5
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n5_differ_α
n4_lit_integer_β:       mov              r11, 5
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n2_statement_begin_β
.Lx107_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n5_differ_α:            sub              rsp, 16
                        mov              r11, 6
                        mov              rdi, qword ptr [rsp + 32]            # keyword_snobol4
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx109_240
                        add              rsp, 16;                             jmp   n4_lit_integer_β
.Lx109_240:                                                                   jmp   n6_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n6_statement_end_α:     mov              r11, 7
                        mov              r10, 2
                        add              rsp, 48;                             jmp   n7_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 099/001: &ANCHOR default'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_begin_α:   mov              r11, 8
                        mov              r10, 3;                              jmp   n8_lit_string_α
n7_statement_begin_β:   mov              r11, 8;                              jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        sub              rsp, 16
                        mov              r11, 9
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 29
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n9_assign_α
.Lx114_0:               .quad            .Lx114_0_s
.Lx114_0_s:             .string          "FAIL 099/001: &ANCHOR default"
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:            mov              r11, 10
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n10_statement_end_α
.Lx115_0:               .quad            .Lx115_0_s
.Lx115_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_end_α:    mov              r11, 11
                        mov              r10, 3
                        add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# e001  <stmt 4, line 8: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n11_statement_begin_α:  mov              r11, 12
                        mov              r10, 4;                              jmp   n12_statement_end_α
n11_statement_begin_β:  mov              r11, 12;                             jmp   n13_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_end_α:    mov              r11, 13
                        mov              r10, 4;                              jmp   n13_statement_begin_α
#=======================================================================================================================
#         &ANCHOR = 1
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_begin_α:  mov              r11, 14
                        mov              r10, 5;                              jmp   n14_lit_integer_α
n13_statement_begin_β:  mov              r11, 14;                             jmp   n17_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:      sub              rsp, 16
                        mov              r11, 15
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_keyword_assign_snobol4_α
.Lx124_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n15_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 16
                        mov              rdi, qword ptr [rip + .Lx125_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx125_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n13_statement_begin_β
.Lx125_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n16_statement_end_α
.Lx125_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_end_α:    mov              r11, 17
                        mov              r10, 5
                        add              rsp, 32;                             jmp   n17_statement_begin_α
#=======================================================================================================================
#         X = 'hello world'
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_begin_α:  mov              r11, 18
                        mov              r10, 6;                              jmp   n18_lit_string_α
n17_statement_begin_β:  mov              r11, 18;                             jmp   n21_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:       sub              rsp, 16
                        mov              r11, 19
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n19_assign_α
.Lx130_0:               .quad            .Lx130_0_s
.Lx130_0_s:             .string          "hello world"
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:           mov              r11, 20
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # X
                        mov              qword ptr [r9 + 8], rdx;             jmp   n20_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_end_α:    mov              r11, 21
                        mov              r10, 6
                        add              rsp, 16;                             jmp   n21_statement_begin_α
#=======================================================================================================================
#         X 'hello'                                  :S(e002ok)F(e002)
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_begin_α:  mov              r11, 22
                        mov              r10, 7;                              jmp   n22_var_α
n21_statement_begin_β:  mov              r11, 22;                             jmp   n27_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:              sub              rsp, 16
                        mov              r11, 23
                        mov              rax, qword ptr [r9 + 0]              # X
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n23_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n23_match_begin_α:      mov              r11, 24
                        mov              rdi, qword ptr [rsp + 0]             # var
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
.Lx138_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx138_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n24_match_lit_α
n23_match_begin_β:      mov              r11, 24
.Lx138_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx138_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx138_1
                                                                              jmp   .Lx138_0
.Lx138_1:
n23_match_begin_af:     mov              r11, 24
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
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
                        add              rsp, 16;                             jmp   n27_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n24_match_lit_α:        mov              r11, 25
                        mov              eax, r14d
                        add              eax, 5
                        cmp              eax, r15d;                           jg    n23_match_begin_β
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1819043176;                     jne   n23_match_begin_β
                        movzx            eax, byte ptr [r13+rcx+4]
                        cmp              eax, 111;                            jne   n23_match_begin_β
                        add              r14d, 5;                             jmp   n25_match_end_α
n24_match_lit_β:        mov              r11, 25
                        sub              r14d, 5;                             jmp   n23_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n25_match_end_α:        mov              r11, 26
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -8]            # cas_mark
                        mov              rax, qword ptr [rbp + -32]           # outer_Δ
                        mov              rcx, qword ptr [rbp + -16]           # outer_Σ
                        push             rax
                        push             rcx
                        lea              rcx, [rsp + 0]
                        mov              rsi, r12
                        mov              rdx, r13
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_end_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx142_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n23_match_begin_af
.Lx142_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n26_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n26_statement_end_α:    mov              r11, 27
                        mov              r10, 7
                        add              rsp, 16;                             jmp   n31_statement_begin_α
#=======================================================================================================================
# e002    OUTPUT = 'FAIL 099/002: anchor=1 int'      :(END)
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_begin_α:  mov              r11, 28
                        mov              r10, 8;                              jmp   n28_lit_string_α
n27_statement_begin_β:  mov              r11, 28;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:       sub              rsp, 16
                        mov              r11, 29
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 26
                        mov              rax, qword ptr [rip + .Lx147_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n29_assign_α
.Lx147_0:               .quad            .Lx147_0_s
.Lx147_0_s:             .string          "FAIL 099/002: anchor=1 int"
#-----------------------------------------------------------------------------------------------------------------------
n29_assign_α:           mov              r11, 30
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n30_statement_end_α
.Lx148_0:               .quad            .Lx148_0_s
.Lx148_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_end_α:    mov              r11, 31
                        mov              r10, 8
                        add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# e002ok  X 'world'                                  :S(e002b)F(e002bok)
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_begin_α:  mov              r11, 32
                        mov              r10, 9;                              jmp   n32_var_α
n31_statement_begin_β:  mov              r11, 32;                             jmp   n41_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:              sub              rsp, 16
                        mov              r11, 33
                        mov              rax, qword ptr [r9 + 0]              # X
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n33_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n33_match_begin_α:      mov              r11, 34
                        mov              rdi, qword ptr [rsp + 0]             # var
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
.Lx155_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx155_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n34_match_lit_α
n33_match_begin_β:      mov              r11, 34
.Lx155_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx155_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx155_1
                                                                              jmp   .Lx155_0
.Lx155_1:
n33_match_begin_af:     mov              r11, 34
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
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
                        add              rsp, 16;                             jmp   n41_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n34_match_lit_α:        mov              r11, 35
                        mov              eax, r14d
                        add              eax, 5
                        cmp              eax, r15d;                           jg    n33_match_begin_β
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1819438967;                     jne   n33_match_begin_β
                        movzx            eax, byte ptr [r13+rcx+4]
                        cmp              eax, 100;                            jne   n33_match_begin_β
                        add              r14d, 5;                             jmp   n35_match_end_α
n34_match_lit_β:        mov              r11, 35
                        sub              r14d, 5;                             jmp   n33_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n35_match_end_α:        mov              r11, 36
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -8]            # cas_mark
                        mov              rax, qword ptr [rbp + -32]           # outer_Δ
                        mov              rcx, qword ptr [rbp + -16]           # outer_Σ
                        push             rax
                        push             rcx
                        lea              rcx, [rsp + 0]
                        mov              rsi, r12
                        mov              rdx, r13
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_end_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx159_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n33_match_begin_af
.Lx159_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n36_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_end_α:    mov              r11, 37
                        mov              r10, 9
                        add              rsp, 16;                             jmp   n37_statement_begin_α
#=======================================================================================================================
# e002b   OUTPUT = 'FAIL 099/002b: anchor blocked mid' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_begin_α:  mov              r11, 38
                        mov              r10, 10;                             jmp   n38_lit_string_α
n37_statement_begin_β:  mov              r11, 38;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:       sub              rsp, 16
                        mov              r11, 39
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 33
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n39_assign_α
.Lx164_0:               .quad            .Lx164_0_s
.Lx164_0_s:             .string          "FAIL 099/002b: anchor blocked mid"
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:           mov              r11, 40
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n40_statement_end_α
.Lx165_0:               .quad            .Lx165_0_s
.Lx165_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_end_α:    mov              r11, 41
                        mov              r10, 10
                        add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# e002bok  <stmt 11, line 17: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_begin_α:  mov              r11, 42
                        mov              r10, 11;                             jmp   n42_statement_end_α
n41_statement_begin_β:  mov              r11, 42;                             jmp   n43_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_end_α:    mov              r11, 43
                        mov              r10, 11;                             jmp   n43_statement_begin_α
#=======================================================================================================================
#         &ANCHOR = '0'
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_begin_α:  mov              r11, 44
                        mov              r10, 12;                             jmp   n44_lit_string_α
n43_statement_begin_β:  mov              r11, 44;                             jmp   n47_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:       sub              rsp, 16
                        mov              r11, 45
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n45_keyword_assign_snobol4_α
.Lx174_0:               .quad            .Lx174_0_s
.Lx174_0_s:             .string          "0"
#-----------------------------------------------------------------------------------------------------------------------
n45_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 46
                        mov              rdi, qword ptr [rip + .Lx175_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx175_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n43_statement_begin_β
.Lx175_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n46_statement_end_α
.Lx175_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_end_α:    mov              r11, 47
                        mov              r10, 12
                        add              rsp, 32;                             jmp   n47_statement_begin_α
#=======================================================================================================================
#         X = 'hello world'
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_begin_α:  mov              r11, 48
                        mov              r10, 13;                             jmp   n48_lit_string_α
n47_statement_begin_β:  mov              r11, 48;                             jmp   n51_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:       sub              rsp, 16
                        mov              r11, 49
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n49_assign_α
.Lx180_0:               .quad            .Lx180_0_s
.Lx180_0_s:             .string          "hello world"
#-----------------------------------------------------------------------------------------------------------------------
n49_assign_α:           mov              r11, 50
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # X
                        mov              qword ptr [r9 + 8], rdx;             jmp   n50_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_end_α:    mov              r11, 51
                        mov              r10, 13
                        add              rsp, 16;                             jmp   n51_statement_begin_α
#=======================================================================================================================
#         X 'world'                                  :S(e003ok)F(e003)
#-----------------------------------------------------------------------------------------------------------------------
n51_statement_begin_α:  mov              r11, 52
                        mov              r10, 14;                             jmp   n52_var_α
n51_statement_begin_β:  mov              r11, 52;                             jmp   n57_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:              sub              rsp, 16
                        mov              r11, 53
                        mov              rax, qword ptr [r9 + 0]              # X
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n53_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n53_match_begin_α:      mov              r11, 54
                        mov              rdi, qword ptr [rsp + 0]             # var
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
.Lx188_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx188_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n54_match_lit_α
n53_match_begin_β:      mov              r11, 54
.Lx188_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx188_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx188_1
                                                                              jmp   .Lx188_0
.Lx188_1:
n53_match_begin_af:     mov              r11, 54
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
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
                        add              rsp, 16;                             jmp   n57_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n54_match_lit_α:        mov              r11, 55
                        mov              eax, r14d
                        add              eax, 5
                        cmp              eax, r15d;                           jg    n53_match_begin_β
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1819438967;                     jne   n53_match_begin_β
                        movzx            eax, byte ptr [r13+rcx+4]
                        cmp              eax, 100;                            jne   n53_match_begin_β
                        add              r14d, 5;                             jmp   n55_match_end_α
n54_match_lit_β:        mov              r11, 55
                        sub              r14d, 5;                             jmp   n53_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n55_match_end_α:        mov              r11, 56
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -8]            # cas_mark
                        mov              rax, qword ptr [rbp + -32]           # outer_Δ
                        mov              rcx, qword ptr [rbp + -16]           # outer_Σ
                        push             rax
                        push             rcx
                        lea              rcx, [rsp + 0]
                        mov              rsi, r12
                        mov              rdx, r13
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_end_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx192_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n53_match_begin_af
.Lx192_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n56_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_end_α:    mov              r11, 57
                        mov              r10, 14
                        add              rsp, 16;                             jmp   n61_statement_begin_α
#=======================================================================================================================
# e003    OUTPUT = 'FAIL 099/003: anchor=0 str coerce' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_begin_α:  mov              r11, 58
                        mov              r10, 15;                             jmp   n58_lit_string_α
n57_statement_begin_β:  mov              r11, 58;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:       sub              rsp, 16
                        mov              r11, 59
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 33
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n59_assign_α
.Lx197_0:               .quad            .Lx197_0_s
.Lx197_0_s:             .string          "FAIL 099/003: anchor=0 str coerce"
#-----------------------------------------------------------------------------------------------------------------------
n59_assign_α:           mov              r11, 60
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n60_statement_end_α
.Lx198_0:               .quad            .Lx198_0_s
.Lx198_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_end_α:    mov              r11, 61
                        mov              r10, 15
                        add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# e003ok  <stmt 16, line 24: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_begin_α:  mov              r11, 62
                        mov              r10, 16;                             jmp   n62_statement_end_α
n61_statement_begin_β:  mov              r11, 62;                             jmp   n63_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_end_α:    mov              r11, 63
                        mov              r10, 16;                             jmp   n63_statement_begin_α
#=======================================================================================================================
#         DIFFER(DATATYPE(&STLIMIT), 'INTEGER')      :F(e004)
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_begin_α:  mov              r11, 64
                        mov              r10, 17;                             jmp   n64_keyword_snobol4_α
n63_statement_begin_β:  mov              r11, 64;                             jmp   n73_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n64_keyword_snobol4_α:  sub              rsp, 16
                        mov              r11, 65
                        mov              rcx, qword ptr [rip + kw_stlimit@GOTPCREL]
                        mov              rdx, qword ptr [rcx]
                        mov              rax, 3
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n65_call_α
#-----------------------------------------------------------------------------------------------------------------------
n65_call_α:             sub              rsp, 16
                        mov              r11, 66
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd209:            .string          "DATATYPE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd209]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx208_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n63_statement_begin_β
.Lx208_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n66_lit_string_α
n65_call_β:             mov              r11, 66
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n63_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:       sub              rsp, 16
                        mov              r11, 67
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n67_differ_α
n66_lit_string_β:       mov              r11, 67
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n63_statement_begin_β
.Lx210_0:               .quad            .Lx210_0_s
.Lx210_0_s:             .string          "INTEGER"
#-----------------------------------------------------------------------------------------------------------------------
n67_differ_α:           sub              rsp, 16
                        mov              r11, 68
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx212_240
                        add              rsp, 16;                             jmp   n66_lit_string_β
.Lx212_240:                                                                   jmp   n68_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_end_α:    mov              r11, 69
                        mov              r10, 17
                        add              rsp, 64;                             jmp   n69_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 099/004: STLIMIT datatype'  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_begin_α:  mov              r11, 70
                        mov              r10, 18;                             jmp   n70_lit_string_α
n69_statement_begin_β:  mov              r11, 70;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:       sub              rsp, 16
                        mov              r11, 71
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 30
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n71_assign_α
.Lx217_0:               .quad            .Lx217_0_s
.Lx217_0_s:             .string          "FAIL 099/004: STLIMIT datatype"
#-----------------------------------------------------------------------------------------------------------------------
n71_assign_α:           mov              r11, 72
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n72_statement_end_α
.Lx218_0:               .quad            .Lx218_0_s
.Lx218_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n72_statement_end_α:    mov              r11, 73
                        mov              r10, 18
                        add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# e004  <stmt 19, line 29: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_begin_α:  mov              r11, 74
                        mov              r10, 19;                             jmp   n74_statement_end_α
n73_statement_begin_β:  mov              r11, 74;                             jmp   n75_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n74_statement_end_α:    mov              r11, 75
                        mov              r10, 19;                             jmp   n75_statement_begin_α
#=======================================================================================================================
#         &ANCHOR = 1
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_begin_α:  mov              r11, 76
                        mov              r10, 20;                             jmp   n76_lit_integer_α
n75_statement_begin_β:  mov              r11, 76;                             jmp   n79_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_integer_α:      sub              rsp, 16
                        mov              r11, 77
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n77_keyword_assign_snobol4_α
.Lx227_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n77_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 78
                        mov              rdi, qword ptr [rip + .Lx228_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx228_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n75_statement_begin_β
.Lx228_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n78_statement_end_α
.Lx228_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n78_statement_end_α:    mov              r11, 79
                        mov              r10, 20
                        add              rsp, 32;                             jmp   n79_statement_begin_α
#=======================================================================================================================
#         DIFFER(&ANCHOR, 1)                         :F(e005)
#-----------------------------------------------------------------------------------------------------------------------
n79_statement_begin_α:  mov              r11, 80
                        mov              r10, 21;                             jmp   n80_keyword_snobol4_α
n79_statement_begin_β:  mov              r11, 80;                             jmp   n88_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n80_keyword_snobol4_α:  sub              rsp, 16
                        mov              r11, 81
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rdx, qword ptr [rcx]
                        mov              rax, 3
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n81_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_integer_α:      sub              rsp, 16
                        mov              r11, 82
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n82_differ_α
n81_lit_integer_β:      mov              r11, 82
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n79_statement_begin_β
.Lx234_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n82_differ_α:           sub              rsp, 16
                        mov              r11, 83
                        mov              rdi, qword ptr [rsp + 32]            # keyword_snobol4
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx236_240
                        add              rsp, 16;                             jmp   n81_lit_integer_β
.Lx236_240:                                                                   jmp   n83_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n83_statement_end_α:    mov              r11, 84
                        mov              r10, 21
                        add              rsp, 48;                             jmp   n84_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 099/005: ANCHOR round-trip' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_begin_α:  mov              r11, 85
                        mov              r10, 22;                             jmp   n85_lit_string_α
n84_statement_begin_β:  mov              r11, 85;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:       sub              rsp, 16
                        mov              r11, 86
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 31
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n86_assign_α
.Lx241_0:               .quad            .Lx241_0_s
.Lx241_0_s:             .string          "FAIL 099/005: ANCHOR round-trip"
#-----------------------------------------------------------------------------------------------------------------------
n86_assign_α:           mov              r11, 87
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n87_statement_end_α
.Lx242_0:               .quad            .Lx242_0_s
.Lx242_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_end_α:    mov              r11, 88
                        mov              r10, 22
                        add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# e005  <stmt 23, line 35: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_begin_α:  mov              r11, 89
                        mov              r10, 23;                             jmp   n89_statement_end_α
n88_statement_begin_β:  mov              r11, 89;                             jmp   n90_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_end_α:    mov              r11, 90
                        mov              r10, 23;                             jmp   n90_statement_begin_α
#=======================================================================================================================
#         &ANCHOR = 0
#-----------------------------------------------------------------------------------------------------------------------
n90_statement_begin_α:  mov              r11, 91
                        mov              r10, 24;                             jmp   n91_lit_integer_α
n90_statement_begin_β:  mov              r11, 91;                             jmp   n94_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:      sub              rsp, 16
                        mov              r11, 92
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n92_keyword_assign_snobol4_α
.Lx251_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n92_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 93
                        mov              rdi, qword ptr [rip + .Lx252_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx252_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n90_statement_begin_β
.Lx252_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n93_statement_end_α
.Lx252_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_end_α:    mov              r11, 94
                        mov              r10, 24;                             jmp   n94_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n94_statement_begin_α:  mov              r11, 95
                        mov              r10, 0;                              jmp   n95_statement_end_α
n94_statement_begin_β:  mov              r11, 95
                        add              rsp, 32;                             jmp   n96_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_end_α:    mov              r11, 96
                        mov              r10, 25
                        add              rsp, 32;                             jmp   n96_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'PASS 099_keyword_rw (5/5)'
#-----------------------------------------------------------------------------------------------------------------------
n96_statement_begin_α:  mov              r11, 97
                        mov              r10, 26;                             jmp   n97_lit_string_α
n96_statement_begin_β:  mov              r11, 97;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:       sub              rsp, 16
                        mov              r11, 98
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 25
                        mov              rax, qword ptr [rip + .Lx261_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n98_assign_α
.Lx261_0:               .quad            .Lx261_0_s
.Lx261_0_s:             .string          "PASS 099_keyword_rw (5/5)"
#-----------------------------------------------------------------------------------------------------------------------
n98_assign_α:           mov              r11, 99
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx262_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n99_statement_end_α
.Lx262_0:               .quad            .Lx262_0_s
.Lx262_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_end_α:    mov              r11, 100
                        mov              r10, 26
                        add              rsp, 16;                             jmp   main_γ
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
