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
.Lgvan0:                .string          "subject"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#=======================================================================================================================
#         subject = 'HELLO'
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:   mov              r11, 1
                        mov              r10, 1;                              jmp   n1_lit_string_α
n0_statement_begin_β:   mov              r11, 1;                              jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_assign_α
.Lx59_0:                .quad            .Lx59_0_s
.Lx59_0_s:              .string          "HELLO"
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:            mov              r11, 3
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # subject
                        mov              qword ptr [r9 + 8], rdx;             jmp   n3_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:     mov              r11, 4
                        mov              r10, 1
                        add              rsp, 16;                             jmp   n4_statement_begin_α
#=======================================================================================================================
#         subject 'HELLO' RPOS(0)  :f(e001)
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:   mov              r11, 5
                        mov              r10, 2;                              jmp   n5_var_α
n4_statement_begin_β:   mov              r11, 5;                              jmp   n15_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:               sub              rsp, 16
                        mov              r11, 6
                        mov              rax, qword ptr [r9 + 0]              # subject
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n6_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n6_match_begin_α:       mov              r11, 7
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
.Lx67_0:                mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx67_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n7_match_lit_α
n6_match_begin_β:       mov              r11, 7
.Lx67_13:               lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx67_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx67_1
                                                                              jmp   .Lx67_0
.Lx67_1:
n6_match_begin_af:      mov              r11, 7
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
                        add              rsp, 16;                             jmp   n15_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n7_match_lit_α:         mov              r11, 8
                        mov              eax, r14d
                        add              eax, 5
                        cmp              eax, r15d;                           jg    n6_match_begin_β
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1280066888;                     jne   n6_match_begin_β
                        movzx            eax, byte ptr [r13+rcx+4]
                        cmp              eax, 79;                             jne   n6_match_begin_β
                        add              r14d, 5;                             jmp   n8_match_rpos_α
n7_match_lit_β:         mov              r11, 8
                        sub              r14d, 5;                             jmp   n6_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n8_match_rpos_α:        mov              r11, 9
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n7_match_lit_β
                                                                              jmp   n9_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n9_match_end_α:         mov              r11, 10
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
                        test             rax, rax;                            je    .Lx72_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n6_match_begin_af
.Lx72_13:               add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n10_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_end_α:    mov              r11, 11
                        mov              r10, 2
                        add              rsp, 16;                             jmp   n11_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'PASS W06/001: RPOS(0) at end matched'   :(t002)
#-----------------------------------------------------------------------------------------------------------------------
n11_statement_begin_α:  mov              r11, 12
                        mov              r10, 3;                              jmp   n12_lit_string_α
n11_statement_begin_β:  mov              r11, 12;                             jmp   n19_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:       sub              rsp, 16
                        mov              r11, 13
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 36
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n13_assign_α
.Lx77_0:                .quad            .Lx77_0_s
.Lx77_0_s:              .string          "PASS W06/001: RPOS(0) at end matched"
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:           mov              r11, 14
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n14_statement_end_α
.Lx78_0:                .quad            .Lx78_0_s
.Lx78_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n14_statement_end_α:    mov              r11, 15
                        mov              r10, 3
                        add              rsp, 16;                             jmp   n19_statement_begin_α
#=======================================================================================================================
# e001    OUTPUT = 'FAIL W06/001: RPOS(0) at end should match'
#-----------------------------------------------------------------------------------------------------------------------
n15_statement_begin_α:  mov              r11, 16
                        mov              r10, 4;                              jmp   n16_lit_string_α
n15_statement_begin_β:  mov              r11, 16;                             jmp   n19_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:       sub              rsp, 16
                        mov              r11, 17
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 41
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n17_assign_α
.Lx83_0:                .quad            .Lx83_0_s
.Lx83_0_s:              .string          "FAIL W06/001: RPOS(0) at end should match"
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_α:           mov              r11, 18
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx84_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n18_statement_end_α
.Lx84_0:                .quad            .Lx84_0_s
.Lx84_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_end_α:    mov              r11, 19
                        mov              r10, 4
                        add              rsp, 16;                             jmp   n19_statement_begin_α
#=======================================================================================================================
# t002    subject = 'HELLO'
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_begin_α:  mov              r11, 20
                        mov              r10, 5;                              jmp   n20_lit_string_α
n19_statement_begin_β:  mov              r11, 20;                             jmp   n23_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:       sub              rsp, 16
                        mov              r11, 21
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n21_assign_α
.Lx89_0:                .quad            .Lx89_0_s
.Lx89_0_s:              .string          "HELLO"
#-----------------------------------------------------------------------------------------------------------------------
n21_assign_α:           mov              r11, 22
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # subject
                        mov              qword ptr [r9 + 8], rdx;             jmp   n22_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n22_statement_end_α:    mov              r11, 23
                        mov              r10, 5
                        add              rsp, 16;                             jmp   n23_statement_begin_α
#=======================================================================================================================
#         subject 'HEL' RPOS(2)  :f(e002)
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_begin_α:  mov              r11, 24
                        mov              r10, 6;                              jmp   n24_var_α
n23_statement_begin_β:  mov              r11, 24;                             jmp   n34_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:              sub              rsp, 16
                        mov              r11, 25
                        mov              rax, qword ptr [r9 + 0]              # subject
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n25_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n25_match_begin_α:      mov              r11, 26
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
.Lx97_0:                mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx97_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n26_match_lit_α
n25_match_begin_β:      mov              r11, 26
.Lx97_13:               lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx97_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx97_1
                                                                              jmp   .Lx97_0
.Lx97_1:
n25_match_begin_af:     mov              r11, 26
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
                        add              rsp, 16;                             jmp   n34_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n26_match_lit_α:        mov              r11, 27
                        mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d;                           jg    n25_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 72;                             jne   n25_match_begin_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 69;                             jne   n25_match_begin_β
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 76;                             jne   n25_match_begin_β
                        add              r14d, 3;                             jmp   n27_match_rpos_α
n26_match_lit_β:        mov              r11, 27
                        sub              r14d, 3;                             jmp   n25_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n27_match_rpos_α:       mov              r11, 28
                        mov              rax, 2
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n26_match_lit_β
                                                                              jmp   n28_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n28_match_end_α:        mov              r11, 29
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
                        test             rax, rax;                            je    .Lx102_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n25_match_begin_af
.Lx102_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n29_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n29_statement_end_α:    mov              r11, 30
                        mov              r10, 6
                        add              rsp, 16;                             jmp   n30_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'PASS W06/002: RPOS(2) after HEL matched'  :(t003)
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_begin_α:  mov              r11, 31
                        mov              r10, 7;                              jmp   n31_lit_string_α
n30_statement_begin_β:  mov              r11, 31;                             jmp   n38_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:       sub              rsp, 16
                        mov              r11, 32
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 39
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n32_assign_α
.Lx107_0:               .quad            .Lx107_0_s
.Lx107_0_s:             .string          "PASS W06/002: RPOS(2) after HEL matched"
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:           mov              r11, 33
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx108_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n33_statement_end_α
.Lx108_0:               .quad            .Lx108_0_s
.Lx108_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_end_α:    mov              r11, 34
                        mov              r10, 7
                        add              rsp, 16;                             jmp   n38_statement_begin_α
#=======================================================================================================================
# e002    OUTPUT = 'FAIL W06/002: RPOS(2) after HEL should match'
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_begin_α:  mov              r11, 35
                        mov              r10, 8;                              jmp   n35_lit_string_α
n34_statement_begin_β:  mov              r11, 35;                             jmp   n38_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:       sub              rsp, 16
                        mov              r11, 36
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 44
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n36_assign_α
.Lx113_0:               .quad            .Lx113_0_s
.Lx113_0_s:             .string          "FAIL W06/002: RPOS(2) after HEL should match"
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_α:           mov              r11, 37
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n37_statement_end_α
.Lx114_0:               .quad            .Lx114_0_s
.Lx114_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_end_α:    mov              r11, 38
                        mov              r10, 8
                        add              rsp, 16;                             jmp   n38_statement_begin_α
#=======================================================================================================================
# t003    subject = 'HELLO'
#-----------------------------------------------------------------------------------------------------------------------
n38_statement_begin_α:  mov              r11, 39
                        mov              r10, 9;                              jmp   n39_lit_string_α
n38_statement_begin_β:  mov              r11, 39;                             jmp   n42_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       sub              rsp, 16
                        mov              r11, 40
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n40_assign_α
.Lx119_0:               .quad            .Lx119_0_s
.Lx119_0_s:             .string          "HELLO"
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:           mov              r11, 41
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # subject
                        mov              qword ptr [r9 + 8], rdx;             jmp   n41_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_end_α:    mov              r11, 42
                        mov              r10, 9
                        add              rsp, 16;                             jmp   n42_statement_begin_α
#=======================================================================================================================
#         subject RPOS(1) 'LO'  :s(e003)
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_begin_α:  mov              r11, 43
                        mov              r10, 10;                             jmp   n43_var_α
n42_statement_begin_β:  mov              r11, 43;                             jmp   n49_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:              sub              rsp, 16
                        mov              r11, 44
                        mov              rax, qword ptr [r9 + 0]              # subject
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n44_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n44_match_begin_α:      mov              r11, 45
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
.Lx127_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx127_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n45_match_rpos_α
n44_match_begin_β:      mov              r11, 45
.Lx127_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx127_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx127_1
                                                                              jmp   .Lx127_0
.Lx127_1:
n44_match_begin_af:     mov              r11, 45
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
                        add              rsp, 16;                             jmp   n49_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n45_match_rpos_α:       mov              r11, 46
                        mov              rax, 1
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n44_match_begin_β
                                                                              jmp   n46_match_lit_α
n45_match_rpos_β:       mov              r11, 46;                             jmp   n44_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n46_match_lit_α:        mov              r11, 47
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d;                           jg    n44_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 76;                             jne   n44_match_begin_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 79;                             jne   n44_match_begin_β
                        add              r14d, 2;                             jmp   n47_match_end_α
n46_match_lit_β:        mov              r11, 47
                        sub              r14d, 2;                             jmp   n44_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n47_match_end_α:        mov              r11, 48
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
                        test             rax, rax;                            je    .Lx132_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n44_match_begin_af
.Lx132_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n48_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_end_α:    mov              r11, 49
                        mov              r10, 10
                        add              rsp, 16;                             jmp   n53_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'PASS W06/003: RPOS(1) LO correctly fails'  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_begin_α:  mov              r11, 50
                        mov              r10, 11;                             jmp   n50_lit_string_α
n49_statement_begin_β:  mov              r11, 50;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:       sub              rsp, 16
                        mov              r11, 51
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 40
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n51_assign_α
.Lx137_0:               .quad            .Lx137_0_s
.Lx137_0_s:             .string          "PASS W06/003: RPOS(1) LO correctly fails"
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:           mov              r11, 52
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n52_statement_end_α
.Lx138_0:               .quad            .Lx138_0_s
.Lx138_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_end_α:    mov              r11, 53
                        mov              r10, 11
                        add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# e003    OUTPUT = 'FAIL W06/003: RPOS(1) LO should fail'
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_begin_α:  mov              r11, 54
                        mov              r10, 12;                             jmp   n54_lit_string_α
n53_statement_begin_β:  mov              r11, 54;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:       sub              rsp, 16
                        mov              r11, 55
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 36
                        mov              rax, qword ptr [rip + .Lx143_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n55_assign_α
.Lx143_0:               .quad            .Lx143_0_s
.Lx143_0_s:             .string          "FAIL W06/003: RPOS(1) LO should fail"
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:           mov              r11, 56
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx144_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n56_statement_end_α
.Lx144_0:               .quad            .Lx144_0_s
.Lx144_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_end_α:    mov              r11, 57
                        mov              r10, 12
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
