                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 152
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n0_match_alternate_α:   mov              r11, 1
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx9_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n2_match_span_α
.Lx9_21:                lea              rax, [rip + .Lx9_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n1_match_span_α
n0_match_alternate_s0:  mov              r11, 1
                        lea              rax, [rip + .Lx9_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n0_match_alternate_as
n0_match_alternate_s1:  mov              r11, 1
                        lea              rax, [rip + .Lx9_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n0_match_alternate_as
.Lx9_40:                                                                      jmp   n4_match_fence1_β
.Lx9_41:                                                                      jmp   n1_match_span_β
n0_match_alternate_as:  mov              r11, 1;                              jmp   PAT$0_γ
n0_match_alternate_β:   mov              r11, 1
                        mov              rax, qword ptr [rsp + 8];            jmp   rax
n0_match_alternate_af:  mov              r11, 1
                        mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx9_19:                add              rsp, 32;                             jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_match_span_α:        sub              rsp, 16
                        mov              r11, 2
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx11_0:                cmp              ecx, r15d;                           jge   .Lx11_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx11_1
                        add              ecx, 1;                              jmp   .Lx11_0
.Lx11_1:                cmp              ecx, r14d;                           jg    .Lx11_240
                        add              rsp, 16;                             jmp   n0_match_alternate_af
.Lx11_240:              mov              dword ptr [rbp + -140], r14d
                        mov              r14d, ecx;                           jmp   n0_match_alternate_s1
n1_match_span_β:        mov              r11, 2
                        mov              r14d, dword ptr [rbp + -140]
                        add              rsp, 16;                             jmp   n0_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n2_match_span_α:        sub              rsp, 16
                        mov              r11, 3
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx13_0:                cmp              ecx, r15d;                           jge   .Lx13_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx13_1
                        add              ecx, 1;                              jmp   .Lx13_0
.Lx13_1:                cmp              ecx, r14d;                           jg    .Lx13_240
                        add              rsp, 16;                             jmp   n0_match_alternate_af
.Lx13_240:              mov              dword ptr [rbp + -108], r14d
                        mov              r14d, ecx;                           jmp   n3_match_lit_α
n2_match_span_β:        mov              r11, 3
                        mov              r14d, dword ptr [rbp + -108]
                        add              rsp, 16;                             jmp   n0_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n3_match_lit_α:         mov              r11, 4
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n2_match_span_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 46;                             jne   n2_match_span_β
                        add              r14d, 1;                             jmp   n4_match_fence1_α
n3_match_lit_β:         mov              r11, 4
                        sub              r14d, 1;                             jmp   n2_match_span_β
#-----------------------------------------------------------------------------------------------------------------------
n4_match_fence1_α:      mov              r11, 5
                        mov              qword ptr [rbp + -48], rsp
                        sub              rsp, 0;                              jmp   n5_match_alternate_α
n4_match_fence1_as:     mov              r11, 5
                        add              rsp, 0
                        mov              rsp, qword ptr [rbp + -48];          jmp   n0_match_alternate_s0
n4_match_fence1_af:     mov              r11, 5
                        add              rsp, 0
n4_match_fence1_β:      mov              r11, 5
                        mov              rsp, qword ptr [rbp + -48];          jmp   n3_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n5_match_alternate_α:   mov              r11, 6
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx19_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n7_match_span_α
.Lx19_21:               lea              rax, [rip + .Lx19_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n6_match_lit_α
n5_match_alternate_s0:  mov              r11, 6
                        lea              rax, [rip + .Lx19_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n5_match_alternate_as
n5_match_alternate_s1:  mov              r11, 6
                        lea              rax, [rip + .Lx19_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n5_match_alternate_as
.Lx19_40:                                                                     jmp   n7_match_span_β
.Lx19_41:                                                                     jmp   n6_match_lit_β
n5_match_alternate_as:  mov              r11, 6;                              jmp   n4_match_fence1_as
n5_match_alternate_β:   mov              r11, 6
                        mov              rax, qword ptr [rsp + 8];            jmp   rax
n5_match_alternate_af:  mov              r11, 6
                        mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx19_19:               add              rsp, 32;                             jmp   n4_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n6_match_lit_α:         mov              r11, 7;                              jmp   n5_match_alternate_s1
n6_match_lit_β:         mov              r11, 7;                              jmp   n5_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n7_match_span_α:        mov              r11, 8
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx23_0:                cmp              ecx, r15d;                           jge   .Lx23_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx23_1
                        add              ecx, 1;                              jmp   .Lx23_0
.Lx23_1:                cmp              ecx, r14d;                           jle   n5_match_alternate_af
                        mov              dword ptr [rbp + -76], r14d
                        mov              r14d, ecx;                           jmp   n5_match_alternate_s0
n7_match_span_β:        mov              r11, 8
                        mov              r14d, dword ptr [rbp + -76];         jmp   n5_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_γ:
                        mov              rcx, qword ptr [rbp + -16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + -8]
                        push             rcx
                        lea              rax, [rip + PAT$0_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 8
                        ret
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 4
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 4
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "digits"
.Lgvan1:                .string          "Real"
.Lgvan2:                .string          "X"
.Lgvan3:                .string          "N"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#         digits = '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_begin_α:  mov              r11, 9
                        mov              r10, 1;                              jmp   n25_lit_string_α
n24_statement_begin_β:  mov              r11, 9;                              jmp   n28_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:       sub              rsp, 16
                        mov              r11, 10
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_assign_α
.Lx58_0:                .quad            .Lx58_0_s
.Lx58_0_s:              .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n26_assign_α:           mov              r11, 11
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # digits
                        mov              qword ptr [r9 + 8], rdx;             jmp   n27_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_end_α:    mov              r11, 12
                        mov              r10, 1
                        add              rsp, 16;                             jmp   n28_statement_begin_α
#=======================================================================================================================
#         &ANCHOR = 1
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_begin_α:  mov              r11, 13
                        mov              r10, 2;                              jmp   n29_lit_integer_α
n28_statement_begin_β:  mov              r11, 13;                             jmp   n32_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:      sub              rsp, 16
                        mov              r11, 14
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_keyword_assign_snobol4_α
.Lx64_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n30_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 15
                        mov              rdi, qword ptr [rip + .Lx65_0]
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
                        cmp              al, 104;                             jne   .Lx65_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n28_statement_begin_β
.Lx65_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n31_statement_end_α
.Lx65_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_end_α:    mov              r11, 16
                        mov              r10, 2
                        add              rsp, 32;                             jmp   n32_statement_begin_α
#=======================================================================================================================
#         Real = SPAN(digits) '.' FENCE(SPAN(digits) | '')
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_begin_α:  mov              r11, 17
                        mov              r10, 3;                              jmp   n33_lit_string_α
n32_statement_begin_β:  mov              r11, 17;                             jmp   n37_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:       sub              rsp, 16
                        mov              r11, 18
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_call_α
.Lx70_0:                .quad            .Lx70_0_s
.Lx70_0_s:              .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n34_call_α:             sub              rsp, 16
                        mov              r11, 19
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd72:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd72]
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
                        cmp              al, 104;                             jne   .Lx71_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n32_statement_begin_β
.Lx71_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n35_assign_α
n34_call_β:             mov              r11, 19
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n32_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:           mov              r11, 20
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # Real
                        mov              qword ptr [r9 + 24], rdx;            jmp   n36_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_end_α:    mov              r11, 21
                        mov              r10, 3
                        add              rsp, 32;                             jmp   n37_statement_begin_α
#=======================================================================================================================
#         X = '3.14rest'
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_begin_α:  mov              r11, 22
                        mov              r10, 4;                              jmp   n38_lit_string_α
n37_statement_begin_β:  mov              r11, 22;                             jmp   n41_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:       sub              rsp, 16
                        mov              r11, 23
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n39_assign_α
.Lx78_0:                .quad            .Lx78_0_s
.Lx78_0_s:              .string          "3.14rest"
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:           mov              r11, 24
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # X
                        mov              qword ptr [r9 + 40], rdx;            jmp   n40_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_end_α:    mov              r11, 25
                        mov              r10, 4
                        add              rsp, 16;                             jmp   n41_statement_begin_α
#=======================================================================================================================
#         X  FENCE(Real) . N
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_begin_α:  mov              r11, 26
                        mov              r10, 5;                              jmp   n42_var_α
n41_statement_begin_β:  mov              r11, 26;                             jmp   n52_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:              sub              rsp, 16
                        mov              r11, 27
                        mov              rax, qword ptr [r9 + 32]             # X
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n43_var_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:              sub              rsp, 16
                        mov              r11, 28
                        mov              rax, qword ptr [r9 + 16]             # Real
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n44_assign_α
n43_var_β:              mov              r11, 28;                             jmp   n50_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n44_assign_α:           mov              r11, 29
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n45_match_begin_α
n44_assign_β:           mov              r11, 29;                             jmp   n43_var_β
.Lx86_0:                .quad            .Lx86_0_s
.Lx86_0_s:              .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n45_match_begin_α:      mov              r11, 30
                        mov              rdi, qword ptr [rsp + 16]            # var
                        mov              rsi, qword ptr [rsp + 24]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 56
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
.Lx88_0:                mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx88_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n46_match_assign_save_α
n45_match_begin_β:      mov              r11, 30
.Lx88_13:               lea              rsp, [rbp + -88]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx88_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx88_1
                                                                              jmp   .Lx88_0
.Lx88_1:
n45_match_begin_af:     mov              r11, 30
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
                        pop              rbp;                                 jmp   n44_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n46_match_assign_save_α:
                        sub              rsp, 16
                        mov              r11, 31
                        mov              dword ptr [rbp + -64], r14d;         jmp   n47_match_fence1_α
n46_match_assign_save_β:
                        mov              r11, 31
                        add              rsp, 16;                             jmp   n45_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n47_match_fence1_α:     mov              r11, 32
                        mov              qword ptr [rbp + -80], rsp
                        sub              rsp, 0;                              jmp   n51_match_defer_α
n47_match_fence1_as:    mov              r11, 32
                        add              rsp, 0
                        mov              rsp, qword ptr [rbp + -80];          jmp   n48_match_assign_cond_α
n47_match_fence1_af:    mov              r11, 32
                        add              rsp, 0
n47_match_fence1_β:     mov              r11, 32
                        mov              rsp, qword ptr [rbp + -80];          jmp   n46_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n48_match_assign_cond_α:
                        mov              r11, 33
                        mov              eax, dword ptr [rbp + -64]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n49_match_end_α
n48_match_assign_cond_β:
                        mov              r11, 33
                        sub              r12, 24;                             jmp   n47_match_fence1_β
#-----------------------------------------------------------------------------------------------------------------------
n49_match_end_α:        mov              r11, 34
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
                        test             rax, rax;                            je    .Lx96_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n45_match_begin_af
.Lx96_13:               add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n50_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_end_α:    mov              r11, 35
                        mov              r10, 5
                        add              rsp, 32;                             jmp   n52_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n51_match_defer_α:      mov              r11, 36
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx99_14
                        mov              rax, qword ptr [rdx + 0]
.Lx99_14:               test             rax, rax;                            jz    .Lx99_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx99_5]
                        push             rcx
                        lea              rcx, [rip + .Lx99_4]
                        push             rcx;                                 jmp   rax
.Lx99_4:                                                                      jmp   n47_match_fence1_as
.Lx99_5:                                                                      jmp   n47_match_fence1_af
.Lx99_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        mov              esi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n47_match_fence1_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx99_6]
                        push             rcx
                        push             rax;                                 jmp   n47_match_fence1_as
.Lx99_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n47_match_fence1_af
n51_match_defer_β:      mov              r11, 36
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx99_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx99_12
                                                                              jmp   rax
.Lx99_12:                                                                     jmp   qword ptr [rsp]
#=======================================================================================================================
#         OUTPUT = N
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_begin_α:  mov              r11, 37
                        mov              r10, 6;                              jmp   n53_var_α
n52_statement_begin_β:  mov              r11, 37;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:              sub              rsp, 16
                        mov              r11, 38
                        mov              rax, qword ptr [r9 + 48]             # N
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n54_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n54_assign_α:           mov              r11, 39
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n55_statement_end_α
.Lx103_0:               .quad            .Lx103_0_s
.Lx103_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n55_statement_end_α:    mov              r11, 40
                        mov              r10, 6
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
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "PAT$0"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__PAT$0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            144
                        .long            18
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.S0:                    .string          "N"
.S1:                    .string          "PATV$0"
                        .text
                        .section         .rodata
.C0:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .text
                        .section         .note.GNU-stack,"",@progbits
