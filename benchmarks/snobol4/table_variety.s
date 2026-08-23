                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 17
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 17
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
.Lgvan5:                .string          "ZI"
.Lgvan6:                .string          "ZS"
.Lgvan7:                .string          "tab"
.Lgvan8:                .string          "ix"
.Lgvan9:                .string          "sx"
.Lgvan10:               .string          "rx"
.Lgvan11:               .string          "fixed_n"
.Lgvan12:               .string          "ZK"
.Lgvan13:               .string          "ZT"
.Lgvan14:               .string          "ZE"
.Lgvan15:               .string          "ZD"
.Lgvan16:               .string          "ZN"
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
                        .quad            .Lgvan15
                        .quad            .Lgvan16
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:   mov              r11, 1
                        mov              r10, 1;                              jmp   n1_lit_integer_α
n0_statement_begin_β:   mov              r11, 1;                              jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx501_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_keyword_assign_snobol4_α
.Lx501_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n2_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 3
                        mov              rdi, qword ptr [rip + .Lx502_0]
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
                        cmp              al, 104;                             jne   .Lx502_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n0_statement_begin_β
.Lx502_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n3_statement_end_α
.Lx502_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:     mov              r11, 4
                        mov              r10, 1
                        add              rsp, 32;                             jmp   n4_statement_begin_α
#=======================================================================================================================
#         &ANCHOR = 0
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:   mov              r11, 5
                        mov              r10, 2;                              jmp   n5_lit_integer_α
n4_statement_begin_β:   mov              r11, 5;                              jmp   n8_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       sub              rsp, 16
                        mov              r11, 6
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx507_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_keyword_assign_snobol4_α
.Lx507_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n6_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 7
                        mov              rdi, qword ptr [rip + .Lx508_0]
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
                        cmp              al, 104;                             jne   .Lx508_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n4_statement_begin_β
.Lx508_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n7_statement_end_α
.Lx508_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_end_α:     mov              r11, 8
                        mov              r10, 2
                        add              rsp, 32;                             jmp   n8_statement_begin_α
#=======================================================================================================================
#         &STLIMIT = -1
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_begin_α:   mov              r11, 9
                        mov              r10, 3;                              jmp   n9_lit_integer_α
n8_statement_begin_β:   mov              r11, 9;                              jmp   n13_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       sub              rsp, 16
                        mov              r11, 10
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx513_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_unop_α
.Lx513_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n10_unop_α:             sub              rsp, 16
                        mov              r11, 11
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n11_keyword_assign_snobol4_α
n10_unop_β:             mov              r11, 11
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n8_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n11_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 12
                        mov              rdi, qword ptr [rip + .Lx515_0]
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
                        cmp              al, 104;                             jne   .Lx515_240
                        add              rsp, 16;                             jmp   n10_unop_β
.Lx515_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n12_statement_end_α
.Lx515_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_end_α:    mov              r11, 13
                        mov              r10, 3
                        add              rsp, 48;                             jmp   n13_statement_begin_α
#=======================================================================================================================
#         ZCHK = 40
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_begin_α:  mov              r11, 14
                        mov              r10, 4;                              jmp   n14_lit_integer_α
n13_statement_begin_β:  mov              r11, 14;                             jmp   n17_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:      sub              rsp, 16
                        mov              r11, 15
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx520_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_assign_α
.Lx520_0:               .quad            40
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:           mov              r11, 16
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # ZCHK
                        mov              qword ptr [r9 + 40], rdx;            jmp   n16_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_end_α:    mov              r11, 17
                        mov              r10, 4
                        add              rsp, 16;                             jmp   n17_statement_begin_α
#=======================================================================================================================
#         ZBUD = 500
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_begin_α:  mov              r11, 18
                        mov              r10, 5;                              jmp   n18_lit_integer_α
n17_statement_begin_β:  mov              r11, 18;                             jmp   n21_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:      sub              rsp, 16
                        mov              r11, 19
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx526_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n19_assign_α
.Lx526_0:               .quad            500
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:           mov              r11, 20
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZBUD
                        mov              qword ptr [r9 + 56], rdx;            jmp   n20_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_end_α:    mov              r11, 21
                        mov              r10, 5
                        add              rsp, 16;                             jmp   n21_statement_begin_α
#=======================================================================================================================
#         ZFLR = 20
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_begin_α:  mov              r11, 22
                        mov              r10, 6;                              jmp   n22_lit_integer_α
n21_statement_begin_β:  mov              r11, 22;                             jmp   n25_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:      sub              rsp, 16
                        mov              r11, 23
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx532_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n23_assign_α
.Lx532_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:           mov              r11, 24
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ZFLR
                        mov              qword ptr [r9 + 72], rdx;            jmp   n24_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_end_α:    mov              r11, 25
                        mov              r10, 6
                        add              rsp, 16;                             jmp   n25_statement_begin_α
#=======================================================================================================================
#         DEFINE('ZBODY(ZKN)')                            :(ZBODY_END)
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_begin_α:  mov              r11, 26
                        mov              r10, 7;                              jmp   n26_define_α
n25_statement_begin_β:  mov              r11, 26;                             jmp   n318_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n26_define_α:           mov              r11, 27
                        mov              rdi, qword ptr [rip + .Lx539_0]
                        mov              rsi, qword ptr [rip + .Lx539_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n28_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx539_0]
                        lea              rsi, [rip + ZBODY_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n27_statement_end_α
n26_define_β:           mov              r11, 27;                             jmp   n25_statement_begin_β
.Lx539_0:               .quad            .Lx539_0_s
.Lx539_0_s:             .string          "ZBODY"
.Lx539_1:               .quad            .Lx539_1_s
.Lx539_1_s:             .string          "ZKN"
                                                                              jmp   .Lx540_245
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
                        cmp              rdx, 0;                              jbe   .Lx540_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # ZKN
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx540_41
.Lx540_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx540_41:              lea              rcx, [rip + ZBODY_γ]
                        lea              rax, [rip + ZBODY_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n28_statement_begin_α];  jmp   rax
ZBODY_γ:                mov              rdi, qword ptr [r9 + 0]              # ZBODY
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Lx540_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # ZKN
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx540_110
.Lx540_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx540_110:             mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx540_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # ZKN
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx540_180
.Lx540_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx540_180:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx540_245:
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_end_α:    mov              r11, 28
                        mov              r10, 7;                              jmp   n318_statement_begin_α
#=======================================================================================================================
# ZBODY   ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_begin_α:  mov              r11, 29
                        mov              r10, 8;                              jmp   n29_lit_integer_α
n28_statement_begin_β:  mov              r11, 29;                             jmp   n32_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:      sub              rsp, 16
                        mov              r11, 30
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx545_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_assign_α
.Lx545_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_α:           mov              r11, 31
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZI
                        mov              qword ptr [r9 + 88], rdx;            jmp   n31_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_end_α:    mov              r11, 32
                        mov              r10, 8
                        add              rsp, 16;                             jmp   n32_statement_begin_α
#=======================================================================================================================
#         ZS = 0
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_begin_α:  mov              r11, 33
                        mov              r10, 9;                              jmp   n33_lit_integer_α
n32_statement_begin_β:  mov              r11, 33;                             jmp   n36_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:      sub              rsp, 16
                        mov              r11, 34
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx551_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_assign_α
.Lx551_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:           mov              r11, 35
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZS
                        mov              qword ptr [r9 + 104], rdx;           jmp   n35_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_end_α:    mov              r11, 36
                        mov              r10, 9
                        add              rsp, 16;                             jmp   n36_statement_begin_α
#=======================================================================================================================
# ZBL     tab = TABLE(64)
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_begin_α:  mov              r11, 37
                        mov              r10, 10;                             jmp   n37_lit_integer_α
n36_statement_begin_β:  mov              r11, 37;                             jmp   n41_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:      sub              rsp, 16
                        mov              r11, 38
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx557_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n38_call_α
.Lx557_0:               .quad            64
#-----------------------------------------------------------------------------------------------------------------------
n38_call_α:             sub              rsp, 16
                        mov              r11, 39
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd559:            .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd559]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 327748
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx558_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n36_statement_begin_β
.Lx558_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n39_assign_α
n38_call_β:             mov              r11, 39
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n36_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:           mov              r11, 40
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # tab
                        mov              qword ptr [r9 + 120], rdx;           jmp   n40_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_end_α:    mov              r11, 41
                        mov              r10, 10
                        add              rsp, 32;                             jmp   n41_statement_begin_α
#=======================================================================================================================
#         ix = -30
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_begin_α:  mov              r11, 42
                        mov              r10, 11;                             jmp   n42_lit_integer_α
n41_statement_begin_β:  mov              r11, 42;                             jmp   n46_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:      sub              rsp, 16
                        mov              r11, 43
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx565_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n43_unop_α
.Lx565_0:               .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n43_unop_α:             sub              rsp, 16
                        mov              r11, 44
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n44_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n44_assign_α:           mov              r11, 45
                        mov              rax, qword ptr [rsp + 0]             # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ix
                        mov              qword ptr [r9 + 136], rdx;           jmp   n45_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_end_α:    mov              r11, 46
                        mov              r10, 11
                        add              rsp, 32;                             jmp   n46_statement_begin_α
#=======================================================================================================================
# INTFILL tab[ix] = ix * 3
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_begin_α:  mov              r11, 47
                        mov              r10, 12;                             jmp   n47_var_α
n46_statement_begin_β:  mov              r11, 47;                             jmp   n55_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n47_var_α:              sub              rsp, 16
                        mov              r11, 48
                        mov              rax, qword ptr [r9 + 112]            # tab
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n48_var_α
#-----------------------------------------------------------------------------------------------------------------------
n48_var_α:              sub              rsp, 16
                        mov              r11, 49
                        mov              rax, qword ptr [r9 + 128]            # ix
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n49_subscript_α
n48_var_β:              mov              r11, 49
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n46_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n49_subscript_α:        sub              rsp, 16
                        mov              r11, 50
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx574_240
                        add              rsp, 16;                             jmp   n48_var_β
.Lx574_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n50_var_α
n49_subscript_β:        mov              r11, 50
                        add              rsp, 16;                             jmp   n48_var_β
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:              sub              rsp, 16
                        mov              r11, 51
                        mov              rax, qword ptr [r9 + 128]            # ix
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n51_lit_integer_α
n50_var_β:              mov              r11, 51
                        add              rsp, 16;                             jmp   n49_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:      sub              rsp, 16
                        mov              r11, 52
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx576_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n52_binop_α
n51_lit_integer_β:      mov              r11, 52
                        add              rsp, 16;                             jmp   n50_var_β
.Lx576_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n52_binop_α:            sub              rsp, 16
                        mov              r11, 53
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx577_2
                        mov              rdx, 3
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx577_7
.Lx577_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx577_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 3
                        cmp              al, 5;                               je    .Lx577_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx577_4
.Lx577_3:               movq             xmm0, rsi
.Lx577_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx577_7:                                                                     jmp   n53_assign_var_α
.Lx577_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx577_240
                        add              rsp, 16;                             jmp   n51_lit_integer_β
.Lx577_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n53_assign_var_α
n52_binop_β:            mov              r11, 53
                        add              rsp, 16;                             jmp   n51_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n53_assign_var_α:       sub              rsp, 16
                        mov              r11, 54
                        mov              rdi, qword ptr [rsp + 64]            # subscript
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx578_240
                        add              rsp, 16;                             jmp   n52_binop_β
.Lx578_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n54_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n54_statement_end_α:    mov              r11, 55
                        mov              r10, 12
                        add              rsp, 112;                            jmp   n55_statement_begin_α
#=======================================================================================================================
#         ix = LT(ix, 30) ix + 1                          :S(INTFILL)
#-----------------------------------------------------------------------------------------------------------------------
n55_statement_begin_α:  mov              r11, 56
                        mov              r10, 13;                             jmp   n56_var_α
n55_statement_begin_β:  mov              r11, 56;                             jmp   n66_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:              sub              rsp, 16
                        mov              r11, 57
                        mov              rax, qword ptr [r9 + 128]            # ix
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n57_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:      sub              rsp, 16
                        mov              r11, 58
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx584_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n58_coerce_numeric_α
n57_lit_integer_β:      mov              r11, 58
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n55_statement_begin_β
.Lx584_0:               .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n58_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 59
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx586_1
                        cmp              al, 3;                               jne   .Lx586_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx586_0
.Lx586_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n59_coerce_numeric_α
.Lx586_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
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
n58_coerce_numeric_β:   mov              r11, 59
                        add              rsp, 16;                             jmp   n57_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n59_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 60
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx588_1
                        cmp              al, 3;                               jne   .Lx588_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx588_0
.Lx588_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n60_cmp_test_α
.Lx588_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
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
n59_coerce_numeric_β:   mov              r11, 60
                        add              rsp, 16;                             jmp   n58_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n60_cmp_test_α:         sub              rsp, 16
                        mov              r11, 61
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx590_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx590_239
                        add              rsp, 16;                             jmp   n59_coerce_numeric_β
.Lx590_239:                                                                   jmp   n61_var_α
.Lx590_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx590_240
                        add              rsp, 16;                             jmp   n59_coerce_numeric_β
.Lx590_240:                                                                   jmp   n61_var_α
n60_cmp_test_β:         mov              r11, 61
                        add              rsp, 16;                             jmp   n59_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:              sub              rsp, 16
                        mov              r11, 62
                        mov              rax, qword ptr [r9 + 128]            # ix
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n62_lit_integer_α
n61_var_β:              mov              r11, 62
                        add              rsp, 16;                             jmp   n60_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_integer_α:      sub              rsp, 16
                        mov              r11, 63
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx592_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n63_binop_α
n62_lit_integer_β:      mov              r11, 63
                        add              rsp, 16;                             jmp   n61_var_β
.Lx592_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n63_binop_α:            sub              rsp, 16
                        mov              r11, 64
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx593_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx593_7
.Lx593_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx593_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx593_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx593_4
.Lx593_3:               movq             xmm0, rsi
.Lx593_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx593_7:                                                                     jmp   n64_assign_α
.Lx593_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx593_240
                        add              rsp, 16;                             jmp   n62_lit_integer_β
.Lx593_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n64_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n64_assign_α:           mov              r11, 65
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ix
                        mov              qword ptr [r9 + 136], rdx;           jmp   n65_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_end_α:    mov              r11, 66
                        mov              r10, 13
                        add              rsp, 128;                            jmp   n46_statement_begin_α
#=======================================================================================================================
#         sx = 1
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_begin_α:  mov              r11, 67
                        mov              r10, 14;                             jmp   n67_lit_integer_α
n66_statement_begin_β:  mov              r11, 67;                             jmp   n70_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_integer_α:      sub              rsp, 16
                        mov              r11, 68
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx599_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n68_assign_α
.Lx599_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n68_assign_α:           mov              r11, 69
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # sx
                        mov              qword ptr [r9 + 152], rdx;           jmp   n69_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_end_α:    mov              r11, 70
                        mov              r10, 14
                        add              rsp, 16;                             jmp   n70_statement_begin_α
#=======================================================================================================================
# STRFILL tab['k' sx] = sx * 5
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_begin_α:  mov              r11, 71
                        mov              r10, 15;                             jmp   n71_var_α
n70_statement_begin_β:  mov              r11, 71;                             jmp   n81_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:              sub              rsp, 16
                        mov              r11, 72
                        mov              rax, qword ptr [r9 + 112]            # tab
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n72_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:       sub              rsp, 16
                        mov              r11, 73
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx606_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n73_var_α
n72_lit_string_β:       mov              r11, 73
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n70_statement_begin_β
.Lx606_0:               .quad            .Lx606_0_s
.Lx606_0_s:             .string          "k"
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:              sub              rsp, 16
                        mov              r11, 74
                        mov              rax, qword ptr [r9 + 144]            # sx
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n74_binop_α
n73_var_β:              mov              r11, 74
                        add              rsp, 16;                             jmp   n72_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n74_binop_α:            sub              rsp, 16
                        mov              r11, 75
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n75_subscript_α
n74_binop_β:            mov              r11, 75
                        add              rsp, 16;                             jmp   n73_var_β
#-----------------------------------------------------------------------------------------------------------------------
n75_subscript_α:        sub              rsp, 16
                        mov              r11, 76
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx609_240
                        add              rsp, 16;                             jmp   n74_binop_β
.Lx609_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n76_var_α
n75_subscript_β:        mov              r11, 76
                        add              rsp, 16;                             jmp   n74_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:              sub              rsp, 16
                        mov              r11, 77
                        mov              rax, qword ptr [r9 + 144]            # sx
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n77_lit_integer_α
n76_var_β:              mov              r11, 77
                        add              rsp, 16;                             jmp   n75_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_integer_α:      sub              rsp, 16
                        mov              r11, 78
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx611_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n78_binop_α
n77_lit_integer_β:      mov              r11, 78
                        add              rsp, 16;                             jmp   n76_var_β
.Lx611_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n78_binop_α:            sub              rsp, 16
                        mov              r11, 79
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx612_2
                        mov              rdx, 5
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx612_7
.Lx612_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx612_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 5
                        cmp              al, 5;                               je    .Lx612_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx612_4
.Lx612_3:               movq             xmm0, rsi
.Lx612_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx612_7:                                                                     jmp   n79_assign_var_α
.Lx612_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx612_240
                        add              rsp, 16;                             jmp   n77_lit_integer_β
.Lx612_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n79_assign_var_α
n78_binop_β:            mov              r11, 79
                        add              rsp, 16;                             jmp   n77_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_var_α:       sub              rsp, 16
                        mov              r11, 80
                        mov              rdi, qword ptr [rsp + 64]            # subscript
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx613_240
                        add              rsp, 16;                             jmp   n78_binop_β
.Lx613_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n80_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_end_α:    mov              r11, 81
                        mov              r10, 15
                        add              rsp, 144;                            jmp   n81_statement_begin_α
#=======================================================================================================================
#         tab['a_much_longer_key_' sx] = sx * 7
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_begin_α:  mov              r11, 82
                        mov              r10, 16;                             jmp   n82_var_α
n81_statement_begin_β:  mov              r11, 82;                             jmp   n92_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:              sub              rsp, 16
                        mov              r11, 83
                        mov              rax, qword ptr [r9 + 112]            # tab
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n83_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:       sub              rsp, 16
                        mov              r11, 84
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 18
                        mov              rax, qword ptr [rip + .Lx619_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n84_var_α
n83_lit_string_β:       mov              r11, 84
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n81_statement_begin_β
.Lx619_0:               .quad            .Lx619_0_s
.Lx619_0_s:             .string          "a_much_longer_key_"
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:              sub              rsp, 16
                        mov              r11, 85
                        mov              rax, qword ptr [r9 + 144]            # sx
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n85_binop_α
n84_var_β:              mov              r11, 85
                        add              rsp, 16;                             jmp   n83_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n85_binop_α:            sub              rsp, 16
                        mov              r11, 86
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n86_subscript_α
n85_binop_β:            mov              r11, 86
                        add              rsp, 16;                             jmp   n84_var_β
#-----------------------------------------------------------------------------------------------------------------------
n86_subscript_α:        sub              rsp, 16
                        mov              r11, 87
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx622_240
                        add              rsp, 16;                             jmp   n85_binop_β
.Lx622_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n87_var_α
n86_subscript_β:        mov              r11, 87
                        add              rsp, 16;                             jmp   n85_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:              sub              rsp, 16
                        mov              r11, 88
                        mov              rax, qword ptr [r9 + 144]            # sx
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n88_lit_integer_α
n87_var_β:              mov              r11, 88
                        add              rsp, 16;                             jmp   n86_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:      sub              rsp, 16
                        mov              r11, 89
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx624_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n89_binop_α
n88_lit_integer_β:      mov              r11, 89
                        add              rsp, 16;                             jmp   n87_var_β
.Lx624_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n89_binop_α:            sub              rsp, 16
                        mov              r11, 90
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx625_2
                        mov              rdx, 7
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx625_7
.Lx625_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx625_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 7
                        cmp              al, 5;                               je    .Lx625_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx625_4
.Lx625_3:               movq             xmm0, rsi
.Lx625_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx625_7:                                                                     jmp   n90_assign_var_α
.Lx625_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx625_240
                        add              rsp, 16;                             jmp   n88_lit_integer_β
.Lx625_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n90_assign_var_α
n89_binop_β:            mov              r11, 90
                        add              rsp, 16;                             jmp   n88_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n90_assign_var_α:       sub              rsp, 16
                        mov              r11, 91
                        mov              rdi, qword ptr [rsp + 64]            # subscript
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx626_240
                        add              rsp, 16;                             jmp   n89_binop_β
.Lx626_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n91_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_end_α:    mov              r11, 92
                        mov              r10, 16
                        add              rsp, 144;                            jmp   n92_statement_begin_α
#=======================================================================================================================
#         sx = LT(sx, 20) sx + 1                          :S(STRFILL)
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_begin_α:  mov              r11, 93
                        mov              r10, 17;                             jmp   n93_var_α
n92_statement_begin_β:  mov              r11, 93;                             jmp   n103_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n93_var_α:              sub              rsp, 16
                        mov              r11, 94
                        mov              rax, qword ptr [r9 + 144]            # sx
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n94_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_integer_α:      sub              rsp, 16
                        mov              r11, 95
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx632_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n95_coerce_numeric_α
n94_lit_integer_β:      mov              r11, 95
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n92_statement_begin_β
.Lx632_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n95_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 96
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx634_1
                        cmp              al, 3;                               jne   .Lx634_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx634_0
.Lx634_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n96_coerce_numeric_α
.Lx634_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n96_coerce_numeric_α
n95_coerce_numeric_β:   mov              r11, 96
                        add              rsp, 16;                             jmp   n94_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n96_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 97
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx636_1
                        cmp              al, 3;                               jne   .Lx636_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx636_0
.Lx636_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n97_cmp_test_α
.Lx636_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n97_cmp_test_α
n96_coerce_numeric_β:   mov              r11, 97
                        add              rsp, 16;                             jmp   n95_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n97_cmp_test_α:         sub              rsp, 16
                        mov              r11, 98
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx638_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx638_239
                        add              rsp, 16;                             jmp   n96_coerce_numeric_β
.Lx638_239:                                                                   jmp   n98_var_α
.Lx638_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx638_240
                        add              rsp, 16;                             jmp   n96_coerce_numeric_β
.Lx638_240:                                                                   jmp   n98_var_α
n97_cmp_test_β:         mov              r11, 98
                        add              rsp, 16;                             jmp   n96_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:              sub              rsp, 16
                        mov              r11, 99
                        mov              rax, qword ptr [r9 + 144]            # sx
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n99_lit_integer_α
n98_var_β:              mov              r11, 99
                        add              rsp, 16;                             jmp   n97_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_integer_α:      sub              rsp, 16
                        mov              r11, 100
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx640_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n100_binop_α
n99_lit_integer_β:      mov              r11, 100
                        add              rsp, 16;                             jmp   n98_var_β
.Lx640_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n100_binop_α:           sub              rsp, 16
                        mov              r11, 101
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx641_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx641_7
.Lx641_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx641_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx641_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx641_4
.Lx641_3:               movq             xmm0, rsi
.Lx641_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx641_7:                                                                     jmp   n101_assign_α
.Lx641_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx641_240
                        add              rsp, 16;                             jmp   n99_lit_integer_β
.Lx641_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n101_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n101_assign_α:          mov              r11, 102
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # sx
                        mov              qword ptr [r9 + 152], rdx;           jmp   n102_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n102_statement_end_α:   mov              r11, 103
                        mov              r10, 17
                        add              rsp, 128;                            jmp   n70_statement_begin_α
#=======================================================================================================================
#         tab['17'] = 1700
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_begin_α: mov              r11, 104
                        mov              r10, 18;                             jmp   n104_var_α
n103_statement_begin_β: mov              r11, 104;                            jmp   n110_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n104_var_α:             sub              rsp, 16
                        mov              r11, 105
                        mov              rax, qword ptr [r9 + 112]            # tab
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n105_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:      sub              rsp, 16
                        mov              r11, 106
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx648_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n106_subscript_α
n105_lit_string_β:      mov              r11, 106
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n103_statement_begin_β
.Lx648_0:               .quad            .Lx648_0_s
.Lx648_0_s:             .string          "17"
#-----------------------------------------------------------------------------------------------------------------------
n106_subscript_α:       sub              rsp, 16
                        mov              r11, 107
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx649_240
                        add              rsp, 16;                             jmp   n105_lit_string_β
.Lx649_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n107_lit_integer_α
n106_subscript_β:       mov              r11, 107
                        add              rsp, 16;                             jmp   n105_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_integer_α:     sub              rsp, 16
                        mov              r11, 108
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx650_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n108_assign_var_α
n107_lit_integer_β:     mov              r11, 108
                        add              rsp, 16;                             jmp   n106_subscript_β
.Lx650_0:               .quad            1700
#-----------------------------------------------------------------------------------------------------------------------
n108_assign_var_α:      sub              rsp, 16
                        mov              r11, 109
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx651_240
                        add              rsp, 16;                             jmp   n107_lit_integer_β
.Lx651_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n109_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_end_α:   mov              r11, 110
                        mov              r10, 18
                        add              rsp, 80;                             jmp   n110_statement_begin_α
#=======================================================================================================================
#         rx = 1
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_begin_α: mov              r11, 111
                        mov              r10, 19;                             jmp   n111_lit_integer_α
n110_statement_begin_β: mov              r11, 111;                            jmp   n114_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_integer_α:     sub              rsp, 16
                        mov              r11, 112
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx656_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n112_assign_α
.Lx656_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n112_assign_α:          mov              r11, 113
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # rx
                        mov              qword ptr [r9 + 168], rdx;           jmp   n113_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_end_α:   mov              r11, 114
                        mov              r10, 19
                        add              rsp, 16;                             jmp   n114_statement_begin_α
#=======================================================================================================================
# REALFIL tab[rx / 2.0] = rx * 11
#-----------------------------------------------------------------------------------------------------------------------
n114_statement_begin_α: mov              r11, 115
                        mov              r10, 20;                             jmp   n115_var_α
n114_statement_begin_β: mov              r11, 115;                            jmp   n125_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n115_var_α:             sub              rsp, 16
                        mov              r11, 116
                        mov              rax, qword ptr [r9 + 112]            # tab
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n116_var_α
#-----------------------------------------------------------------------------------------------------------------------
n116_var_α:             sub              rsp, 16
                        mov              r11, 117
                        mov              rax, qword ptr [r9 + 160]            # rx
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n117_lit_real_α
n116_var_β:             mov              r11, 117
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n114_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_real_α:        sub              rsp, 16
                        mov              r11, 118
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              rax, qword ptr [rip + .Lx664_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n118_binop_α
.Lx664_0:               .quad            4611686018427387904
#-----------------------------------------------------------------------------------------------------------------------
n118_binop_α:           sub              rsp, 16
                        mov              r11, 119
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_real
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx665_240
                        add              rsp, 32;                             jmp   n116_var_β
.Lx665_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n119_subscript_α
n118_binop_β:           mov              r11, 119
                        add              rsp, 32;                             jmp   n116_var_β
#-----------------------------------------------------------------------------------------------------------------------
n119_subscript_α:       sub              rsp, 16
                        mov              r11, 120
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx666_240
                        add              rsp, 16;                             jmp   n118_binop_β
.Lx666_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n120_var_α
n119_subscript_β:       mov              r11, 120
                        add              rsp, 16;                             jmp   n118_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n120_var_α:             sub              rsp, 16
                        mov              r11, 121
                        mov              rax, qword ptr [r9 + 160]            # rx
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n121_lit_integer_α
n120_var_β:             mov              r11, 121
                        add              rsp, 16;                             jmp   n119_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_integer_α:     sub              rsp, 16
                        mov              r11, 122
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx668_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n122_binop_α
n121_lit_integer_β:     mov              r11, 122
                        add              rsp, 16;                             jmp   n120_var_β
.Lx668_0:               .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n122_binop_α:           sub              rsp, 16
                        mov              r11, 123
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx669_2
                        mov              rdx, 11
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx669_7
.Lx669_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx669_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 11
                        cmp              al, 5;                               je    .Lx669_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx669_4
.Lx669_3:               movq             xmm0, rsi
.Lx669_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx669_7:                                                                     jmp   n123_assign_var_α
.Lx669_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx669_240
                        add              rsp, 16;                             jmp   n121_lit_integer_β
.Lx669_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n123_assign_var_α
n122_binop_β:           mov              r11, 123
                        add              rsp, 16;                             jmp   n121_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n123_assign_var_α:      sub              rsp, 16
                        mov              r11, 124
                        mov              rdi, qword ptr [rsp + 64]            # subscript
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx670_240
                        add              rsp, 16;                             jmp   n122_binop_β
.Lx670_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n124_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n124_statement_end_α:   mov              r11, 125
                        mov              r10, 20
                        add              rsp, 144;                            jmp   n125_statement_begin_α
#=======================================================================================================================
#         rx = LT(rx, 12) rx + 1                          :S(REALFIL)
#-----------------------------------------------------------------------------------------------------------------------
n125_statement_begin_α: mov              r11, 126
                        mov              r10, 21;                             jmp   n126_var_α
n125_statement_begin_β: mov              r11, 126;                            jmp   n136_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n126_var_α:             sub              rsp, 16
                        mov              r11, 127
                        mov              rax, qword ptr [r9 + 160]            # rx
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n127_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_integer_α:     sub              rsp, 16
                        mov              r11, 128
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx676_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n128_coerce_numeric_α
n127_lit_integer_β:     mov              r11, 128
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n125_statement_begin_β
.Lx676_0:               .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n128_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 129
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx678_1
                        cmp              al, 3;                               jne   .Lx678_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx678_0
.Lx678_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n129_coerce_numeric_α
.Lx678_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n129_coerce_numeric_α
n128_coerce_numeric_β:  mov              r11, 129
                        add              rsp, 16;                             jmp   n127_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n129_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 130
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx680_1
                        cmp              al, 3;                               jne   .Lx680_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx680_0
.Lx680_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n130_cmp_test_α
.Lx680_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n130_cmp_test_α
n129_coerce_numeric_β:  mov              r11, 130
                        add              rsp, 16;                             jmp   n128_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n130_cmp_test_α:        sub              rsp, 16
                        mov              r11, 131
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx682_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx682_239
                        add              rsp, 16;                             jmp   n129_coerce_numeric_β
.Lx682_239:                                                                   jmp   n131_var_α
.Lx682_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx682_240
                        add              rsp, 16;                             jmp   n129_coerce_numeric_β
.Lx682_240:                                                                   jmp   n131_var_α
n130_cmp_test_β:        mov              r11, 131
                        add              rsp, 16;                             jmp   n129_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n131_var_α:             sub              rsp, 16
                        mov              r11, 132
                        mov              rax, qword ptr [r9 + 160]            # rx
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n132_lit_integer_α
n131_var_β:             mov              r11, 132
                        add              rsp, 16;                             jmp   n130_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_integer_α:     sub              rsp, 16
                        mov              r11, 133
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx684_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n133_binop_α
n132_lit_integer_β:     mov              r11, 133
                        add              rsp, 16;                             jmp   n131_var_β
.Lx684_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n133_binop_α:           sub              rsp, 16
                        mov              r11, 134
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx685_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx685_7
.Lx685_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx685_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx685_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx685_4
.Lx685_3:               movq             xmm0, rsi
.Lx685_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx685_7:                                                                     jmp   n134_assign_α
.Lx685_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx685_240
                        add              rsp, 16;                             jmp   n132_lit_integer_β
.Lx685_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n134_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n134_assign_α:          mov              r11, 135
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # rx
                        mov              qword ptr [r9 + 168], rdx;           jmp   n135_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n135_statement_end_α:   mov              r11, 136
                        mov              r10, 21
                        add              rsp, 128;                            jmp   n114_statement_begin_α
#=======================================================================================================================
#         tab[''] = 99
#-----------------------------------------------------------------------------------------------------------------------
n136_statement_begin_α: mov              r11, 137
                        mov              r10, 22;                             jmp   n137_var_α
n136_statement_begin_β: mov              r11, 137;                            jmp   n143_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n137_var_α:             sub              rsp, 16
                        mov              r11, 138
                        mov              rax, qword ptr [r9 + 112]            # tab
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n138_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:      sub              rsp, 16
                        mov              r11, 139
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx692_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n139_subscript_α
n138_lit_string_β:      mov              r11, 139
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n136_statement_begin_β
.Lx692_0:               .quad            .Lx692_0_s
.Lx692_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n139_subscript_α:       sub              rsp, 16
                        mov              r11, 140
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx693_240
                        add              rsp, 16;                             jmp   n138_lit_string_β
.Lx693_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n140_lit_integer_α
n139_subscript_β:       mov              r11, 140
                        add              rsp, 16;                             jmp   n138_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_integer_α:     sub              rsp, 16
                        mov              r11, 141
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx694_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n141_assign_var_α
n140_lit_integer_β:     mov              r11, 141
                        add              rsp, 16;                             jmp   n139_subscript_β
.Lx694_0:               .quad            99
#-----------------------------------------------------------------------------------------------------------------------
n141_assign_var_α:      sub              rsp, 16
                        mov              r11, 142
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx695_240
                        add              rsp, 16;                             jmp   n140_lit_integer_β
.Lx695_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n142_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n142_statement_end_α:   mov              r11, 143
                        mov              r10, 22
                        add              rsp, 80;                             jmp   n143_statement_begin_α
#=======================================================================================================================
#         tab[17] = 1717
#-----------------------------------------------------------------------------------------------------------------------
n143_statement_begin_α: mov              r11, 144
                        mov              r10, 23;                             jmp   n144_var_α
n143_statement_begin_β: mov              r11, 144;                            jmp   n150_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n144_var_α:             sub              rsp, 16
                        mov              r11, 145
                        mov              rax, qword ptr [r9 + 112]            # tab
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n145_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_integer_α:     sub              rsp, 16
                        mov              r11, 146
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx701_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n146_subscript_α
n145_lit_integer_β:     mov              r11, 146
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n143_statement_begin_β
.Lx701_0:               .quad            17
#-----------------------------------------------------------------------------------------------------------------------
n146_subscript_α:       sub              rsp, 16
                        mov              r11, 147
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx702_240
                        add              rsp, 16;                             jmp   n145_lit_integer_β
.Lx702_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n147_lit_integer_α
n146_subscript_β:       mov              r11, 147
                        add              rsp, 16;                             jmp   n145_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_integer_α:     sub              rsp, 16
                        mov              r11, 148
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx703_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n148_assign_var_α
n147_lit_integer_β:     mov              r11, 148
                        add              rsp, 16;                             jmp   n146_subscript_β
.Lx703_0:               .quad            1717
#-----------------------------------------------------------------------------------------------------------------------
n148_assign_var_α:      sub              rsp, 16
                        mov              r11, 149
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx704_240
                        add              rsp, 16;                             jmp   n147_lit_integer_β
.Lx704_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n149_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n149_statement_end_α:   mov              r11, 150
                        mov              r10, 23
                        add              rsp, 80;                             jmp   n150_statement_begin_α
#=======================================================================================================================
#         ZS = ZS + tab[17] + tab['17']
#-----------------------------------------------------------------------------------------------------------------------
n150_statement_begin_α: mov              r11, 151
                        mov              r10, 24;                             jmp   n151_var_α
n150_statement_begin_β: mov              r11, 151;                            jmp   n164_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n151_var_α:             sub              rsp, 16
                        mov              r11, 152
                        mov              rax, qword ptr [r9 + 96]             # ZS
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n152_var_α
#-----------------------------------------------------------------------------------------------------------------------
n152_var_α:             sub              rsp, 16
                        mov              r11, 153
                        mov              rax, qword ptr [r9 + 112]            # tab
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n153_lit_integer_α
n152_var_β:             mov              r11, 153
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n150_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:     sub              rsp, 16
                        mov              r11, 154
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx711_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n154_subscript_α
n153_lit_integer_β:     mov              r11, 154
                        add              rsp, 16;                             jmp   n152_var_β
.Lx711_0:               .quad            17
#-----------------------------------------------------------------------------------------------------------------------
n154_subscript_α:       sub              rsp, 16
                        mov              r11, 155
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx712_240
                        add              rsp, 16;                             jmp   n153_lit_integer_β
.Lx712_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n155_deref_α
n154_subscript_β:       mov              r11, 155
                        add              rsp, 16;                             jmp   n153_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n155_deref_α:           sub              rsp, 16
                        mov              r11, 156
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx713_240
                        add              rsp, 16;                             jmp   n154_subscript_β
.Lx713_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n156_binop_α
n155_deref_β:           mov              r11, 156
                        add              rsp, 16;                             jmp   n154_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n156_binop_α:           sub              rsp, 16
                        mov              r11, 157
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx714_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx714_7
.Lx714_2:               and              edx, 1;                              jz    .Lx714_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lx714_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx714_4
.Lx714_3:               movq             xmm0, rsi
.Lx714_4:               cmp              cl, 5;                               je    .Lx714_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx714_6
.Lx714_5:               movq             xmm1, rdi
.Lx714_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx714_7:                                                                     jmp   n157_var_α
.Lx714_0:               mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx714_240
                        add              rsp, 16;                             jmp   n155_deref_β
.Lx714_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n157_var_α
n156_binop_β:           mov              r11, 157
                        add              rsp, 16;                             jmp   n155_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n157_var_α:             sub              rsp, 16
                        mov              r11, 158
                        mov              rax, qword ptr [r9 + 112]            # tab
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n158_lit_string_α
n157_var_β:             mov              r11, 158
                        add              rsp, 16;                             jmp   n156_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_string_α:      sub              rsp, 16
                        mov              r11, 159
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx716_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n159_subscript_α
n158_lit_string_β:      mov              r11, 159
                        add              rsp, 16;                             jmp   n157_var_β
.Lx716_0:               .quad            .Lx716_0_s
.Lx716_0_s:             .string          "17"
#-----------------------------------------------------------------------------------------------------------------------
n159_subscript_α:       sub              rsp, 16
                        mov              r11, 160
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx717_240
                        add              rsp, 16;                             jmp   n158_lit_string_β
.Lx717_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n160_deref_α
n159_subscript_β:       mov              r11, 160
                        add              rsp, 16;                             jmp   n158_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n160_deref_α:           sub              rsp, 16
                        mov              r11, 161
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx718_240
                        add              rsp, 16;                             jmp   n159_subscript_β
.Lx718_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n161_binop_α
n160_deref_β:           mov              r11, 161
                        add              rsp, 16;                             jmp   n159_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n161_binop_α:           sub              rsp, 16
                        mov              r11, 162
                        mov              eax, dword ptr [rsp + 80]            # binop
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx719_2
                        mov              rax, qword ptr [rsp + 88]            # binop
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx719_7
.Lx719_2:               and              edx, 1;                              jz    .Lx719_0
                        mov              rsi, qword ptr [rsp + 88]            # binop
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lx719_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx719_4
.Lx719_3:               movq             xmm0, rsi
.Lx719_4:               cmp              cl, 5;                               je    .Lx719_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx719_6
.Lx719_5:               movq             xmm1, rdi
.Lx719_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx719_7:                                                                     jmp   n162_assign_α
.Lx719_0:               mov              rdi, qword ptr [rsp + 80]            # binop
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx719_240
                        add              rsp, 16;                             jmp   n160_deref_β
.Lx719_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n162_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n162_assign_α:          mov              r11, 163
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZS
                        mov              qword ptr [r9 + 104], rdx;           jmp   n163_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n163_statement_end_α:   mov              r11, 164
                        mov              r10, 24
                        add              rsp, 176;                            jmp   n164_statement_begin_α
#=======================================================================================================================
#         tab[5] = 500
#-----------------------------------------------------------------------------------------------------------------------
n164_statement_begin_α: mov              r11, 165
                        mov              r10, 25;                             jmp   n165_var_α
n164_statement_begin_β: mov              r11, 165;                            jmp   n171_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n165_var_α:             sub              rsp, 16
                        mov              r11, 166
                        mov              rax, qword ptr [r9 + 112]            # tab
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n166_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_integer_α:     sub              rsp, 16
                        mov              r11, 167
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx726_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n167_subscript_α
n166_lit_integer_β:     mov              r11, 167
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n164_statement_begin_β
.Lx726_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n167_subscript_α:       sub              rsp, 16
                        mov              r11, 168
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx727_240
                        add              rsp, 16;                             jmp   n166_lit_integer_β
.Lx727_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n168_lit_integer_α
n167_subscript_β:       mov              r11, 168
                        add              rsp, 16;                             jmp   n166_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_integer_α:     sub              rsp, 16
                        mov              r11, 169
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx728_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n169_assign_var_α
n168_lit_integer_β:     mov              r11, 169
                        add              rsp, 16;                             jmp   n167_subscript_β
.Lx728_0:               .quad            500
#-----------------------------------------------------------------------------------------------------------------------
n169_assign_var_α:      sub              rsp, 16
                        mov              r11, 170
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx729_240
                        add              rsp, 16;                             jmp   n168_lit_integer_β
.Lx729_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n170_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_end_α:   mov              r11, 171
                        mov              r10, 25
                        add              rsp, 80;                             jmp   n171_statement_begin_α
#=======================================================================================================================
#         tab[5] = 501
#-----------------------------------------------------------------------------------------------------------------------
n171_statement_begin_α: mov              r11, 172
                        mov              r10, 26;                             jmp   n172_var_α
n171_statement_begin_β: mov              r11, 172;                            jmp   n178_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n172_var_α:             sub              rsp, 16
                        mov              r11, 173
                        mov              rax, qword ptr [r9 + 112]            # tab
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n173_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_integer_α:     sub              rsp, 16
                        mov              r11, 174
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx735_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n174_subscript_α
n173_lit_integer_β:     mov              r11, 174
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n171_statement_begin_β
.Lx735_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n174_subscript_α:       sub              rsp, 16
                        mov              r11, 175
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx736_240
                        add              rsp, 16;                             jmp   n173_lit_integer_β
.Lx736_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n175_lit_integer_α
n174_subscript_β:       mov              r11, 175
                        add              rsp, 16;                             jmp   n173_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_integer_α:     sub              rsp, 16
                        mov              r11, 176
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx737_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n176_assign_var_α
n175_lit_integer_β:     mov              r11, 176
                        add              rsp, 16;                             jmp   n174_subscript_β
.Lx737_0:               .quad            501
#-----------------------------------------------------------------------------------------------------------------------
n176_assign_var_α:      sub              rsp, 16
                        mov              r11, 177
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx738_240
                        add              rsp, 16;                             jmp   n175_lit_integer_β
.Lx738_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n177_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n177_statement_end_α:   mov              r11, 178
                        mov              r10, 26
                        add              rsp, 80;                             jmp   n178_statement_begin_α
#=======================================================================================================================
#         ZS = ZS + tab[5]
#-----------------------------------------------------------------------------------------------------------------------
n178_statement_begin_α: mov              r11, 179
                        mov              r10, 27;                             jmp   n179_var_α
n178_statement_begin_β: mov              r11, 179;                            jmp   n187_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n179_var_α:             sub              rsp, 16
                        mov              r11, 180
                        mov              rax, qword ptr [r9 + 96]             # ZS
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n180_var_α
#-----------------------------------------------------------------------------------------------------------------------
n180_var_α:             sub              rsp, 16
                        mov              r11, 181
                        mov              rax, qword ptr [r9 + 112]            # tab
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n181_lit_integer_α
n180_var_β:             mov              r11, 181
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n178_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_integer_α:     sub              rsp, 16
                        mov              r11, 182
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx745_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n182_subscript_α
n181_lit_integer_β:     mov              r11, 182
                        add              rsp, 16;                             jmp   n180_var_β
.Lx745_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n182_subscript_α:       sub              rsp, 16
                        mov              r11, 183
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx746_240
                        add              rsp, 16;                             jmp   n181_lit_integer_β
.Lx746_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n183_deref_α
n182_subscript_β:       mov              r11, 183
                        add              rsp, 16;                             jmp   n181_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n183_deref_α:           sub              rsp, 16
                        mov              r11, 184
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx747_240
                        add              rsp, 16;                             jmp   n182_subscript_β
.Lx747_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n184_binop_α
n183_deref_β:           mov              r11, 184
                        add              rsp, 16;                             jmp   n182_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n184_binop_α:           sub              rsp, 16
                        mov              r11, 185
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx748_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx748_7
.Lx748_2:               and              edx, 1;                              jz    .Lx748_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lx748_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx748_4
.Lx748_3:               movq             xmm0, rsi
.Lx748_4:               cmp              cl, 5;                               je    .Lx748_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx748_6
.Lx748_5:               movq             xmm1, rdi
.Lx748_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx748_7:                                                                     jmp   n185_assign_α
.Lx748_0:               mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx748_240
                        add              rsp, 16;                             jmp   n183_deref_β
.Lx748_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n185_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n185_assign_α:          mov              r11, 186
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZS
                        mov              qword ptr [r9 + 104], rdx;           jmp   n186_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n186_statement_end_α:   mov              r11, 187
                        mov              r10, 27
                        add              rsp, 96;                             jmp   n187_statement_begin_α
#=======================================================================================================================
#         ix = -30
#-----------------------------------------------------------------------------------------------------------------------
n187_statement_begin_α: mov              r11, 188
                        mov              r10, 28;                             jmp   n188_lit_integer_α
n187_statement_begin_β: mov              r11, 188;                            jmp   n192_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n188_lit_integer_α:     sub              rsp, 16
                        mov              r11, 189
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx754_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n189_unop_α
.Lx754_0:               .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n189_unop_α:            sub              rsp, 16
                        mov              r11, 190
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n190_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n190_assign_α:          mov              r11, 191
                        mov              rax, qword ptr [rsp + 0]             # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ix
                        mov              qword ptr [r9 + 136], rdx;           jmp   n191_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n191_statement_end_α:   mov              r11, 192
                        mov              r10, 28
                        add              rsp, 32;                             jmp   n192_statement_begin_α
#=======================================================================================================================
# INTREAD ZS = ZS + tab[ix]
#-----------------------------------------------------------------------------------------------------------------------
n192_statement_begin_α: mov              r11, 193
                        mov              r10, 29;                             jmp   n193_var_α
n192_statement_begin_β: mov              r11, 193;                            jmp   n201_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n193_var_α:             sub              rsp, 16
                        mov              r11, 194
                        mov              rax, qword ptr [r9 + 96]             # ZS
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n194_var_α
#-----------------------------------------------------------------------------------------------------------------------
n194_var_α:             sub              rsp, 16
                        mov              r11, 195
                        mov              rax, qword ptr [r9 + 112]            # tab
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n195_var_α
n194_var_β:             mov              r11, 195
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n192_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n195_var_α:             sub              rsp, 16
                        mov              r11, 196
                        mov              rax, qword ptr [r9 + 128]            # ix
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n196_subscript_α
n195_var_β:             mov              r11, 196
                        add              rsp, 16;                             jmp   n194_var_β
#-----------------------------------------------------------------------------------------------------------------------
n196_subscript_α:       sub              rsp, 16
                        mov              r11, 197
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx764_240
                        add              rsp, 16;                             jmp   n195_var_β
.Lx764_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n197_deref_α
n196_subscript_β:       mov              r11, 197
                        add              rsp, 16;                             jmp   n195_var_β
#-----------------------------------------------------------------------------------------------------------------------
n197_deref_α:           sub              rsp, 16
                        mov              r11, 198
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx765_240
                        add              rsp, 16;                             jmp   n196_subscript_β
.Lx765_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n198_binop_α
n197_deref_β:           mov              r11, 198
                        add              rsp, 16;                             jmp   n196_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n198_binop_α:           sub              rsp, 16
                        mov              r11, 199
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx766_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx766_7
.Lx766_2:               and              edx, 1;                              jz    .Lx766_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lx766_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx766_4
.Lx766_3:               movq             xmm0, rsi
.Lx766_4:               cmp              cl, 5;                               je    .Lx766_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx766_6
.Lx766_5:               movq             xmm1, rdi
.Lx766_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx766_7:                                                                     jmp   n199_assign_α
.Lx766_0:               mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx766_240
                        add              rsp, 16;                             jmp   n197_deref_β
.Lx766_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n199_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n199_assign_α:          mov              r11, 200
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZS
                        mov              qword ptr [r9 + 104], rdx;           jmp   n200_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n200_statement_end_α:   mov              r11, 201
                        mov              r10, 29
                        add              rsp, 96;                             jmp   n201_statement_begin_α
#=======================================================================================================================
#         ix = LT(ix, 30) ix + 1                          :S(INTREAD)
#-----------------------------------------------------------------------------------------------------------------------
n201_statement_begin_α: mov              r11, 202
                        mov              r10, 30;                             jmp   n202_var_α
n201_statement_begin_β: mov              r11, 202;                            jmp   n212_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n202_var_α:             sub              rsp, 16
                        mov              r11, 203
                        mov              rax, qword ptr [r9 + 128]            # ix
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n203_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_integer_α:     sub              rsp, 16
                        mov              r11, 204
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx773_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n204_coerce_numeric_α
n203_lit_integer_β:     mov              r11, 204
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n201_statement_begin_β
.Lx773_0:               .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n204_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 205
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx775_1
                        cmp              al, 3;                               jne   .Lx775_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx775_0
.Lx775_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n205_coerce_numeric_α
.Lx775_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n205_coerce_numeric_α
n204_coerce_numeric_β:  mov              r11, 205
                        add              rsp, 16;                             jmp   n203_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n205_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 206
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx777_1
                        cmp              al, 3;                               jne   .Lx777_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx777_0
.Lx777_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n206_cmp_test_α
.Lx777_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n206_cmp_test_α
n205_coerce_numeric_β:  mov              r11, 206
                        add              rsp, 16;                             jmp   n204_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n206_cmp_test_α:        sub              rsp, 16
                        mov              r11, 207
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx779_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx779_239
                        add              rsp, 16;                             jmp   n205_coerce_numeric_β
.Lx779_239:                                                                   jmp   n207_var_α
.Lx779_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx779_240
                        add              rsp, 16;                             jmp   n205_coerce_numeric_β
.Lx779_240:                                                                   jmp   n207_var_α
n206_cmp_test_β:        mov              r11, 207
                        add              rsp, 16;                             jmp   n205_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n207_var_α:             sub              rsp, 16
                        mov              r11, 208
                        mov              rax, qword ptr [r9 + 128]            # ix
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n208_lit_integer_α
n207_var_β:             mov              r11, 208
                        add              rsp, 16;                             jmp   n206_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n208_lit_integer_α:     sub              rsp, 16
                        mov              r11, 209
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx781_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n209_binop_α
n208_lit_integer_β:     mov              r11, 209
                        add              rsp, 16;                             jmp   n207_var_β
.Lx781_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n209_binop_α:           sub              rsp, 16
                        mov              r11, 210
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx782_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx782_7
.Lx782_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx782_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx782_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx782_4
.Lx782_3:               movq             xmm0, rsi
.Lx782_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx782_7:                                                                     jmp   n210_assign_α
.Lx782_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx782_240
                        add              rsp, 16;                             jmp   n208_lit_integer_β
.Lx782_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n210_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n210_assign_α:          mov              r11, 211
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ix
                        mov              qword ptr [r9 + 136], rdx;           jmp   n211_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n211_statement_end_α:   mov              r11, 212
                        mov              r10, 30
                        add              rsp, 128;                            jmp   n192_statement_begin_α
#=======================================================================================================================
#         sx = 1
#-----------------------------------------------------------------------------------------------------------------------
n212_statement_begin_α: mov              r11, 213
                        mov              r10, 31;                             jmp   n213_lit_integer_α
n212_statement_begin_β: mov              r11, 213;                            jmp   n216_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n213_lit_integer_α:     sub              rsp, 16
                        mov              r11, 214
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx788_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n214_assign_α
.Lx788_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n214_assign_α:          mov              r11, 215
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # sx
                        mov              qword ptr [r9 + 152], rdx;           jmp   n215_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n215_statement_end_α:   mov              r11, 216
                        mov              r10, 31
                        add              rsp, 16;                             jmp   n216_statement_begin_α
#=======================================================================================================================
# STRREAD ZS = ZS + tab['k' sx] + tab['a_much_longer_key_' sx]
#-----------------------------------------------------------------------------------------------------------------------
n216_statement_begin_α: mov              r11, 217
                        mov              r10, 32;                             jmp   n217_var_α
n216_statement_begin_β: mov              r11, 217;                            jmp   n234_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n217_var_α:             sub              rsp, 16
                        mov              r11, 218
                        mov              rax, qword ptr [r9 + 96]             # ZS
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n218_var_α
#-----------------------------------------------------------------------------------------------------------------------
n218_var_α:             sub              rsp, 16
                        mov              r11, 219
                        mov              rax, qword ptr [r9 + 112]            # tab
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n219_lit_string_α
n218_var_β:             mov              r11, 219
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n216_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:      sub              rsp, 16
                        mov              r11, 220
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx796_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n220_var_α
n219_lit_string_β:      mov              r11, 220
                        add              rsp, 16;                             jmp   n218_var_β
.Lx796_0:               .quad            .Lx796_0_s
.Lx796_0_s:             .string          "k"
#-----------------------------------------------------------------------------------------------------------------------
n220_var_α:             sub              rsp, 16
                        mov              r11, 221
                        mov              rax, qword ptr [r9 + 144]            # sx
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n221_binop_α
n220_var_β:             mov              r11, 221
                        add              rsp, 16;                             jmp   n219_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n221_binop_α:           sub              rsp, 16
                        mov              r11, 222
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n222_subscript_α
n221_binop_β:           mov              r11, 222
                        add              rsp, 16;                             jmp   n220_var_β
#-----------------------------------------------------------------------------------------------------------------------
n222_subscript_α:       sub              rsp, 16
                        mov              r11, 223
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx799_240
                        add              rsp, 16;                             jmp   n221_binop_β
.Lx799_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n223_deref_α
n222_subscript_β:       mov              r11, 223
                        add              rsp, 16;                             jmp   n221_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n223_deref_α:           sub              rsp, 16
                        mov              r11, 224
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx800_240
                        add              rsp, 16;                             jmp   n222_subscript_β
.Lx800_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n224_binop_α
n223_deref_β:           mov              r11, 224
                        add              rsp, 16;                             jmp   n222_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n224_binop_α:           sub              rsp, 16
                        mov              r11, 225
                        mov              eax, dword ptr [rsp + 112]           # var
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx801_2
                        mov              rax, qword ptr [rsp + 120]           # var
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx801_7
.Lx801_2:               and              edx, 1;                              jz    .Lx801_0
                        mov              rsi, qword ptr [rsp + 120]           # var
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lx801_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx801_4
.Lx801_3:               movq             xmm0, rsi
.Lx801_4:               cmp              cl, 5;                               je    .Lx801_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx801_6
.Lx801_5:               movq             xmm1, rdi
.Lx801_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx801_7:                                                                     jmp   n225_var_α
.Lx801_0:               mov              rdi, qword ptr [rsp + 112]           # var
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx801_240
                        add              rsp, 16;                             jmp   n223_deref_β
.Lx801_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n225_var_α
n224_binop_β:           mov              r11, 225
                        add              rsp, 16;                             jmp   n223_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n225_var_α:             sub              rsp, 16
                        mov              r11, 226
                        mov              rax, qword ptr [r9 + 112]            # tab
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n226_lit_string_α
n225_var_β:             mov              r11, 226
                        add              rsp, 16;                             jmp   n224_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n226_lit_string_α:      sub              rsp, 16
                        mov              r11, 227
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 18
                        mov              rax, qword ptr [rip + .Lx803_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n227_var_α
n226_lit_string_β:      mov              r11, 227
                        add              rsp, 16;                             jmp   n225_var_β
.Lx803_0:               .quad            .Lx803_0_s
.Lx803_0_s:             .string          "a_much_longer_key_"
#-----------------------------------------------------------------------------------------------------------------------
n227_var_α:             sub              rsp, 16
                        mov              r11, 228
                        mov              rax, qword ptr [r9 + 144]            # sx
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n228_binop_α
n227_var_β:             mov              r11, 228
                        add              rsp, 16;                             jmp   n226_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n228_binop_α:           sub              rsp, 16
                        mov              r11, 229
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n229_subscript_α
n228_binop_β:           mov              r11, 229
                        add              rsp, 16;                             jmp   n227_var_β
#-----------------------------------------------------------------------------------------------------------------------
n229_subscript_α:       sub              rsp, 16
                        mov              r11, 230
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx806_240
                        add              rsp, 16;                             jmp   n228_binop_β
.Lx806_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n230_deref_α
n229_subscript_β:       mov              r11, 230
                        add              rsp, 16;                             jmp   n228_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n230_deref_α:           sub              rsp, 16
                        mov              r11, 231
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx807_240
                        add              rsp, 16;                             jmp   n229_subscript_β
.Lx807_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n231_binop_α
n230_deref_β:           mov              r11, 231
                        add              rsp, 16;                             jmp   n229_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n231_binop_α:           sub              rsp, 16
                        mov              r11, 232
                        mov              eax, dword ptr [rsp + 112]           # binop
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx808_2
                        mov              rax, qword ptr [rsp + 120]           # binop
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx808_7
.Lx808_2:               and              edx, 1;                              jz    .Lx808_0
                        mov              rsi, qword ptr [rsp + 120]           # binop
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lx808_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx808_4
.Lx808_3:               movq             xmm0, rsi
.Lx808_4:               cmp              cl, 5;                               je    .Lx808_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx808_6
.Lx808_5:               movq             xmm1, rdi
.Lx808_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx808_7:                                                                     jmp   n232_assign_α
.Lx808_0:               mov              rdi, qword ptr [rsp + 112]           # binop
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx808_240
                        add              rsp, 16;                             jmp   n230_deref_β
.Lx808_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n232_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n232_assign_α:          mov              r11, 233
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZS
                        mov              qword ptr [r9 + 104], rdx;           jmp   n233_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n233_statement_end_α:   mov              r11, 234
                        mov              r10, 32
                        add              rsp, 240;                            jmp   n234_statement_begin_α
#=======================================================================================================================
#         sx = LT(sx, 20) sx + 1                          :S(STRREAD)
#-----------------------------------------------------------------------------------------------------------------------
n234_statement_begin_α: mov              r11, 235
                        mov              r10, 33;                             jmp   n235_var_α
n234_statement_begin_β: mov              r11, 235;                            jmp   n245_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n235_var_α:             sub              rsp, 16
                        mov              r11, 236
                        mov              rax, qword ptr [r9 + 144]            # sx
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n236_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n236_lit_integer_α:     sub              rsp, 16
                        mov              r11, 237
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx815_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n237_coerce_numeric_α
n236_lit_integer_β:     mov              r11, 237
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n234_statement_begin_β
.Lx815_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n237_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 238
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx817_1
                        cmp              al, 3;                               jne   .Lx817_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx817_0
.Lx817_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n238_coerce_numeric_α
.Lx817_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n238_coerce_numeric_α
n237_coerce_numeric_β:  mov              r11, 238
                        add              rsp, 16;                             jmp   n236_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n238_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 239
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx819_1
                        cmp              al, 3;                               jne   .Lx819_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx819_0
.Lx819_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n239_cmp_test_α
.Lx819_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n239_cmp_test_α
n238_coerce_numeric_β:  mov              r11, 239
                        add              rsp, 16;                             jmp   n237_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n239_cmp_test_α:        sub              rsp, 16
                        mov              r11, 240
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx821_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx821_239
                        add              rsp, 16;                             jmp   n238_coerce_numeric_β
.Lx821_239:                                                                   jmp   n240_var_α
.Lx821_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx821_240
                        add              rsp, 16;                             jmp   n238_coerce_numeric_β
.Lx821_240:                                                                   jmp   n240_var_α
n239_cmp_test_β:        mov              r11, 240
                        add              rsp, 16;                             jmp   n238_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n240_var_α:             sub              rsp, 16
                        mov              r11, 241
                        mov              rax, qword ptr [r9 + 144]            # sx
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n241_lit_integer_α
n240_var_β:             mov              r11, 241
                        add              rsp, 16;                             jmp   n239_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n241_lit_integer_α:     sub              rsp, 16
                        mov              r11, 242
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx823_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n242_binop_α
n241_lit_integer_β:     mov              r11, 242
                        add              rsp, 16;                             jmp   n240_var_β
.Lx823_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n242_binop_α:           sub              rsp, 16
                        mov              r11, 243
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx824_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx824_7
.Lx824_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx824_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx824_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx824_4
.Lx824_3:               movq             xmm0, rsi
.Lx824_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx824_7:                                                                     jmp   n243_assign_α
.Lx824_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx824_240
                        add              rsp, 16;                             jmp   n241_lit_integer_β
.Lx824_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n243_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n243_assign_α:          mov              r11, 244
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # sx
                        mov              qword ptr [r9 + 152], rdx;           jmp   n244_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n244_statement_end_α:   mov              r11, 245
                        mov              r10, 33
                        add              rsp, 128;                            jmp   n216_statement_begin_α
#=======================================================================================================================
#         rx = 1
#-----------------------------------------------------------------------------------------------------------------------
n245_statement_begin_α: mov              r11, 246
                        mov              r10, 34;                             jmp   n246_lit_integer_α
n245_statement_begin_β: mov              r11, 246;                            jmp   n249_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n246_lit_integer_α:     sub              rsp, 16
                        mov              r11, 247
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx830_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n247_assign_α
.Lx830_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n247_assign_α:          mov              r11, 248
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # rx
                        mov              qword ptr [r9 + 168], rdx;           jmp   n248_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n248_statement_end_α:   mov              r11, 249
                        mov              r10, 34
                        add              rsp, 16;                             jmp   n249_statement_begin_α
#=======================================================================================================================
# REALRD  ZS = ZS + tab[rx / 2.0]
#-----------------------------------------------------------------------------------------------------------------------
n249_statement_begin_α: mov              r11, 250
                        mov              r10, 35;                             jmp   n250_var_α
n249_statement_begin_β: mov              r11, 250;                            jmp   n260_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n250_var_α:             sub              rsp, 16
                        mov              r11, 251
                        mov              rax, qword ptr [r9 + 96]             # ZS
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n251_var_α
#-----------------------------------------------------------------------------------------------------------------------
n251_var_α:             sub              rsp, 16
                        mov              r11, 252
                        mov              rax, qword ptr [r9 + 112]            # tab
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n252_var_α
n251_var_β:             mov              r11, 252
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n249_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n252_var_α:             sub              rsp, 16
                        mov              r11, 253
                        mov              rax, qword ptr [r9 + 160]            # rx
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n253_lit_real_α
n252_var_β:             mov              r11, 253
                        add              rsp, 16;                             jmp   n251_var_β
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_real_α:        sub              rsp, 16
                        mov              r11, 254
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              rax, qword ptr [rip + .Lx839_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n254_binop_α
.Lx839_0:               .quad            4611686018427387904
#-----------------------------------------------------------------------------------------------------------------------
n254_binop_α:           sub              rsp, 16
                        mov              r11, 255
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_real
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx840_240
                        add              rsp, 32;                             jmp   n252_var_β
.Lx840_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n255_subscript_α
n254_binop_β:           mov              r11, 255
                        add              rsp, 32;                             jmp   n252_var_β
#-----------------------------------------------------------------------------------------------------------------------
n255_subscript_α:       sub              rsp, 16
                        mov              r11, 256
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx841_240
                        add              rsp, 16;                             jmp   n254_binop_β
.Lx841_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n256_deref_α
n255_subscript_β:       mov              r11, 256
                        add              rsp, 16;                             jmp   n254_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n256_deref_α:           sub              rsp, 16
                        mov              r11, 257
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx842_240
                        add              rsp, 16;                             jmp   n255_subscript_β
.Lx842_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n257_binop_α
n256_deref_β:           mov              r11, 257
                        add              rsp, 16;                             jmp   n255_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n257_binop_α:           sub              rsp, 16
                        mov              r11, 258
                        mov              eax, dword ptr [rsp + 112]           # var
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx843_2
                        mov              rax, qword ptr [rsp + 120]           # var
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx843_7
.Lx843_2:               and              edx, 1;                              jz    .Lx843_0
                        mov              rsi, qword ptr [rsp + 120]           # var
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lx843_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx843_4
.Lx843_3:               movq             xmm0, rsi
.Lx843_4:               cmp              cl, 5;                               je    .Lx843_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx843_6
.Lx843_5:               movq             xmm1, rdi
.Lx843_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx843_7:                                                                     jmp   n258_assign_α
.Lx843_0:               mov              rdi, qword ptr [rsp + 112]           # var
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx843_240
                        add              rsp, 16;                             jmp   n256_deref_β
.Lx843_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n258_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n258_assign_α:          mov              r11, 259
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZS
                        mov              qword ptr [r9 + 104], rdx;           jmp   n259_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n259_statement_end_α:   mov              r11, 260
                        mov              r10, 35
                        add              rsp, 128;                            jmp   n260_statement_begin_α
#=======================================================================================================================
#         rx = LT(rx, 12) rx + 1                          :S(REALRD)
#-----------------------------------------------------------------------------------------------------------------------
n260_statement_begin_α: mov              r11, 261
                        mov              r10, 36;                             jmp   n261_var_α
n260_statement_begin_β: mov              r11, 261;                            jmp   n271_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n261_var_α:             sub              rsp, 16
                        mov              r11, 262
                        mov              rax, qword ptr [r9 + 160]            # rx
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n262_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n262_lit_integer_α:     sub              rsp, 16
                        mov              r11, 263
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx850_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n263_coerce_numeric_α
n262_lit_integer_β:     mov              r11, 263
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n260_statement_begin_β
.Lx850_0:               .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n263_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 264
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx852_1
                        cmp              al, 3;                               jne   .Lx852_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx852_0
.Lx852_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n264_coerce_numeric_α
.Lx852_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n264_coerce_numeric_α
n263_coerce_numeric_β:  mov              r11, 264
                        add              rsp, 16;                             jmp   n262_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n264_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 265
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx854_1
                        cmp              al, 3;                               jne   .Lx854_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx854_0
.Lx854_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n265_cmp_test_α
.Lx854_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n265_cmp_test_α
n264_coerce_numeric_β:  mov              r11, 265
                        add              rsp, 16;                             jmp   n263_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n265_cmp_test_α:        sub              rsp, 16
                        mov              r11, 266
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx856_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx856_239
                        add              rsp, 16;                             jmp   n264_coerce_numeric_β
.Lx856_239:                                                                   jmp   n266_var_α
.Lx856_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx856_240
                        add              rsp, 16;                             jmp   n264_coerce_numeric_β
.Lx856_240:                                                                   jmp   n266_var_α
n265_cmp_test_β:        mov              r11, 266
                        add              rsp, 16;                             jmp   n264_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n266_var_α:             sub              rsp, 16
                        mov              r11, 267
                        mov              rax, qword ptr [r9 + 160]            # rx
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n267_lit_integer_α
n266_var_β:             mov              r11, 267
                        add              rsp, 16;                             jmp   n265_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n267_lit_integer_α:     sub              rsp, 16
                        mov              r11, 268
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx858_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n268_binop_α
n267_lit_integer_β:     mov              r11, 268
                        add              rsp, 16;                             jmp   n266_var_β
.Lx858_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n268_binop_α:           sub              rsp, 16
                        mov              r11, 269
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx859_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx859_7
.Lx859_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx859_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx859_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx859_4
.Lx859_3:               movq             xmm0, rsi
.Lx859_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx859_7:                                                                     jmp   n269_assign_α
.Lx859_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx859_240
                        add              rsp, 16;                             jmp   n267_lit_integer_β
.Lx859_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n269_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n269_assign_α:          mov              r11, 270
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # rx
                        mov              qword ptr [r9 + 168], rdx;           jmp   n270_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n270_statement_end_α:   mov              r11, 271
                        mov              r10, 36
                        add              rsp, 128;                            jmp   n249_statement_begin_α
#=======================================================================================================================
#         ZS = ZS + tab['']
#-----------------------------------------------------------------------------------------------------------------------
n271_statement_begin_α: mov              r11, 272
                        mov              r10, 37;                             jmp   n272_var_α
n271_statement_begin_β: mov              r11, 272;                            jmp   n280_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n272_var_α:             sub              rsp, 16
                        mov              r11, 273
                        mov              rax, qword ptr [r9 + 96]             # ZS
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n273_var_α
#-----------------------------------------------------------------------------------------------------------------------
n273_var_α:             sub              rsp, 16
                        mov              r11, 274
                        mov              rax, qword ptr [r9 + 112]            # tab
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n274_lit_string_α
n273_var_β:             mov              r11, 274
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n271_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_string_α:      sub              rsp, 16
                        mov              r11, 275
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx867_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n275_subscript_α
n274_lit_string_β:      mov              r11, 275
                        add              rsp, 16;                             jmp   n273_var_β
.Lx867_0:               .quad            .Lx867_0_s
.Lx867_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n275_subscript_α:       sub              rsp, 16
                        mov              r11, 276
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx868_240
                        add              rsp, 16;                             jmp   n274_lit_string_β
.Lx868_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n276_deref_α
n275_subscript_β:       mov              r11, 276
                        add              rsp, 16;                             jmp   n274_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n276_deref_α:           sub              rsp, 16
                        mov              r11, 277
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx869_240
                        add              rsp, 16;                             jmp   n275_subscript_β
.Lx869_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n277_binop_α
n276_deref_β:           mov              r11, 277
                        add              rsp, 16;                             jmp   n275_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n277_binop_α:           sub              rsp, 16
                        mov              r11, 278
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx870_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx870_7
.Lx870_2:               and              edx, 1;                              jz    .Lx870_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lx870_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx870_4
.Lx870_3:               movq             xmm0, rsi
.Lx870_4:               cmp              cl, 5;                               je    .Lx870_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx870_6
.Lx870_5:               movq             xmm1, rdi
.Lx870_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx870_7:                                                                     jmp   n278_assign_α
.Lx870_0:               mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx870_240
                        add              rsp, 16;                             jmp   n276_deref_β
.Lx870_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n278_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n278_assign_α:          mov              r11, 279
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZS
                        mov              qword ptr [r9 + 104], rdx;           jmp   n279_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n279_statement_end_α:   mov              r11, 280
                        mov              r10, 37
                        add              rsp, 96;                             jmp   n280_statement_begin_α
#=======================================================================================================================
#         ZS = ZS + SIZE(tab[9999]) + SIZE(tab['absent']) + SIZE(tab[-9999])
#-----------------------------------------------------------------------------------------------------------------------
n280_statement_begin_α: mov              r11, 281
                        mov              r10, 38;                             jmp   n281_var_α
n280_statement_begin_β: mov              r11, 281;                            jmp   n303_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n281_var_α:             sub              rsp, 16
                        mov              r11, 282
                        mov              rax, qword ptr [r9 + 96]             # ZS
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n282_var_α
#-----------------------------------------------------------------------------------------------------------------------
n282_var_α:             sub              rsp, 16
                        mov              r11, 283
                        mov              rax, qword ptr [r9 + 112]            # tab
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n283_lit_integer_α
n282_var_β:             mov              r11, 283
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n280_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_integer_α:     sub              rsp, 16
                        mov              r11, 284
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx878_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n284_subscript_α
n283_lit_integer_β:     mov              r11, 284
                        add              rsp, 16;                             jmp   n282_var_β
.Lx878_0:               .quad            9999
#-----------------------------------------------------------------------------------------------------------------------
n284_subscript_α:       sub              rsp, 16
                        mov              r11, 285
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx879_240
                        add              rsp, 16;                             jmp   n283_lit_integer_β
.Lx879_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n285_deref_α
n284_subscript_β:       mov              r11, 285
                        add              rsp, 16;                             jmp   n283_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n285_deref_α:           sub              rsp, 16
                        mov              r11, 286
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx880_240
                        add              rsp, 16;                             jmp   n284_subscript_β
.Lx880_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n286_call_α
n285_deref_β:           mov              r11, 286
                        add              rsp, 16;                             jmp   n284_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n286_call_α:            sub              rsp, 16
                        mov              r11, 287
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd882:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd882]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 262193
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx881_240
                        add              rsp, 16;                             jmp   n285_deref_β
.Lx881_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n287_binop_α
n286_call_β:            mov              r11, 287
                        add              rsp, 16;                             jmp   n285_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n287_binop_α:           sub              rsp, 16
                        mov              r11, 288
                        mov              eax, dword ptr [rsp + 96]            # var
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx883_2
                        mov              rax, qword ptr [rsp + 104]           # var
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx883_7
.Lx883_2:               and              edx, 1;                              jz    .Lx883_0
                        mov              rsi, qword ptr [rsp + 104]           # var
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lx883_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx883_4
.Lx883_3:               movq             xmm0, rsi
.Lx883_4:               cmp              cl, 5;                               je    .Lx883_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx883_6
.Lx883_5:               movq             xmm1, rdi
.Lx883_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx883_7:                                                                     jmp   n288_var_α
.Lx883_0:               mov              rdi, qword ptr [rsp + 96]            # var
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx883_240
                        add              rsp, 32;                             jmp   n285_deref_β
.Lx883_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n288_var_α
n287_binop_β:           mov              r11, 288
                        add              rsp, 32;                             jmp   n285_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n288_var_α:             sub              rsp, 16
                        mov              r11, 289
                        mov              rax, qword ptr [r9 + 112]            # tab
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n289_lit_string_α
n288_var_β:             mov              r11, 289
                        add              rsp, 16;                             jmp   n287_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n289_lit_string_α:      sub              rsp, 16
                        mov              r11, 290
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx885_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n290_subscript_α
n289_lit_string_β:      mov              r11, 290
                        add              rsp, 16;                             jmp   n288_var_β
.Lx885_0:               .quad            .Lx885_0_s
.Lx885_0_s:             .string          "absent"
#-----------------------------------------------------------------------------------------------------------------------
n290_subscript_α:       sub              rsp, 16
                        mov              r11, 291
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx886_240
                        add              rsp, 16;                             jmp   n289_lit_string_β
.Lx886_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n291_deref_α
n290_subscript_β:       mov              r11, 291
                        add              rsp, 16;                             jmp   n289_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n291_deref_α:           sub              rsp, 16
                        mov              r11, 292
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx887_240
                        add              rsp, 16;                             jmp   n290_subscript_β
.Lx887_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n292_call_α
n291_deref_β:           mov              r11, 292
                        add              rsp, 16;                             jmp   n290_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n292_call_α:            sub              rsp, 16
                        mov              r11, 293
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd889:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd889]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 262193
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx888_240
                        add              rsp, 16;                             jmp   n291_deref_β
.Lx888_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n293_binop_α
n292_call_β:            mov              r11, 293
                        add              rsp, 16;                             jmp   n291_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n293_binop_α:           sub              rsp, 16
                        mov              r11, 294
                        mov              eax, dword ptr [rsp + 96]            # binop
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx890_2
                        mov              rax, qword ptr [rsp + 104]           # binop
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx890_7
.Lx890_2:               and              edx, 1;                              jz    .Lx890_0
                        mov              rsi, qword ptr [rsp + 104]           # binop
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lx890_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx890_4
.Lx890_3:               movq             xmm0, rsi
.Lx890_4:               cmp              cl, 5;                               je    .Lx890_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx890_6
.Lx890_5:               movq             xmm1, rdi
.Lx890_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx890_7:                                                                     jmp   n294_var_α
.Lx890_0:               mov              rdi, qword ptr [rsp + 96]            # binop
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx890_240
                        add              rsp, 32;                             jmp   n291_deref_β
.Lx890_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n294_var_α
n293_binop_β:           mov              r11, 294
                        add              rsp, 32;                             jmp   n291_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n294_var_α:             sub              rsp, 16
                        mov              r11, 295
                        mov              rax, qword ptr [r9 + 112]            # tab
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n295_lit_integer_α
n294_var_β:             mov              r11, 295
                        add              rsp, 16;                             jmp   n293_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n295_lit_integer_α:     sub              rsp, 16
                        mov              r11, 296
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx892_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n296_unop_α
n295_lit_integer_β:     mov              r11, 296
                        add              rsp, 16;                             jmp   n294_var_β
.Lx892_0:               .quad            9999
#-----------------------------------------------------------------------------------------------------------------------
n296_unop_α:            sub              rsp, 16
                        mov              r11, 297
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n297_subscript_α
n296_unop_β:            mov              r11, 297
                        add              rsp, 16;                             jmp   n295_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n297_subscript_α:       sub              rsp, 16
                        mov              r11, 298
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # unop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx894_240
                        add              rsp, 16;                             jmp   n296_unop_β
.Lx894_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n298_deref_α
n297_subscript_β:       mov              r11, 298
                        add              rsp, 16;                             jmp   n296_unop_β
#-----------------------------------------------------------------------------------------------------------------------
n298_deref_α:           sub              rsp, 16
                        mov              r11, 299
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx895_240
                        add              rsp, 16;                             jmp   n297_subscript_β
.Lx895_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n299_call_α
n298_deref_β:           mov              r11, 299
                        add              rsp, 16;                             jmp   n297_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n299_call_α:            sub              rsp, 16
                        mov              r11, 300
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd897:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd897]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 262193
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx896_240
                        add              rsp, 16;                             jmp   n298_deref_β
.Lx896_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n300_binop_α
n299_call_β:            mov              r11, 300
                        add              rsp, 16;                             jmp   n298_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n300_binop_α:           sub              rsp, 16
                        mov              r11, 301
                        mov              eax, dword ptr [rsp + 112]           # binop
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx898_2
                        mov              rax, qword ptr [rsp + 120]           # binop
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx898_7
.Lx898_2:               and              edx, 1;                              jz    .Lx898_0
                        mov              rsi, qword ptr [rsp + 120]           # binop
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lx898_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx898_4
.Lx898_3:               movq             xmm0, rsi
.Lx898_4:               cmp              cl, 5;                               je    .Lx898_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx898_6
.Lx898_5:               movq             xmm1, rdi
.Lx898_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx898_7:                                                                     jmp   n301_assign_α
.Lx898_0:               mov              rdi, qword ptr [rsp + 112]           # binop
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx898_240
                        add              rsp, 32;                             jmp   n298_deref_β
.Lx898_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n301_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n301_assign_α:          mov              r11, 302
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZS
                        mov              qword ptr [r9 + 104], rdx;           jmp   n302_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n302_statement_end_α:   mov              r11, 303
                        mov              r10, 38
                        add              rsp, 320;                            jmp   n303_statement_begin_α
#=======================================================================================================================
#         ZI = LT(ZI, ZKN) ZI + 1                         :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
n303_statement_begin_α: mov              r11, 304
                        mov              r10, 39;                             jmp   n304_var_α
n303_statement_begin_β: mov              r11, 304;                            jmp   n314_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n304_var_α:             sub              rsp, 16
                        mov              r11, 305
                        mov              rax, qword ptr [r9 + 80]             # ZI
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n305_var_α
#-----------------------------------------------------------------------------------------------------------------------
n305_var_α:             sub              rsp, 16
                        mov              r11, 306
                        mov              rax, qword ptr [r9 + 16]             # ZKN
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n306_coerce_numeric_α
n305_var_β:             mov              r11, 306
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n303_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n306_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 307
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx907_1
                        cmp              al, 3;                               jne   .Lx907_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx907_0
.Lx907_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n307_coerce_numeric_α
.Lx907_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n307_coerce_numeric_α
n306_coerce_numeric_β:  mov              r11, 307
                        add              rsp, 16;                             jmp   n305_var_β
#-----------------------------------------------------------------------------------------------------------------------
n307_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 308
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx909_1
                        cmp              al, 3;                               jne   .Lx909_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx909_0
.Lx909_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n308_cmp_test_α
.Lx909_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n308_cmp_test_α
n307_coerce_numeric_β:  mov              r11, 308
                        add              rsp, 16;                             jmp   n306_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n308_cmp_test_α:        sub              rsp, 16
                        mov              r11, 309
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx911_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx911_239
                        add              rsp, 16;                             jmp   n307_coerce_numeric_β
.Lx911_239:                                                                   jmp   n309_var_α
.Lx911_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx911_240
                        add              rsp, 16;                             jmp   n307_coerce_numeric_β
.Lx911_240:                                                                   jmp   n309_var_α
n308_cmp_test_β:        mov              r11, 309
                        add              rsp, 16;                             jmp   n307_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n309_var_α:             sub              rsp, 16
                        mov              r11, 310
                        mov              rax, qword ptr [r9 + 80]             # ZI
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n310_lit_integer_α
n309_var_β:             mov              r11, 310
                        add              rsp, 16;                             jmp   n308_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n310_lit_integer_α:     sub              rsp, 16
                        mov              r11, 311
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx913_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n311_binop_α
n310_lit_integer_β:     mov              r11, 311
                        add              rsp, 16;                             jmp   n309_var_β
.Lx913_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n311_binop_α:           sub              rsp, 16
                        mov              r11, 312
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx914_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx914_7
.Lx914_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx914_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx914_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx914_4
.Lx914_3:               movq             xmm0, rsi
.Lx914_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx914_7:                                                                     jmp   n312_assign_α
.Lx914_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx914_240
                        add              rsp, 16;                             jmp   n310_lit_integer_β
.Lx914_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n312_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n312_assign_α:          mov              r11, 313
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZI
                        mov              qword ptr [r9 + 88], rdx;            jmp   n313_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n313_statement_end_α:   mov              r11, 314
                        mov              r10, 39
                        add              rsp, 128;                            jmp   n36_statement_begin_α
#=======================================================================================================================
#         ZBODY = ZS                                      :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n314_statement_begin_α: mov              r11, 315
                        mov              r10, 40;                             jmp   n315_var_α
n314_statement_begin_β: mov              r11, 315;                            jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n315_var_α:             sub              rsp, 16
                        mov              r11, 316
                        mov              rax, qword ptr [r9 + 96]             # ZS
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n316_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n316_assign_α:          mov              r11, 317
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # ZBODY
                        mov              qword ptr [r9 + 8], rdx;             jmp   n317_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n317_statement_end_α:   mov              r11, 318
                        mov              r10, 40
                        add              rsp, 16;                             jmp   RETURN
#=======================================================================================================================
# ZBODY_END  <stmt 41, line 63: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n318_statement_begin_α: mov              r11, 319
                        mov              r10, 41;                             jmp   n319_statement_end_α
n318_statement_begin_β: mov              r11, 319;                            jmp   n320_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n319_statement_end_α:   mov              r11, 320
                        mov              r10, 41;                             jmp   n320_statement_begin_α
#=======================================================================================================================
#         <stmt 42, line 111: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n320_statement_begin_α: mov              r11, 321
                        mov              r10, 42;                             jmp   n321_lit_string_α
n320_statement_begin_β: mov              r11, 321;                            jmp   n327_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_string_α:      sub              rsp, 16
                        mov              r11, 322
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx930_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n322_var_α
.Lx930_0:               .quad            .Lx930_0_s
.Lx930_0_s:             .string          "check: "
#-----------------------------------------------------------------------------------------------------------------------
n322_var_α:             sub              rsp, 16
                        mov              r11, 323
                        mov              rax, qword ptr [r9 + 32]             # ZCHK
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n323_call_α
n322_var_β:             mov              r11, 323
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n320_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n323_call_α:            sub              rsp, 16
                        mov              r11, 324
                        lea              rcx, [rip + .Lsig933z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig933z:              .quad            1
                        .quad            .Lx933_2
                        .quad            .Lx933_2
                        .quad            16
.Lx933_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx933_29
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
.Lx933_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx933_240
                        add              rsp, 16;                             jmp   n322_var_β
.Lx933_240:                                                                   jmp   n324_binop_α
n323_call_β:            mov              r11, 324;                            jmp   n322_var_β
.Lx933_0:               .quad            .Lx933_0_s
.Lx933_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n324_binop_α:           sub              rsp, 16
                        mov              r11, 325
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n325_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n325_assign_α:          mov              r11, 326
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx935_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n326_statement_end_α
.Lx935_0:               .quad            .Lx935_0_s
.Lx935_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n326_statement_end_α:   mov              r11, 327
                        mov              r10, 42
                        add              rsp, 64;                             jmp   n327_statement_begin_α
#=======================================================================================================================
#         <stmt 43, line 112: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n327_statement_begin_α: mov              r11, 328
                        mov              r10, 43;                             jmp   n328_var_α
n327_statement_begin_β: mov              r11, 328;                            jmp   n331_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n328_var_α:             sub              rsp, 16
                        mov              r11, 329
                        mov              rdi, qword ptr [rip + .Lx940_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx940_240
                        add              rsp, 16;                             jmp   n327_statement_begin_β
.Lx940_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n329_assign_α
.Lx940_0:               .quad            .Lx940_0_s
.Lx940_0_s:             .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n329_assign_α:          mov              r11, 330
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # fixed_n
                        mov              qword ptr [r9 + 184], rdx;           jmp   n330_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n330_statement_end_α:   mov              r11, 331
                        mov              r10, 43
                        add              rsp, 16;                             jmp   n434_statement_begin_α
#=======================================================================================================================
#         <stmt 44, line 113: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n331_statement_begin_α: mov              r11, 332
                        mov              r10, 44;                             jmp   n332_var_α
n331_statement_begin_β: mov              r11, 332;                            jmp   n337_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n332_var_α:             sub              rsp, 16
                        mov              r11, 333
                        mov              rax, qword ptr [r9 + 64]             # ZFLR
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n333_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n333_lit_integer_α:     sub              rsp, 16
                        mov              r11, 334
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx947_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n334_binop_α
n333_lit_integer_β:     mov              r11, 334
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n331_statement_begin_β
.Lx947_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n334_binop_α:           sub              rsp, 16
                        mov              r11, 335
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx948_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx948_7
.Lx948_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx948_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              al, 5;                               je    .Lx948_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx948_4
.Lx948_3:               movq             xmm0, rsi
.Lx948_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx948_7:                                                                     jmp   n335_assign_α
.Lx948_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx948_240
                        add              rsp, 16;                             jmp   n333_lit_integer_β
.Lx948_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n335_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n335_assign_α:          mov              r11, 336
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ZFLR
                        mov              qword ptr [r9 + 72], rdx;            jmp   n336_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n336_statement_end_α:   mov              r11, 337
                        mov              r10, 44
                        add              rsp, 48;                             jmp   n337_statement_begin_α
#=======================================================================================================================
#         <stmt 45, line 114: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n337_statement_begin_α: mov              r11, 338
                        mov              r10, 45;                             jmp   n338_var_α
n337_statement_begin_β: mov              r11, 338;                            jmp   n343_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n338_var_α:             sub              rsp, 16
                        mov              r11, 339
                        mov              rax, qword ptr [r9 + 48]             # ZBUD
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n339_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n339_lit_integer_α:     sub              rsp, 16
                        mov              r11, 340
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx955_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n340_binop_α
n339_lit_integer_β:     mov              r11, 340
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n337_statement_begin_β
.Lx955_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n340_binop_α:           sub              rsp, 16
                        mov              r11, 341
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx956_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx956_7
.Lx956_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx956_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              al, 5;                               je    .Lx956_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx956_4
.Lx956_3:               movq             xmm0, rsi
.Lx956_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx956_7:                                                                     jmp   n341_assign_α
.Lx956_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx956_240
                        add              rsp, 16;                             jmp   n339_lit_integer_β
.Lx956_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n341_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n341_assign_α:          mov              r11, 342
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZBUD
                        mov              qword ptr [r9 + 56], rdx;            jmp   n342_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n342_statement_end_α:   mov              r11, 343
                        mov              r10, 45
                        add              rsp, 48;                             jmp   n343_statement_begin_α
#=======================================================================================================================
#         <stmt 46, line 115: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n343_statement_begin_α: mov              r11, 344
                        mov              r10, 46;                             jmp   n344_var_α
n343_statement_begin_β: mov              r11, 344;                            jmp   n348_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n344_var_α:             sub              rsp, 16
                        mov              r11, 345
                        mov              rax, qword ptr [r9 + 192]            # ZK
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n345_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n345_lit_string_α:      sub              rsp, 16
                        mov              r11, 346
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx963_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n346_differ_α
n345_lit_string_β:      mov              r11, 346
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n343_statement_begin_β
.Lx963_0:               .quad            .Lx963_0_s
.Lx963_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n346_differ_α:          sub              rsp, 16
                        mov              r11, 347
                        mov              rdi, qword ptr [rsp + 32]            # var
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
                        test             eax, eax;                            je    .Lx965_240
                        add              rsp, 16;                             jmp   n345_lit_string_β
.Lx965_240:                                                                   jmp   n347_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n347_statement_end_α:   mov              r11, 348
                        mov              r10, 46
                        add              rsp, 48;                             jmp   n377_statement_begin_α
#=======================================================================================================================
#         <stmt 47, line 116: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n348_statement_begin_α: mov              r11, 349
                        mov              r10, 47;                             jmp   n349_lit_integer_α
n348_statement_begin_β: mov              r11, 349;                            jmp   n352_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n349_lit_integer_α:     sub              rsp, 16
                        mov              r11, 350
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx970_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n350_assign_α
.Lx970_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n350_assign_α:          mov              r11, 351
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZK
                        mov              qword ptr [r9 + 200], rdx;           jmp   n351_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n351_statement_end_α:   mov              r11, 352
                        mov              r10, 47
                        add              rsp, 16;                             jmp   n352_statement_begin_α
#=======================================================================================================================
# ZCAL  <stmt 48, line 117: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n352_statement_begin_α: mov              r11, 353
                        mov              r10, 48;                             jmp   n353_call_α
n352_statement_begin_β: mov              r11, 353;                            jmp   n356_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n353_call_α:            sub              rsp, 16
                        mov              r11, 354
                        .section         .rodata
.Lrkfnzd977:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd977]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 262213
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx976_240
                        add              rsp, 16;                             jmp   n352_statement_begin_β
.Lx976_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n354_assign_α
n353_call_β:            mov              r11, 354
                        add              rsp, 16;                             jmp   n352_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n354_assign_α:          mov              r11, 355
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZT
                        mov              qword ptr [r9 + 216], rdx;           jmp   n355_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n355_statement_end_α:   mov              r11, 356
                        mov              r10, 48
                        add              rsp, 16;                             jmp   n356_statement_begin_α
#=======================================================================================================================
#         <stmt 49, line 118: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n356_statement_begin_α: mov              r11, 357
                        mov              r10, 49;                             jmp   n357_var_α
n356_statement_begin_β: mov              r11, 357;                            jmp   n360_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n357_var_α:             sub              rsp, 16
                        mov              r11, 358
                        mov              rax, qword ptr [r9 + 192]            # ZK
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n358_call_α
#-----------------------------------------------------------------------------------------------------------------------
n358_call_α:            sub              rsp, 16
                        mov              r11, 359
                        lea              rcx, [rip + .Lsig985z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig985z:              .quad            1
                        .quad            .Lx985_2
                        .quad            .Lx985_2
                        .quad            16
.Lx985_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx985_29
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
.Lx985_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx985_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n356_statement_begin_β
.Lx985_240:                                                                   jmp   n359_statement_end_α
n358_call_β:            mov              r11, 359;                            jmp   n356_statement_begin_β
.Lx985_0:               .quad            .Lx985_0_s
.Lx985_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n359_statement_end_α:   mov              r11, 360
                        mov              r10, 49
                        add              rsp, 32;                             jmp   n360_statement_begin_α
#=======================================================================================================================
#         <stmt 50, line 119: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n360_statement_begin_α: mov              r11, 361
                        mov              r10, 50;                             jmp   n361_call_α
n360_statement_begin_β: mov              r11, 361;                            jmp   n366_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n361_call_α:            sub              rsp, 16
                        mov              r11, 362
                        .section         .rodata
.Lrkfnzd991:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd991]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 262213
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx990_240
                        add              rsp, 16;                             jmp   n360_statement_begin_β
.Lx990_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n362_var_α
n361_call_β:            mov              r11, 362
                        add              rsp, 16;                             jmp   n360_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n362_var_α:             sub              rsp, 16
                        mov              r11, 363
                        mov              rax, qword ptr [r9 + 208]            # ZT
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n363_binop_α
n362_var_β:             mov              r11, 363
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n360_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n363_binop_α:           sub              rsp, 16
                        mov              r11, 364
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx993_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx993_7
.Lx993_2:               and              edx, 1;                              jz    .Lx993_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx993_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx993_4
.Lx993_3:               movq             xmm0, rsi
.Lx993_4:               cmp              cl, 5;                               je    .Lx993_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx993_6
.Lx993_5:               movq             xmm1, rdi
.Lx993_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx993_7:                                                                     jmp   n364_assign_α
.Lx993_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx993_240
                        add              rsp, 16;                             jmp   n362_var_β
.Lx993_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n364_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n364_assign_α:          mov              r11, 365
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # ZE
                        mov              qword ptr [r9 + 232], rdx;           jmp   n365_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n365_statement_end_α:   mov              r11, 366
                        mov              r10, 50
                        add              rsp, 48;                             jmp   n366_statement_begin_α
#=======================================================================================================================
#         <stmt 51, line 120: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n366_statement_begin_α: mov              r11, 367
                        mov              r10, 51;                             jmp   n367_var_α
n366_statement_begin_β: mov              r11, 367;                            jmp   n377_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n367_var_α:             sub              rsp, 16
                        mov              r11, 368
                        mov              rax, qword ptr [r9 + 224]            # ZE
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n368_var_α
#-----------------------------------------------------------------------------------------------------------------------
n368_var_α:             sub              rsp, 16
                        mov              r11, 369
                        mov              rax, qword ptr [r9 + 64]             # ZFLR
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n369_coerce_numeric_α
n368_var_β:             mov              r11, 369
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n366_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n369_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 370
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx1002_1
                        cmp              al, 3;                               jne   .Lx1002_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx1002_0
.Lx1002_1:              mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n370_coerce_numeric_α
.Lx1002_0:              lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n370_coerce_numeric_α
n369_coerce_numeric_β:  mov              r11, 370
                        add              rsp, 16;                             jmp   n368_var_β
#-----------------------------------------------------------------------------------------------------------------------
n370_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 371
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx1004_1
                        cmp              al, 3;                               jne   .Lx1004_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx1004_0
.Lx1004_1:              mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n371_cmp_test_α
.Lx1004_0:              lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n371_cmp_test_α
n370_coerce_numeric_β:  mov              r11, 371
                        add              rsp, 16;                             jmp   n369_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n371_cmp_test_α:        sub              rsp, 16
                        mov              r11, 372
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1006_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx1006_239
                        add              rsp, 16;                             jmp   n370_coerce_numeric_β
.Lx1006_239:                                                                  jmp   n372_var_α
.Lx1006_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx1006_240
                        add              rsp, 16;                             jmp   n370_coerce_numeric_β
.Lx1006_240:                                                                  jmp   n372_var_α
n371_cmp_test_β:        mov              r11, 372
                        add              rsp, 16;                             jmp   n370_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n372_var_α:             sub              rsp, 16
                        mov              r11, 373
                        mov              rax, qword ptr [r9 + 192]            # ZK
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n373_lit_integer_α
n372_var_β:             mov              r11, 373
                        add              rsp, 16;                             jmp   n371_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n373_lit_integer_α:     sub              rsp, 16
                        mov              r11, 374
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1008_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n374_binop_α
n373_lit_integer_β:     mov              r11, 374
                        add              rsp, 16;                             jmp   n372_var_β
.Lx1008_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n374_binop_α:           sub              rsp, 16
                        mov              r11, 375
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1009_2
                        mov              rdx, 2
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1009_7
.Lx1009_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1009_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lx1009_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1009_4
.Lx1009_3:              movq             xmm0, rsi
.Lx1009_4:              cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1009_7:                                                                    jmp   n375_assign_α
.Lx1009_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx1009_240
                        add              rsp, 16;                             jmp   n373_lit_integer_β
.Lx1009_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n375_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n375_assign_α:          mov              r11, 376
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZK
                        mov              qword ptr [r9 + 200], rdx;           jmp   n376_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n376_statement_end_α:   mov              r11, 377
                        mov              r10, 51
                        add              rsp, 128;                            jmp   n352_statement_begin_α
#=======================================================================================================================
# ZMEAS  <stmt 52, line 121: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n377_statement_begin_α: mov              r11, 378
                        mov              r10, 52;                             jmp   n378_call_α
n377_statement_begin_β: mov              r11, 378;                            jmp   n381_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n378_call_α:            sub              rsp, 16
                        mov              r11, 379
                        .section         .rodata
.Lrkfnzd1016:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1016]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 262213
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx1015_240
                        add              rsp, 16;                             jmp   n377_statement_begin_β
.Lx1015_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n379_assign_α
n378_call_β:            mov              r11, 379
                        add              rsp, 16;                             jmp   n377_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n379_assign_α:          mov              r11, 380
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZT
                        mov              qword ptr [r9 + 216], rdx;           jmp   n380_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n380_statement_end_α:   mov              r11, 381
                        mov              r10, 52
                        add              rsp, 16;                             jmp   n381_statement_begin_α
#=======================================================================================================================
#         <stmt 53, line 122: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n381_statement_begin_α: mov              r11, 382
                        mov              r10, 53;                             jmp   n382_var_α
n381_statement_begin_β: mov              r11, 382;                            jmp   n387_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n382_var_α:             sub              rsp, 16
                        mov              r11, 383
                        mov              rax, qword ptr [r9 + 208]            # ZT
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n383_var_α
#-----------------------------------------------------------------------------------------------------------------------
n383_var_α:             sub              rsp, 16
                        mov              r11, 384
                        mov              rax, qword ptr [r9 + 48]             # ZBUD
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n384_binop_α
n383_var_β:             mov              r11, 384
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n381_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n384_binop_α:           sub              rsp, 16
                        mov              r11, 385
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1024_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1024_7
.Lx1024_2:              and              edx, 1;                              jz    .Lx1024_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx1024_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1024_4
.Lx1024_3:              movq             xmm0, rsi
.Lx1024_4:              cmp              cl, 5;                               je    .Lx1024_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1024_6
.Lx1024_5:              movq             xmm1, rdi
.Lx1024_6:              addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1024_7:                                                                    jmp   n385_assign_α
.Lx1024_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx1024_240
                        add              rsp, 16;                             jmp   n383_var_β
.Lx1024_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n385_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n385_assign_α:          mov              r11, 386
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # ZD
                        mov              qword ptr [r9 + 248], rdx;           jmp   n386_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n386_statement_end_α:   mov              r11, 387
                        mov              r10, 53
                        add              rsp, 48;                             jmp   n387_statement_begin_α
#=======================================================================================================================
#         <stmt 54, line 123: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n387_statement_begin_α: mov              r11, 388
                        mov              r10, 54;                             jmp   n388_lit_integer_α
n387_statement_begin_β: mov              r11, 388;                            jmp   n391_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n388_lit_integer_α:     sub              rsp, 16
                        mov              r11, 389
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1030_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n389_assign_α
.Lx1030_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n389_assign_α:          mov              r11, 390
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # ZN
                        mov              qword ptr [r9 + 264], rdx;           jmp   n390_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n390_statement_end_α:   mov              r11, 391
                        mov              r10, 54
                        add              rsp, 16;                             jmp   n391_statement_begin_α
#=======================================================================================================================
# ZB  <stmt 55, line 124: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n391_statement_begin_α: mov              r11, 392
                        mov              r10, 55;                             jmp   n392_var_α
n391_statement_begin_β: mov              r11, 392;                            jmp   n395_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n392_var_α:             sub              rsp, 16
                        mov              r11, 393
                        mov              rax, qword ptr [r9 + 192]            # ZK
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n393_call_α
#-----------------------------------------------------------------------------------------------------------------------
n393_call_α:            sub              rsp, 16
                        mov              r11, 394
                        lea              rcx, [rip + .Lsig1038z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig1038z:             .quad            1
                        .quad            .Lx1038_2
                        .quad            .Lx1038_2
                        .quad            16
.Lx1038_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1038_29
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
.Lx1038_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1038_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n391_statement_begin_β
.Lx1038_240:                                                                  jmp   n394_statement_end_α
n393_call_β:            mov              r11, 394;                            jmp   n391_statement_begin_β
.Lx1038_0:              .quad            .Lx1038_0_s
.Lx1038_0_s:            .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n394_statement_end_α:   mov              r11, 395
                        mov              r10, 55
                        add              rsp, 32;                             jmp   n395_statement_begin_α
#=======================================================================================================================
#         <stmt 56, line 125: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n395_statement_begin_α: mov              r11, 396
                        mov              r10, 56;                             jmp   n396_var_α
n395_statement_begin_β: mov              r11, 396;                            jmp   n401_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n396_var_α:             sub              rsp, 16
                        mov              r11, 397
                        mov              rax, qword ptr [r9 + 256]            # ZN
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n397_var_α
#-----------------------------------------------------------------------------------------------------------------------
n397_var_α:             sub              rsp, 16
                        mov              r11, 398
                        mov              rax, qword ptr [r9 + 192]            # ZK
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n398_binop_α
n397_var_β:             mov              r11, 398
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n395_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n398_binop_α:           sub              rsp, 16
                        mov              r11, 399
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1045_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1045_7
.Lx1045_2:              and              edx, 1;                              jz    .Lx1045_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx1045_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1045_4
.Lx1045_3:              movq             xmm0, rsi
.Lx1045_4:              cmp              cl, 5;                               je    .Lx1045_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1045_6
.Lx1045_5:              movq             xmm1, rdi
.Lx1045_6:              addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1045_7:                                                                    jmp   n399_assign_α
.Lx1045_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx1045_240
                        add              rsp, 16;                             jmp   n397_var_β
.Lx1045_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n399_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n399_assign_α:          mov              r11, 400
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # ZN
                        mov              qword ptr [r9 + 264], rdx;           jmp   n400_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n400_statement_end_α:   mov              r11, 401
                        mov              r10, 56
                        add              rsp, 48;                             jmp   n401_statement_begin_α
#=======================================================================================================================
#         <stmt 57, line 126: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n401_statement_begin_α: mov              r11, 402
                        mov              r10, 57;                             jmp   n402_call_α
n401_statement_begin_β: mov              r11, 402;                            jmp   n408_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n402_call_α:            sub              rsp, 16
                        mov              r11, 403
                        .section         .rodata
.Lrkfnzd1052:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1052]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 262213
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx1051_240
                        add              rsp, 16;                             jmp   n401_statement_begin_β
.Lx1051_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n403_var_α
n402_call_β:            mov              r11, 403
                        add              rsp, 16;                             jmp   n401_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n403_var_α:             sub              rsp, 16
                        mov              r11, 404
                        mov              rax, qword ptr [r9 + 240]            # ZD
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n404_coerce_numeric_α
n403_var_β:             mov              r11, 404
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n401_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n404_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 405
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              al, 5;                               je    .Lx1055_1
                        cmp              al, 3;                               jne   .Lx1055_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              al, 3;                               jne   .Lx1055_0
.Lx1055_1:              mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n405_coerce_numeric_α
.Lx1055_0:              lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n405_coerce_numeric_α
n404_coerce_numeric_β:  mov              r11, 405
                        add              rsp, 16;                             jmp   n403_var_β
#-----------------------------------------------------------------------------------------------------------------------
n405_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 406
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx1057_1
                        cmp              al, 3;                               jne   .Lx1057_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              al, 3;                               jne   .Lx1057_0
.Lx1057_1:              mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n406_cmp_test_α
.Lx1057_0:              lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n406_cmp_test_α
n405_coerce_numeric_β:  mov              r11, 406
                        add              rsp, 16;                             jmp   n404_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n406_cmp_test_α:        sub              rsp, 16
                        mov              r11, 407
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1059_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx1059_239
                        add              rsp, 16;                             jmp   n405_coerce_numeric_β
.Lx1059_239:                                                                  jmp   n407_statement_end_α
.Lx1059_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx1059_240
                        add              rsp, 16;                             jmp   n405_coerce_numeric_β
.Lx1059_240:                                                                  jmp   n407_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n407_statement_end_α:   mov              r11, 408
                        mov              r10, 57
                        add              rsp, 80;                             jmp   n391_statement_begin_α
#=======================================================================================================================
#         <stmt 58, line 127: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n408_statement_begin_α: mov              r11, 409
                        mov              r10, 58;                             jmp   n409_call_α
n408_statement_begin_β: mov              r11, 409;                            jmp   n414_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n409_call_α:            sub              rsp, 16
                        mov              r11, 410
                        .section         .rodata
.Lrkfnzd1065:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1065]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 262213
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx1064_240
                        add              rsp, 16;                             jmp   n408_statement_begin_β
.Lx1064_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n410_var_α
n409_call_β:            mov              r11, 410
                        add              rsp, 16;                             jmp   n408_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n410_var_α:             sub              rsp, 16
                        mov              r11, 411
                        mov              rax, qword ptr [r9 + 208]            # ZT
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n411_binop_α
n410_var_β:             mov              r11, 411
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n408_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n411_binop_α:           sub              rsp, 16
                        mov              r11, 412
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1067_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1067_7
.Lx1067_2:              and              edx, 1;                              jz    .Lx1067_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx1067_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1067_4
.Lx1067_3:              movq             xmm0, rsi
.Lx1067_4:              cmp              cl, 5;                               je    .Lx1067_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1067_6
.Lx1067_5:              movq             xmm1, rdi
.Lx1067_6:              subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1067_7:                                                                    jmp   n412_assign_α
.Lx1067_0:              mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx1067_240
                        add              rsp, 16;                             jmp   n410_var_β
.Lx1067_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n412_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n412_assign_α:          mov              r11, 413
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # ZE
                        mov              qword ptr [r9 + 232], rdx;           jmp   n413_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n413_statement_end_α:   mov              r11, 414
                        mov              r10, 58
                        add              rsp, 48;                             jmp   n414_statement_begin_α
#=======================================================================================================================
#         <stmt 59, line 128: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n414_statement_begin_α: mov              r11, 415
                        mov              r10, 59;                             jmp   n415_lit_string_α
n414_statement_begin_β: mov              r11, 415;                            jmp   n420_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n415_lit_string_α:      sub              rsp, 16
                        mov              r11, 416
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx1073_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n416_var_α
.Lx1073_0:              .quad            .Lx1073_0_s
.Lx1073_0_s:            .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n416_var_α:             sub              rsp, 16
                        mov              r11, 417
                        mov              rax, qword ptr [r9 + 256]            # ZN
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n417_binop_α
n416_var_β:             mov              r11, 417
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n414_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n417_binop_α:           sub              rsp, 16
                        mov              r11, 418
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n418_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n418_assign_α:          mov              r11, 419
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1076_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n419_statement_end_α
.Lx1076_0:              .quad            .Lx1076_0_s
.Lx1076_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n419_statement_end_α:   mov              r11, 420
                        mov              r10, 59
                        add              rsp, 48;                             jmp   n420_statement_begin_α
#=======================================================================================================================
#         <stmt 60, line 129: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n420_statement_begin_α: mov              r11, 421
                        mov              r10, 60;                             jmp   n421_lit_string_α
n420_statement_begin_β: mov              r11, 421;                            jmp   n426_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n421_lit_string_α:      sub              rsp, 16
                        mov              r11, 422
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1081_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n422_var_α
.Lx1081_0:              .quad            .Lx1081_0_s
.Lx1081_0_s:            .string          "ns: "
#-----------------------------------------------------------------------------------------------------------------------
n422_var_α:             sub              rsp, 16
                        mov              r11, 423
                        mov              rax, qword ptr [r9 + 224]            # ZE
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n423_binop_α
n422_var_β:             mov              r11, 423
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n420_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n423_binop_α:           sub              rsp, 16
                        mov              r11, 424
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n424_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n424_assign_α:          mov              r11, 425
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1084_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n425_statement_end_α
.Lx1084_0:              .quad            .Lx1084_0_s
.Lx1084_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n425_statement_end_α:   mov              r11, 426
                        mov              r10, 60
                        add              rsp, 48;                             jmp   n426_statement_begin_α
#=======================================================================================================================
#         <stmt 61, line 130: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n426_statement_begin_α: mov              r11, 427
                        mov              r10, 61;                             jmp   n427_lit_string_α
n426_statement_begin_β: mov              r11, 427;                            jmp   n494_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n427_lit_string_α:      sub              rsp, 16
                        mov              r11, 428
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1089_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n428_var_α
.Lx1089_0:              .quad            .Lx1089_0_s
.Lx1089_0_s:            .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n428_var_α:             sub              rsp, 16
                        mov              r11, 429
                        mov              rax, qword ptr [r9 + 224]            # ZE
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n429_lit_integer_α
n428_var_β:             mov              r11, 429
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n426_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n429_lit_integer_α:     sub              rsp, 16
                        mov              r11, 430
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1091_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n430_binop_α
n429_lit_integer_β:     mov              r11, 430
                        add              rsp, 16;                             jmp   n428_var_β
.Lx1091_0:              .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n430_binop_α:           sub              rsp, 16
                        mov              r11, 431
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx1092_240
                        add              rsp, 16;                             jmp   n429_lit_integer_β
.Lx1092_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n431_binop_α
n430_binop_β:           mov              r11, 431
                        add              rsp, 16;                             jmp   n429_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n431_binop_α:           sub              rsp, 16
                        mov              r11, 432
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n432_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n432_assign_α:          mov              r11, 433
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1094_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n433_statement_end_α
.Lx1094_0:              .quad            .Lx1094_0_s
.Lx1094_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n433_statement_end_α:   mov              r11, 434
                        mov              r10, 61
                        add              rsp, 80;                             jmp   n494_statement_begin_α
#=======================================================================================================================
# ZFIXRUN  <stmt 62, line 131: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n434_statement_begin_α: mov              r11, 435
                        mov              r10, 62;                             jmp   n435_var_α
n434_statement_begin_β: mov              r11, 435;                            jmp   n439_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n435_var_α:             sub              rsp, 16
                        mov              r11, 436
                        mov              rax, qword ptr [r9 + 192]            # ZK
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n436_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n436_lit_string_α:      sub              rsp, 16
                        mov              r11, 437
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1100_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n437_differ_α
n436_lit_string_β:      mov              r11, 437
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n434_statement_begin_β
.Lx1100_0:              .quad            .Lx1100_0_s
.Lx1100_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n437_differ_α:          sub              rsp, 16
                        mov              r11, 438
                        mov              rdi, qword ptr [rsp + 32]            # var
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
                        test             eax, eax;                            je    .Lx1102_240
                        add              rsp, 16;                             jmp   n436_lit_string_β
.Lx1102_240:                                                                  jmp   n438_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n438_statement_end_α:   mov              r11, 439
                        mov              r10, 62
                        add              rsp, 48;                             jmp   n443_statement_begin_α
#=======================================================================================================================
#         <stmt 63, line 132: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n439_statement_begin_α: mov              r11, 440
                        mov              r10, 63;                             jmp   n440_var_α
n439_statement_begin_β: mov              r11, 440;                            jmp   n443_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n440_var_α:             sub              rsp, 16
                        mov              r11, 441
                        mov              rax, qword ptr [r9 + 176]            # fixed_n
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n441_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n441_assign_α:          mov              r11, 442
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZK
                        mov              qword ptr [r9 + 200], rdx;           jmp   n442_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n442_statement_end_α:   mov              r11, 443
                        mov              r10, 63
                        add              rsp, 16;                             jmp   n443_statement_begin_α
#=======================================================================================================================
# ZFB  <stmt 64, line 133: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n443_statement_begin_α: mov              r11, 444
                        mov              r10, 64;                             jmp   n444_call_α
n443_statement_begin_β: mov              r11, 444;                            jmp   n447_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n444_call_α:            sub              rsp, 16
                        mov              r11, 445
                        .section         .rodata
.Lrkfnzd1114:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1114]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 262213
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx1113_240
                        add              rsp, 16;                             jmp   n443_statement_begin_β
.Lx1113_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n445_assign_α
n444_call_β:            mov              r11, 445
                        add              rsp, 16;                             jmp   n443_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n445_assign_α:          mov              r11, 446
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZT
                        mov              qword ptr [r9 + 216], rdx;           jmp   n446_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n446_statement_end_α:   mov              r11, 447
                        mov              r10, 64
                        add              rsp, 16;                             jmp   n447_statement_begin_α
#=======================================================================================================================
#         <stmt 65, line 134: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n447_statement_begin_α: mov              r11, 448
                        mov              r10, 65;                             jmp   n448_lit_integer_α
n447_statement_begin_β: mov              r11, 448;                            jmp   n451_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n448_lit_integer_α:     sub              rsp, 16
                        mov              r11, 449
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1120_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n449_assign_α
.Lx1120_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n449_assign_α:          mov              r11, 450
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # ZN
                        mov              qword ptr [r9 + 264], rdx;           jmp   n450_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n450_statement_end_α:   mov              r11, 451
                        mov              r10, 65
                        add              rsp, 16;                             jmp   n451_statement_begin_α
#=======================================================================================================================
# ZFL  <stmt 66, line 135: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n451_statement_begin_α: mov              r11, 452
                        mov              r10, 66;                             jmp   n452_var_α
n451_statement_begin_β: mov              r11, 452;                            jmp   n455_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n452_var_α:             sub              rsp, 16
                        mov              r11, 453
                        mov              rax, qword ptr [r9 + 192]            # ZK
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n453_call_α
#-----------------------------------------------------------------------------------------------------------------------
n453_call_α:            sub              rsp, 16
                        mov              r11, 454
                        lea              rcx, [rip + .Lsig1128z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig1128z:             .quad            1
                        .quad            .Lx1128_2
                        .quad            .Lx1128_2
                        .quad            16
.Lx1128_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1128_29
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
.Lx1128_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1128_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n451_statement_begin_β
.Lx1128_240:                                                                  jmp   n454_statement_end_α
n453_call_β:            mov              r11, 454;                            jmp   n451_statement_begin_β
.Lx1128_0:              .quad            .Lx1128_0_s
.Lx1128_0_s:            .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n454_statement_end_α:   mov              r11, 455
                        mov              r10, 66
                        add              rsp, 32;                             jmp   n455_statement_begin_α
#=======================================================================================================================
#         <stmt 67, line 136: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n455_statement_begin_α: mov              r11, 456
                        mov              r10, 67;                             jmp   n456_var_α
n455_statement_begin_β: mov              r11, 456;                            jmp   n461_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n456_var_α:             sub              rsp, 16
                        mov              r11, 457
                        mov              rax, qword ptr [r9 + 256]            # ZN
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n457_var_α
#-----------------------------------------------------------------------------------------------------------------------
n457_var_α:             sub              rsp, 16
                        mov              r11, 458
                        mov              rax, qword ptr [r9 + 192]            # ZK
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n458_binop_α
n457_var_β:             mov              r11, 458
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n455_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n458_binop_α:           sub              rsp, 16
                        mov              r11, 459
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1135_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1135_7
.Lx1135_2:              and              edx, 1;                              jz    .Lx1135_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx1135_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1135_4
.Lx1135_3:              movq             xmm0, rsi
.Lx1135_4:              cmp              cl, 5;                               je    .Lx1135_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1135_6
.Lx1135_5:              movq             xmm1, rdi
.Lx1135_6:              addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1135_7:                                                                    jmp   n459_assign_α
.Lx1135_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx1135_240
                        add              rsp, 16;                             jmp   n457_var_β
.Lx1135_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n459_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n459_assign_α:          mov              r11, 460
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # ZN
                        mov              qword ptr [r9 + 264], rdx;           jmp   n460_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n460_statement_end_α:   mov              r11, 461
                        mov              r10, 67
                        add              rsp, 48;                             jmp   n461_statement_begin_α
#=======================================================================================================================
#         <stmt 68, line 137: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n461_statement_begin_α: mov              r11, 462
                        mov              r10, 68;                             jmp   n462_var_α
n461_statement_begin_β: mov              r11, 462;                            jmp   n468_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n462_var_α:             sub              rsp, 16
                        mov              r11, 463
                        mov              rax, qword ptr [r9 + 256]            # ZN
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n463_var_α
#-----------------------------------------------------------------------------------------------------------------------
n463_var_α:             sub              rsp, 16
                        mov              r11, 464
                        mov              rax, qword ptr [r9 + 176]            # fixed_n
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n464_coerce_numeric_α
n463_var_β:             mov              r11, 464
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n461_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n464_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 465
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx1144_1
                        cmp              al, 3;                               jne   .Lx1144_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx1144_0
.Lx1144_1:              mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n465_coerce_numeric_α
.Lx1144_0:              lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n465_coerce_numeric_α
n464_coerce_numeric_β:  mov              r11, 465
                        add              rsp, 16;                             jmp   n463_var_β
#-----------------------------------------------------------------------------------------------------------------------
n465_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 466
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx1146_1
                        cmp              al, 3;                               jne   .Lx1146_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx1146_0
.Lx1146_1:              mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n466_cmp_test_α
.Lx1146_0:              lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n466_cmp_test_α
n465_coerce_numeric_β:  mov              r11, 466
                        add              rsp, 16;                             jmp   n464_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n466_cmp_test_α:        sub              rsp, 16
                        mov              r11, 467
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1148_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx1148_239
                        add              rsp, 16;                             jmp   n465_coerce_numeric_β
.Lx1148_239:                                                                  jmp   n467_statement_end_α
.Lx1148_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx1148_240
                        add              rsp, 16;                             jmp   n465_coerce_numeric_β
.Lx1148_240:                                                                  jmp   n467_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n467_statement_end_α:   mov              r11, 468
                        mov              r10, 68
                        add              rsp, 80;                             jmp   n451_statement_begin_α
#=======================================================================================================================
#         <stmt 69, line 138: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n468_statement_begin_α: mov              r11, 469
                        mov              r10, 69;                             jmp   n469_call_α
n468_statement_begin_β: mov              r11, 469;                            jmp   n474_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n469_call_α:            sub              rsp, 16
                        mov              r11, 470
                        .section         .rodata
.Lrkfnzd1154:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1154]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 262213
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx1153_240
                        add              rsp, 16;                             jmp   n468_statement_begin_β
.Lx1153_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n470_var_α
n469_call_β:            mov              r11, 470
                        add              rsp, 16;                             jmp   n468_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n470_var_α:             sub              rsp, 16
                        mov              r11, 471
                        mov              rax, qword ptr [r9 + 208]            # ZT
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n471_binop_α
n470_var_β:             mov              r11, 471
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n468_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n471_binop_α:           sub              rsp, 16
                        mov              r11, 472
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1156_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1156_7
.Lx1156_2:              and              edx, 1;                              jz    .Lx1156_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx1156_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1156_4
.Lx1156_3:              movq             xmm0, rsi
.Lx1156_4:              cmp              cl, 5;                               je    .Lx1156_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1156_6
.Lx1156_5:              movq             xmm1, rdi
.Lx1156_6:              subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1156_7:                                                                    jmp   n472_assign_α
.Lx1156_0:              mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx1156_240
                        add              rsp, 16;                             jmp   n470_var_β
.Lx1156_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n472_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n472_assign_α:          mov              r11, 473
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # ZE
                        mov              qword ptr [r9 + 232], rdx;           jmp   n473_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n473_statement_end_α:   mov              r11, 474
                        mov              r10, 69
                        add              rsp, 48;                             jmp   n474_statement_begin_α
#=======================================================================================================================
#         <stmt 70, line 139: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n474_statement_begin_α: mov              r11, 475
                        mov              r10, 70;                             jmp   n475_lit_string_α
n474_statement_begin_β: mov              r11, 475;                            jmp   n480_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n475_lit_string_α:      sub              rsp, 16
                        mov              r11, 476
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx1162_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n476_var_α
.Lx1162_0:              .quad            .Lx1162_0_s
.Lx1162_0_s:            .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n476_var_α:             sub              rsp, 16
                        mov              r11, 477
                        mov              rax, qword ptr [r9 + 256]            # ZN
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n477_binop_α
n476_var_β:             mov              r11, 477
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n474_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n477_binop_α:           sub              rsp, 16
                        mov              r11, 478
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n478_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n478_assign_α:          mov              r11, 479
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1165_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n479_statement_end_α
.Lx1165_0:              .quad            .Lx1165_0_s
.Lx1165_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n479_statement_end_α:   mov              r11, 480
                        mov              r10, 70
                        add              rsp, 48;                             jmp   n480_statement_begin_α
#=======================================================================================================================
#         <stmt 71, line 140: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n480_statement_begin_α: mov              r11, 481
                        mov              r10, 71;                             jmp   n481_lit_string_α
n480_statement_begin_β: mov              r11, 481;                            jmp   n486_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n481_lit_string_α:      sub              rsp, 16
                        mov              r11, 482
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1170_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n482_var_α
.Lx1170_0:              .quad            .Lx1170_0_s
.Lx1170_0_s:            .string          "ns: "
#-----------------------------------------------------------------------------------------------------------------------
n482_var_α:             sub              rsp, 16
                        mov              r11, 483
                        mov              rax, qword ptr [r9 + 224]            # ZE
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n483_binop_α
n482_var_β:             mov              r11, 483
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n480_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n483_binop_α:           sub              rsp, 16
                        mov              r11, 484
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n484_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n484_assign_α:          mov              r11, 485
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1173_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n485_statement_end_α
.Lx1173_0:              .quad            .Lx1173_0_s
.Lx1173_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n485_statement_end_α:   mov              r11, 486
                        mov              r10, 71
                        add              rsp, 48;                             jmp   n486_statement_begin_α
#=======================================================================================================================
#         <stmt 72, line 141: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n486_statement_begin_α: mov              r11, 487
                        mov              r10, 72;                             jmp   n487_lit_string_α
n486_statement_begin_β: mov              r11, 487;                            jmp   n494_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n487_lit_string_α:      sub              rsp, 16
                        mov              r11, 488
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1178_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n488_var_α
.Lx1178_0:              .quad            .Lx1178_0_s
.Lx1178_0_s:            .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n488_var_α:             sub              rsp, 16
                        mov              r11, 489
                        mov              rax, qword ptr [r9 + 224]            # ZE
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n489_lit_integer_α
n488_var_β:             mov              r11, 489
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n486_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n489_lit_integer_α:     sub              rsp, 16
                        mov              r11, 490
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1180_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n490_binop_α
n489_lit_integer_β:     mov              r11, 490
                        add              rsp, 16;                             jmp   n488_var_β
.Lx1180_0:              .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n490_binop_α:           sub              rsp, 16
                        mov              r11, 491
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx1181_240
                        add              rsp, 16;                             jmp   n489_lit_integer_β
.Lx1181_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n491_binop_α
n490_binop_β:           mov              r11, 491
                        add              rsp, 16;                             jmp   n489_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n491_binop_α:           sub              rsp, 16
                        mov              r11, 492
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n492_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n492_assign_α:          mov              r11, 493
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1183_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n493_statement_end_α
.Lx1183_0:              .quad            .Lx1183_0_s
.Lx1183_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n493_statement_end_α:   mov              r11, 494
                        mov              r10, 72
                        add              rsp, 80;                             jmp   n494_statement_begin_α
#=======================================================================================================================
# ZEXIT  <stmt 73, line 142: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n494_statement_begin_α: mov              r11, 495
                        mov              r10, 73;                             jmp   n495_var_α
n494_statement_begin_β: mov              r11, 495;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n495_var_α:             sub              rsp, 16
                        mov              r11, 496
                        mov              rax, qword ptr [r9 + 224]            # ZE
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n496_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n496_assign_α:          mov              r11, 497
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # ZE
                        mov              qword ptr [r9 + 232], rdx;           jmp   n497_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n497_statement_end_α:   mov              r11, 498
                        mov              r10, 73
                        add              rsp, 16;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 499
                        pop              rcx
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
                        .section         .rodata
.Lseala1:               .string          "ZBODY"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            ZBODY_α
                        lea              rdi, [rip + .Lseala1]
                        mov              rsi, qword ptr [rip + ZBODY_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
