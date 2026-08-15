                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "digits"
.Lgvan1:                .string          "X"
.Lgvan2:                .string          "N"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 3
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 3
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
n0_statement_begin_α:                                                         jmp   n1_lit_string_α
n0_statement_begin_β:                                                         jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx31_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_assign_α
n1_lit_string_β:        add              rsp, 16;                             jmp   n0_statement_begin_β
.Lx31_0:                .quad            .Lx31_0_s
.Lx31_0_s:              .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:            mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # digits
                        mov              qword ptr [r9 + 8], rdx;             jmp   n3_statement_end_α
n2_assign_β:                                                                  jmp   n0_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:     add              rsp, 16;                             jmp   n4_statement_begin_α
n3_statement_end_β:     add              rsp, 16;                             jmp   n4_statement_begin_α
#=======================================================================================================================
#         &ANCHOR = 1
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:                                                         jmp   n5_lit_string_α
n4_statement_begin_β:                                                         jmp   n9_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_lit_integer_α
n5_lit_string_β:        add              rsp, 16;                             jmp   n4_statement_begin_β
.Lx37_0:                .quad            .Lx37_0_s
.Lx37_0_s:              .string          "ANCHOR"
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n7_call_α
n6_lit_integer_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n4_statement_begin_β
.Lx38_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n7_call_α:              sub              rsp, 16
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
.Lrkfnzd40:             .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd40]
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
                        cmp              eax, 104;                            jne   .Lx39_240
                        add              rsp, 16;                             jmp   n6_lit_integer_β
.Lx39_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n8_statement_end_α
n7_call_β:              add              rsp, 16;                             jmp   n6_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_end_α:     add              rsp, 48;                             jmp   n9_statement_begin_α
n8_statement_end_β:     add              rsp, 48;                             jmp   n9_statement_begin_α
#=======================================================================================================================
#         X = '42rest'
#-----------------------------------------------------------------------------------------------------------------------
n9_statement_begin_α:                                                         jmp   n10_lit_string_α
n9_statement_begin_β:                                                         jmp   n13_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx45_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n11_assign_α
n10_lit_string_β:       add              rsp, 16;                             jmp   n9_statement_begin_β
.Lx45_0:                .quad            .Lx45_0_s
.Lx45_0_s:              .string          "42rest"
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # X
                        mov              qword ptr [r9 + 24], rdx;            jmp   n12_statement_end_α
n11_assign_β:                                                                 jmp   n9_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_end_α:    add              rsp, 16;                             jmp   n13_statement_begin_α
n12_statement_end_β:    add              rsp, 16;                             jmp   n13_statement_begin_α
#=======================================================================================================================
#         X  ANY('123456789')  FENCE(SPAN(digits) | '') . N
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_begin_α:                                                        jmp   n14_var_α
n13_statement_begin_β:                                                        jmp   n25_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # X
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n15_match_begin_α
n14_var_β:              add              rsp, 16;                             jmp   n25_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n15_match_begin_α:      mov              rdi, qword ptr [rsp + 0]             # var
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
.Lx53_0:                mov              r14d, dword ptr [rbp + -40];         jmp   n16_match_any_α
n15_match_begin_β:      lea              rsp, [rbp + -72]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx53_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx53_1
                                                                              jmp   .Lx53_0
.Lx53_1:
n15_match_begin_af:     mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n21_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n16_match_any_α:        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n15_match_begin_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n15_match_begin_β
                        add              r14d, 1;                             jmp   n17_match_assign_save_α
n16_match_any_β:        sub              r14d, 1;                             jmp   n15_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n17_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d;           jmp   n18_match_fence1_α
n17_match_assign_save_β:
                        add              rsp, 16;                             jmp   n16_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n18_match_fence1_α:     mov              qword ptr [rbp + -64], rsp
                        sub              rsp, 0;                              jmp   n22_match_alternate_α
n18_match_fence1_as:    add              rsp, 0
                        mov              rsp, qword ptr [rbp + -64];          jmp   n19_match_assign_cond_α
n18_match_fence1_af:    add              rsp, 0
n18_match_fence1_β:     mov              rsp, qword ptr [rbp + -64];          jmp   n17_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n19_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n20_match_end_α
n19_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n18_match_fence1_β
#-----------------------------------------------------------------------------------------------------------------------
n20_match_end_α:        push             r14
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
.Lx63_1:                test             rax, rax;                            je    .Lx63_2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx63_3]
                        lea              rdx, [rip + .Lx63_4];                jmp   rax
.Lx63_3:                mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx63_1
.Lx63_4:                mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx63_1
.Lx63_2:                call             rt_dcap_end_ok_close@PLT
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
                        pop              rbp;                                 jmp   n21_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_end_α:    add              rsp, 16;                             jmp   n25_statement_begin_α
n21_statement_end_β:    add              rsp, 32;                             jmp   n25_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n22_match_alternate_α:  sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx67_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n24_match_span_α
.Lx67_21:               lea              rax, [rip + .Lx67_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n23_match_lit_α
n22_match_alternate_s0: lea              rax, [rip + .Lx67_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n22_match_alternate_as
n22_match_alternate_s1: lea              rax, [rip + .Lx67_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n22_match_alternate_as
.Lx67_40:                                                                     jmp   n24_match_span_β
.Lx67_41:                                                                     jmp   n23_match_lit_β
n22_match_alternate_as:                                                       jmp   n18_match_fence1_as
n22_match_alternate_β:  mov              rax, qword ptr [rsp + 8];            jmp   rax
n22_match_alternate_af: mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx67_19:               add              rsp, 32;                             jmp   n18_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n23_match_lit_α:                                                              jmp   n22_match_alternate_s1
n23_match_lit_β:                                                              jmp   n22_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n24_match_span_α:       lea              rdi, [rip + .S1]
                        lea              rsi, [rsp + 336]
                        lea              rdx, [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pat_prim_str@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            js    n22_match_alternate_af
                        mov              r8, qword ptr [rsp + 336]
                        mov              dword ptr [rsp + 336], 0
.Lx71_0:                mov              eax, r14d
                        add              eax, dword ptr [rsp + 336]
                        cmp              eax, r15d;                           jge   .Lx71_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              eax, dword ptr [rsp + 344]
                        mov              edx, 0
.Lx71_2:                cmp              edx, eax;                            jge   .Lx71_1
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi;                            je    .Lx71_3
                        add              edx, 1;                              jmp   .Lx71_2
.Lx71_3:                add              dword ptr [rsp + 336], 1;            jmp   .Lx71_0
.Lx71_1:                mov              eax, dword ptr [rsp + 336]
                        test             eax, eax;                            jle   n22_match_alternate_af
                        mov              edx, r14d
                        mov              dword ptr [rsp + 340], edx
                        add              edx, eax
                        mov              r14d, edx;                           jmp   n22_match_alternate_s0
n24_match_span_β:       mov              r14d, dword ptr [rsp + 340];         jmp   n22_match_alternate_af
#=======================================================================================================================
#         OUTPUT = N
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_begin_α:                                                        jmp   n26_var_α
n25_statement_begin_β:                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # N
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n27_assign_α
n26_var_β:              add              rsp, 16;                             jmp   n25_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:           mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx75_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n28_statement_end_α
n27_assign_β:                                                                 jmp   n25_statement_begin_β
.Lx75_0:                .quad            .Lx75_0_s
.Lx75_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_end_α:    add              rsp, 16;                             jmp   main_γ
n28_statement_end_β:    add              rsp, 16;                             jmp   main_γ
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
.S0:                    .string          "N"
.S1:                    .string          "digits"
                        .text
                        .section         .rodata
.C0:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0
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
.C1:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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
