                        .intel_syntax    noprefix
                        .text
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
.Lgvan0:                .string          "INC"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "ZBODY"
.Lgvan3:                .string          "ZKN"
.Lgvan4:                .string          "ZCHK"
.Lgvan5:                .string          "ZBUD"
.Lgvan6:                .string          "ZFLR"
.Lgvan7:                .string          "R"
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
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:                                                         jmp   n1_lit_string_α
n0_statement_begin_β:                                                         jmp   n5_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_lit_integer_α
.Lx166_0:               .quad            .Lx166_0_s
.Lx166_0_s:             .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_call_α
n2_lit_integer_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n0_statement_begin_β
.Lx167_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n3_call_α:              sub              rsp, 16
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
.Lrkfnzd169:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd169]
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
                        cmp              eax, 104;                            jne   .Lx168_240
                        add              rsp, 16;                             jmp   n2_lit_integer_β
.Lx168_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n4_statement_end_α
n3_call_β:              add              rsp, 16;                             jmp   n2_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_end_α:     add              rsp, 48;                             jmp   n5_statement_begin_α
#=======================================================================================================================
#         &ANCHOR = 0
#-----------------------------------------------------------------------------------------------------------------------
n5_statement_begin_α:                                                         jmp   n6_lit_string_α
n5_statement_begin_β:                                                         jmp   n10_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n7_lit_integer_α
.Lx174_0:               .quad            .Lx174_0_s
.Lx174_0_s:             .string          "ANCHOR"
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n8_call_α
n7_lit_integer_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n5_statement_begin_β
.Lx175_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n8_call_α:              sub              rsp, 16
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
.Lrkfnzd177:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd177]
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
                        cmp              eax, 104;                            jne   .Lx176_240
                        add              rsp, 16;                             jmp   n7_lit_integer_β
.Lx176_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n9_statement_end_α
n8_call_β:              add              rsp, 16;                             jmp   n7_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n9_statement_end_α:     add              rsp, 48;                             jmp   n10_statement_begin_α
#=======================================================================================================================
#         &STLIMIT = -1
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_begin_α:                                                        jmp   n11_lit_string_α
n10_statement_begin_β:                                                        jmp   n16_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n12_lit_integer_α
.Lx182_0:               .quad            .Lx182_0_s
.Lx182_0_s:             .string          "STLIMIT"
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n13_unop_α
n12_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n10_statement_begin_β
.Lx183_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n13_unop_α:             sub              rsp, 16
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n14_call_α
n13_unop_β:             add              rsp, 16;                             jmp   n12_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n14_call_α:             sub              rsp, 16
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
.Lrkfnzd186:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd186]
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
                        cmp              eax, 104;                            jne   .Lx185_240
                        add              rsp, 16;                             jmp   n13_unop_β
.Lx185_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n15_statement_end_α
n14_call_β:             add              rsp, 16;                             jmp   n13_unop_β
#-----------------------------------------------------------------------------------------------------------------------
n15_statement_end_α:    add              rsp, 64;                             jmp   n16_statement_begin_α
#=======================================================================================================================
#         ZCHK = 1000
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_begin_α:                                                        jmp   n17_lit_integer_α
n16_statement_begin_β:                                                        jmp   n20_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx191_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n18_assign_α
.Lx191_0:               .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ZCHK
                        mov              qword ptr [r9 + 72], rdx;            jmp   n19_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_end_α:    add              rsp, 16;                             jmp   n20_statement_begin_α
#=======================================================================================================================
#         ZBUD = 500
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_begin_α:                                                        jmp   n21_lit_integer_α
n20_statement_begin_β:                                                        jmp   n24_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n22_assign_α
.Lx197_0:               .quad            500
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZBUD
                        mov              qword ptr [r9 + 88], rdx;            jmp   n23_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_end_α:    add              rsp, 16;                             jmp   n24_statement_begin_α
#=======================================================================================================================
#         ZFLR = 20
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_begin_α:                                                        jmp   n25_lit_integer_α
n24_statement_begin_β:                                                        jmp   n28_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_assign_α
.Lx203_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n26_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZFLR
                        mov              qword ptr [r9 + 104], rdx;           jmp   n27_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_end_α:    add              rsp, 16;                             jmp   n28_statement_begin_α
#=======================================================================================================================
#         DEFINE('INC(N)')                                :(INCE)
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_begin_α:                                                        jmp   n29_define_α
n28_statement_begin_β:                                                        jmp   n37_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n29_define_α:           mov              rdi, qword ptr [rip + .Lx210_0]
                        mov              rsi, qword ptr [rip + .Lx210_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n31_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n30_statement_end_α
n29_define_β:                                                                 jmp   n28_statement_begin_β
.Lx210_0:               .quad            .Lx210_0_s
.Lx210_0_s:             .string          "INC"
.Lx210_1:               .quad            .Lx210_1_s
.Lx210_1_s:             .string          "N"
                                                                              jmp   .Lx211_245
#-----------------------------------------------------------------------------------------------------------------------
INC_α:                  sub              rsp, 64
                        mov              rax, qword ptr [r9 + 0]              # INC
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
                        cmp              rdx, 0;                              jbe   .Lx211_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx211_41
.Lx211_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx211_41:              lea              r10, [rip + INC_γ]
                        lea              r11, [rip + INC_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n31_statement_begin_α];  jmp   rax
INC_γ:                  mov              rdi, qword ptr [r9 + 0]              # INC
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Lx211_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx211_110
.Lx211_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx211_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
INC_ω:                  mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax              # INC
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Lx211_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx211_180
.Lx211_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx211_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx211_245:
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_end_α:                                                          jmp   n37_statement_begin_α
#=======================================================================================================================
# INC    INC = N + 1                                     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_begin_α:                                                        jmp   n32_var_α
n31_statement_begin_β:                                                        jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n33_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_binop_α
n33_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n31_statement_begin_β
.Lx217_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n34_binop_α:            sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx218_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx218_7
.Lx218_2:               and              edx, 1;                              jz    .Lx218_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx218_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx218_4
.Lx218_3:               movq             xmm0, rsi
.Lx218_4:               cmp              ecx, 5;                              je    .Lx218_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx218_6
.Lx218_5:               movq             xmm1, rdi
.Lx218_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx218_7:                                                                     jmp   n35_assign_α
.Lx218_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx218_240
                        add              rsp, 16;                             jmp   n33_lit_integer_β
.Lx218_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n35_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # INC
                        mov              qword ptr [r9 + 8], rdx;             jmp   n36_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_end_α:    add              rsp, 48;                             jmp   RETURN
#=======================================================================================================================
# INCE  <stmt 9, line 12: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_begin_α:                                                        jmp   n38_statement_end_α
n37_statement_begin_β:                                                        jmp   n39_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n38_statement_end_α:                                                          jmp   n39_statement_begin_α
#=======================================================================================================================
#         DEFINE('ZBODY(ZKN)')                            :(ZBODY_END)
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_begin_α:                                                        jmp   n40_define_α
n39_statement_begin_β:                                                        jmp   n71_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n40_define_α:           mov              rdi, qword ptr [rip + .Lx229_0]
                        mov              rsi, qword ptr [rip + .Lx229_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n42_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n41_statement_end_α
n40_define_β:                                                                 jmp   n39_statement_begin_β
.Lx229_0:               .quad            .Lx229_0_s
.Lx229_0_s:             .string          "ZBODY"
.Lx229_1:               .quad            .Lx229_1_s
.Lx229_1_s:             .string          "ZKN"
                                                                              jmp   .Lx230_245
#-----------------------------------------------------------------------------------------------------------------------
ZBODY_α:                sub              rsp, 64
                        mov              rax, qword ptr [r9 + 32]             # ZBODY
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx230_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 48]             # ZKN
                        mov              qword ptr [r9 + 48], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 56]
                        mov              qword ptr [r9 + 56], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx230_41
.Lx230_10:              mov              rax, qword ptr [r9 + 48]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
.Lx230_41:              lea              r10, [rip + ZBODY_γ]
                        lea              r11, [rip + ZBODY_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n42_statement_begin_α];  jmp   rax
ZBODY_γ:                mov              rdi, qword ptr [r9 + 32]             # ZBODY
                        mov              rsi, qword ptr [r9 + 40]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Lx230_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 48], rax             # ZKN
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx230_110
.Lx230_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Lx230_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
ZBODY_ω:                mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax             # ZBODY
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Lx230_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 48], rax             # ZKN
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx230_180
.Lx230_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Lx230_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx230_245:
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_end_α:                                                          jmp   n71_statement_begin_α
#=======================================================================================================================
# ZBODY   R = 0
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_begin_α:                                                        jmp   n43_lit_integer_α
n42_statement_begin_β:                                                        jmp   n46_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n44_assign_α
.Lx235_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n44_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # R
                        mov              qword ptr [r9 + 120], rdx;           jmp   n45_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_end_α:    add              rsp, 16;                             jmp   n46_statement_begin_α
#=======================================================================================================================
#         ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_begin_α:                                                        jmp   n47_lit_integer_α
n46_statement_begin_β:                                                        jmp   n50_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n48_assign_α
.Lx241_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n48_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ZI
                        mov              qword ptr [r9 + 136], rdx;           jmp   n49_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_end_α:    add              rsp, 16;                             jmp   n50_statement_begin_α
#=======================================================================================================================
# ZBL     R = INC(R)
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_begin_α:                                                        jmp   n51_var_α
n50_statement_begin_β:                                                        jmp   n55_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # R
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n52_call_α
#-----------------------------------------------------------------------------------------------------------------------
n52_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lsig249z]
                        lea              rax, [rip + INC_α];                  jmp   rax
.Lsig249z:              .quad            1
                        .quad            .Lx249_2
                        .quad            .Lx249_2
                        .quad            16
.Lx249_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx249_29
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
.Lx249_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx249_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n50_statement_begin_β
.Lx249_240:                                                                   jmp   n53_assign_α
n52_call_β:                                                                   jmp   n50_statement_begin_β
.Lx249_0:               .quad            .Lx249_0_s
.Lx249_0_s:             .string          "INC"
#-----------------------------------------------------------------------------------------------------------------------
n53_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # R
                        mov              qword ptr [r9 + 120], rdx;           jmp   n54_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n54_statement_end_α:    add              rsp, 32;                             jmp   n55_statement_begin_α
#=======================================================================================================================
#         ZI = LT(ZI, ZKN) ZI + 1                         :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
n55_statement_begin_α:                                                        jmp   n56_var_α
n55_statement_begin_β:                                                        jmp   n67_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # ZI
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n57_var_α
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # ZKN
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n58_coerce_numeric_α
n57_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n55_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n58_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx258_1
                        cmp              eax, 3;                              jne   .Lx258_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx258_0
.Lx258_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n59_coerce_numeric_α
.Lx258_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n59_coerce_numeric_α
n58_coerce_numeric_β:   add              rsp, 16;                             jmp   n57_var_β
#-----------------------------------------------------------------------------------------------------------------------
n59_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx260_1
                        cmp              eax, 3;                              jne   .Lx260_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3;                              jne   .Lx260_0
.Lx260_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n60_cmp_test_α
.Lx260_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n60_cmp_test_α
n59_coerce_numeric_β:   add              rsp, 16;                             jmp   n58_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n60_cmp_test_α:         sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            js    .Lx262_240
                        add              rsp, 16;                             jmp   n59_coerce_numeric_β
.Lx262_240:             mov              qword ptr [rsp + 0], 0               # result
                        mov              qword ptr [rsp + 8], 0;              jmp   n61_var_α
n60_cmp_test_β:         add              rsp, 16;                             jmp   n59_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # ZI
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n62_lit_integer_α
n61_var_β:              add              rsp, 16;                             jmp   n60_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx264_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n63_binop_α
n62_lit_integer_β:      add              rsp, 16;                             jmp   n61_var_β
.Lx264_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n63_binop_α:            sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx265_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx265_7
.Lx265_2:               and              edx, 1;                              jz    .Lx265_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx265_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx265_4
.Lx265_3:               movq             xmm0, rsi
.Lx265_4:               cmp              ecx, 5;                              je    .Lx265_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx265_6
.Lx265_5:               movq             xmm1, rdi
.Lx265_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx265_7:                                                                     jmp   n64_binop_α
.Lx265_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx265_240
                        add              rsp, 16;                             jmp   n62_lit_integer_β
.Lx265_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n64_binop_α
n63_binop_β:            add              rsp, 16;                             jmp   n62_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n64_binop_α:            sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n65_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n65_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ZI
                        mov              qword ptr [r9 + 136], rdx;           jmp   n66_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_end_α:    add              rsp, 144;                            jmp   n50_statement_begin_α
#=======================================================================================================================
#         ZBODY = R                                       :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n67_statement_begin_α:                                                        jmp   n68_var_α
n67_statement_begin_β:                                                        jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # R
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n69_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n69_assign_α:           mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # ZBODY
                        mov              qword ptr [r9 + 40], rdx;            jmp   n70_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_end_α:    add              rsp, 16;                             jmp   RETURN
#=======================================================================================================================
# ZBODY_END  <stmt 16, line 19: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n71_statement_begin_α:                                                        jmp   n72_statement_end_α
n71_statement_begin_β:                                                        jmp   n73_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n72_statement_end_α:                                                          jmp   n73_statement_begin_α
#=======================================================================================================================
#         <stmt 17, line 35: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_begin_α:                                                        jmp   n74_lit_string_α
n73_statement_begin_β:                                                        jmp   n80_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n75_var_α
.Lx282_0:               .quad            .Lx282_0_s
.Lx282_0_s:             .string          "check: "
#-----------------------------------------------------------------------------------------------------------------------
n75_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # ZCHK
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n76_call_α
n75_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n73_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n76_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lsig285z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig285z:              .quad            1
                        .quad            .Lx285_2
                        .quad            .Lx285_2
                        .quad            16
.Lx285_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx285_29
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
.Lx285_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx285_240
                        add              rsp, 16;                             jmp   n75_var_β
.Lx285_240:                                                                   jmp   n77_binop_α
n76_call_β:                                                                   jmp   n75_var_β
.Lx285_0:               .quad            .Lx285_0_s
.Lx285_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n77_binop_α:            sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n78_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n78_assign_α:           mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx287_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n79_statement_end_α
.Lx287_0:               .quad            .Lx287_0_s
.Lx287_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n79_statement_end_α:    add              rsp, 64;                             jmp   n80_statement_begin_α
#=======================================================================================================================
#         <stmt 18, line 36: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_begin_α:                                                        jmp   n81_var_α
n80_statement_begin_β:                                                        jmp   n84_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n82_call_α
#-----------------------------------------------------------------------------------------------------------------------
n82_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd294:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd294]
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
                        cmp              eax, 104;                            jne   .Lx293_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n80_statement_begin_β
.Lx293_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n83_statement_end_α
n82_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n80_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n83_statement_end_α:    add              rsp, 32;                             jmp   n114_statement_begin_α
#=======================================================================================================================
#         <stmt 19, line 37: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_begin_α:                                                        jmp   n85_lit_integer_α
n84_statement_begin_β:                                                        jmp   n88_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx299_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n86_assign_α
.Lx299_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n86_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZK
                        mov              qword ptr [r9 + 152], rdx;           jmp   n87_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_end_α:    add              rsp, 16;                             jmp   n88_statement_begin_α
#=======================================================================================================================
# ZCAL  <stmt 20, line 38: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_begin_α:                                                        jmp   n89_call_α
n88_statement_begin_β:                                                        jmp   n92_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n89_call_α:             sub              rsp, 16
                        .section         .rodata
.Lrkfnzd306:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd306]
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
                        cmp              eax, 104;                            jne   .Lx305_240
                        add              rsp, 16;                             jmp   n88_statement_begin_β
.Lx305_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n90_assign_α
n89_call_β:             add              rsp, 16;                             jmp   n88_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n90_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZT
                        mov              qword ptr [r9 + 168], rdx;           jmp   n91_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_end_α:    add              rsp, 16;                             jmp   n92_statement_begin_α
#=======================================================================================================================
#         <stmt 21, line 39: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_begin_α:                                                        jmp   n93_var_α
n92_statement_begin_β:                                                        jmp   n96_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n93_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n94_call_α
#-----------------------------------------------------------------------------------------------------------------------
n94_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lsig314z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig314z:              .quad            1
                        .quad            .Lx314_2
                        .quad            .Lx314_2
                        .quad            16
.Lx314_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx314_29
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
.Lx314_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx314_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n92_statement_begin_β
.Lx314_240:                                                                   jmp   n95_statement_end_α
n94_call_β:                                                                   jmp   n92_statement_begin_β
.Lx314_0:               .quad            .Lx314_0_s
.Lx314_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_end_α:    add              rsp, 32;                             jmp   n96_statement_begin_α
#=======================================================================================================================
#         <stmt 22, line 40: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n96_statement_begin_α:                                                        jmp   n97_call_α
n96_statement_begin_β:                                                        jmp   n102_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n97_call_α:             sub              rsp, 16
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
                        add              rsp, 16;                             jmp   n96_statement_begin_β
.Lx319_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n98_var_α
n97_call_β:             add              rsp, 16;                             jmp   n96_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZT
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n99_binop_α
n98_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n96_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n99_binop_α:            sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx322_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx322_7
.Lx322_2:               and              edx, 1;                              jz    .Lx322_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              eax, 5;                              je    .Lx322_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx322_4
.Lx322_3:               movq             xmm0, rsi
.Lx322_4:               cmp              ecx, 5;                              je    .Lx322_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx322_6
.Lx322_5:               movq             xmm1, rdi
.Lx322_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx322_7:                                                                     jmp   n100_assign_α
.Lx322_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx322_240
                        add              rsp, 16;                             jmp   n98_var_β
.Lx322_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n100_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n100_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZE
                        mov              qword ptr [r9 + 184], rdx;           jmp   n101_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n101_statement_end_α:   add              rsp, 48;                             jmp   n102_statement_begin_α
#=======================================================================================================================
#         <stmt 23, line 41: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n102_statement_begin_α:                                                       jmp   n103_var_α
n102_statement_begin_β:                                                       jmp   n114_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n103_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZE
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n104_var_α
#-----------------------------------------------------------------------------------------------------------------------
n104_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # ZFLR
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n105_coerce_numeric_α
n104_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n102_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n105_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx331_1
                        cmp              eax, 3;                              jne   .Lx331_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx331_0
.Lx331_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n106_coerce_numeric_α
.Lx331_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n106_coerce_numeric_α
n105_coerce_numeric_β:  add              rsp, 16;                             jmp   n104_var_β
#-----------------------------------------------------------------------------------------------------------------------
n106_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx333_1
                        cmp              eax, 3;                              jne   .Lx333_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3;                              jne   .Lx333_0
.Lx333_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n107_cmp_test_α
.Lx333_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n107_cmp_test_α
n106_coerce_numeric_β:  add              rsp, 16;                             jmp   n105_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n107_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            js    .Lx335_240
                        add              rsp, 16;                             jmp   n106_coerce_numeric_β
.Lx335_240:             mov              qword ptr [rsp + 0], 0               # result
                        mov              qword ptr [rsp + 8], 0;              jmp   n108_var_α
n107_cmp_test_β:        add              rsp, 16;                             jmp   n106_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n108_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n109_lit_integer_α
n108_var_β:             add              rsp, 16;                             jmp   n107_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx337_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n110_binop_α
n109_lit_integer_β:     add              rsp, 16;                             jmp   n108_var_β
.Lx337_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n110_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx338_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx338_7
.Lx338_2:               and              edx, 1;                              jz    .Lx338_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx338_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx338_4
.Lx338_3:               movq             xmm0, rsi
.Lx338_4:               cmp              ecx, 5;                              je    .Lx338_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx338_6
.Lx338_5:               movq             xmm1, rdi
.Lx338_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx338_7:                                                                     jmp   n111_binop_α
.Lx338_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx338_240
                        add              rsp, 16;                             jmp   n109_lit_integer_β
.Lx338_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n111_binop_α
n110_binop_β:           add              rsp, 16;                             jmp   n109_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n111_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n112_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n112_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZK
                        mov              qword ptr [r9 + 152], rdx;           jmp   n113_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_end_α:   add              rsp, 144;                            jmp   n88_statement_begin_α
#=======================================================================================================================
# ZMEAS  <stmt 24, line 42: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n114_statement_begin_α:                                                       jmp   n115_call_α
n114_statement_begin_β:                                                       jmp   n118_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n115_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd346:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd346]
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
                        cmp              eax, 104;                            jne   .Lx345_240
                        add              rsp, 16;                             jmp   n114_statement_begin_β
.Lx345_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n116_assign_α
n115_call_β:            add              rsp, 16;                             jmp   n114_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n116_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZT
                        mov              qword ptr [r9 + 168], rdx;           jmp   n117_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_end_α:   add              rsp, 16;                             jmp   n118_statement_begin_α
#=======================================================================================================================
#         <stmt 25, line 43: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n118_statement_begin_α:                                                       jmp   n119_var_α
n118_statement_begin_β:                                                       jmp   n124_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n119_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZT
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n120_var_α
#-----------------------------------------------------------------------------------------------------------------------
n120_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # ZBUD
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n121_binop_α
n120_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n118_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n121_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx354_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx354_7
.Lx354_2:               and              edx, 1;                              jz    .Lx354_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              eax, 5;                              je    .Lx354_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx354_4
.Lx354_3:               movq             xmm0, rsi
.Lx354_4:               cmp              ecx, 5;                              je    .Lx354_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx354_6
.Lx354_5:               movq             xmm1, rdi
.Lx354_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx354_7:                                                                     jmp   n122_assign_α
.Lx354_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx354_240
                        add              rsp, 16;                             jmp   n120_var_β
.Lx354_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n122_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n122_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZD
                        mov              qword ptr [r9 + 200], rdx;           jmp   n123_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n123_statement_end_α:   add              rsp, 48;                             jmp   n124_statement_begin_α
#=======================================================================================================================
#         <stmt 26, line 44: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n124_statement_begin_α:                                                       jmp   n125_lit_integer_α
n124_statement_begin_β:                                                       jmp   n128_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx360_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n126_assign_α
.Lx360_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n126_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZN
                        mov              qword ptr [r9 + 216], rdx;           jmp   n127_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n127_statement_end_α:   add              rsp, 16;                             jmp   n128_statement_begin_α
#=======================================================================================================================
# ZB  <stmt 27, line 45: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n128_statement_begin_α:                                                       jmp   n129_var_α
n128_statement_begin_β:                                                       jmp   n132_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n129_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n130_call_α
#-----------------------------------------------------------------------------------------------------------------------
n130_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig368z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig368z:              .quad            1
                        .quad            .Lx368_2
                        .quad            .Lx368_2
                        .quad            16
.Lx368_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx368_29
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
.Lx368_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx368_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n128_statement_begin_β
.Lx368_240:                                                                   jmp   n131_statement_end_α
n130_call_β:                                                                  jmp   n128_statement_begin_β
.Lx368_0:               .quad            .Lx368_0_s
.Lx368_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n131_statement_end_α:   add              rsp, 32;                             jmp   n132_statement_begin_α
#=======================================================================================================================
#         <stmt 28, line 46: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n132_statement_begin_α:                                                       jmp   n133_var_α
n132_statement_begin_β:                                                       jmp   n138_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n133_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # ZN
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n134_var_α
#-----------------------------------------------------------------------------------------------------------------------
n134_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZK
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n135_binop_α
n134_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n132_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n135_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx375_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx375_7
.Lx375_2:               and              edx, 1;                              jz    .Lx375_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              eax, 5;                              je    .Lx375_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx375_4
.Lx375_3:               movq             xmm0, rsi
.Lx375_4:               cmp              ecx, 5;                              je    .Lx375_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx375_6
.Lx375_5:               movq             xmm1, rdi
.Lx375_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx375_7:                                                                     jmp   n136_assign_α
.Lx375_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx375_240
                        add              rsp, 16;                             jmp   n134_var_β
.Lx375_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n136_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n136_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZN
                        mov              qword ptr [r9 + 216], rdx;           jmp   n137_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n137_statement_end_α:   add              rsp, 48;                             jmp   n138_statement_begin_α
#=======================================================================================================================
#         <stmt 29, line 47: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n138_statement_begin_α:                                                       jmp   n139_call_α
n138_statement_begin_β:                                                       jmp   n145_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n139_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd382:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd382]
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
                        cmp              eax, 104;                            jne   .Lx381_240
                        add              rsp, 16;                             jmp   n138_statement_begin_β
.Lx381_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n140_var_α
n139_call_β:            add              rsp, 16;                             jmp   n138_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n140_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # ZD
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n141_coerce_numeric_α
n140_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n138_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n141_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              eax, 5;                              je    .Lx385_1
                        cmp              eax, 3;                              jne   .Lx385_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              eax, 3;                              jne   .Lx385_0
.Lx385_1:               mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n142_coerce_numeric_α
.Lx385_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n142_coerce_numeric_α
n141_coerce_numeric_β:  add              rsp, 16;                             jmp   n140_var_β
#-----------------------------------------------------------------------------------------------------------------------
n142_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx387_1
                        cmp              eax, 3;                              jne   .Lx387_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              eax, 3;                              jne   .Lx387_0
.Lx387_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n143_cmp_test_α
.Lx387_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n143_cmp_test_α
n142_coerce_numeric_β:  add              rsp, 16;                             jmp   n141_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n143_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            js    .Lx389_240
                        add              rsp, 16;                             jmp   n142_coerce_numeric_β
.Lx389_240:                                                                   jmp   n144_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n144_statement_end_α:   add              rsp, 80;                             jmp   n128_statement_begin_α
#=======================================================================================================================
#         <stmt 30, line 48: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n145_statement_begin_α:                                                       jmp   n146_call_α
n145_statement_begin_β:                                                       jmp   n151_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n146_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd395:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd395]
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
                        cmp              eax, 104;                            jne   .Lx394_240
                        add              rsp, 16;                             jmp   n145_statement_begin_β
.Lx394_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n147_var_α
n146_call_β:            add              rsp, 16;                             jmp   n145_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n147_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZT
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n148_binop_α
n147_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n145_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n148_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx397_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx397_7
.Lx397_2:               and              edx, 1;                              jz    .Lx397_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              eax, 5;                              je    .Lx397_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx397_4
.Lx397_3:               movq             xmm0, rsi
.Lx397_4:               cmp              ecx, 5;                              je    .Lx397_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx397_6
.Lx397_5:               movq             xmm1, rdi
.Lx397_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx397_7:                                                                     jmp   n149_assign_α
.Lx397_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx397_240
                        add              rsp, 16;                             jmp   n147_var_β
.Lx397_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n149_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n149_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZE
                        mov              qword ptr [r9 + 184], rdx;           jmp   n150_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n150_statement_end_α:   add              rsp, 48;                             jmp   n151_statement_begin_α
#=======================================================================================================================
#         <stmt 31, line 49: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n151_statement_begin_α:                                                       jmp   n152_lit_string_α
n151_statement_begin_β:                                                       jmp   n157_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n153_var_α
.Lx403_0:               .quad            .Lx403_0_s
.Lx403_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n153_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # ZN
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n154_binop_α
n153_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n151_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n154_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n155_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n155_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx406_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n156_statement_end_α
.Lx406_0:               .quad            .Lx406_0_s
.Lx406_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n156_statement_end_α:   add              rsp, 48;                             jmp   n157_statement_begin_α
#=======================================================================================================================
#         <stmt 32, line 50: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_begin_α:                                                       jmp   n158_lit_string_α
n157_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx411_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n159_var_α
.Lx411_0:               .quad            .Lx411_0_s
.Lx411_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n159_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZE
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n160_binop_α
n159_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n157_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n160_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n161_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n161_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx414_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n162_statement_end_α
.Lx414_0:               .quad            .Lx414_0_s
.Lx414_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n162_statement_end_α:   add              rsp, 48;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 pop              rcx
                        add              rsp, 8;                              jmp   rcx
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
module_init:
                        sub              rsp, 8
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
