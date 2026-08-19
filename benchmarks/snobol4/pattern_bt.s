                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_match_alternate_α:   sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx9_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n7_match_lit_α
.Lx9_21:                lea              rax, [rip + .Lx9_22]
                        mov              qword ptr [rsp + 16], rax;           jmp   n6_match_lit_α
.Lx9_22:                lea              rax, [rip + .Lx9_23]
                        mov              qword ptr [rsp + 16], rax;           jmp   n5_match_lit_α
.Lx9_23:                lea              rax, [rip + .Lx9_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n4_match_lit_α
n0_match_alternate_s0:  lea              rax, [rip + .Lx9_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n0_match_alternate_as
n0_match_alternate_s1:  lea              rax, [rip + .Lx9_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n0_match_alternate_as
n0_match_alternate_s2:  lea              rax, [rip + .Lx9_42]
                        mov              qword ptr [rsp + 8], rax;            jmp   n0_match_alternate_as
n0_match_alternate_s3:  lea              rax, [rip + .Lx9_43]
                        mov              qword ptr [rsp + 8], rax;            jmp   n0_match_alternate_as
.Lx9_40:                                                                      jmp   n7_match_lit_β
.Lx9_41:                                                                      jmp   n6_match_lit_β
.Lx9_42:                                                                      jmp   n5_match_lit_β
.Lx9_43:                                                                      jmp   n4_match_lit_β
n0_match_alternate_as:                                                        jmp   n1_match_assign_save_α
n0_match_alternate_β:   mov              rax, qword ptr [rsp + 8];            jmp   rax
n0_match_alternate_af:  mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx9_19:                add              rsp, 32;                             jmp   PAT$0_ω
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
.Lx13_240:              mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx;                           jmp   n3_match_assign_cond_α
n2_match_span_β:        mov              r14d, dword ptr [rsp + 4]
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
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_γ:
                        sub              rsp, 8
                        push             r11
                        push             r10
                        lea              rax, [rip + PAT$0_res]
                        push             rax;                                 jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_ω:
                                                                              jmp   r11
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 14
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 14
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
.Lgvan9:                .string          "ZK"
.Lgvan10:               .string          "ZT"
.Lgvan11:               .string          "ZE"
.Lgvan12:               .string          "ZD"
.Lgvan13:               .string          "ZN"
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
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_begin_α:                                                        jmp   n25_lit_string_α
n24_statement_begin_β:                                                        jmp   n29_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_lit_integer_α
.Lx187_0:               .quad            .Lx187_0_s
.Lx187_0_s:             .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n27_call_α
n26_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n24_statement_begin_β
.Lx188_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n27_call_α:             sub              rsp, 16
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
.Lrkfnzd190:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd190]
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
                        cmp              eax, 104;                            jne   .Lx189_240
                        add              rsp, 16;                             jmp   n26_lit_integer_β
.Lx189_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n28_statement_end_α
n27_call_β:             add              rsp, 16;                             jmp   n26_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_end_α:    add              rsp, 48;                             jmp   n29_statement_begin_α
#=======================================================================================================================
#         &ANCHOR = 0
#-----------------------------------------------------------------------------------------------------------------------
n29_statement_begin_α:                                                        jmp   n30_lit_string_α
n29_statement_begin_β:                                                        jmp   n34_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx195_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n31_lit_integer_α
.Lx195_0:               .quad            .Lx195_0_s
.Lx195_0_s:             .string          "ANCHOR"
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n32_call_α
n31_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n29_statement_begin_β
.Lx196_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n32_call_α:             sub              rsp, 16
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
.Lrkfnzd198:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd198]
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
                        cmp              eax, 104;                            jne   .Lx197_240
                        add              rsp, 16;                             jmp   n31_lit_integer_β
.Lx197_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n33_statement_end_α
n32_call_β:             add              rsp, 16;                             jmp   n31_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_end_α:    add              rsp, 48;                             jmp   n34_statement_begin_α
#=======================================================================================================================
#         &STLIMIT = -1
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_begin_α:                                                        jmp   n35_lit_string_α
n34_statement_begin_β:                                                        jmp   n40_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n36_lit_integer_α
.Lx203_0:               .quad            .Lx203_0_s
.Lx203_0_s:             .string          "STLIMIT"
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n37_unop_α
n36_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n34_statement_begin_β
.Lx204_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n37_unop_α:             sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # lit_integer
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n38_call_α
n37_unop_β:             add              rsp, 16;                             jmp   n36_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n38_call_α:             sub              rsp, 16
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lrkfnzd207:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd207]
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
                        cmp              eax, 104;                            jne   .Lx206_240
                        add              rsp, 16;                             jmp   n37_unop_β
.Lx206_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n39_statement_end_α
n38_call_β:             add              rsp, 16;                             jmp   n37_unop_β
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_end_α:    add              rsp, 64;                             jmp   n40_statement_begin_α
#=======================================================================================================================
#         ZCHK = 1000
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_begin_α:                                                        jmp   n41_lit_integer_α
n40_statement_begin_β:                                                        jmp   n44_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx212_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n42_assign_α
.Lx212_0:               .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # ZCHK
                        mov              qword ptr [r9 + 40], rdx;            jmp   n43_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_end_α:    add              rsp, 16;                             jmp   n44_statement_begin_α
#=======================================================================================================================
#         ZBUD = 500
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_begin_α:                                                        jmp   n45_lit_integer_α
n44_statement_begin_β:                                                        jmp   n48_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n46_assign_α
.Lx218_0:               .quad            500
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZBUD
                        mov              qword ptr [r9 + 56], rdx;            jmp   n47_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_end_α:    add              rsp, 16;                             jmp   n48_statement_begin_α
#=======================================================================================================================
#         ZFLR = 20
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_begin_α:                                                        jmp   n49_lit_integer_α
n48_statement_begin_β:                                                        jmp   n52_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n50_assign_α
.Lx224_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ZFLR
                        mov              qword ptr [r9 + 72], rdx;            jmp   n51_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n51_statement_end_α:    add              rsp, 16;                             jmp   n52_statement_begin_α
#=======================================================================================================================
#         PAT = ('aaa' | 'bbb' | 'ccc' | 'ddd') SPAN('abcd') . W
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_begin_α:                                                        jmp   n53_lit_string_α
n52_statement_begin_β:                                                        jmp   n57_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n54_call_α
.Lx230_0:               .quad            .Lx230_0_s
.Lx230_0_s:             .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n54_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd232:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd232]
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
                        cmp              eax, 104;                            jne   .Lx231_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n52_statement_begin_β
.Lx231_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n55_assign_α
n54_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n52_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # PAT
                        mov              qword ptr [r9 + 88], rdx;            jmp   n56_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_end_α:    add              rsp, 32;                             jmp   n57_statement_begin_α
#=======================================================================================================================
#         SUB = 'xxxxxxxxxxbbbccccddddaaaaxxxxxxxxxxbbbccccddddaaaa'
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_begin_α:                                                        jmp   n58_lit_string_α
n57_statement_begin_β:                                                        jmp   n61_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 50
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n59_assign_α
.Lx238_0:               .quad            .Lx238_0_s
.Lx238_0_s:             .string          "xxxxxxxxxxbbbccccddddaaaaxxxxxxxxxxbbbccccddddaaaa"
#-----------------------------------------------------------------------------------------------------------------------
n59_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # SUB
                        mov              qword ptr [r9 + 120], rdx;           jmp   n60_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_end_α:    add              rsp, 16;                             jmp   n61_statement_begin_α
#=======================================================================================================================
#         DEFINE('ZBODY(ZKN)')                            :(ZBODY_END)
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_begin_α:                                                        jmp   n62_define_α
n61_statement_begin_β:                                                        jmp   n92_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n62_define_α:           mov              rdi, qword ptr [rip + .Lx245_0]
                        mov              rsi, qword ptr [rip + .Lx245_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n64_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n63_statement_end_α
n62_define_β:                                                                 jmp   n61_statement_begin_β
.Lx245_0:               .quad            .Lx245_0_s
.Lx245_0_s:             .string          "ZBODY"
.Lx245_1:               .quad            .Lx245_1_s
.Lx245_1_s:             .string          "ZKN"
                                                                              jmp   .Lx246_245
#-----------------------------------------------------------------------------------------------------------------------
ZBODY_α:                sub              rsp, 64
                        mov              rax, qword ptr [r9 + 0]              # ZBODY
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx246_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # ZKN
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx246_41
.Lx246_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx246_41:              lea              r10, [rip + ZBODY_γ]
                        lea              r11, [rip + ZBODY_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n64_statement_begin_α];  jmp   rax
ZBODY_γ:                mov              rdi, qword ptr [r9 + 0]              # ZBODY
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Lx246_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # ZKN
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx246_110
.Lx246_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx246_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx246_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # ZKN
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx246_180
.Lx246_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx246_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx246_245:
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_end_α:                                                          jmp   n92_statement_begin_α
#=======================================================================================================================
# ZBODY   ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_begin_α:                                                        jmp   n65_lit_integer_α
n64_statement_begin_β:                                                        jmp   n68_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n66_assign_α
.Lx251_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n66_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ZI
                        mov              qword ptr [r9 + 136], rdx;           jmp   n67_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n67_statement_end_α:    add              rsp, 16;                             jmp   n68_statement_begin_α
#=======================================================================================================================
# ZBL     SUB ? PAT
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_begin_α:                                                        jmp   n69_var_α
n68_statement_begin_β:                                                        jmp   n76_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # SUB
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n70_var_α
#-----------------------------------------------------------------------------------------------------------------------
n70_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # PAT
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n71_assign_α
n70_var_β:                                                                    jmp   n75_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n71_assign_α:           mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n72_match_begin_α
n71_assign_β:                                                                 jmp   n70_var_β
.Lx259_0:               .quad            .Lx259_0_s
.Lx259_0_s:             .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n72_match_begin_α:      mov              rdi, qword ptr [rsp + 16]            # var
                        mov              rsi, qword ptr [rsp + 24]
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
.Lx261_0:               mov              r14d, dword ptr [rbp + -40]
                        lea              rax, [rip + .Lx261_13]               # match_beta_cont
                        mov              qword ptr [rbp + -48], rax;          jmp   n73_match_defer_α
n72_match_begin_β:
.Lx261_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx261_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx261_1
                                                                              jmp   .Lx261_0
.Lx261_1:
n72_match_begin_af:     mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n71_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n73_match_defer_α:      lea              rdi, [rip + .S1]
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
                        test             rax, rax;                            je    .Lx262_14
                        mov              rax, qword ptr [rdx + 0]
.Lx262_14:              test             rax, rax;                            jz    .Lx262_0
                        mov              r8d, 1
                        lea              r10, [rip + .Lx262_4]
                        lea              r11, [rip + .Lx262_5];               jmp   rax
.Lx262_4:                                                                     jmp   n74_match_end_α
.Lx262_5:                                                                     jmp   n72_match_begin_β
.Lx262_0:               push             r14
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
                        test             eax, eax;                            js    n72_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx262_6]
                        push             rcx
                        push             rax;                                 jmp   n74_match_end_α
.Lx262_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n72_match_begin_β
n73_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx262_12
                                                                              jmp   qword ptr [rbp + -48]
.Lx262_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n74_match_end_α:        push             r14
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
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n75_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_end_α:    add              rsp, 32;                             jmp   n76_statement_begin_α
#=======================================================================================================================
#         ZI = LT(ZI, ZKN) ZI + 1                         :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_begin_α:                                                        jmp   n77_var_α
n76_statement_begin_β:                                                        jmp   n88_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n77_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # ZI
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n78_var_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # ZKN
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n79_coerce_numeric_α
n78_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n76_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n79_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx272_1
                        cmp              eax, 3;                              jne   .Lx272_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx272_0
.Lx272_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n80_coerce_numeric_α
.Lx272_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n80_coerce_numeric_α
n79_coerce_numeric_β:   add              rsp, 16;                             jmp   n78_var_β
#-----------------------------------------------------------------------------------------------------------------------
n80_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx274_1
                        cmp              eax, 3;                              jne   .Lx274_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3;                              jne   .Lx274_0
.Lx274_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n81_cmp_test_α
.Lx274_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n81_cmp_test_α
n80_coerce_numeric_β:   add              rsp, 16;                             jmp   n79_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n81_cmp_test_α:         sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            js    .Lx276_240
                        add              rsp, 16;                             jmp   n80_coerce_numeric_β
.Lx276_240:             mov              qword ptr [rsp + 0], 0               # result
                        mov              qword ptr [rsp + 8], 0;              jmp   n82_var_α
n81_cmp_test_β:         add              rsp, 16;                             jmp   n80_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # ZI
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n83_lit_integer_α
n82_var_β:              add              rsp, 16;                             jmp   n81_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n84_binop_α
n83_lit_integer_β:      add              rsp, 16;                             jmp   n82_var_β
.Lx278_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n84_binop_α:            sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx279_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx279_7
.Lx279_2:               and              edx, 1;                              jz    .Lx279_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx279_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx279_4
.Lx279_3:               movq             xmm0, rsi
.Lx279_4:               cmp              ecx, 5;                              je    .Lx279_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx279_6
.Lx279_5:               movq             xmm1, rdi
.Lx279_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx279_7:                                                                     jmp   n85_binop_α
.Lx279_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx279_240
                        add              rsp, 16;                             jmp   n83_lit_integer_β
.Lx279_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n85_binop_α
n84_binop_β:            add              rsp, 16;                             jmp   n83_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n85_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # cmp_test
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n86_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n86_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ZI
                        mov              qword ptr [r9 + 136], rdx;           jmp   n87_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_end_α:    add              rsp, 144;                            jmp   n68_statement_begin_α
#=======================================================================================================================
#         ZBODY = W                                       :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_begin_α:                                                        jmp   n89_var_α
n88_statement_begin_β:                                                        jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n89_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # W
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n90_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n90_assign_α:           mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # ZBODY
                        mov              qword ptr [r9 + 8], rdx;             jmp   n91_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_end_α:    add              rsp, 16;                             jmp   RETURN
#=======================================================================================================================
# ZBODY_END  <stmt 14, line 17: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_begin_α:                                                        jmp   n93_statement_end_α
n92_statement_begin_β:                                                        jmp   n94_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_end_α:                                                          jmp   n94_statement_begin_α
#=======================================================================================================================
#         <stmt 15, line 33: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n94_statement_begin_α:                                                        jmp   n95_lit_string_α
n94_statement_begin_β:                                                        jmp   n101_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n96_var_α
.Lx296_0:               .quad            .Lx296_0_s
.Lx296_0_s:             .string          "check: "
#-----------------------------------------------------------------------------------------------------------------------
n96_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # ZCHK
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n97_call_α
n96_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n94_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n97_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lsig299z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig299z:              .quad            1
                        .quad            .Lx299_2
                        .quad            .Lx299_2
                        .quad            16
.Lx299_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx299_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx299_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx299_240
                        add              rsp, 16;                             jmp   n96_var_β
.Lx299_240:                                                                   jmp   n98_binop_α
n97_call_β:                                                                   jmp   n96_var_β
.Lx299_0:               .quad            .Lx299_0_s
.Lx299_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n98_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n99_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n99_assign_α:           mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n100_statement_end_α
.Lx301_0:               .quad            .Lx301_0_s
.Lx301_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n100_statement_end_α:   add              rsp, 64;                             jmp   n101_statement_begin_α
#=======================================================================================================================
#         <stmt 16, line 34: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n101_statement_begin_α:                                                       jmp   n102_var_α
n101_statement_begin_β:                                                       jmp   n105_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n102_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n103_call_α
#-----------------------------------------------------------------------------------------------------------------------
n103_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd308:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd308]
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
                        cmp              eax, 104;                            jne   .Lx307_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n101_statement_begin_β
.Lx307_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n104_statement_end_α
n103_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n101_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n104_statement_end_α:   add              rsp, 32;                             jmp   n135_statement_begin_α
#=======================================================================================================================
#         <stmt 17, line 35: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_begin_α:                                                       jmp   n106_lit_integer_α
n105_statement_begin_β:                                                       jmp   n109_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx313_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n107_assign_α
.Lx313_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n107_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZK
                        mov              qword ptr [r9 + 152], rdx;           jmp   n108_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n108_statement_end_α:   add              rsp, 16;                             jmp   n109_statement_begin_α
#=======================================================================================================================
# ZCAL  <stmt 18, line 36: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_begin_α:                                                       jmp   n110_call_α
n109_statement_begin_β:                                                       jmp   n113_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n110_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd320:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd320]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx319_240
                        add              rsp, 16;                             jmp   n109_statement_begin_β
.Lx319_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n111_assign_α
n110_call_β:            add              rsp, 16;                             jmp   n109_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n111_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZT
                        mov              qword ptr [r9 + 168], rdx;           jmp   n112_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n112_statement_end_α:   add              rsp, 16;                             jmp   n113_statement_begin_α
#=======================================================================================================================
#         <stmt 19, line 37: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_begin_α:                                                       jmp   n114_var_α
n113_statement_begin_β:                                                       jmp   n117_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n114_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n115_call_α
#-----------------------------------------------------------------------------------------------------------------------
n115_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig328z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig328z:              .quad            1
                        .quad            .Lx328_2
                        .quad            .Lx328_2
                        .quad            16
.Lx328_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx328_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx328_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx328_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n113_statement_begin_β
.Lx328_240:                                                                   jmp   n116_statement_end_α
n115_call_β:                                                                  jmp   n113_statement_begin_β
.Lx328_0:               .quad            .Lx328_0_s
.Lx328_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n116_statement_end_α:   add              rsp, 32;                             jmp   n117_statement_begin_α
#=======================================================================================================================
#         <stmt 20, line 38: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_begin_α:                                                       jmp   n118_call_α
n117_statement_begin_β:                                                       jmp   n123_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n118_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd334:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd334]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx333_240
                        add              rsp, 16;                             jmp   n117_statement_begin_β
.Lx333_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n119_var_α
n118_call_β:            add              rsp, 16;                             jmp   n117_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n119_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZT
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n120_binop_α
n119_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n117_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n120_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx336_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx336_7
.Lx336_2:               and              edx, 1;                              jz    .Lx336_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              eax, 5;                              je    .Lx336_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx336_4
.Lx336_3:               movq             xmm0, rsi
.Lx336_4:               cmp              ecx, 5;                              je    .Lx336_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx336_6
.Lx336_5:               movq             xmm1, rdi
.Lx336_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx336_7:                                                                     jmp   n121_assign_α
.Lx336_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx336_240
                        add              rsp, 16;                             jmp   n119_var_β
.Lx336_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n121_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n121_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZE
                        mov              qword ptr [r9 + 184], rdx;           jmp   n122_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n122_statement_end_α:   add              rsp, 48;                             jmp   n123_statement_begin_α
#=======================================================================================================================
#         <stmt 21, line 39: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n123_statement_begin_α:                                                       jmp   n124_var_α
n123_statement_begin_β:                                                       jmp   n135_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZE
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n125_var_α
#-----------------------------------------------------------------------------------------------------------------------
n125_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # ZFLR
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n126_coerce_numeric_α
n125_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n123_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n126_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx345_1
                        cmp              eax, 3;                              jne   .Lx345_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx345_0
.Lx345_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n127_coerce_numeric_α
.Lx345_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n127_coerce_numeric_α
n126_coerce_numeric_β:  add              rsp, 16;                             jmp   n125_var_β
#-----------------------------------------------------------------------------------------------------------------------
n127_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx347_1
                        cmp              eax, 3;                              jne   .Lx347_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3;                              jne   .Lx347_0
.Lx347_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n128_cmp_test_α
.Lx347_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n128_cmp_test_α
n127_coerce_numeric_β:  add              rsp, 16;                             jmp   n126_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n128_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            js    .Lx349_240
                        add              rsp, 16;                             jmp   n127_coerce_numeric_β
.Lx349_240:             mov              qword ptr [rsp + 0], 0               # result
                        mov              qword ptr [rsp + 8], 0;              jmp   n129_var_α
n128_cmp_test_β:        add              rsp, 16;                             jmp   n127_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n129_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n130_lit_integer_α
n129_var_β:             add              rsp, 16;                             jmp   n128_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx351_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n131_binop_α
n130_lit_integer_β:     add              rsp, 16;                             jmp   n129_var_β
.Lx351_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n131_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx352_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx352_7
.Lx352_2:               and              edx, 1;                              jz    .Lx352_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx352_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx352_4
.Lx352_3:               movq             xmm0, rsi
.Lx352_4:               cmp              ecx, 5;                              je    .Lx352_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx352_6
.Lx352_5:               movq             xmm1, rdi
.Lx352_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx352_7:                                                                     jmp   n132_binop_α
.Lx352_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx352_240
                        add              rsp, 16;                             jmp   n130_lit_integer_β
.Lx352_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n132_binop_α
n131_binop_β:           add              rsp, 16;                             jmp   n130_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n132_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # cmp_test
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n133_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n133_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZK
                        mov              qword ptr [r9 + 152], rdx;           jmp   n134_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n134_statement_end_α:   add              rsp, 144;                            jmp   n109_statement_begin_α
#=======================================================================================================================
# ZMEAS  <stmt 22, line 40: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n135_statement_begin_α:                                                       jmp   n136_call_α
n135_statement_begin_β:                                                       jmp   n139_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n136_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd360:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd360]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx359_240
                        add              rsp, 16;                             jmp   n135_statement_begin_β
.Lx359_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n137_assign_α
n136_call_β:            add              rsp, 16;                             jmp   n135_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n137_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZT
                        mov              qword ptr [r9 + 168], rdx;           jmp   n138_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n138_statement_end_α:   add              rsp, 16;                             jmp   n139_statement_begin_α
#=======================================================================================================================
#         <stmt 23, line 41: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n139_statement_begin_α:                                                       jmp   n140_var_α
n139_statement_begin_β:                                                       jmp   n145_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n140_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZT
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n141_var_α
#-----------------------------------------------------------------------------------------------------------------------
n141_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # ZBUD
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n142_binop_α
n141_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n139_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n142_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx368_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx368_7
.Lx368_2:               and              edx, 1;                              jz    .Lx368_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              eax, 5;                              je    .Lx368_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx368_4
.Lx368_3:               movq             xmm0, rsi
.Lx368_4:               cmp              ecx, 5;                              je    .Lx368_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx368_6
.Lx368_5:               movq             xmm1, rdi
.Lx368_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx368_7:                                                                     jmp   n143_assign_α
.Lx368_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx368_240
                        add              rsp, 16;                             jmp   n141_var_β
.Lx368_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n143_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n143_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZD
                        mov              qword ptr [r9 + 200], rdx;           jmp   n144_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n144_statement_end_α:   add              rsp, 48;                             jmp   n145_statement_begin_α
#=======================================================================================================================
#         <stmt 24, line 42: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n145_statement_begin_α:                                                       jmp   n146_lit_integer_α
n145_statement_begin_β:                                                       jmp   n149_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx374_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n147_assign_α
.Lx374_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n147_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZN
                        mov              qword ptr [r9 + 216], rdx;           jmp   n148_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n148_statement_end_α:   add              rsp, 16;                             jmp   n149_statement_begin_α
#=======================================================================================================================
# ZB  <stmt 25, line 43: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n149_statement_begin_α:                                                       jmp   n150_var_α
n149_statement_begin_β:                                                       jmp   n153_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n150_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n151_call_α
#-----------------------------------------------------------------------------------------------------------------------
n151_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig382z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig382z:              .quad            1
                        .quad            .Lx382_2
                        .quad            .Lx382_2
                        .quad            16
.Lx382_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx382_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx382_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx382_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n149_statement_begin_β
.Lx382_240:                                                                   jmp   n152_statement_end_α
n151_call_β:                                                                  jmp   n149_statement_begin_β
.Lx382_0:               .quad            .Lx382_0_s
.Lx382_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n152_statement_end_α:   add              rsp, 32;                             jmp   n153_statement_begin_α
#=======================================================================================================================
#         <stmt 26, line 44: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n153_statement_begin_α:                                                       jmp   n154_var_α
n153_statement_begin_β:                                                       jmp   n159_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n154_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # ZN
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n155_var_α
#-----------------------------------------------------------------------------------------------------------------------
n155_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n156_binop_α
n155_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n153_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n156_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx389_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx389_7
.Lx389_2:               and              edx, 1;                              jz    .Lx389_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              eax, 5;                              je    .Lx389_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx389_4
.Lx389_3:               movq             xmm0, rsi
.Lx389_4:               cmp              ecx, 5;                              je    .Lx389_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx389_6
.Lx389_5:               movq             xmm1, rdi
.Lx389_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx389_7:                                                                     jmp   n157_assign_α
.Lx389_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx389_240
                        add              rsp, 16;                             jmp   n155_var_β
.Lx389_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n157_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n157_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZN
                        mov              qword ptr [r9 + 216], rdx;           jmp   n158_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n158_statement_end_α:   add              rsp, 48;                             jmp   n159_statement_begin_α
#=======================================================================================================================
#         <stmt 27, line 45: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n159_statement_begin_α:                                                       jmp   n160_call_α
n159_statement_begin_β:                                                       jmp   n166_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n160_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd396:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd396]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx395_240
                        add              rsp, 16;                             jmp   n159_statement_begin_β
.Lx395_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n161_var_α
n160_call_β:            add              rsp, 16;                             jmp   n159_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n161_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # ZD
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n162_coerce_numeric_α
n161_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n159_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n162_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              eax, 5;                              je    .Lx399_1
                        cmp              eax, 3;                              jne   .Lx399_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              eax, 3;                              jne   .Lx399_0
.Lx399_1:               mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n163_coerce_numeric_α
.Lx399_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n163_coerce_numeric_α
n162_coerce_numeric_β:  add              rsp, 16;                             jmp   n161_var_β
#-----------------------------------------------------------------------------------------------------------------------
n163_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx401_1
                        cmp              eax, 3;                              jne   .Lx401_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              eax, 3;                              jne   .Lx401_0
.Lx401_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n164_cmp_test_α
.Lx401_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n164_cmp_test_α
n163_coerce_numeric_β:  add              rsp, 16;                             jmp   n162_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n164_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            js    .Lx403_240
                        add              rsp, 16;                             jmp   n163_coerce_numeric_β
.Lx403_240:                                                                   jmp   n165_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n165_statement_end_α:   add              rsp, 80;                             jmp   n149_statement_begin_α
#=======================================================================================================================
#         <stmt 28, line 46: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n166_statement_begin_α:                                                       jmp   n167_call_α
n166_statement_begin_β:                                                       jmp   n172_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n167_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd409:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd409]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx408_240
                        add              rsp, 16;                             jmp   n166_statement_begin_β
.Lx408_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n168_var_α
n167_call_β:            add              rsp, 16;                             jmp   n166_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n168_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZT
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n169_binop_α
n168_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n166_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n169_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx411_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx411_7
.Lx411_2:               and              edx, 1;                              jz    .Lx411_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              eax, 5;                              je    .Lx411_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx411_4
.Lx411_3:               movq             xmm0, rsi
.Lx411_4:               cmp              ecx, 5;                              je    .Lx411_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx411_6
.Lx411_5:               movq             xmm1, rdi
.Lx411_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx411_7:                                                                     jmp   n170_assign_α
.Lx411_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx411_240
                        add              rsp, 16;                             jmp   n168_var_β
.Lx411_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n170_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n170_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZE
                        mov              qword ptr [r9 + 184], rdx;           jmp   n171_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n171_statement_end_α:   add              rsp, 48;                             jmp   n172_statement_begin_α
#=======================================================================================================================
#         <stmt 29, line 47: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n172_statement_begin_α:                                                       jmp   n173_lit_string_α
n172_statement_begin_β:                                                       jmp   n178_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx417_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n174_var_α
.Lx417_0:               .quad            .Lx417_0_s
.Lx417_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n174_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # ZN
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n175_binop_α
n174_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n172_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n175_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n176_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n176_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx420_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n177_statement_end_α
.Lx420_0:               .quad            .Lx420_0_s
.Lx420_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n177_statement_end_α:   add              rsp, 48;                             jmp   n178_statement_begin_α
#=======================================================================================================================
#         <stmt 30, line 48: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n178_statement_begin_α:                                                       jmp   n179_lit_string_α
n178_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx425_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n180_var_α
.Lx425_0:               .quad            .Lx425_0_s
.Lx425_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n180_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZE
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n181_binop_α
n180_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n178_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n181_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n182_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n182_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx428_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n183_statement_end_α
.Lx428_0:               .quad            .Lx428_0_s
.Lx428_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n183_statement_end_α:   add              rsp, 48;                             jmp   main_γ
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
