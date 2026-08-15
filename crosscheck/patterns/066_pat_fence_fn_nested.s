                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
proc_PAT$0_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 40
                        mov              qword ptr [rbp + -8], r10
                        mov              qword ptr [rbp + -16], r11
#-----------------------------------------------------------------------------------------------------------------------
n0_match_alternate_α:   sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx9_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n2_match_span_α
.Lx9_21:                lea              rax, [rip + .Lx9_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n1_match_span_α
n0_match_alternate_s0:  lea              rax, [rip + .Lx9_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n0_match_alternate_as
n0_match_alternate_s1:  lea              rax, [rip + .Lx9_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n0_match_alternate_as
.Lx9_40:                                                                      jmp   n4_match_fence1_β
.Lx9_41:                                                                      jmp   n1_match_span_β
n0_match_alternate_as:                                                        jmp   proc_PAT$0_γ
n0_match_alternate_β:   mov              rax, qword ptr [rsp + 8];            jmp   rax
n0_match_alternate_af:  mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx9_19:                add              rsp, 32;                             jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_match_span_α:        sub              rsp, 16
                        lea              rdi, [rip + .S0]
                        lea              rsi, [rsp + 0]
                        lea              rdx, [rsp + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pat_prim_str@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            jns   .Lx11_239
                        add              rsp, 16;                             jmp   n0_match_alternate_af
.Lx11_239:              mov              r8, qword ptr [rsp + 0]
                        mov              dword ptr [rsp + 0], 0
.Lx11_0:                mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d;                           jge   .Lx11_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              eax, dword ptr [rsp + 8]
                        mov              edx, 0
.Lx11_2:                cmp              edx, eax;                            jge   .Lx11_1
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi;                            je    .Lx11_3
                        add              edx, 1;                              jmp   .Lx11_2
.Lx11_3:                add              dword ptr [rsp + 0], 1;              jmp   .Lx11_0
.Lx11_1:                mov              eax, dword ptr [rsp + 0]
                        test             eax, eax;                            jg    .Lx11_240
                        add              rsp, 16;                             jmp   n0_match_alternate_af
.Lx11_240:              mov              edx, r14d
                        mov              dword ptr [rsp + 4], edx
                        add              edx, eax
                        mov              r14d, edx;                           jmp   n0_match_alternate_s1
n1_match_span_β:        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16;                             jmp   n0_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n2_match_span_α:        sub              rsp, 16
                        lea              rdi, [rip + .S0]
                        lea              rsi, [rsp + 0]
                        lea              rdx, [rsp + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pat_prim_str@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            jns   .Lx13_239
                        add              rsp, 16;                             jmp   n0_match_alternate_af
.Lx13_239:              mov              r8, qword ptr [rsp + 0]
                        mov              dword ptr [rsp + 0], 0
.Lx13_0:                mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d;                           jge   .Lx13_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              eax, dword ptr [rsp + 8]
                        mov              edx, 0
.Lx13_2:                cmp              edx, eax;                            jge   .Lx13_1
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi;                            je    .Lx13_3
                        add              edx, 1;                              jmp   .Lx13_2
.Lx13_3:                add              dword ptr [rsp + 0], 1;              jmp   .Lx13_0
.Lx13_1:                mov              eax, dword ptr [rsp + 0]
                        test             eax, eax;                            jg    .Lx13_240
                        add              rsp, 16;                             jmp   n0_match_alternate_af
.Lx13_240:              mov              edx, r14d
                        mov              dword ptr [rsp + 4], edx
                        add              edx, eax
                        mov              r14d, edx;                           jmp   n3_match_lit_α
n2_match_span_β:        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16;                             jmp   n0_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n3_match_lit_α:         mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n2_match_span_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 46;                             jne   n2_match_span_β
                        add              r14d, 1;                             jmp   n4_match_fence1_α
n3_match_lit_β:         sub              r14d, 1;                             jmp   n2_match_span_β
#-----------------------------------------------------------------------------------------------------------------------
n4_match_fence1_α:      mov              qword ptr [rbp + -32], rsp
                        sub              rsp, 0;                              jmp   n5_match_alternate_α
n4_match_fence1_as:     add              rsp, 0
                        mov              rsp, qword ptr [rbp + -32];          jmp   n0_match_alternate_s0
n4_match_fence1_af:     add              rsp, 0
n4_match_fence1_β:      mov              rsp, qword ptr [rbp + -32];          jmp   n3_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n5_match_alternate_α:   sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx19_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n7_match_span_α
.Lx19_21:               lea              rax, [rip + .Lx19_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n6_match_lit_α
n5_match_alternate_s0:  lea              rax, [rip + .Lx19_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n5_match_alternate_as
n5_match_alternate_s1:  lea              rax, [rip + .Lx19_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n5_match_alternate_as
.Lx19_40:                                                                     jmp   n7_match_span_β
.Lx19_41:                                                                     jmp   n6_match_lit_β
n5_match_alternate_as:                                                        jmp   n4_match_fence1_as
n5_match_alternate_β:   mov              rax, qword ptr [rsp + 8];            jmp   rax
n5_match_alternate_af:  mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx19_19:               add              rsp, 32;                             jmp   n4_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n6_match_lit_α:                                                               jmp   n5_match_alternate_s1
n6_match_lit_β:                                                               jmp   n5_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n7_match_span_α:        lea              rdi, [rip + .S0]
                        lea              rsi, [rsp + 96]
                        lea              rdx, [rsp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pat_prim_str@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            js    n5_match_alternate_af
                        mov              r8, qword ptr [rsp + 96]
                        mov              dword ptr [rsp + 96], 0
.Lx23_0:                mov              eax, r14d
                        add              eax, dword ptr [rsp + 96]
                        cmp              eax, r15d;                           jge   .Lx23_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              eax, dword ptr [rsp + 104]
                        mov              edx, 0
.Lx23_2:                cmp              edx, eax;                            jge   .Lx23_1
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi;                            je    .Lx23_3
                        add              edx, 1;                              jmp   .Lx23_2
.Lx23_3:                add              dword ptr [rsp + 96], 1;             jmp   .Lx23_0
.Lx23_1:                mov              eax, dword ptr [rsp + 96]
                        test             eax, eax;                            jle   n5_match_alternate_af
                        mov              edx, r14d
                        mov              dword ptr [rsp + 100], edx
                        add              edx, eax
                        mov              r14d, edx;                           jmp   n5_match_alternate_s0
n7_match_span_β:        mov              r14d, dword ptr [rsp + 100];         jmp   n5_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_β:
                                                                              jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        push             rbp
                        push             r11
                        push             r10
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   r11
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "PAT$0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_PAT$0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 144
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
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
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
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
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#         digits = '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_begin_α:                                                        jmp   n25_lit_string_α
n24_statement_begin_β:                                                        jmp   n28_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_assign_α
.Lx59_0:                .quad            .Lx59_0_s
.Lx59_0_s:              .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n26_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # digits
                        mov              qword ptr [r9 + 8], rdx;             jmp   n27_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_end_α:    add              rsp, 16;                             jmp   n28_statement_begin_α
#=======================================================================================================================
#         &ANCHOR = 1
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_begin_α:                                                        jmp   n29_lit_string_α
n28_statement_begin_β:                                                        jmp   n33_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_lit_integer_α
.Lx65_0:                .quad            .Lx65_0_s
.Lx65_0_s:              .string          "ANCHOR"
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n31_call_α
n30_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n28_statement_begin_β
.Lx66_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n31_call_α:             sub              rsp, 16
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lrkfnzd68:             .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd68]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              eax, 104;                            jne   .Lx67_240
                        add              rsp, 16;                             jmp   n30_lit_integer_β
.Lx67_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n32_statement_end_α
n31_call_β:             add              rsp, 16;                             jmp   n30_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_end_α:    add              rsp, 48;                             jmp   n33_statement_begin_α
#=======================================================================================================================
#         Real = SPAN(digits) '.' FENCE(SPAN(digits) | '')
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_begin_α:                                                        jmp   n34_lit_string_α
n33_statement_begin_β:                                                        jmp   n38_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n35_call_α
.Lx73_0:                .quad            .Lx73_0_s
.Lx73_0_s:              .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n35_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd75:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd75]
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
                        cmp              eax, 104;                            jne   .Lx74_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n33_statement_begin_β
.Lx74_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n36_assign_α
n35_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n33_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # Real
                        mov              qword ptr [r9 + 24], rdx;            jmp   n37_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_end_α:    add              rsp, 32;                             jmp   n38_statement_begin_α
#=======================================================================================================================
#         X = '3.14rest'
#-----------------------------------------------------------------------------------------------------------------------
n38_statement_begin_α:                                                        jmp   n39_lit_string_α
n38_statement_begin_β:                                                        jmp   n42_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n40_assign_α
.Lx81_0:                .quad            .Lx81_0_s
.Lx81_0_s:              .string          "3.14rest"
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # X
                        mov              qword ptr [r9 + 40], rdx;            jmp   n41_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_end_α:    add              rsp, 16;                             jmp   n42_statement_begin_α
#=======================================================================================================================
#         X  FENCE(Real) . N
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_begin_α:                                                        jmp   n43_var_α
n42_statement_begin_β:                                                        jmp   n53_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # X
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n44_var_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # Real
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n45_assign_α
n44_var_β:                                                                    jmp   n51_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:           mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n46_match_begin_α
n45_assign_β:                                                                 jmp   n44_var_β
.Lx89_0:                .quad            .Lx89_0_s
.Lx89_0_s:              .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n46_match_begin_α:      mov              rdi, qword ptr [rsp + 16]            # var
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
.Lx91_0:                mov              r14d, dword ptr [rbp + -40];         jmp   n47_match_assign_save_α
n46_match_begin_β:      lea              rsp, [rbp + -88]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx91_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx91_1
                                                                              jmp   .Lx91_0
.Lx91_1:
n46_match_begin_af:     mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n45_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n47_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rbp + -64], r14d;         jmp   n48_match_fence1_α
n47_match_assign_save_β:
                        add              rsp, 16;                             jmp   n46_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n48_match_fence1_α:     mov              qword ptr [rbp + -80], rsp
                        sub              rsp, 0;                              jmp   n52_match_defer_α
n48_match_fence1_as:    add              rsp, 0
                        mov              rsp, qword ptr [rbp + -80];          jmp   n49_match_assign_cond_α
n48_match_fence1_af:    add              rsp, 0
n48_match_fence1_β:     mov              rsp, qword ptr [rbp + -80];          jmp   n47_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n49_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -64]
                        lea              rcx, [rip + .S1]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n50_match_end_α
n49_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n48_match_fence1_β
#-----------------------------------------------------------------------------------------------------------------------
n50_match_end_α:        push             r14
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
.Lx99_1:                test             rax, rax;                            je    .Lx99_2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx99_3]
                        lea              rdx, [rip + .Lx99_4];                jmp   rax
.Lx99_3:                mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx99_1
.Lx99_4:                mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx99_1
.Lx99_2:                call             rt_dcap_end_ok_close@PLT
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
                        pop              rbp;                                 jmp   n51_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n51_statement_end_α:    add              rsp, 32;                             jmp   n53_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n52_match_defer_α:      lea              rdi, [rip + .S2]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_get_pat_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            jz    .Lx102_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx102_4]
                        lea              r11, [rip + .Lx102_5];               jmp   rax
.Lx102_4:                                                                     jmp   n48_match_fence1_as
.Lx102_5:                                                                     jmp   n48_match_fence1_af
.Lx102_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx102_2:               test             rax, rax;                            je    .Lx102_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx102_7]
                        lea              rdx, [rip + .Lx102_8];               jmp   rax
.Lx102_7:               mov              qword ptr [rip + rtccb+40], r8
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
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx102_2
.Lx102_8:               mov              qword ptr [rip + rtccb+40], r8
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
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx102_2
.Lx102_3:               add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_close@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    n48_match_fence1_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx102_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n48_match_fence1_as
.Lx102_6:               add              rsp, 16;                             jmp   n48_match_fence1_af
n52_match_defer_β:                                                            jmp   qword ptr [rsp]
#=======================================================================================================================
#         OUTPUT = N
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_begin_α:                                                        jmp   n54_var_α
n53_statement_begin_β:                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # N
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n55_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:           mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n56_statement_end_α
.Lx106_0:               .quad            .Lx106_0_s
.Lx106_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_end_α:    add              rsp, 16;                             jmp   main_γ
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
                        .section         .rodata
.S0:                    .string          "digits"
.S1:                    .string          "N"
.S2:                    .string          "PATV$0"
                        .text
                        .section         .rodata
.C0:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,1,0,0,1,0,1,0,0,0,0,0,0
                        .byte            0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0
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
