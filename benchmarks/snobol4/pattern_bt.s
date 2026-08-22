                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 104
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n0_match_alternate_α:   mov              dword ptr [rbp + -104], r14d
                        lea              rax, [rip + .Lx9_21]
                        mov              qword ptr [rbp + -88], rax;          jmp   n7_match_lit_α
.Lx9_21:                lea              rax, [rip + .Lx9_22]
                        mov              qword ptr [rbp + -88], rax;          jmp   n6_match_lit_α
.Lx9_22:                lea              rax, [rip + .Lx9_23]
                        mov              qword ptr [rbp + -88], rax;          jmp   n5_match_lit_α
.Lx9_23:                lea              rax, [rip + .Lx9_19]
                        mov              qword ptr [rbp + -88], rax;          jmp   n4_match_lit_α
n0_match_alternate_s0:  lea              rax, [rip + .Lx9_40]
                        mov              qword ptr [rbp + -96], rax;          jmp   n0_match_alternate_as
n0_match_alternate_s1:  lea              rax, [rip + .Lx9_41]
                        mov              qword ptr [rbp + -96], rax;          jmp   n0_match_alternate_as
n0_match_alternate_s2:  lea              rax, [rip + .Lx9_42]
                        mov              qword ptr [rbp + -96], rax;          jmp   n0_match_alternate_as
n0_match_alternate_s3:  lea              rax, [rip + .Lx9_43]
                        mov              qword ptr [rbp + -96], rax;          jmp   n0_match_alternate_as
.Lx9_40:                                                                      jmp   n7_match_lit_β
.Lx9_41:                                                                      jmp   n6_match_lit_β
.Lx9_42:                                                                      jmp   n5_match_lit_β
.Lx9_43:                                                                      jmp   n4_match_lit_β
n0_match_alternate_as:                                                        jmp   n1_match_assign_save_α
n0_match_alternate_β:   mov              rax, qword ptr [rbp + -96];          jmp   rax
n0_match_alternate_af:  mov              r14d, dword ptr [rbp + -104]
                        mov              rax, qword ptr [rbp + -88];          jmp   rax
.Lx9_19:                                                                      jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_match_assign_save_α: sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d;           jmp   n2_match_span_α
n1_match_assign_save_β: add              rsp, 16;                             jmp   n0_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n2_match_span_α:        sub              rsp, 16
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx13_0:                cmp              ecx, r15d;                           jge   .Lx13_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx13_1
                        add              ecx, 1;                              jmp   .Lx13_0
.Lx13_1:                cmp              ecx, r14d;                           jg    .Lx13_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n0_match_alternate_β
.Lx13_240:              mov              dword ptr [rbp + -60], r14d
                        mov              r14d, ecx;                           jmp   n3_match_assign_cond_α
n2_match_span_β:        mov              r14d, dword ptr [rbp + -60]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n0_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n3_match_assign_cond_α: mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   PAT$0_γ
n3_match_assign_cond_β: sub              r12, 24;                             jmp   n2_match_span_β
#-----------------------------------------------------------------------------------------------------------------------
n4_match_lit_α:         mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d;                           jg    n0_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 100;                            jne   n0_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 100;                            jne   n0_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 100;                            jne   n0_match_alternate_af
                        add              r14d, 3;                             jmp   n0_match_alternate_s3
n4_match_lit_β:         sub              r14d, 3;                             jmp   n0_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n5_match_lit_α:         mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d;                           jg    n0_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 99;                             jne   n0_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 99;                             jne   n0_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 99;                             jne   n0_match_alternate_af
                        add              r14d, 3;                             jmp   n0_match_alternate_s2
n5_match_lit_β:         sub              r14d, 3;                             jmp   n0_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n6_match_lit_α:         mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d;                           jg    n0_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 98;                             jne   n0_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 98;                             jne   n0_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 98;                             jne   n0_match_alternate_af
                        add              r14d, 3;                             jmp   n0_match_alternate_s1
n6_match_lit_β:         sub              r14d, 3;                             jmp   n0_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n7_match_lit_α:         mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d;                           jg    n0_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97;                             jne   n0_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 97;                             jne   n0_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 97;                             jne   n0_match_alternate_af
                        add              r14d, 3;                             jmp   n0_match_alternate_s0
n7_match_lit_β:         sub              r14d, 3;                             jmp   n0_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   n3_match_assign_cond_β
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
                        mov              edi, 15
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 15
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "ZBODY"
.Lgvan1:                .string          "ZKN"
.Lgvan2:                .string          "ZCHK"
.Lgvan3:                .string          "ZBUD"
.Lgvan4:                .string          "ZFLR"
.Lgvan5:                .string          "PAT"
.Lgvan6:                .string          "W"
.Lgvan7:                .string          "SUB"
.Lgvan8:                .string          "ZI"
.Lgvan9:                .string          "fixed_n"
.Lgvan10:               .string          "ZK"
.Lgvan11:               .string          "ZT"
.Lgvan12:               .string          "ZE"
.Lgvan13:               .string          "ZD"
.Lgvan14:               .string          "ZN"
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
                        .quad            .Lgvan8
                        .quad            .Lgvan9
                        .quad            .Lgvan10
                        .quad            .Lgvan11
                        .quad            .Lgvan12
                        .quad            .Lgvan13
                        .quad            .Lgvan14
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_begin_α:                                                        jmp   n25_lit_integer_α
n24_statement_begin_β:                                                        jmp   n28_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_keyword_assign_snobol4_α
.Lx271_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n26_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx272_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx272_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n24_statement_begin_β
.Lx272_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n27_statement_end_α
.Lx272_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_end_α:    add              rsp, 32;                             jmp   n28_statement_begin_α
#=======================================================================================================================
#         &ANCHOR = 0
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_begin_α:                                                        jmp   n29_lit_integer_α
n28_statement_begin_β:                                                        jmp   n32_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_keyword_assign_snobol4_α
.Lx277_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n30_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx278_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx278_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n28_statement_begin_β
.Lx278_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n31_statement_end_α
.Lx278_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_end_α:    add              rsp, 32;                             jmp   n32_statement_begin_α
#=======================================================================================================================
#         &STLIMIT = -1
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_begin_α:                                                        jmp   n33_lit_integer_α
n32_statement_begin_β:                                                        jmp   n37_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_unop_α
.Lx283_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n34_unop_α:             sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # lit_integer
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n35_keyword_assign_snobol4_α
n34_unop_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n32_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n35_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx285_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx285_240
                        add              rsp, 16;                             jmp   n34_unop_β
.Lx285_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n36_statement_end_α
.Lx285_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_end_α:    add              rsp, 48;                             jmp   n37_statement_begin_α
#=======================================================================================================================
#         ZCHK = 1000
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_begin_α:                                                        jmp   n38_lit_integer_α
n37_statement_begin_β:                                                        jmp   n41_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx290_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n39_assign_α
.Lx290_0:               .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # ZCHK
                        mov              qword ptr [r9 + 40], rdx;            jmp   n40_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_end_α:    add              rsp, 16;                             jmp   n41_statement_begin_α
#=======================================================================================================================
#         ZBUD = 500
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_begin_α:                                                        jmp   n42_lit_integer_α
n41_statement_begin_β:                                                        jmp   n45_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n43_assign_α
.Lx296_0:               .quad            500
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZBUD
                        mov              qword ptr [r9 + 56], rdx;            jmp   n44_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_end_α:    add              rsp, 16;                             jmp   n45_statement_begin_α
#=======================================================================================================================
#         ZFLR = 20
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_begin_α:                                                        jmp   n46_lit_integer_α
n45_statement_begin_β:                                                        jmp   n49_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx302_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n47_assign_α
.Lx302_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ZFLR
                        mov              qword ptr [r9 + 72], rdx;            jmp   n48_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_end_α:    add              rsp, 16;                             jmp   n49_statement_begin_α
#=======================================================================================================================
#         PAT = ('aaa' | 'bbb' | 'ccc' | 'ddd') SPAN('abcd') . W
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_begin_α:                                                        jmp   n50_lit_string_α
n49_statement_begin_β:                                                        jmp   n54_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx308_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n51_call_α
.Lx308_0:               .quad            .Lx308_0_s
.Lx308_0_s:             .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n51_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd310:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd310]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx309_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n49_statement_begin_β
.Lx309_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n52_assign_α
n51_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n49_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n52_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # PAT
                        mov              qword ptr [r9 + 88], rdx;            jmp   n53_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_end_α:    add              rsp, 32;                             jmp   n54_statement_begin_α
#=======================================================================================================================
#         SUB = 'xxxxxxxxxxbbbccccddddaaaaxxxxxxxxxxbbbccccddddaaaa'
#-----------------------------------------------------------------------------------------------------------------------
n54_statement_begin_α:                                                        jmp   n55_lit_string_α
n54_statement_begin_β:                                                        jmp   n58_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 50
                        mov              rax, qword ptr [rip + .Lx316_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n56_assign_α
.Lx316_0:               .quad            .Lx316_0_s
.Lx316_0_s:             .string          "xxxxxxxxxxbbbccccddddaaaaxxxxxxxxxxbbbccccddddaaaa"
#-----------------------------------------------------------------------------------------------------------------------
n56_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # SUB
                        mov              qword ptr [r9 + 120], rdx;           jmp   n57_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_end_α:    add              rsp, 16;                             jmp   n58_statement_begin_α
#=======================================================================================================================
#         DEFINE('ZBODY(ZKN)')                            :(ZBODY_END)
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_begin_α:                                                        jmp   n59_define_α
n58_statement_begin_β:                                                        jmp   n88_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n59_define_α:           mov              rdi, qword ptr [rip + .Lx323_0]
                        mov              rsi, qword ptr [rip + .Lx323_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n61_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx323_0]
                        lea              rsi, [rip + ZBODY_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n60_statement_end_α
n59_define_β:                                                                 jmp   n58_statement_begin_β
.Lx323_0:               .quad            .Lx323_0_s
.Lx323_0_s:             .string          "ZBODY"
.Lx323_1:               .quad            .Lx323_1_s
.Lx323_1_s:             .string          "ZKN"
                                                                              jmp   .Lx324_245
#-----------------------------------------------------------------------------------------------------------------------
ZBODY_α:                sub              rsp, 64
                        mov              rax, qword ptr [r9 + 0]              # ZBODY
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx324_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # ZKN
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx324_41
.Lx324_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx324_41:              lea              rcx, [rip + ZBODY_γ]
                        lea              rax, [rip + ZBODY_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n61_statement_begin_α];  jmp   rax
ZBODY_γ:                mov              rdi, qword ptr [r9 + 0]              # ZBODY
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Lx324_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # ZKN
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx324_110
.Lx324_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx324_110:             mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
ZBODY_ω:                mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax              # ZBODY
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Lx324_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # ZKN
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx324_180
.Lx324_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx324_180:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx324_245:
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_end_α:                                                          jmp   n88_statement_begin_α
#=======================================================================================================================
# ZBODY   ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_begin_α:                                                        jmp   n62_lit_integer_α
n61_statement_begin_β:                                                        jmp   n65_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n63_assign_α
.Lx329_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n63_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ZI
                        mov              qword ptr [r9 + 136], rdx;           jmp   n64_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:    add              rsp, 16;                             jmp   n65_statement_begin_α
#=======================================================================================================================
# ZBL     SUB ? PAT
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_begin_α:                                                        jmp   n66_var_α
n65_statement_begin_β:                                                        jmp   n73_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # SUB
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n67_var_α
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # PAT
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n68_assign_α
n67_var_β:                                                                    jmp   n72_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n68_assign_α:           mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx337_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n69_match_begin_α
n68_assign_β:                                                                 jmp   n67_var_β
.Lx337_0:               .quad            .Lx337_0_s
.Lx337_0_s:             .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n69_match_begin_α:      mov              rdi, qword ptr [rsp + 16]            # var
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
.Lx339_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx339_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n70_match_defer_α
n69_match_begin_β:
.Lx339_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx339_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx339_1
                                                                              jmp   .Lx339_0
.Lx339_1:
n69_match_begin_af:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
                        pop              rbp;                                 jmp   n68_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n70_match_defer_α:      lea              rdi, [rip + .S1]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx340_14
                        mov              rax, qword ptr [rdx + 0]
.Lx340_14:              test             rax, rax;                            jz    .Lx340_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx340_5]
                        push             rcx
                        lea              rcx, [rip + .Lx340_4]
                        push             rcx;                                 jmp   rax
.Lx340_4:                                                                     jmp   n71_match_end_α
.Lx340_5:                                                                     jmp   n69_match_begin_β
.Lx340_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        mov              esi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n69_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx340_6]
                        push             rcx
                        push             rax;                                 jmp   n71_match_end_α
.Lx340_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n69_match_begin_β
n70_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx340_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx340_12
                                                                              jmp   rax
.Lx340_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n71_match_end_α:        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
                        test             rax, rax;                            je    .Lx342_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n69_match_begin_af
.Lx342_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n72_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n72_statement_end_α:    add              rsp, 32;                             jmp   n73_statement_begin_α
#=======================================================================================================================
#         ZI = LT(ZI, ZKN) ZI + 1                         :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_begin_α:                                                        jmp   n74_var_α
n73_statement_begin_β:                                                        jmp   n84_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n74_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # ZI
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n75_var_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # ZKN
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n76_coerce_numeric_α
n75_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n73_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n76_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx350_1
                        cmp              al, 3;                               jne   .Lx350_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx350_0
.Lx350_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n77_coerce_numeric_α
.Lx350_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n77_coerce_numeric_α
n76_coerce_numeric_β:   add              rsp, 16;                             jmp   n75_var_β
#-----------------------------------------------------------------------------------------------------------------------
n77_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx352_1
                        cmp              al, 3;                               jne   .Lx352_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx352_0
.Lx352_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n78_cmp_test_α
.Lx352_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n78_cmp_test_α
n77_coerce_numeric_β:   add              rsp, 16;                             jmp   n76_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n78_cmp_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx354_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx354_239
                        add              rsp, 16;                             jmp   n77_coerce_numeric_β
.Lx354_239:                                                                   jmp   n79_var_α
.Lx354_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx354_240
                        add              rsp, 16;                             jmp   n77_coerce_numeric_β
.Lx354_240:                                                                   jmp   n79_var_α
n78_cmp_test_β:         add              rsp, 16;                             jmp   n77_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # ZI
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n80_lit_integer_α
n79_var_β:              add              rsp, 16;                             jmp   n78_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx356_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n81_binop_α
n80_lit_integer_β:      add              rsp, 16;                             jmp   n79_var_β
.Lx356_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n81_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx357_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx357_7
.Lx357_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx357_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx357_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx357_4
.Lx357_3:               movq             xmm0, rsi
.Lx357_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx357_7:                                                                     jmp   n82_assign_α
.Lx357_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx357_240
                        add              rsp, 16;                             jmp   n80_lit_integer_β
.Lx357_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n82_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n82_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ZI
                        mov              qword ptr [r9 + 136], rdx;           jmp   n83_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n83_statement_end_α:    add              rsp, 128;                            jmp   n65_statement_begin_α
#=======================================================================================================================
#         ZBODY = W                                       :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_begin_α:                                                        jmp   n85_var_α
n84_statement_begin_β:                                                        jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n85_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # W
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n86_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n86_assign_α:           mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # ZBODY
                        mov              qword ptr [r9 + 8], rdx;             jmp   n87_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_end_α:    add              rsp, 16;                             jmp   RETURN
#=======================================================================================================================
# ZBODY_END  <stmt 14, line 17: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_begin_α:                                                        jmp   n89_statement_end_α
n88_statement_begin_β:                                                        jmp   n90_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_end_α:                                                          jmp   n90_statement_begin_α
#=======================================================================================================================
#         <stmt 15, line 65: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n90_statement_begin_α:                                                        jmp   n91_lit_string_α
n90_statement_begin_β:                                                        jmp   n97_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx373_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n92_var_α
.Lx373_0:               .quad            .Lx373_0_s
.Lx373_0_s:             .string          "check: "
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # ZCHK
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n93_call_α
n92_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n90_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n93_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lsig376z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig376z:              .quad            1
                        .quad            .Lx376_2
                        .quad            .Lx376_2
                        .quad            16
.Lx376_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx376_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx376_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx376_240
                        add              rsp, 16;                             jmp   n92_var_β
.Lx376_240:                                                                   jmp   n94_binop_α
n93_call_β:                                                                   jmp   n92_var_β
.Lx376_0:               .quad            .Lx376_0_s
.Lx376_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n94_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n95_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n95_assign_α:           mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx378_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n96_statement_end_α
.Lx378_0:               .quad            .Lx378_0_s
.Lx378_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n96_statement_end_α:    add              rsp, 64;                             jmp   n97_statement_begin_α
#=======================================================================================================================
#         <stmt 16, line 66: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n97_statement_begin_α:                                                        jmp   n98_var_α
n97_statement_begin_β:                                                        jmp   n101_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:              sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx383_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx383_240
                        add              rsp, 16;                             jmp   n97_statement_begin_β
.Lx383_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n99_assign_α
.Lx383_0:               .quad            .Lx383_0_s
.Lx383_0_s:             .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n99_assign_α:           mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # fixed_n
                        mov              qword ptr [r9 + 152], rdx;           jmp   n100_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n100_statement_end_α:   add              rsp, 16;                             jmp   n204_statement_begin_α
#=======================================================================================================================
#         <stmt 17, line 67: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n101_statement_begin_α:                                                       jmp   n102_var_α
n101_statement_begin_β:                                                       jmp   n107_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n102_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # ZFLR
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n103_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx390_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n104_binop_α
n103_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n101_statement_begin_β
.Lx390_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n104_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx391_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx391_7
.Lx391_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx391_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              al, 5;                               je    .Lx391_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx391_4
.Lx391_3:               movq             xmm0, rsi
.Lx391_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx391_7:                                                                     jmp   n105_assign_α
.Lx391_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx391_240
                        add              rsp, 16;                             jmp   n103_lit_integer_β
.Lx391_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n105_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n105_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ZFLR
                        mov              qword ptr [r9 + 72], rdx;            jmp   n106_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n106_statement_end_α:   add              rsp, 48;                             jmp   n107_statement_begin_α
#=======================================================================================================================
#         <stmt 18, line 68: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n107_statement_begin_α:                                                       jmp   n108_var_α
n107_statement_begin_β:                                                       jmp   n113_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n108_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # ZBUD
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n109_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx398_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n110_binop_α
n109_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n107_statement_begin_β
.Lx398_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n110_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx399_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx399_7
.Lx399_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx399_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              al, 5;                               je    .Lx399_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx399_4
.Lx399_3:               movq             xmm0, rsi
.Lx399_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx399_7:                                                                     jmp   n111_assign_α
.Lx399_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx399_240
                        add              rsp, 16;                             jmp   n109_lit_integer_β
.Lx399_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n111_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n111_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZBUD
                        mov              qword ptr [r9 + 56], rdx;            jmp   n112_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n112_statement_end_α:   add              rsp, 48;                             jmp   n113_statement_begin_α
#=======================================================================================================================
#         <stmt 19, line 69: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_begin_α:                                                       jmp   n114_var_α
n113_statement_begin_β:                                                       jmp   n118_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n114_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZK
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n115_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx406_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n116_differ_α
n115_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n113_statement_begin_β
.Lx406_0:               .quad            .Lx406_0_s
.Lx406_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n116_differ_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx408_240
                        add              rsp, 16;                             jmp   n115_lit_string_β
.Lx408_240:                                                                   jmp   n117_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_end_α:   add              rsp, 48;                             jmp   n147_statement_begin_α
#=======================================================================================================================
#         <stmt 20, line 70: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n118_statement_begin_α:                                                       jmp   n119_lit_integer_α
n118_statement_begin_β:                                                       jmp   n122_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx413_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n120_assign_α
.Lx413_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n120_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZK
                        mov              qword ptr [r9 + 168], rdx;           jmp   n121_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n121_statement_end_α:   add              rsp, 16;                             jmp   n122_statement_begin_α
#=======================================================================================================================
# ZCAL  <stmt 21, line 71: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n122_statement_begin_α:                                                       jmp   n123_call_α
n122_statement_begin_β:                                                       jmp   n126_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n123_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd420:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd420]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx419_240
                        add              rsp, 16;                             jmp   n122_statement_begin_β
.Lx419_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n124_assign_α
n123_call_β:            add              rsp, 16;                             jmp   n122_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n124_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZT
                        mov              qword ptr [r9 + 184], rdx;           jmp   n125_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n125_statement_end_α:   add              rsp, 16;                             jmp   n126_statement_begin_α
#=======================================================================================================================
#         <stmt 22, line 72: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n126_statement_begin_α:                                                       jmp   n127_var_α
n126_statement_begin_β:                                                       jmp   n130_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n127_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZK
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n128_call_α
#-----------------------------------------------------------------------------------------------------------------------
n128_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig428z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig428z:              .quad            1
                        .quad            .Lx428_2
                        .quad            .Lx428_2
                        .quad            16
.Lx428_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx428_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx428_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx428_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n126_statement_begin_β
.Lx428_240:                                                                   jmp   n129_statement_end_α
n128_call_β:                                                                  jmp   n126_statement_begin_β
.Lx428_0:               .quad            .Lx428_0_s
.Lx428_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n129_statement_end_α:   add              rsp, 32;                             jmp   n130_statement_begin_α
#=======================================================================================================================
#         <stmt 23, line 73: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n130_statement_begin_α:                                                       jmp   n131_call_α
n130_statement_begin_β:                                                       jmp   n136_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n131_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd434:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd434]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx433_240
                        add              rsp, 16;                             jmp   n130_statement_begin_β
.Lx433_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n132_var_α
n131_call_β:            add              rsp, 16;                             jmp   n130_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZT
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n133_binop_α
n132_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n130_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n133_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx436_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx436_7
.Lx436_2:               and              edx, 1;                              jz    .Lx436_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx436_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx436_4
.Lx436_3:               movq             xmm0, rsi
.Lx436_4:               cmp              cl, 5;                               je    .Lx436_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx436_6
.Lx436_5:               movq             xmm1, rdi
.Lx436_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx436_7:                                                                     jmp   n134_assign_α
.Lx436_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx436_240
                        add              rsp, 16;                             jmp   n132_var_β
.Lx436_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n134_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n134_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZE
                        mov              qword ptr [r9 + 200], rdx;           jmp   n135_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n135_statement_end_α:   add              rsp, 48;                             jmp   n136_statement_begin_α
#=======================================================================================================================
#         <stmt 24, line 74: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n136_statement_begin_α:                                                       jmp   n137_var_α
n136_statement_begin_β:                                                       jmp   n147_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n137_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # ZE
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n138_var_α
#-----------------------------------------------------------------------------------------------------------------------
n138_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # ZFLR
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n139_coerce_numeric_α
n138_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n136_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n139_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx445_1
                        cmp              al, 3;                               jne   .Lx445_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx445_0
.Lx445_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n140_coerce_numeric_α
.Lx445_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n140_coerce_numeric_α
n139_coerce_numeric_β:  add              rsp, 16;                             jmp   n138_var_β
#-----------------------------------------------------------------------------------------------------------------------
n140_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx447_1
                        cmp              al, 3;                               jne   .Lx447_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx447_0
.Lx447_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n141_cmp_test_α
.Lx447_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n141_cmp_test_α
n140_coerce_numeric_β:  add              rsp, 16;                             jmp   n139_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n141_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx449_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx449_239
                        add              rsp, 16;                             jmp   n140_coerce_numeric_β
.Lx449_239:                                                                   jmp   n142_var_α
.Lx449_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx449_240
                        add              rsp, 16;                             jmp   n140_coerce_numeric_β
.Lx449_240:                                                                   jmp   n142_var_α
n141_cmp_test_β:        add              rsp, 16;                             jmp   n140_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n142_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZK
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n143_lit_integer_α
n142_var_β:             add              rsp, 16;                             jmp   n141_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx451_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n144_binop_α
n143_lit_integer_β:     add              rsp, 16;                             jmp   n142_var_β
.Lx451_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n144_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx452_2
                        mov              rdx, 2
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx452_7
.Lx452_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx452_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lx452_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx452_4
.Lx452_3:               movq             xmm0, rsi
.Lx452_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx452_7:                                                                     jmp   n145_assign_α
.Lx452_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx452_240
                        add              rsp, 16;                             jmp   n143_lit_integer_β
.Lx452_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n145_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n145_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZK
                        mov              qword ptr [r9 + 168], rdx;           jmp   n146_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n146_statement_end_α:   add              rsp, 128;                            jmp   n122_statement_begin_α
#=======================================================================================================================
# ZMEAS  <stmt 25, line 75: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n147_statement_begin_α:                                                       jmp   n148_call_α
n147_statement_begin_β:                                                       jmp   n151_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n148_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd459:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd459]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx458_240
                        add              rsp, 16;                             jmp   n147_statement_begin_β
.Lx458_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n149_assign_α
n148_call_β:            add              rsp, 16;                             jmp   n147_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n149_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZT
                        mov              qword ptr [r9 + 184], rdx;           jmp   n150_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n150_statement_end_α:   add              rsp, 16;                             jmp   n151_statement_begin_α
#=======================================================================================================================
#         <stmt 26, line 76: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n151_statement_begin_α:                                                       jmp   n152_var_α
n151_statement_begin_β:                                                       jmp   n157_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n152_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZT
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n153_var_α
#-----------------------------------------------------------------------------------------------------------------------
n153_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # ZBUD
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n154_binop_α
n153_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n151_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n154_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx467_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx467_7
.Lx467_2:               and              edx, 1;                              jz    .Lx467_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx467_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx467_4
.Lx467_3:               movq             xmm0, rsi
.Lx467_4:               cmp              cl, 5;                               je    .Lx467_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx467_6
.Lx467_5:               movq             xmm1, rdi
.Lx467_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx467_7:                                                                     jmp   n155_assign_α
.Lx467_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx467_240
                        add              rsp, 16;                             jmp   n153_var_β
.Lx467_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n155_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n155_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZD
                        mov              qword ptr [r9 + 216], rdx;           jmp   n156_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n156_statement_end_α:   add              rsp, 48;                             jmp   n157_statement_begin_α
#=======================================================================================================================
#         <stmt 27, line 77: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_begin_α:                                                       jmp   n158_lit_integer_α
n157_statement_begin_β:                                                       jmp   n161_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx473_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n159_assign_α
.Lx473_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n159_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # ZN
                        mov              qword ptr [r9 + 232], rdx;           jmp   n160_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n160_statement_end_α:   add              rsp, 16;                             jmp   n161_statement_begin_α
#=======================================================================================================================
# ZB  <stmt 28, line 78: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n161_statement_begin_α:                                                       jmp   n162_var_α
n161_statement_begin_β:                                                       jmp   n165_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n162_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZK
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n163_call_α
#-----------------------------------------------------------------------------------------------------------------------
n163_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig481z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig481z:              .quad            1
                        .quad            .Lx481_2
                        .quad            .Lx481_2
                        .quad            16
.Lx481_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx481_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx481_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx481_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n161_statement_begin_β
.Lx481_240:                                                                   jmp   n164_statement_end_α
n163_call_β:                                                                  jmp   n161_statement_begin_β
.Lx481_0:               .quad            .Lx481_0_s
.Lx481_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n164_statement_end_α:   add              rsp, 32;                             jmp   n165_statement_begin_α
#=======================================================================================================================
#         <stmt 29, line 79: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n165_statement_begin_α:                                                       jmp   n166_var_α
n165_statement_begin_β:                                                       jmp   n171_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n166_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 224]            # ZN
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n167_var_α
#-----------------------------------------------------------------------------------------------------------------------
n167_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZK
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n168_binop_α
n167_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n165_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n168_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx488_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx488_7
.Lx488_2:               and              edx, 1;                              jz    .Lx488_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx488_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx488_4
.Lx488_3:               movq             xmm0, rsi
.Lx488_4:               cmp              cl, 5;                               je    .Lx488_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx488_6
.Lx488_5:               movq             xmm1, rdi
.Lx488_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx488_7:                                                                     jmp   n169_assign_α
.Lx488_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx488_240
                        add              rsp, 16;                             jmp   n167_var_β
.Lx488_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n169_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n169_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # ZN
                        mov              qword ptr [r9 + 232], rdx;           jmp   n170_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_end_α:   add              rsp, 48;                             jmp   n171_statement_begin_α
#=======================================================================================================================
#         <stmt 30, line 80: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n171_statement_begin_α:                                                       jmp   n172_call_α
n171_statement_begin_β:                                                       jmp   n178_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n172_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd495:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd495]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx494_240
                        add              rsp, 16;                             jmp   n171_statement_begin_β
.Lx494_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n173_var_α
n172_call_β:            add              rsp, 16;                             jmp   n171_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n173_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # ZD
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n174_coerce_numeric_α
n173_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n171_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n174_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              al, 5;                               je    .Lx498_1
                        cmp              al, 3;                               jne   .Lx498_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              al, 3;                               jne   .Lx498_0
.Lx498_1:               mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n175_coerce_numeric_α
.Lx498_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n175_coerce_numeric_α
n174_coerce_numeric_β:  add              rsp, 16;                             jmp   n173_var_β
#-----------------------------------------------------------------------------------------------------------------------
n175_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx500_1
                        cmp              al, 3;                               jne   .Lx500_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              al, 3;                               jne   .Lx500_0
.Lx500_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n176_cmp_test_α
.Lx500_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n176_cmp_test_α
n175_coerce_numeric_β:  add              rsp, 16;                             jmp   n174_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n176_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx502_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx502_239
                        add              rsp, 16;                             jmp   n175_coerce_numeric_β
.Lx502_239:                                                                   jmp   n177_statement_end_α
.Lx502_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx502_240
                        add              rsp, 16;                             jmp   n175_coerce_numeric_β
.Lx502_240:                                                                   jmp   n177_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n177_statement_end_α:   add              rsp, 80;                             jmp   n161_statement_begin_α
#=======================================================================================================================
#         <stmt 31, line 81: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n178_statement_begin_α:                                                       jmp   n179_call_α
n178_statement_begin_β:                                                       jmp   n184_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n179_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd508:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd508]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx507_240
                        add              rsp, 16;                             jmp   n178_statement_begin_β
.Lx507_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n180_var_α
n179_call_β:            add              rsp, 16;                             jmp   n178_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n180_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZT
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n181_binop_α
n180_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n178_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n181_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx510_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx510_7
.Lx510_2:               and              edx, 1;                              jz    .Lx510_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx510_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx510_4
.Lx510_3:               movq             xmm0, rsi
.Lx510_4:               cmp              cl, 5;                               je    .Lx510_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx510_6
.Lx510_5:               movq             xmm1, rdi
.Lx510_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx510_7:                                                                     jmp   n182_assign_α
.Lx510_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx510_240
                        add              rsp, 16;                             jmp   n180_var_β
.Lx510_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n182_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n182_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZE
                        mov              qword ptr [r9 + 200], rdx;           jmp   n183_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n183_statement_end_α:   add              rsp, 48;                             jmp   n184_statement_begin_α
#=======================================================================================================================
#         <stmt 32, line 82: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n184_statement_begin_α:                                                       jmp   n185_lit_string_α
n184_statement_begin_β:                                                       jmp   n190_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx516_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n186_var_α
.Lx516_0:               .quad            .Lx516_0_s
.Lx516_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n186_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 224]            # ZN
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n187_binop_α
n186_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n184_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n187_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n188_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n188_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx519_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n189_statement_end_α
.Lx519_0:               .quad            .Lx519_0_s
.Lx519_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n189_statement_end_α:   add              rsp, 48;                             jmp   n190_statement_begin_α
#=======================================================================================================================
#         <stmt 33, line 83: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n190_statement_begin_α:                                                       jmp   n191_lit_string_α
n190_statement_begin_β:                                                       jmp   n196_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx524_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n192_var_α
.Lx524_0:               .quad            .Lx524_0_s
.Lx524_0_s:             .string          "ns: "
#-----------------------------------------------------------------------------------------------------------------------
n192_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # ZE
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n193_binop_α
n192_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n190_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n193_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n194_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n194_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx527_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n195_statement_end_α
.Lx527_0:               .quad            .Lx527_0_s
.Lx527_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n195_statement_end_α:   add              rsp, 48;                             jmp   n196_statement_begin_α
#=======================================================================================================================
#         <stmt 34, line 84: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n196_statement_begin_α:                                                       jmp   n197_lit_string_α
n196_statement_begin_β:                                                       jmp   n264_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx532_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n198_var_α
.Lx532_0:               .quad            .Lx532_0_s
.Lx532_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n198_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # ZE
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n199_lit_integer_α
n198_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n196_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx534_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n200_binop_α
n199_lit_integer_β:     add              rsp, 16;                             jmp   n198_var_β
.Lx534_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n200_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx535_240
                        add              rsp, 16;                             jmp   n199_lit_integer_β
.Lx535_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n201_binop_α
n200_binop_β:           add              rsp, 16;                             jmp   n199_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n201_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n202_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n202_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx537_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n203_statement_end_α
.Lx537_0:               .quad            .Lx537_0_s
.Lx537_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n203_statement_end_α:   add              rsp, 80;                             jmp   n264_statement_begin_α
#=======================================================================================================================
# ZFIXRUN  <stmt 35, line 85: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n204_statement_begin_α:                                                       jmp   n205_var_α
n204_statement_begin_β:                                                       jmp   n209_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n205_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZK
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n206_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n206_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx543_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n207_differ_α
n206_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n204_statement_begin_β
.Lx543_0:               .quad            .Lx543_0_s
.Lx543_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n207_differ_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx545_240
                        add              rsp, 16;                             jmp   n206_lit_string_β
.Lx545_240:                                                                   jmp   n208_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n208_statement_end_α:   add              rsp, 48;                             jmp   n213_statement_begin_α
#=======================================================================================================================
#         <stmt 36, line 86: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n209_statement_begin_α:                                                       jmp   n210_var_α
n209_statement_begin_β:                                                       jmp   n213_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n210_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # fixed_n
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n211_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n211_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZK
                        mov              qword ptr [r9 + 168], rdx;           jmp   n212_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n212_statement_end_α:   add              rsp, 16;                             jmp   n213_statement_begin_α
#=======================================================================================================================
# ZFB  <stmt 37, line 87: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n213_statement_begin_α:                                                       jmp   n214_call_α
n213_statement_begin_β:                                                       jmp   n217_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n214_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd557:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd557]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx556_240
                        add              rsp, 16;                             jmp   n213_statement_begin_β
.Lx556_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n215_assign_α
n214_call_β:            add              rsp, 16;                             jmp   n213_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n215_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZT
                        mov              qword ptr [r9 + 184], rdx;           jmp   n216_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n216_statement_end_α:   add              rsp, 16;                             jmp   n217_statement_begin_α
#=======================================================================================================================
#         <stmt 38, line 88: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n217_statement_begin_α:                                                       jmp   n218_lit_integer_α
n217_statement_begin_β:                                                       jmp   n221_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n218_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx563_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n219_assign_α
.Lx563_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n219_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # ZN
                        mov              qword ptr [r9 + 232], rdx;           jmp   n220_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n220_statement_end_α:   add              rsp, 16;                             jmp   n221_statement_begin_α
#=======================================================================================================================
# ZFL  <stmt 39, line 89: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n221_statement_begin_α:                                                       jmp   n222_var_α
n221_statement_begin_β:                                                       jmp   n225_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n222_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZK
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n223_call_α
#-----------------------------------------------------------------------------------------------------------------------
n223_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig571z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig571z:              .quad            1
                        .quad            .Lx571_2
                        .quad            .Lx571_2
                        .quad            16
.Lx571_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx571_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx571_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx571_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n221_statement_begin_β
.Lx571_240:                                                                   jmp   n224_statement_end_α
n223_call_β:                                                                  jmp   n221_statement_begin_β
.Lx571_0:               .quad            .Lx571_0_s
.Lx571_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n224_statement_end_α:   add              rsp, 32;                             jmp   n225_statement_begin_α
#=======================================================================================================================
#         <stmt 40, line 90: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n225_statement_begin_α:                                                       jmp   n226_var_α
n225_statement_begin_β:                                                       jmp   n231_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n226_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 224]            # ZN
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n227_var_α
#-----------------------------------------------------------------------------------------------------------------------
n227_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZK
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n228_binop_α
n227_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n225_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n228_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx578_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx578_7
.Lx578_2:               and              edx, 1;                              jz    .Lx578_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx578_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx578_4
.Lx578_3:               movq             xmm0, rsi
.Lx578_4:               cmp              cl, 5;                               je    .Lx578_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx578_6
.Lx578_5:               movq             xmm1, rdi
.Lx578_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx578_7:                                                                     jmp   n229_assign_α
.Lx578_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx578_240
                        add              rsp, 16;                             jmp   n227_var_β
.Lx578_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n229_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n229_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # ZN
                        mov              qword ptr [r9 + 232], rdx;           jmp   n230_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n230_statement_end_α:   add              rsp, 48;                             jmp   n231_statement_begin_α
#=======================================================================================================================
#         <stmt 41, line 91: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n231_statement_begin_α:                                                       jmp   n232_var_α
n231_statement_begin_β:                                                       jmp   n238_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n232_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 224]            # ZN
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n233_var_α
#-----------------------------------------------------------------------------------------------------------------------
n233_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # fixed_n
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n234_coerce_numeric_α
n233_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n231_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n234_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx587_1
                        cmp              al, 3;                               jne   .Lx587_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx587_0
.Lx587_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n235_coerce_numeric_α
.Lx587_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n235_coerce_numeric_α
n234_coerce_numeric_β:  add              rsp, 16;                             jmp   n233_var_β
#-----------------------------------------------------------------------------------------------------------------------
n235_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx589_1
                        cmp              al, 3;                               jne   .Lx589_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx589_0
.Lx589_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n236_cmp_test_α
.Lx589_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n236_cmp_test_α
n235_coerce_numeric_β:  add              rsp, 16;                             jmp   n234_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n236_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx591_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx591_239
                        add              rsp, 16;                             jmp   n235_coerce_numeric_β
.Lx591_239:                                                                   jmp   n237_statement_end_α
.Lx591_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx591_240
                        add              rsp, 16;                             jmp   n235_coerce_numeric_β
.Lx591_240:                                                                   jmp   n237_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n237_statement_end_α:   add              rsp, 80;                             jmp   n221_statement_begin_α
#=======================================================================================================================
#         <stmt 42, line 92: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n238_statement_begin_α:                                                       jmp   n239_call_α
n238_statement_begin_β:                                                       jmp   n244_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n239_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd597:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd597]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx596_240
                        add              rsp, 16;                             jmp   n238_statement_begin_β
.Lx596_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n240_var_α
n239_call_β:            add              rsp, 16;                             jmp   n238_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n240_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZT
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n241_binop_α
n240_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n238_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n241_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx599_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx599_7
.Lx599_2:               and              edx, 1;                              jz    .Lx599_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx599_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx599_4
.Lx599_3:               movq             xmm0, rsi
.Lx599_4:               cmp              cl, 5;                               je    .Lx599_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx599_6
.Lx599_5:               movq             xmm1, rdi
.Lx599_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx599_7:                                                                     jmp   n242_assign_α
.Lx599_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx599_240
                        add              rsp, 16;                             jmp   n240_var_β
.Lx599_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n242_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n242_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZE
                        mov              qword ptr [r9 + 200], rdx;           jmp   n243_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n243_statement_end_α:   add              rsp, 48;                             jmp   n244_statement_begin_α
#=======================================================================================================================
#         <stmt 43, line 93: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n244_statement_begin_α:                                                       jmp   n245_lit_string_α
n244_statement_begin_β:                                                       jmp   n250_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx605_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n246_var_α
.Lx605_0:               .quad            .Lx605_0_s
.Lx605_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n246_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 224]            # ZN
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n247_binop_α
n246_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n244_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n247_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n248_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n248_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx608_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n249_statement_end_α
.Lx608_0:               .quad            .Lx608_0_s
.Lx608_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n249_statement_end_α:   add              rsp, 48;                             jmp   n250_statement_begin_α
#=======================================================================================================================
#         <stmt 44, line 94: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n250_statement_begin_α:                                                       jmp   n251_lit_string_α
n250_statement_begin_β:                                                       jmp   n256_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx613_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n252_var_α
.Lx613_0:               .quad            .Lx613_0_s
.Lx613_0_s:             .string          "ns: "
#-----------------------------------------------------------------------------------------------------------------------
n252_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # ZE
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n253_binop_α
n252_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n250_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n253_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n254_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n254_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx616_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n255_statement_end_α
.Lx616_0:               .quad            .Lx616_0_s
.Lx616_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n255_statement_end_α:   add              rsp, 48;                             jmp   n256_statement_begin_α
#=======================================================================================================================
#         <stmt 45, line 95: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n256_statement_begin_α:                                                       jmp   n257_lit_string_α
n256_statement_begin_β:                                                       jmp   n264_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n257_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx621_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n258_var_α
.Lx621_0:               .quad            .Lx621_0_s
.Lx621_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n258_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # ZE
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n259_lit_integer_α
n258_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n256_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n259_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx623_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n260_binop_α
n259_lit_integer_β:     add              rsp, 16;                             jmp   n258_var_β
.Lx623_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n260_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx624_240
                        add              rsp, 16;                             jmp   n259_lit_integer_β
.Lx624_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n261_binop_α
n260_binop_β:           add              rsp, 16;                             jmp   n259_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n261_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n262_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n262_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx626_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n263_statement_end_α
.Lx626_0:               .quad            .Lx626_0_s
.Lx626_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n263_statement_end_α:   add              rsp, 80;                             jmp   n264_statement_begin_α
#=======================================================================================================================
# ZEXIT  <stmt 46, line 96: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n264_statement_begin_α:                                                       jmp   n265_var_α
n264_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n265_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # ZE
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n266_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n266_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZE
                        mov              qword ptr [r9 + 200], rdx;           jmp   n267_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n267_statement_end_α:   add              rsp, 16;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 pop              rcx
                        add              rsp, 8;                              jmp   rcx
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
.Lseala1:               .string          "ZBODY"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            ZBODY_α
                        lea              rdi, [rip + .Lseala1]
                        mov              rsi, qword ptr [rip + ZBODY_α@GOTPCREL]
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
                        .long            128
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
.S0:                    .string          "W"
.S1:                    .string          "PATV$0"
                        .text
                        .section         .rodata
.C0:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0
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
