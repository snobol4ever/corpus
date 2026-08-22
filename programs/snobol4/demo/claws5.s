                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 264
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n0_match_pos_α:         mov              r11, 1
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   PAT$0_ω
                                                                              jmp   n1_match_arbno_α
n0_match_pos_β:         mov              r11, 1;                              jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_match_arbno_α:       mov              r11, 2
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d;         jmp   n2_match_rpos_α
n1_match_arbno_β:       mov              r11, 2;                              jmp   n3_match_fence1_α
n1_match_arbno_as:      mov              r11, 2
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n4_match_span_β
                        mov              dword ptr [rbp + -44], r14d;         jmp   n2_match_rpos_α
n1_match_arbno_af:      mov              r11, 2
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jmp   n0_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n2_match_rpos_α:        mov              r11, 3
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n1_match_arbno_β
                                                                              jmp   PAT$0_γ
n2_match_rpos_β:        mov              r11, 3;                              jmp   n1_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n3_match_fence1_α:      mov              r11, 4
                        mov              qword ptr [rbp + -96], rsp;          jmp   n5_match_alternate_α
n3_match_fence1_as:     mov              r11, 4
                        mov              rsp, qword ptr [rbp + -96];          jmp   n4_match_span_α
n3_match_fence1_af:     mov              r11, 4
n3_match_fence1_β:      mov              r11, 4
                        mov              rsp, qword ptr [rbp + -96];          jmp   n1_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n4_match_span_α:        sub              rsp, 16
                        mov              r11, 5
                        movsxd           rcx, r14d
.Lx30_0:                cmp              ecx, r15d;                           jge   .Lx30_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32;                             je    .Lx30_10
                        cmp              esi, 10;                             je    .Lx30_10
                                                                              jmp   .Lx30_1
.Lx30_10:               add              ecx, 1;                              jmp   .Lx30_0
.Lx30_1:                cmp              ecx, r14d;                           jg    .Lx30_240
                        add              rsp, 16;                             jmp   n1_match_arbno_af
.Lx30_240:              mov              dword ptr [rbp + -76], r14d
                        mov              r14d, ecx;                           jmp   n1_match_arbno_as
n4_match_span_β:        mov              r11, 5
                        mov              r14d, dword ptr [rbp + -76]
                        add              rsp, 16;                             jmp   n1_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n5_match_alternate_α:   mov              r11, 6
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx32_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n19_match_assign_save_α
.Lx32_21:               lea              rax, [rip + .Lx32_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n7_match_assign_save_α
n5_match_alternate_s0:  mov              r11, 6
                        lea              rax, [rip + .Lx32_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n5_match_alternate_as
n5_match_alternate_s1:  mov              r11, 6
                        lea              rax, [rip + .Lx32_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n5_match_alternate_as
.Lx32_40:                                                                     jmp   n18_goto_β
.Lx32_41:                                                                     jmp   n6_goto_β
n5_match_alternate_as:  mov              r11, 6;                              jmp   n3_match_fence1_as
n5_match_alternate_β:   mov              r11, 6
                        mov              rax, qword ptr [rsp + 8];            jmp   rax
n5_match_alternate_af:  mov              r11, 6
                        mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx32_19:               add              rsp, 32;                             jmp   n3_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n6_goto_α:              mov              r11, 7;                              jmp   n5_match_alternate_af
n6_goto_β:              mov              r11, 7;                              jmp   n5_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n7_match_assign_save_α: mov              r11, 8
                        mov              dword ptr [rbp + -160], r14d;        jmp   n8_match_notany_α
n7_match_assign_save_β: mov              r11, 8;                              jmp   n5_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n8_match_notany_α:      mov              r11, 9
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n7_match_assign_save_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    n7_match_assign_save_β
                        add              r14d, 1;                             jmp   n9_match_break_α
n8_match_notany_β:      mov              r11, 9
                        sub              r14d, 1;                             jmp   n7_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n9_match_break_α:       mov              r11, 10
                        movsxd           rcx, r14d
.Lx38_0:                cmp              ecx, r15d;                           jge   n8_match_notany_β
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    .Lx38_1
                        add              ecx, 1;                              jmp   .Lx38_0
.Lx38_1:                mov              dword ptr [rbp + -192], r14d
                        mov              r14d, ecx;                           jmp   n10_match_assign_cond_α
n9_match_break_β:       mov              r11, 10
                        mov              r14d, dword ptr [rbp + -192];        jmp   n8_match_notany_β
#-----------------------------------------------------------------------------------------------------------------------
n10_match_assign_cond_α:
                        mov              r11, 11
                        mov              eax, dword ptr [rbp + -160]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n11_match_lit_α
n10_match_assign_cond_β:
                        mov              r11, 11
                        sub              r12, 24;                             jmp   n10_match_assign_cond_α
#-----------------------------------------------------------------------------------------------------------------------
n11_match_lit_α:        mov              r11, 12
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n10_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 95;                             jne   n10_match_assign_cond_β
                        add              r14d, 1;                             jmp   n12_match_assign_save_α
n11_match_lit_β:        mov              r11, 12
                        sub              r14d, 1;                             jmp   n10_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n12_match_assign_save_α:
                        mov              r11, 13
                        mov              dword ptr [rbp + -208], r14d;        jmp   n13_match_assign_save_α
n12_match_assign_save_β:
                        mov              r11, 13;                             jmp   n11_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n13_match_assign_save_α:
                        mov              r11, 14
                        mov              dword ptr [rbp + -224], r14d;        jmp   n14_match_any_α
n13_match_assign_save_β:
                        mov              r11, 14;                             jmp   n12_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n14_match_any_α:        mov              r11, 15
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n13_match_assign_save_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n13_match_assign_save_β
                        add              r14d, 1;                             jmp   n15_match_span_α
n14_match_any_β:        mov              r11, 15
                        sub              r14d, 1;                             jmp   n13_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n15_match_span_α:       mov              r11, 16
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lx50_0:                cmp              ecx, r15d;                           jge   .Lx50_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx50_1
                        add              ecx, 1;                              jmp   .Lx50_0
.Lx50_1:                cmp              ecx, r14d;                           jle   n14_match_any_β
                        mov              dword ptr [rbp + -252], r14d
                        mov              r14d, ecx;                           jmp   n16_match_assign_cond_α
n15_match_span_β:       mov              r11, 16
                        mov              r14d, dword ptr [rbp + -252];        jmp   n14_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n16_match_assign_cond_α:
                        mov              r11, 17
                        mov              eax, dword ptr [rbp + -224]
                        lea              rcx, [rip + .S1]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n17_match_assign_cond_α
n16_match_assign_cond_β:
                        mov              r11, 17
                        sub              r12, 24;                             jmp   n16_match_assign_cond_α
#-----------------------------------------------------------------------------------------------------------------------
n17_match_assign_cond_α:
                        mov              r11, 18
                        mov              eax, dword ptr [rbp + -208]
                        lea              rcx, [rip + .S2]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n5_match_alternate_s1
n17_match_assign_cond_β:
                        mov              r11, 18
                        sub              r12, 24;                             jmp   n16_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n18_goto_α:             mov              r11, 19;                             jmp   n5_match_alternate_af
n18_goto_β:             mov              r11, 19;                             jmp   n5_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n19_match_assign_save_α:
                        mov              r11, 20
                        mov              dword ptr [rbp + -112], r14d;        jmp   n20_match_span_α
n19_match_assign_save_β:
                        mov              r11, 20;                             jmp   n5_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n20_match_span_α:       mov              r11, 21
                        lea              rdi, [rip + .C2]
                        movsxd           rcx, r14d
.Lx59_0:                cmp              ecx, r15d;                           jge   .Lx59_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx59_1
                        add              ecx, 1;                              jmp   .Lx59_0
.Lx59_1:                cmp              ecx, r14d;                           jle   n19_match_assign_save_β
                        mov              dword ptr [rbp + -140], r14d
                        mov              r14d, ecx;                           jmp   n21_match_assign_cond_α
n20_match_span_β:       mov              r11, 21
                        mov              r14d, dword ptr [rbp + -140];        jmp   n19_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n21_match_assign_cond_α:
                        mov              r11, 22
                        mov              eax, dword ptr [rbp + -112]
                        lea              rcx, [rip + .S3]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n22_match_lit_α
n21_match_assign_cond_β:
                        mov              r11, 22
                        sub              r12, 24;                             jmp   n20_match_span_β
#-----------------------------------------------------------------------------------------------------------------------
n22_match_lit_α:        mov              r11, 23
                        mov              eax, r14d
                        add              eax, 10
                        cmp              eax, r15d;                           jg    n21_match_assign_cond_β
                        movsxd           rcx, r14d
                        mov              rdx, qword ptr [r13+rcx]
                        movabs           rax, 5791411556081353567
                        cmp              rdx, rax;                            jne   n21_match_assign_cond_β
                        movzx            eax, byte ptr [r13+rcx+8]
                        cmp              eax, 85;                             jne   n21_match_assign_cond_β
                        movzx            eax, byte ptr [r13+rcx+9]
                        cmp              eax, 78;                             jne   n21_match_assign_cond_β
                        add              r14d, 10;                            jmp   n5_match_alternate_s0
n22_match_lit_β:        mov              r11, 23
                        sub              r14d, 10;                            jmp   n21_match_assign_cond_β
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
                        mov              edi, 8
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 8
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "token"
.Lgvan1:                .string          "num"
.Lgvan2:                .string          "mem"
.Lgvan3:                .string          "wrd"
.Lgvan4:                .string          "tag"
.Lgvan5:                .string          "dummy"
.Lgvan6:                .string          "claws"
.Lgvan7:                .string          "src"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .quad            .Lgvan6
                        .quad            .Lgvan7
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#         DEFINE('token()')  :(token_end)
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_begin_α:  mov              r11, 24
                        mov              r10, 1;                              jmp   n65_define_α
n64_statement_begin_β:  mov              r11, 24;                             jmp   n165_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n65_define_α:           mov              r11, 25
                        mov              rdi, qword ptr [rip + .Lx212_0]
                        mov              rsi, qword ptr [rip + .Lx212_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n67_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx212_0]
                        lea              rsi, [rip + token_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n66_statement_end_α
n65_define_β:           mov              r11, 25;                             jmp   n64_statement_begin_β
.Lx212_0:               .quad            .Lx212_0_s
.Lx212_0_s:             .string          "token"
.Lx212_1:               .quad            .Lx212_1_s
.Lx212_1_s:             .string          ""
                                                                              jmp   .Lx213_245
#-----------------------------------------------------------------------------------------------------------------------
token_α:                sub              rsp, 48
                        mov              rax, qword ptr [r9 + 0]              # token
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        lea              rcx, [rip + token_γ]
                        lea              rax, [rip + token_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n67_statement_begin_α];  jmp   rax
token_γ:                mov              rdi, qword ptr [r9 + 0]
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 48
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
token_ω:                mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx213_245:
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_end_α:    mov              r11, 26
                        mov              r10, 1;                              jmp   n165_statement_begin_α
#=======================================================================================================================
# token   num = +num
#-----------------------------------------------------------------------------------------------------------------------
n67_statement_begin_α:  mov              r11, 27
                        mov              r10, 2;                              jmp   n68_var_α
n67_statement_begin_β:  mov              r11, 27;                             jmp   n72_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:              sub              rsp, 16
                        mov              r11, 28
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n69_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n69_unop_α:             sub              rsp, 16
                        mov              r11, 29
                        mov              rdi, qword ptr [rsp + 16]            # var
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_num_pos@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n70_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n70_assign_α:           mov              r11, 30
                        mov              rax, qword ptr [rsp + 0]             # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # num
                        mov              qword ptr [r9 + 24], rdx;            jmp   n71_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n71_statement_end_α:    mov              r11, 31
                        mov              r10, 2
                        add              rsp, 32;                             jmp   n72_statement_begin_α
#=======================================================================================================================
#         mem = IDENT(mem) TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n72_statement_begin_α:  mov              r11, 32
                        mov              r10, 3;                              jmp   n73_var_α
n72_statement_begin_β:  mov              r11, 32;                             jmp   n79_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:              sub              rsp, 16
                        mov              r11, 33
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n74_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:       sub              rsp, 16
                        mov              r11, 34
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n75_ident_α
n74_lit_string_β:       mov              r11, 34
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n72_statement_begin_β
.Lx226_0:               .quad            .Lx226_0_s
.Lx226_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n75_ident_α:            sub              rsp, 16
                        mov              r11, 35
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jne   .Lx228_240
                        add              rsp, 16;                             jmp   n74_lit_string_β
.Lx228_240:                                                                   jmp   n76_call_α
n75_ident_β:            mov              r11, 35
                        add              rsp, 16;                             jmp   n74_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n76_call_α:             sub              rsp, 16
                        mov              r11, 36
                        .section         .rodata
.Lrkfnzd230:            .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd230]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx229_240
                        add              rsp, 16;                             jmp   n75_ident_β
.Lx229_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n77_assign_α
n76_call_β:             mov              r11, 36
                        add              rsp, 16;                             jmp   n75_ident_β
#-----------------------------------------------------------------------------------------------------------------------
n77_assign_α:           mov              r11, 37
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # mem
                        mov              qword ptr [r9 + 40], rdx;            jmp   n78_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n78_statement_end_α:    mov              r11, 38
                        mov              r10, 3
                        add              rsp, 64;                             jmp   n79_statement_begin_α
#=======================================================================================================================
#         mem[num] = IDENT(mem[num]) TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n79_statement_begin_α:  mov              r11, 39
                        mov              r10, 4;                              jmp   n80_var_α
n79_statement_begin_β:  mov              r11, 39;                             jmp   n92_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_α:              sub              rsp, 16
                        mov              r11, 40
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n81_var_α
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:              sub              rsp, 16
                        mov              r11, 41
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n82_subscript_α
n81_var_β:              mov              r11, 41
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n79_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n82_subscript_α:        sub              rsp, 16
                        mov              r11, 42
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx238_240
                        add              rsp, 16;                             jmp   n81_var_β
.Lx238_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n83_var_α
n82_subscript_β:        mov              r11, 42
                        add              rsp, 16;                             jmp   n81_var_β
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:              sub              rsp, 16
                        mov              r11, 43
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n84_var_α
n83_var_β:              mov              r11, 43
                        add              rsp, 16;                             jmp   n82_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:              sub              rsp, 16
                        mov              r11, 44
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n85_subscript_α
n84_var_β:              mov              r11, 44
                        add              rsp, 16;                             jmp   n83_var_β
#-----------------------------------------------------------------------------------------------------------------------
n85_subscript_α:        sub              rsp, 16
                        mov              r11, 45
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx241_240
                        add              rsp, 16;                             jmp   n84_var_β
.Lx241_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n86_deref_α
n85_subscript_β:        mov              r11, 45
                        add              rsp, 16;                             jmp   n84_var_β
#-----------------------------------------------------------------------------------------------------------------------
n86_deref_α:            sub              rsp, 16
                        mov              r11, 46
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx242_240
                        add              rsp, 16;                             jmp   n85_subscript_β
.Lx242_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n87_lit_string_α
n86_deref_β:            mov              r11, 46
                        add              rsp, 16;                             jmp   n85_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:       sub              rsp, 16
                        mov              r11, 47
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n88_ident_α
n87_lit_string_β:       mov              r11, 47
                        add              rsp, 16;                             jmp   n86_deref_β
.Lx243_0:               .quad            .Lx243_0_s
.Lx243_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n88_ident_α:            sub              rsp, 16
                        mov              r11, 48
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jne   .Lx245_240
                        add              rsp, 16;                             jmp   n87_lit_string_β
.Lx245_240:                                                                   jmp   n89_call_α
n88_ident_β:            mov              r11, 48
                        add              rsp, 16;                             jmp   n87_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n89_call_α:             sub              rsp, 16
                        mov              r11, 49
                        .section         .rodata
.Lrkfnzd247:            .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd247]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx246_240
                        add              rsp, 16;                             jmp   n88_ident_β
.Lx246_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n90_assign_var_α
n89_call_β:             mov              r11, 49
                        add              rsp, 16;                             jmp   n88_ident_β
#-----------------------------------------------------------------------------------------------------------------------
n90_assign_var_α:       sub              rsp, 16
                        mov              r11, 50
                        mov              rdi, qword ptr [rsp + 128]           # subscript
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx248_240
                        add              rsp, 32;                             jmp   n88_ident_β
.Lx248_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n91_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_end_α:    mov              r11, 51
                        mov              r10, 4
                        add              rsp, 176;                            jmp   n92_statement_begin_α
#=======================================================================================================================
#         mem[num][wrd] = IDENT(mem[num][wrd]) TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_begin_α:  mov              r11, 52
                        mov              r10, 5;                              jmp   n93_var_α
n92_statement_begin_β:  mov              r11, 52;                             jmp   n111_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n93_var_α:              sub              rsp, 16
                        mov              r11, 53
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n94_var_α
#-----------------------------------------------------------------------------------------------------------------------
n94_var_α:              sub              rsp, 16
                        mov              r11, 54
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n95_subscript_α
n94_var_β:              mov              r11, 54
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n92_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n95_subscript_α:        sub              rsp, 16
                        mov              r11, 55
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx255_240
                        add              rsp, 16;                             jmp   n94_var_β
.Lx255_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n96_deref_α
n95_subscript_β:        mov              r11, 55
                        add              rsp, 16;                             jmp   n94_var_β
#-----------------------------------------------------------------------------------------------------------------------
n96_deref_α:            sub              rsp, 16
                        mov              r11, 56
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx256_240
                        add              rsp, 16;                             jmp   n95_subscript_β
.Lx256_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n97_var_α
n96_deref_β:            mov              r11, 56
                        add              rsp, 16;                             jmp   n95_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:              sub              rsp, 16
                        mov              r11, 57
                        mov              rax, qword ptr [r9 + 48]             # wrd
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n98_subscript_α
n97_var_β:              mov              r11, 57
                        add              rsp, 16;                             jmp   n96_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n98_subscript_α:        sub              rsp, 16
                        mov              r11, 58
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx258_240
                        add              rsp, 16;                             jmp   n97_var_β
.Lx258_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n99_var_α
n98_subscript_β:        mov              r11, 58
                        add              rsp, 16;                             jmp   n97_var_β
#-----------------------------------------------------------------------------------------------------------------------
n99_var_α:              sub              rsp, 16
                        mov              r11, 59
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n100_var_α
n99_var_β:              mov              r11, 59
                        add              rsp, 16;                             jmp   n98_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n100_var_α:             sub              rsp, 16
                        mov              r11, 60
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n101_subscript_α
n100_var_β:             mov              r11, 60
                        add              rsp, 16;                             jmp   n99_var_β
#-----------------------------------------------------------------------------------------------------------------------
n101_subscript_α:       sub              rsp, 16
                        mov              r11, 61
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx261_240
                        add              rsp, 16;                             jmp   n100_var_β
.Lx261_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n102_deref_α
n101_subscript_β:       mov              r11, 61
                        add              rsp, 16;                             jmp   n100_var_β
#-----------------------------------------------------------------------------------------------------------------------
n102_deref_α:           sub              rsp, 16
                        mov              r11, 62
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx262_240
                        add              rsp, 16;                             jmp   n101_subscript_β
.Lx262_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n103_var_α
n102_deref_β:           mov              r11, 62
                        add              rsp, 16;                             jmp   n101_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n103_var_α:             sub              rsp, 16
                        mov              r11, 63
                        mov              rax, qword ptr [r9 + 48]             # wrd
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n104_subscript_α
n103_var_β:             mov              r11, 63
                        add              rsp, 16;                             jmp   n102_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n104_subscript_α:       sub              rsp, 16
                        mov              r11, 64
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx264_240
                        add              rsp, 16;                             jmp   n103_var_β
.Lx264_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n105_deref_α
n104_subscript_β:       mov              r11, 64
                        add              rsp, 16;                             jmp   n103_var_β
#-----------------------------------------------------------------------------------------------------------------------
n105_deref_α:           sub              rsp, 16
                        mov              r11, 65
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx265_240
                        add              rsp, 16;                             jmp   n104_subscript_β
.Lx265_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n106_lit_string_α
n105_deref_β:           mov              r11, 65
                        add              rsp, 16;                             jmp   n104_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:      sub              rsp, 16
                        mov              r11, 66
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n107_ident_α
n106_lit_string_β:      mov              r11, 66
                        add              rsp, 16;                             jmp   n105_deref_β
.Lx266_0:               .quad            .Lx266_0_s
.Lx266_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n107_ident_α:           sub              rsp, 16
                        mov              r11, 67
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jne   .Lx268_240
                        add              rsp, 16;                             jmp   n106_lit_string_β
.Lx268_240:                                                                   jmp   n108_call_α
n107_ident_β:           mov              r11, 67
                        add              rsp, 16;                             jmp   n106_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n108_call_α:            sub              rsp, 16
                        mov              r11, 68
                        .section         .rodata
.Lrkfnzd270:            .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd270]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx269_240
                        add              rsp, 16;                             jmp   n107_ident_β
.Lx269_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n109_assign_var_α
n108_call_β:            mov              r11, 68
                        add              rsp, 16;                             jmp   n107_ident_β
#-----------------------------------------------------------------------------------------------------------------------
n109_assign_var_α:      sub              rsp, 16
                        mov              r11, 69
                        mov              rdi, qword ptr [rsp + 176]           # subscript
                        mov              rsi, qword ptr [rsp + 184]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx271_240
                        add              rsp, 32;                             jmp   n107_ident_β
.Lx271_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n110_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_end_α:   mov              r11, 70
                        mov              r10, 5
                        add              rsp, 272;                            jmp   n111_statement_begin_α
#=======================================================================================================================
#         mem[num][wrd][tag] = IDENT(mem[num][wrd][tag]) 0
#-----------------------------------------------------------------------------------------------------------------------
n111_statement_begin_α: mov              r11, 71
                        mov              r10, 6;                              jmp   n112_var_α
n111_statement_begin_β: mov              r11, 71;                             jmp   n136_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:             sub              rsp, 16
                        mov              r11, 72
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n113_var_α
#-----------------------------------------------------------------------------------------------------------------------
n113_var_α:             sub              rsp, 16
                        mov              r11, 73
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n114_subscript_α
n113_var_β:             mov              r11, 73
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n111_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n114_subscript_α:       sub              rsp, 16
                        mov              r11, 74
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx278_240
                        add              rsp, 16;                             jmp   n113_var_β
.Lx278_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n115_deref_α
n114_subscript_β:       mov              r11, 74
                        add              rsp, 16;                             jmp   n113_var_β
#-----------------------------------------------------------------------------------------------------------------------
n115_deref_α:           sub              rsp, 16
                        mov              r11, 75
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx279_240
                        add              rsp, 16;                             jmp   n114_subscript_β
.Lx279_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n116_var_α
n115_deref_β:           mov              r11, 75
                        add              rsp, 16;                             jmp   n114_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n116_var_α:             sub              rsp, 16
                        mov              r11, 76
                        mov              rax, qword ptr [r9 + 48]             # wrd
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n117_subscript_α
n116_var_β:             mov              r11, 76
                        add              rsp, 16;                             jmp   n115_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n117_subscript_α:       sub              rsp, 16
                        mov              r11, 77
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx281_240
                        add              rsp, 16;                             jmp   n116_var_β
.Lx281_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n118_deref_α
n117_subscript_β:       mov              r11, 77
                        add              rsp, 16;                             jmp   n116_var_β
#-----------------------------------------------------------------------------------------------------------------------
n118_deref_α:           sub              rsp, 16
                        mov              r11, 78
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx282_240
                        add              rsp, 16;                             jmp   n117_subscript_β
.Lx282_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n119_var_α
n118_deref_β:           mov              r11, 78
                        add              rsp, 16;                             jmp   n117_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n119_var_α:             sub              rsp, 16
                        mov              r11, 79
                        mov              rax, qword ptr [r9 + 64]             # tag
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n120_subscript_α
n119_var_β:             mov              r11, 79
                        add              rsp, 16;                             jmp   n118_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n120_subscript_α:       sub              rsp, 16
                        mov              r11, 80
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx284_240
                        add              rsp, 16;                             jmp   n119_var_β
.Lx284_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n121_var_α
n120_subscript_β:       mov              r11, 80
                        add              rsp, 16;                             jmp   n119_var_β
#-----------------------------------------------------------------------------------------------------------------------
n121_var_α:             sub              rsp, 16
                        mov              r11, 81
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n122_var_α
n121_var_β:             mov              r11, 81
                        add              rsp, 16;                             jmp   n120_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n122_var_α:             sub              rsp, 16
                        mov              r11, 82
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n123_subscript_α
n122_var_β:             mov              r11, 82
                        add              rsp, 16;                             jmp   n121_var_β
#-----------------------------------------------------------------------------------------------------------------------
n123_subscript_α:       sub              rsp, 16
                        mov              r11, 83
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx287_240
                        add              rsp, 16;                             jmp   n122_var_β
.Lx287_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n124_deref_α
n123_subscript_β:       mov              r11, 83
                        add              rsp, 16;                             jmp   n122_var_β
#-----------------------------------------------------------------------------------------------------------------------
n124_deref_α:           sub              rsp, 16
                        mov              r11, 84
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx288_240
                        add              rsp, 16;                             jmp   n123_subscript_β
.Lx288_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n125_var_α
n124_deref_β:           mov              r11, 84
                        add              rsp, 16;                             jmp   n123_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n125_var_α:             sub              rsp, 16
                        mov              r11, 85
                        mov              rax, qword ptr [r9 + 48]             # wrd
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n126_subscript_α
n125_var_β:             mov              r11, 85
                        add              rsp, 16;                             jmp   n124_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n126_subscript_α:       sub              rsp, 16
                        mov              r11, 86
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx290_240
                        add              rsp, 16;                             jmp   n125_var_β
.Lx290_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n127_deref_α
n126_subscript_β:       mov              r11, 86
                        add              rsp, 16;                             jmp   n125_var_β
#-----------------------------------------------------------------------------------------------------------------------
n127_deref_α:           sub              rsp, 16
                        mov              r11, 87
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx291_240
                        add              rsp, 16;                             jmp   n126_subscript_β
.Lx291_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n128_var_α
n127_deref_β:           mov              r11, 87
                        add              rsp, 16;                             jmp   n126_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n128_var_α:             sub              rsp, 16
                        mov              r11, 88
                        mov              rax, qword ptr [r9 + 64]             # tag
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n129_subscript_α
n128_var_β:             mov              r11, 88
                        add              rsp, 16;                             jmp   n127_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n129_subscript_α:       sub              rsp, 16
                        mov              r11, 89
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx293_240
                        add              rsp, 16;                             jmp   n128_var_β
.Lx293_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n130_deref_α
n129_subscript_β:       mov              r11, 89
                        add              rsp, 16;                             jmp   n128_var_β
#-----------------------------------------------------------------------------------------------------------------------
n130_deref_α:           sub              rsp, 16
                        mov              r11, 90
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx294_240
                        add              rsp, 16;                             jmp   n129_subscript_β
.Lx294_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n131_lit_string_α
n130_deref_β:           mov              r11, 90
                        add              rsp, 16;                             jmp   n129_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:      sub              rsp, 16
                        mov              r11, 91
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n132_ident_α
n131_lit_string_β:      mov              r11, 91
                        add              rsp, 16;                             jmp   n130_deref_β
.Lx295_0:               .quad            .Lx295_0_s
.Lx295_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n132_ident_α:           sub              rsp, 16
                        mov              r11, 92
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jne   .Lx297_240
                        add              rsp, 16;                             jmp   n131_lit_string_β
.Lx297_240:                                                                   jmp   n133_lit_integer_α
n132_ident_β:           mov              r11, 92
                        add              rsp, 16;                             jmp   n131_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_integer_α:     sub              rsp, 16
                        mov              r11, 93
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n134_assign_var_α
n133_lit_integer_β:     mov              r11, 93
                        add              rsp, 16;                             jmp   n132_ident_β
.Lx298_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n134_assign_var_α:      sub              rsp, 16
                        mov              r11, 94
                        mov              rdi, qword ptr [rsp + 224]           # subscript
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx299_240
                        add              rsp, 16;                             jmp   n133_lit_integer_β
.Lx299_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n135_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n135_statement_end_α:   mov              r11, 95
                        mov              r10, 6
                        add              rsp, 368;                            jmp   n136_statement_begin_α
#=======================================================================================================================
#         mem[num][wrd][tag] = mem[num][wrd][tag] + 1
#-----------------------------------------------------------------------------------------------------------------------
n136_statement_begin_α: mov              r11, 96
                        mov              r10, 7;                              jmp   n137_var_α
n136_statement_begin_β: mov              r11, 96;                             jmp   n160_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n137_var_α:             sub              rsp, 16
                        mov              r11, 97
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n138_var_α
#-----------------------------------------------------------------------------------------------------------------------
n138_var_α:             sub              rsp, 16
                        mov              r11, 98
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n139_subscript_α
n138_var_β:             mov              r11, 98
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n136_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n139_subscript_α:       sub              rsp, 16
                        mov              r11, 99
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx306_240
                        add              rsp, 16;                             jmp   n138_var_β
.Lx306_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n140_deref_α
n139_subscript_β:       mov              r11, 99
                        add              rsp, 16;                             jmp   n138_var_β
#-----------------------------------------------------------------------------------------------------------------------
n140_deref_α:           sub              rsp, 16
                        mov              r11, 100
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx307_240
                        add              rsp, 16;                             jmp   n139_subscript_β
.Lx307_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n141_var_α
n140_deref_β:           mov              r11, 100
                        add              rsp, 16;                             jmp   n139_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n141_var_α:             sub              rsp, 16
                        mov              r11, 101
                        mov              rax, qword ptr [r9 + 48]             # wrd
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n142_subscript_α
n141_var_β:             mov              r11, 101
                        add              rsp, 16;                             jmp   n140_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n142_subscript_α:       sub              rsp, 16
                        mov              r11, 102
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx309_240
                        add              rsp, 16;                             jmp   n141_var_β
.Lx309_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n143_deref_α
n142_subscript_β:       mov              r11, 102
                        add              rsp, 16;                             jmp   n141_var_β
#-----------------------------------------------------------------------------------------------------------------------
n143_deref_α:           sub              rsp, 16
                        mov              r11, 103
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx310_240
                        add              rsp, 16;                             jmp   n142_subscript_β
.Lx310_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n144_var_α
n143_deref_β:           mov              r11, 103
                        add              rsp, 16;                             jmp   n142_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n144_var_α:             sub              rsp, 16
                        mov              r11, 104
                        mov              rax, qword ptr [r9 + 64]             # tag
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n145_subscript_α
n144_var_β:             mov              r11, 104
                        add              rsp, 16;                             jmp   n143_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n145_subscript_α:       sub              rsp, 16
                        mov              r11, 105
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx312_240
                        add              rsp, 16;                             jmp   n144_var_β
.Lx312_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n146_var_α
n145_subscript_β:       mov              r11, 105
                        add              rsp, 16;                             jmp   n144_var_β
#-----------------------------------------------------------------------------------------------------------------------
n146_var_α:             sub              rsp, 16
                        mov              r11, 106
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n147_var_α
n146_var_β:             mov              r11, 106
                        add              rsp, 16;                             jmp   n145_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n147_var_α:             sub              rsp, 16
                        mov              r11, 107
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n148_subscript_α
n147_var_β:             mov              r11, 107
                        add              rsp, 16;                             jmp   n146_var_β
#-----------------------------------------------------------------------------------------------------------------------
n148_subscript_α:       sub              rsp, 16
                        mov              r11, 108
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx315_240
                        add              rsp, 16;                             jmp   n147_var_β
.Lx315_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n149_deref_α
n148_subscript_β:       mov              r11, 108
                        add              rsp, 16;                             jmp   n147_var_β
#-----------------------------------------------------------------------------------------------------------------------
n149_deref_α:           sub              rsp, 16
                        mov              r11, 109
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx316_240
                        add              rsp, 16;                             jmp   n148_subscript_β
.Lx316_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n150_var_α
n149_deref_β:           mov              r11, 109
                        add              rsp, 16;                             jmp   n148_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n150_var_α:             sub              rsp, 16
                        mov              r11, 110
                        mov              rax, qword ptr [r9 + 48]             # wrd
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n151_subscript_α
n150_var_β:             mov              r11, 110
                        add              rsp, 16;                             jmp   n149_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n151_subscript_α:       sub              rsp, 16
                        mov              r11, 111
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx318_240
                        add              rsp, 16;                             jmp   n150_var_β
.Lx318_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n152_deref_α
n151_subscript_β:       mov              r11, 111
                        add              rsp, 16;                             jmp   n150_var_β
#-----------------------------------------------------------------------------------------------------------------------
n152_deref_α:           sub              rsp, 16
                        mov              r11, 112
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx319_240
                        add              rsp, 16;                             jmp   n151_subscript_β
.Lx319_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n153_var_α
n152_deref_β:           mov              r11, 112
                        add              rsp, 16;                             jmp   n151_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n153_var_α:             sub              rsp, 16
                        mov              r11, 113
                        mov              rax, qword ptr [r9 + 64]             # tag
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n154_subscript_α
n153_var_β:             mov              r11, 113
                        add              rsp, 16;                             jmp   n152_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n154_subscript_α:       sub              rsp, 16
                        mov              r11, 114
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx321_240
                        add              rsp, 16;                             jmp   n153_var_β
.Lx321_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n155_deref_α
n154_subscript_β:       mov              r11, 114
                        add              rsp, 16;                             jmp   n153_var_β
#-----------------------------------------------------------------------------------------------------------------------
n155_deref_α:           sub              rsp, 16
                        mov              r11, 115
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx322_240
                        add              rsp, 16;                             jmp   n154_subscript_β
.Lx322_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n156_lit_integer_α
n155_deref_β:           mov              r11, 115
                        add              rsp, 16;                             jmp   n154_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_integer_α:     sub              rsp, 16
                        mov              r11, 116
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx323_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n157_binop_α
n156_lit_integer_β:     mov              r11, 116
                        add              rsp, 16;                             jmp   n155_deref_β
.Lx323_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n157_binop_α:           sub              rsp, 16
                        mov              r11, 117
                        mov              ecx, dword ptr [rsp + 32]            # deref
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx324_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx324_7
.Lx324_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx324_0
                        mov              rsi, qword ptr [rsp + 40]            # deref
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx324_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx324_4
.Lx324_3:               movq             xmm0, rsi
.Lx324_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx324_7:                                                                     jmp   n158_assign_var_α
.Lx324_0:               mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx324_240
                        add              rsp, 16;                             jmp   n156_lit_integer_β
.Lx324_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n158_assign_var_α
n157_binop_β:           mov              r11, 117
                        add              rsp, 16;                             jmp   n156_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n158_assign_var_α:      sub              rsp, 16
                        mov              r11, 118
                        mov              rdi, qword ptr [rsp + 208]           # subscript
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx325_240
                        add              rsp, 16;                             jmp   n157_binop_β
.Lx325_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n159_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n159_statement_end_α:   mov              r11, 119
                        mov              r10, 7
                        add              rsp, 352;                            jmp   n160_statement_begin_α
#=======================================================================================================================
#         token = .dummy  :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n160_statement_begin_α: mov              r11, 120
                        mov              r10, 8;                              jmp   n161_lit_string_α
n160_statement_begin_β: mov              r11, 120;                            jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_string_α:      sub              rsp, 16
                        mov              r11, 121
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx330_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n162_call_α
.Lx330_0:               .quad            .Lx330_0_s
.Lx330_0_s:             .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n162_call_α:            sub              rsp, 16
                        mov              r11, 122
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd332:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd332]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx331_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n160_statement_begin_β
.Lx331_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n163_assign_α
n162_call_β:            mov              r11, 122
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n160_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n163_assign_α:          mov              r11, 123
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # token
                        mov              qword ptr [r9 + 8], rdx;             jmp   n164_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n164_statement_end_α:   mov              r11, 124
                        mov              r10, 8
                        add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# token_end  <stmt 9, line 11: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n165_statement_begin_α: mov              r11, 125
                        mov              r10, 9;                              jmp   n166_statement_end_α
n165_statement_begin_β: mov              r11, 125;                            jmp   n167_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n166_statement_end_α:   mov              r11, 126
                        mov              r10, 9;                              jmp   n167_statement_begin_α
#=======================================================================================================================
#         &TRIM   =   0
#-----------------------------------------------------------------------------------------------------------------------
n167_statement_begin_α: mov              r11, 127
                        mov              r10, 10;                             jmp   n168_lit_integer_α
n167_statement_begin_β: mov              r11, 127;                            jmp   n171_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_integer_α:     sub              rsp, 16
                        mov              r11, 128
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n169_keyword_assign_snobol4_α
.Lx342_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n169_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 129
                        mov              rdi, qword ptr [rip + .Lx343_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx343_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n167_statement_begin_β
.Lx343_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n170_statement_end_α
.Lx343_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_end_α:   mov              r11, 130
                        mov              r10, 10
                        add              rsp, 32;                             jmp   n171_statement_begin_α
#=======================================================================================================================
#         claws   =   POS(0)
#-----------------------------------------------------------------------------------------------------------------------
n171_statement_begin_α: mov              r11, 131
                        mov              r10, 11;                             jmp   n172_lit_string_α
n171_statement_begin_β: mov              r11, 131;                            jmp   n176_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_string_α:      sub              rsp, 16
                        mov              r11, 132
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx348_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n173_call_α
.Lx348_0:               .quad            .Lx348_0_s
.Lx348_0_s:             .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n173_call_α:            sub              rsp, 16
                        mov              r11, 133
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd350:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd350]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx349_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n171_statement_begin_β
.Lx349_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n174_assign_α
n173_call_β:            mov              r11, 133
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n171_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n174_assign_α:          mov              r11, 134
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # claws
                        mov              qword ptr [r9 + 104], rdx;           jmp   n175_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n175_statement_end_α:   mov              r11, 135
                        mov              r10, 11
                        add              rsp, 32;                             jmp   n176_statement_begin_α
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_begin_α: mov              r11, 136
                        mov              r10, 12;                             jmp   n177_lit_string_α
n176_statement_begin_β: mov              r11, 136;                            jmp   n183_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_string_α:      sub              rsp, 16
                        mov              r11, 137
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx356_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n178_call_α
.Lx356_0:               .quad            .Lx356_0_s
.Lx356_0_s:             .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n178_call_α:            sub              rsp, 16
                        mov              r11, 138
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd358:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd358]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx357_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n176_statement_begin_β
.Lx357_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n179_lit_integer_α
n178_call_β:            mov              r11, 138
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n176_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_integer_α:     sub              rsp, 16
                        mov              r11, 139
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx359_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n180_lit_string_α
n179_lit_integer_β:     mov              r11, 139
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n176_statement_begin_β
.Lx359_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_string_α:      sub              rsp, 16
                        mov              r11, 140
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx360_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n181_call_α
n180_lit_string_β:      mov              r11, 140
                        add              rsp, 16;                             jmp   n179_lit_integer_β
.Lx360_0:               .quad            .Lx360_0_s
.Lx360_0_s:             .string          "[-f0 -r4194304]"
#-----------------------------------------------------------------------------------------------------------------------
n181_call_α:            sub              rsp, 16
                        mov              r11, 141
                        sub              rsp, 48
                        mov              r8, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], r8
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], r8
                        .section         .rodata
.Lbynamefnzd141:        .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd141]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 48
                        cmp              al, 104;                             jne   .Lx361_240
                        add              rsp, 16;                             jmp   n180_lit_string_β
.Lx361_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n182_statement_end_α
n181_call_β:            mov              r11, 141
                        add              rsp, 16;                             jmp   n180_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n182_statement_end_α:   mov              r11, 142
                        mov              r10, 12
                        add              rsp, 80;                             jmp   n183_statement_begin_α
#=======================================================================================================================
#         src     =   INPUT  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
n183_statement_begin_α: mov              r11, 143
                        mov              r10, 13;                             jmp   n184_var_α
n183_statement_begin_β: mov              r11, 143;                            jmp   n202_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n184_var_α:             sub              rsp, 16
                        mov              r11, 144
                        mov              rdi, qword ptr [rip + .Lx366_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx366_240
                        add              rsp, 16;                             jmp   n183_statement_begin_β
.Lx366_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n185_assign_α
.Lx366_0:               .quad            .Lx366_0_s
.Lx366_0_s:             .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n185_assign_α:          mov              r11, 145
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # src
                        mov              qword ptr [r9 + 120], rdx;           jmp   n186_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n186_statement_end_α:   mov              r11, 146
                        mov              r10, 13
                        add              rsp, 16;                             jmp   n187_statement_begin_α
#=======================================================================================================================
#         src     ?   claws  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
n187_statement_begin_α: mov              r11, 147
                        mov              r10, 14;                             jmp   n188_var_α
n187_statement_begin_β: mov              r11, 147;                            jmp   n202_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n188_var_α:             sub              rsp, 16
                        mov              r11, 148
                        mov              rax, qword ptr [r9 + 112]            # src
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n189_var_α
#-----------------------------------------------------------------------------------------------------------------------
n189_var_α:             sub              rsp, 16
                        mov              r11, 149
                        mov              rax, qword ptr [r9 + 96]             # claws
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n190_assign_α
n189_var_β:             mov              r11, 149
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n202_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n190_assign_α:          mov              r11, 150
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx374_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n191_match_begin_α
n190_assign_β:          mov              r11, 150;                            jmp   n189_var_β
.Lx374_0:               .quad            .Lx374_0_s
.Lx374_0_s:             .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n191_match_begin_α:     mov              r11, 151
                        mov              rdi, qword ptr [rsp + 16]            # var
                        mov              rsi, qword ptr [rsp + 24]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 24
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              dword ptr [rbp + -40], 0             # start_δ
.Lx376_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx376_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n192_match_defer_α
n191_match_begin_β:     mov              r11, 151
.Lx376_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx376_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx376_1
                                                                              jmp   .Lx376_0
.Lx376_1:
n191_match_begin_af:    mov              r11, 151
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13                             # sig
                        mov              rsi, r15                             # len
                        call             rt_match_ctx_restore@PLT
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n190_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n192_match_defer_α:     mov              r11, 152
                        lea              rdi, [rip + .S4]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx377_14
                        mov              rax, qword ptr [rdx + 0]
.Lx377_14:              test             rax, rax;                            jz    .Lx377_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx377_5]
                        push             rcx
                        lea              rcx, [rip + .Lx377_4]
                        push             rcx;                                 jmp   rax
.Lx377_4:                                                                     jmp   n193_match_end_α
.Lx377_5:                                                                     jmp   n191_match_begin_β
.Lx377_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
                        mov              esi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n191_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx377_6]
                        push             rcx
                        push             rax;                                 jmp   n193_match_end_α
.Lx377_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n191_match_begin_β
n192_match_defer_β:     mov              r11, 152
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx377_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx377_12
                                                                              jmp   rax
.Lx377_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n193_match_end_α:       mov              r11, 153
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
                        call             rt_match_end_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx379_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n191_match_begin_af
.Lx379_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n194_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n194_statement_end_α:   mov              r11, 154
                        mov              r10, 14
                        add              rsp, 32;                             jmp   n195_statement_begin_α
#=======================================================================================================================
#         OUTPUT  =   'matched bytes=' SIZE(src)  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n195_statement_begin_α: mov              r11, 155
                        mov              r10, 15;                             jmp   n196_lit_string_α
n195_statement_begin_β: mov              r11, 155;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_string_α:      sub              rsp, 16
                        mov              r11, 156
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx384_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n197_var_α
.Lx384_0:               .quad            .Lx384_0_s
.Lx384_0_s:             .string          "matched bytes="
#-----------------------------------------------------------------------------------------------------------------------
n197_var_α:             sub              rsp, 16
                        mov              r11, 157
                        mov              rax, qword ptr [r9 + 112]            # src
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n198_call_α
n197_var_β:             mov              r11, 157
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n195_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n198_call_α:            sub              rsp, 16
                        mov              r11, 158
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd387:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd387]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx386_240
                        add              rsp, 16;                             jmp   n197_var_β
.Lx386_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n199_binop_α
n198_call_β:            mov              r11, 158
                        add              rsp, 16;                             jmp   n197_var_β
#-----------------------------------------------------------------------------------------------------------------------
n199_binop_α:           sub              rsp, 16
                        mov              r11, 159
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n200_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n200_assign_α:          mov              r11, 160
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx389_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n201_statement_end_α
.Lx389_0:               .quad            .Lx389_0_s
.Lx389_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n201_statement_end_α:   mov              r11, 161
                        mov              r10, 15
                        add              rsp, 64;                             jmp   main_γ
#=======================================================================================================================
# error   OUTPUT  =   'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n202_statement_begin_α: mov              r11, 162
                        mov              r10, 16;                             jmp   n203_lit_string_α
n202_statement_begin_β: mov              r11, 162;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_string_α:      sub              rsp, 16
                        mov              r11, 163
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx394_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n204_assign_α
.Lx394_0:               .quad            .Lx394_0_s
.Lx394_0_s:             .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n204_assign_α:          mov              r11, 164
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx395_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n205_statement_end_α
.Lx395_0:               .quad            .Lx395_0_s
.Lx395_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n205_statement_end_α:   mov              r11, 165
                        mov              r10, 16
                        add              rsp, 16;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 166
                        pop              rcx
                        add              rsp, 8;                              jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FRETURN:                mov              r11, 167
                        add              rsp, 8
                        pop              rcx;                                 jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
NRETURN:                mov              r11, 168
                        mov              rax, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rax + 0], 1;              jmp   RETURN
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
.Lseala1:               .string          "token"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            token_α
                        lea              rdi, [rip + .Lseala1]
                        mov              rsi, qword ptr [rip + token_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "PAT$0"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__PAT$0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            448
                        .long            18
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.S0:                    .string          "wrd"
.S1:                    .string          "tag"
.S2:                    .string          "*token"
.S3:                    .string          "num"
.S4:                    .string          "PATV$0"
                        .text
                        .section         .rodata
.C0:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
                        .byte            1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0
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
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0
                        .byte            0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
                        .byte            1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0
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
.C2:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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
