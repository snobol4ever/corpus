                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#  'B' ? POS(0) ARBNO('') 'B' RPOS(0)                           :S(A1)F(B1)
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:   mov              r11, 1
                        mov              r10, 1;                              jmp   n1_lit_string_α
n0_statement_begin_β:   mov              r11, 1;                              jmp   n14_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_match_begin_α
n1_lit_string_β:        mov              r11, 2
                        add              rsp, 16;                             jmp   n14_statement_begin_α
.Lx60_0:                .quad            .Lx60_0_s
.Lx60_0_s:              .string          "B"
#-----------------------------------------------------------------------------------------------------------------------
n2_match_begin_α:       mov              r11, 3
                        mov              rdi, qword ptr [rsp + 0]             # lit_string
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
.Lx62_0:                mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx62_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n3_match_pos_α
n2_match_begin_β:       mov              r11, 3
.Lx62_13:               lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx62_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx62_1
                                                                              jmp   .Lx62_0
.Lx62_1:
n2_match_begin_af:      mov              r11, 3
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
                        add              rsp, 16;                             jmp   n14_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n3_match_pos_α:         mov              r11, 4
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n2_match_begin_β
                                                                              jmp   n4_match_arbno_α
n3_match_pos_β:         mov              r11, 4;                              jmp   n2_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n4_match_arbno_α:       mov              r11, 5
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], r14d;           jmp   n5_match_lit_α
n4_match_arbno_β:       mov              r11, 5;                              jmp   n9_match_lit_α
n4_match_arbno_as:      mov              r11, 5
                        mov              eax, dword ptr [rsp + 4]
                        cmp              r14d, eax;                           je    n9_match_lit_β
                        mov              dword ptr [rsp + 4], r14d;           jmp   n5_match_lit_α
n4_match_arbno_af:      mov              r11, 5
                        mov              eax, dword ptr [rsp + 0]
                        cmp              r14d, eax;                           jne   n9_match_lit_β
                        add              rsp, 16;                             jmp   n3_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n5_match_lit_α:         mov              r11, 6
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n4_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 66;                             jne   n4_match_arbno_β
                        add              r14d, 1;                             jmp   n6_match_rpos_α
n5_match_lit_β:         mov              r11, 6
                        sub              r14d, 1;                             jmp   n4_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n6_match_rpos_α:        mov              r11, 7
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n5_match_lit_β
                                                                              jmp   n7_match_end_α
n6_match_rpos_β:        mov              r11, 7;                              jmp   n5_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n7_match_end_α:         mov              r11, 8
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
                        test             rax, rax;                            je    .Lx70_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n2_match_begin_af
.Lx70_13:               add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n8_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_end_α:     mov              r11, 9
                        mov              r10, 1
                        add              rsp, 16;                             jmp   n10_statement_begin_α
n8_statement_end_β:     mov              r11, 9
                        add              rsp, 32;                             jmp   n14_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n9_match_lit_α:         mov              r11, 10;                             jmp   n4_match_arbno_as
n9_match_lit_β:         mov              r11, 10;                             jmp   n4_match_arbno_af
#=======================================================================================================================
# A1 OUTPUT = '1:null-body-ok'                                  :(T2)
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_begin_α:  mov              r11, 11
                        mov              r10, 2;                              jmp   n11_lit_string_α
n10_statement_begin_β:  mov              r11, 11;                             jmp   n18_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:       sub              rsp, 16
                        mov              r11, 12
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n12_assign_α
n11_lit_string_β:       mov              r11, 12
                        add              rsp, 16;                             jmp   n10_statement_begin_β
.Lx77_0:                .quad            .Lx77_0_s
.Lx77_0_s:              .string          "1:null-body-ok"
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:           mov              r11, 13
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n13_statement_end_α
n12_assign_β:           mov              r11, 13;                             jmp   n10_statement_begin_β
.Lx78_0:                .quad            .Lx78_0_s
.Lx78_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_end_α:    mov              r11, 14
                        mov              r10, 2
                        add              rsp, 16;                             jmp   n18_statement_begin_α
n13_statement_end_β:    mov              r11, 14
                        add              rsp, 16;                             jmp   n18_statement_begin_α
#=======================================================================================================================
# B1 OUTPUT = '1:null-body-fail'
#-----------------------------------------------------------------------------------------------------------------------
n14_statement_begin_α:  mov              r11, 15
                        mov              r10, 3;                              jmp   n15_lit_string_α
n14_statement_begin_β:  mov              r11, 15;                             jmp   n18_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       sub              rsp, 16
                        mov              r11, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 16
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n16_assign_α
n15_lit_string_β:       mov              r11, 16
                        add              rsp, 16;                             jmp   n14_statement_begin_β
.Lx83_0:                .quad            .Lx83_0_s
.Lx83_0_s:              .string          "1:null-body-fail"
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:           mov              r11, 17
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n17_statement_end_α
n16_assign_β:           mov              r11, 17;                             jmp   n14_statement_begin_β
.Lx84_0:                .quad            .Lx84_0_s
.Lx84_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_end_α:    mov              r11, 18
                        mov              r10, 3
                        add              rsp, 16;                             jmp   n18_statement_begin_α
n17_statement_end_β:    mov              r11, 18
                        add              rsp, 16;                             jmp   n18_statement_begin_α
#=======================================================================================================================
# T2 'AB' ? POS(0) ARBNO('' | 'A') 'B' RPOS(0)                  :S(A2)F(B2)
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_begin_α:  mov              r11, 19
                        mov              r10, 4;                              jmp   n19_lit_string_α
n18_statement_begin_β:  mov              r11, 19;                             jmp   n34_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       sub              rsp, 16
                        mov              r11, 20
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n20_match_begin_α
n19_lit_string_β:       mov              r11, 20
                        add              rsp, 16;                             jmp   n34_statement_begin_α
.Lx89_0:                .quad            .Lx89_0_s
.Lx89_0_s:              .string          "AB"
#-----------------------------------------------------------------------------------------------------------------------
n20_match_begin_α:      mov              r11, 21
                        mov              rdi, qword ptr [rsp + 0]             # lit_string
                        mov              rsi, qword ptr [rsp + 8]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 40
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
.Lx91_0:                mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx91_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n21_match_pos_α
n20_match_begin_β:      mov              r11, 21
.Lx91_13:               lea              rsp, [rbp + -72]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx91_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx91_1
                                                                              jmp   .Lx91_0
.Lx91_1:
n20_match_begin_af:     mov              r11, 21
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
n21_match_pos_α:        mov              r11, 22
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n20_match_begin_β
                                                                              jmp   n22_match_arbno_α
n21_match_pos_β:        mov              r11, 22;                             jmp   n20_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n22_match_arbno_α:      mov              r11, 23
                        mov              dword ptr [rbp + -64], r14d
                        mov              dword ptr [rbp + -60], r14d;         jmp   n23_match_lit_α
n22_match_arbno_β:      mov              r11, 23;                             jmp   n27_match_alternate_α
n22_match_arbno_as:     mov              r11, 23
                        mov              eax, dword ptr [rbp + -60]
                        cmp              r14d, eax;                           je    n27_match_alternate_β
                        mov              dword ptr [rbp + -60], r14d;         jmp   n23_match_lit_α
n22_match_arbno_af:     mov              r11, 23
                        mov              eax, dword ptr [rbp + -64]
                        cmp              r14d, eax;                           jne   n27_match_alternate_β
                                                                              jmp   n21_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n23_match_lit_α:        mov              r11, 24
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n22_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 66;                             jne   n22_match_arbno_β
                        add              r14d, 1;                             jmp   n24_match_rpos_α
n23_match_lit_β:        mov              r11, 24
                        sub              r14d, 1;                             jmp   n22_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n24_match_rpos_α:       mov              r11, 25
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n23_match_lit_β
                                                                              jmp   n25_match_end_α
n24_match_rpos_β:       mov              r11, 25;                             jmp   n23_match_lit_β
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
                        test             rax, rax;                            je    .Lx99_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n20_match_begin_af
.Lx99_13:               add              rsp, 16
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
                        mov              r10, 4
                        add              rsp, 16;                             jmp   n30_statement_begin_α
n26_statement_end_β:    mov              r11, 27
                        add              rsp, 32;                             jmp   n34_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n27_match_alternate_α:  mov              r11, 28
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx103_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n29_match_lit_α
.Lx103_21:              lea              rax, [rip + .Lx103_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n28_match_lit_α
n27_match_alternate_s0: mov              r11, 28
                        lea              rax, [rip + .Lx103_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n27_match_alternate_as
n27_match_alternate_s1: mov              r11, 28
                        lea              rax, [rip + .Lx103_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n27_match_alternate_as
.Lx103_40:                                                                    jmp   n29_match_lit_β
.Lx103_41:                                                                    jmp   n28_match_lit_β
n27_match_alternate_as: mov              r11, 28;                             jmp   n22_match_arbno_as
n27_match_alternate_β:  mov              r11, 28
                        mov              rax, qword ptr [rsp + 8];            jmp   rax
n27_match_alternate_af: mov              r11, 28
                        mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx103_19:              add              rsp, 32;                             jmp   n22_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n28_match_lit_α:        mov              r11, 29
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n27_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 65;                             jne   n27_match_alternate_af
                        add              r14d, 1;                             jmp   n27_match_alternate_s1
n28_match_lit_β:        mov              r11, 29
                        sub              r14d, 1;                             jmp   n27_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n29_match_lit_α:        mov              r11, 30;                             jmp   n27_match_alternate_s0
n29_match_lit_β:        mov              r11, 30;                             jmp   n27_match_alternate_af
#=======================================================================================================================
# A2 OUTPUT = '2:nullable-first-ok'                             :(T3)
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_begin_α:  mov              r11, 31
                        mov              r10, 5;                              jmp   n31_lit_string_α
n30_statement_begin_β:  mov              r11, 31;                             jmp   n38_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:       sub              rsp, 16
                        mov              r11, 32
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 19
                        mov              rax, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n32_assign_α
n31_lit_string_β:       mov              r11, 32
                        add              rsp, 16;                             jmp   n30_statement_begin_β
.Lx110_0:               .quad            .Lx110_0_s
.Lx110_0_s:             .string          "2:nullable-first-ok"
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:           mov              r11, 33
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n33_statement_end_α
n32_assign_β:           mov              r11, 33;                             jmp   n30_statement_begin_β
.Lx111_0:               .quad            .Lx111_0_s
.Lx111_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_end_α:    mov              r11, 34
                        mov              r10, 5
                        add              rsp, 16;                             jmp   n38_statement_begin_α
n33_statement_end_β:    mov              r11, 34
                        add              rsp, 16;                             jmp   n38_statement_begin_α
#=======================================================================================================================
# B2 OUTPUT = '2:nullable-first-fail'
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_begin_α:  mov              r11, 35
                        mov              r10, 6;                              jmp   n35_lit_string_α
n34_statement_begin_β:  mov              r11, 35;                             jmp   n38_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:       sub              rsp, 16
                        mov              r11, 36
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n36_assign_α
n35_lit_string_β:       mov              r11, 36
                        add              rsp, 16;                             jmp   n34_statement_begin_β
.Lx116_0:               .quad            .Lx116_0_s
.Lx116_0_s:             .string          "2:nullable-first-fail"
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_α:           mov              r11, 37
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n37_statement_end_α
n36_assign_β:           mov              r11, 37;                             jmp   n34_statement_begin_β
.Lx117_0:               .quad            .Lx117_0_s
.Lx117_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_end_α:    mov              r11, 38
                        mov              r10, 6
                        add              rsp, 16;                             jmp   n38_statement_begin_α
n37_statement_end_β:    mov              r11, 38
                        add              rsp, 16;                             jmp   n38_statement_begin_α
#=======================================================================================================================
# T3 'AB' ? POS(0) ARBNO('A' | '') 'B' RPOS(0)                  :S(A3)F(B3)
#-----------------------------------------------------------------------------------------------------------------------
n38_statement_begin_α:  mov              r11, 39
                        mov              r10, 7;                              jmp   n39_lit_string_α
n38_statement_begin_β:  mov              r11, 39;                             jmp   n54_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       sub              rsp, 16
                        mov              r11, 40
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx122_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n40_match_begin_α
n39_lit_string_β:       mov              r11, 40
                        add              rsp, 16;                             jmp   n54_statement_begin_α
.Lx122_0:               .quad            .Lx122_0_s
.Lx122_0_s:             .string          "AB"
#-----------------------------------------------------------------------------------------------------------------------
n40_match_begin_α:      mov              r11, 41
                        mov              rdi, qword ptr [rsp + 0]             # lit_string
                        mov              rsi, qword ptr [rsp + 8]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 40
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
.Lx124_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx124_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n41_match_pos_α
n40_match_begin_β:      mov              r11, 41
.Lx124_13:              lea              rsp, [rbp + -72]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx124_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx124_1
                                                                              jmp   .Lx124_0
.Lx124_1:
n40_match_begin_af:     mov              r11, 41
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
                        add              rsp, 16;                             jmp   n54_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n41_match_pos_α:        mov              r11, 42
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n40_match_begin_β
                                                                              jmp   n42_match_arbno_α
n41_match_pos_β:        mov              r11, 42;                             jmp   n40_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n42_match_arbno_α:      mov              r11, 43
                        mov              dword ptr [rbp + -64], r14d
                        mov              dword ptr [rbp + -60], r14d;         jmp   n43_match_lit_α
n42_match_arbno_β:      mov              r11, 43;                             jmp   n47_match_alternate_α
n42_match_arbno_as:     mov              r11, 43
                        mov              eax, dword ptr [rbp + -60]
                        cmp              r14d, eax;                           je    n47_match_alternate_β
                        mov              dword ptr [rbp + -60], r14d;         jmp   n43_match_lit_α
n42_match_arbno_af:     mov              r11, 43
                        mov              eax, dword ptr [rbp + -64]
                        cmp              r14d, eax;                           jne   n47_match_alternate_β
                                                                              jmp   n41_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n43_match_lit_α:        mov              r11, 44
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n42_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 66;                             jne   n42_match_arbno_β
                        add              r14d, 1;                             jmp   n44_match_rpos_α
n43_match_lit_β:        mov              r11, 44
                        sub              r14d, 1;                             jmp   n42_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n44_match_rpos_α:       mov              r11, 45
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n43_match_lit_β
                                                                              jmp   n45_match_end_α
n44_match_rpos_β:       mov              r11, 45;                             jmp   n43_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n45_match_end_α:        mov              r11, 46
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
                        pop              r14;                                 jmp   n40_match_begin_af
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
                        pop              rbp;                                 jmp   n46_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_end_α:    mov              r11, 47
                        mov              r10, 7
                        add              rsp, 16;                             jmp   n50_statement_begin_α
n46_statement_end_β:    mov              r11, 47
                        add              rsp, 32;                             jmp   n54_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n47_match_alternate_α:  mov              r11, 48
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx136_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n49_match_lit_α
.Lx136_21:              lea              rax, [rip + .Lx136_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n48_match_lit_α
n47_match_alternate_s0: mov              r11, 48
                        lea              rax, [rip + .Lx136_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n47_match_alternate_as
n47_match_alternate_s1: mov              r11, 48
                        lea              rax, [rip + .Lx136_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n47_match_alternate_as
.Lx136_40:                                                                    jmp   n49_match_lit_β
.Lx136_41:                                                                    jmp   n48_match_lit_β
n47_match_alternate_as: mov              r11, 48;                             jmp   n42_match_arbno_as
n47_match_alternate_β:  mov              r11, 48
                        mov              rax, qword ptr [rsp + 8];            jmp   rax
n47_match_alternate_af: mov              r11, 48
                        mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx136_19:              add              rsp, 32;                             jmp   n42_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n48_match_lit_α:        mov              r11, 49;                             jmp   n47_match_alternate_s1
n48_match_lit_β:        mov              r11, 49;                             jmp   n47_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n49_match_lit_α:        mov              r11, 50
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n47_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 65;                             jne   n47_match_alternate_af
                        add              r14d, 1;                             jmp   n47_match_alternate_s0
n49_match_lit_β:        mov              r11, 50
                        sub              r14d, 1;                             jmp   n47_match_alternate_af
#=======================================================================================================================
# A3 OUTPUT = '3:nullable-second-ok'                            :(END)
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_begin_α:  mov              r11, 51
                        mov              r10, 8;                              jmp   n51_lit_string_α
n50_statement_begin_β:  mov              r11, 51;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:       sub              rsp, 16
                        mov              r11, 52
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx143_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n52_assign_α
n51_lit_string_β:       mov              r11, 52
                        add              rsp, 16;                             jmp   n50_statement_begin_β
.Lx143_0:               .quad            .Lx143_0_s
.Lx143_0_s:             .string          "3:nullable-second-ok"
#-----------------------------------------------------------------------------------------------------------------------
n52_assign_α:           mov              r11, 53
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n53_statement_end_α
n52_assign_β:           mov              r11, 53;                             jmp   n50_statement_begin_β
.Lx144_0:               .quad            .Lx144_0_s
.Lx144_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_end_α:    mov              r11, 54
                        mov              r10, 8
                        add              rsp, 16;                             jmp   main_γ
n53_statement_end_β:    mov              r11, 54
                        add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# B3 OUTPUT = '3:nullable-second-fail'
#-----------------------------------------------------------------------------------------------------------------------
n54_statement_begin_α:  mov              r11, 55
                        mov              r10, 9;                              jmp   n55_lit_string_α
n54_statement_begin_β:  mov              r11, 55;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:       sub              rsp, 16
                        mov              r11, 56
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 22
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n56_assign_α
n55_lit_string_β:       mov              r11, 56
                        add              rsp, 16;                             jmp   n54_statement_begin_β
.Lx149_0:               .quad            .Lx149_0_s
.Lx149_0_s:             .string          "3:nullable-second-fail"
#-----------------------------------------------------------------------------------------------------------------------
n56_assign_α:           mov              r11, 57
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n57_statement_end_α
n56_assign_β:           mov              r11, 57;                             jmp   n54_statement_begin_β
.Lx150_0:               .quad            .Lx150_0_s
.Lx150_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_end_α:    mov              r11, 58
                        mov              r10, 9
                        add              rsp, 16;                             jmp   main_γ
n57_statement_end_β:    mov              r11, 58
                        add              rsp, 16;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        add              rsp, 0
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        add              rsp, 0
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
