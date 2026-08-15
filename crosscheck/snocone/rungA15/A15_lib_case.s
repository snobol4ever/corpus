                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_lwr_α
proc_lwr_α:
proc_lwr_α_body:
#=======================================================================================================================
#         <stmt 2, line 6: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:                                                         jmp   n1_var_α
n0_statement_begin_β:                                                         jmp   proc_lwr_γ
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:               sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # s
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n2_keyword_snobol4_α
#-----------------------------------------------------------------------------------------------------------------------
n2_keyword_snobol4_α:   sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx9_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read_snobol4@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n3_keyword_snobol4_α
.Lx9_0:                 .quad            .Lx9_0_s
.Lx9_0_s:               .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n3_keyword_snobol4_α:   sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx10_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read_snobol4@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n4_call_α
.Lx10_0:                .quad            .Lx10_0_s
.Lx10_0_s:              .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n4_call_α:              sub              rsp, 16
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
.Lrkfnzd12:             .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd12]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 48
                        cmp              eax, 104;                            jne   .Lx11_240
                        add              rsp, 16
                        add              rsp, 48;                             jmp   proc_lwr_γ
.Lx11_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n5_assign_α
n4_call_β:              add              rsp, 16
                        add              rsp, 48;                             jmp   proc_lwr_γ
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:            mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # lwr
                        mov              qword ptr [r9 + 8], rdx
                        add              rsp, 64;                             jmp   proc_lwr_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_lwr_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_lwr_β:
                                                                              jmp   proc_lwr_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_lwr_γ:
                        add              rsp, 0
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
proc_lwr_ω:
                        add              rsp, 0
                        mov              eax, 104
                        ret
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_upr_α
proc_upr_α:
proc_upr_α_body:
#=======================================================================================================================
#         <stmt 4, line 9: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n14_statement_begin_α:                                                        jmp   n15_var_α
n14_statement_begin_β:                                                        jmp   proc_upr_γ
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # s
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n16_keyword_snobol4_α
#-----------------------------------------------------------------------------------------------------------------------
n16_keyword_snobol4_α:  sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read_snobol4@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n17_keyword_snobol4_α
.Lx23_0:                .quad            .Lx23_0_s
.Lx23_0_s:              .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n17_keyword_snobol4_α:  sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx24_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read_snobol4@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n18_call_α
.Lx24_0:                .quad            .Lx24_0_s
.Lx24_0_s:              .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n18_call_α:             sub              rsp, 16
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
.Lrkfnzd26:             .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd26]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 48
                        cmp              eax, 104;                            jne   .Lx25_240
                        add              rsp, 16
                        add              rsp, 48;                             jmp   proc_upr_γ
.Lx25_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n19_assign_α
n18_call_β:             add              rsp, 16
                        add              rsp, 48;                             jmp   proc_upr_γ
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # upr
                        mov              qword ptr [r9 + 40], rdx
                        add              rsp, 64;                             jmp   proc_upr_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_upr_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_upr_β:
                                                                              jmp   proc_upr_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_upr_γ:
                        add              rsp, 0
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
proc_upr_ω:
                        add              rsp, 0
                        mov              eax, 104
                        ret
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_cap_α
proc_cap_α:
proc_cap_α_body:
#=======================================================================================================================
#         <stmt 6, line 12: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_begin_α:                                                        jmp   n29_var_α
n28_statement_begin_β:                                                        jmp   proc_cap_γ
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # s
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n31_lit_integer_α
n30_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   proc_cap_γ
.Lx47_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n32_call_α
n31_lit_integer_β:      add              rsp, 16;                             jmp   n30_lit_integer_β
.Lx48_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n32_call_α:             sub              rsp, 16
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
.Lrkfnzd50:             .string          "SUBSTR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd50]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 48
                        cmp              eax, 104;                            jne   .Lx49_240
                        add              rsp, 16;                             jmp   n31_lit_integer_β
.Lx49_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n33_keyword_snobol4_α
n32_call_β:             add              rsp, 16;                             jmp   n31_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n33_keyword_snobol4_α:  sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read_snobol4@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n34_keyword_snobol4_α
.Lx51_0:                .quad            .Lx51_0_s
.Lx51_0_s:              .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n34_keyword_snobol4_α:  sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read_snobol4@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n35_call_α
.Lx52_0:                .quad            .Lx52_0_s
.Lx52_0_s:              .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n35_call_α:             sub              rsp, 16
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
.Lrkfnzd54:             .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd54]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 48
                        cmp              eax, 104;                            jne   .Lx53_240
                        add              rsp, 64;                             jmp   n31_lit_integer_β
.Lx53_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n36_var_α
n35_call_β:             add              rsp, 64;                             jmp   n31_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # s
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n37_lit_integer_α
n36_var_β:              add              rsp, 80;                             jmp   n31_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n38_call_α
n37_lit_integer_β:      add              rsp, 16;                             jmp   n36_var_β
.Lx56_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n38_call_α:             sub              rsp, 16
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
.Lrkfnzd58:             .string          "SUBSTR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd58]
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
                        cmp              eax, 104;                            jne   .Lx57_240
                        add              rsp, 16;                             jmp   n37_lit_integer_β
.Lx57_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n39_keyword_snobol4_α
n38_call_β:             add              rsp, 16;                             jmp   n37_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n39_keyword_snobol4_α:  sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read_snobol4@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n40_keyword_snobol4_α
.Lx59_0:                .quad            .Lx59_0_s
.Lx59_0_s:              .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n40_keyword_snobol4_α:  sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read_snobol4@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n41_call_α
.Lx60_0:                .quad            .Lx60_0_s
.Lx60_0_s:              .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n41_call_α:             sub              rsp, 16
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
.Lrkfnzd62:             .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd62]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 48
                        cmp              eax, 104;                            jne   .Lx61_240
                        add              rsp, 64;                             jmp   n37_lit_integer_β
.Lx61_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n42_binop_α
n41_call_β:             add              rsp, 64;                             jmp   n37_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n42_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 112]           # call
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 16]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n43_assign_α
n42_binop_β:            add              rsp, 80;                             jmp   n37_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # cap
                        mov              qword ptr [r9 + 56], rdx
                        add              rsp, 224;                            jmp   proc_cap_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_cap_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_cap_β:
                                                                              jmp   proc_cap_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_cap_γ:
                        add              rsp, 0
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
proc_cap_ω:
                        add              rsp, 0
                        mov              eax, 104
                        ret
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_icase_α
proc_icase_α:
proc_icase_α_body:
#=======================================================================================================================
#         <stmt 10, line 16: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_begin_α:                                                        jmp   n66_var_α
n65_statement_begin_β:                                                        jmp   proc_icase_γ
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # subject
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n67_call_α
#-----------------------------------------------------------------------------------------------------------------------
n67_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lsig75z]
                        lea              rax, [rip + lwr_alpha];              jmp   rax
.Lsig75z:               .quad            1
                        .quad            .Lx75_2
                        .quad            .Lx75_2
                        .quad            16
.Lx75_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx75_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx75_29:               mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx75_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   proc_icase_ω
.Lx75_240:                                                                    jmp   n68_var_α
n67_call_β:                                                                   jmp   proc_icase_ω
.Lx75_0:                .quad            .Lx75_0_s
.Lx75_0_s:              .string          "lwr"
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # pat
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n69_call_α
n68_var_β:              add              rsp, 16
                        add              rsp, 32;                             jmp   proc_icase_ω
#-----------------------------------------------------------------------------------------------------------------------
n69_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lsig78z]
                        lea              rax, [rip + lwr_alpha];              jmp   rax
.Lsig78z:               .quad            1
                        .quad            .Lx78_2
                        .quad            .Lx78_2
                        .quad            16
.Lx78_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx78_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx78_29:               mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx78_240
                        add              rsp, 16;                             jmp   n68_var_β
.Lx78_240:                                                                    jmp   n70_call_α
n69_call_β:                                                                   jmp   n68_var_β
.Lx78_0:                .quad            .Lx78_0_s
.Lx78_0_s:              .string          "lwr"
#-----------------------------------------------------------------------------------------------------------------------
n70_call_α:             sub              rsp, 16
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
.Lrkfnzd80:             .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd80]
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
                        cmp              eax, 104;                            jne   .Lx79_240
                        add              rsp, 32;                             jmp   n68_var_β
.Lx79_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80;                             jmp   proc_icase_γ
n70_call_β:             add              rsp, 32;                             jmp   n68_var_β
#-----------------------------------------------------------------------------------------------------------------------
proc_icase_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_icase_β:
                                                                              jmp   proc_icase_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_icase_γ:
                        add              rsp, 16
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
proc_icase_ω:
                        add              rsp, 16
                        mov              eax, 104
                        ret
proc_startup:
                        sub              rsp, 8
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "lwr"
.Lgvan1:                .string          "s"
.Lgvan2:                .string          "upr"
.Lgvan3:                .string          "cap"
.Lgvan4:                .string          "icase"
.Lgvan5:                .string          "subject"
.Lgvan6:                .string          "pat"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .quad            .Lgvan6
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 7
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 7
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#=======================================================================================================================
#         <stmt 1, line 3: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_begin_α:                                                        jmp   n82_lit_string_α
n81_statement_begin_β:                                                        jmp   n86_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n83_lit_integer_α
.Lx141_0:               .quad            .Lx141_0_s
.Lx141_0_s:             .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx142_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n84_call_α
n83_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n81_statement_begin_β
.Lx142_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n84_call_α:             sub              rsp, 16
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
.Lrkfnzd144:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd144]
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
                        cmp              eax, 104;                            jne   .Lx143_240
                        add              rsp, 16;                             jmp   n83_lit_integer_β
.Lx143_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n85_statement_end_α
n84_call_β:             add              rsp, 16;                             jmp   n83_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n85_statement_end_α:    add              rsp, 48;                             jmp   n86_statement_begin_α
#=======================================================================================================================
#         <stmt 3, line 7: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_begin_α:                                                        jmp   n87_statement_end_α
n86_statement_begin_β:                                                        jmp   n88_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_end_α:                                                          jmp   n88_statement_begin_α
#=======================================================================================================================
#         <stmt 5, line 10: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_begin_α:                                                        jmp   n89_statement_end_α
n88_statement_begin_β:                                                        jmp   n90_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_end_α:                                                          jmp   n90_statement_begin_α
#=======================================================================================================================
#         <stmt 7, line 13: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n90_statement_begin_α:                                                        jmp   n91_statement_end_α
n90_statement_begin_β:                                                        jmp   n92_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_end_α:                                                          jmp   n92_statement_begin_α
#=======================================================================================================================
#         <stmt 11, line 17: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_begin_α:                                                        jmp   n93_statement_end_α
n92_statement_begin_β:                                                        jmp   n94_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_end_α:                                                          jmp   n94_statement_begin_α
#=======================================================================================================================
#         <stmt 12, line 19: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n94_statement_begin_α:                                                        jmp   n95_lit_string_α
n94_statement_begin_β:                                                        jmp   n99_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n96_call_α
.Lx165_0:               .quad            .Lx165_0_s
.Lx165_0_s:             .string          "HELLO WORLD"
#-----------------------------------------------------------------------------------------------------------------------
n96_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lsig167z]
                        lea              rax, [rip + lwr_alpha];              jmp   rax
.Lsig167z:              .quad            1
                        .quad            .Lx167_2
                        .quad            .Lx167_2
                        .quad            16
.Lx167_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx167_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx167_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx167_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n94_statement_begin_β
.Lx167_240:                                                                   jmp   n97_assign_α
n96_call_β:                                                                   jmp   n94_statement_begin_β
.Lx167_0:               .quad            .Lx167_0_s
.Lx167_0_s:             .string          "lwr"
#-----------------------------------------------------------------------------------------------------------------------
n97_assign_α:           mov              rsi, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n98_statement_end_α
.Lx168_0:               .quad            .Lx168_0_s
.Lx168_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_end_α:    add              rsp, 32;                             jmp   n99_statement_begin_α
#=======================================================================================================================
#         <stmt 13, line 20: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_begin_α:                                                        jmp   n100_lit_string_α
n99_statement_begin_β:                                                        jmp   n104_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n101_call_α
.Lx173_0:               .quad            .Lx173_0_s
.Lx173_0_s:             .string          "hello world"
#-----------------------------------------------------------------------------------------------------------------------
n101_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig175z]
                        lea              rax, [rip + upr_alpha];              jmp   rax
.Lsig175z:              .quad            1
                        .quad            .Lx175_2
                        .quad            .Lx175_2
                        .quad            16
.Lx175_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx175_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx175_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx175_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n99_statement_begin_β
.Lx175_240:                                                                   jmp   n102_assign_α
n101_call_β:                                                                  jmp   n99_statement_begin_β
.Lx175_0:               .quad            .Lx175_0_s
.Lx175_0_s:             .string          "upr"
#-----------------------------------------------------------------------------------------------------------------------
n102_assign_α:          mov              rsi, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n103_statement_end_α
.Lx176_0:               .quad            .Lx176_0_s
.Lx176_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_end_α:   add              rsp, 32;                             jmp   n104_statement_begin_α
#=======================================================================================================================
#         <stmt 14, line 21: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n104_statement_begin_α:                                                       jmp   n105_lit_string_α
n104_statement_begin_β:                                                       jmp   n109_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n106_call_α
.Lx181_0:               .quad            .Lx181_0_s
.Lx181_0_s:             .string          "hELLO wORLD"
#-----------------------------------------------------------------------------------------------------------------------
n106_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig183z]
                        lea              rax, [rip + cap_alpha];              jmp   rax
.Lsig183z:              .quad            1
                        .quad            .Lx183_2
                        .quad            .Lx183_2
                        .quad            16
.Lx183_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx183_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx183_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx183_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n104_statement_begin_β
.Lx183_240:                                                                   jmp   n107_assign_α
n106_call_β:                                                                  jmp   n104_statement_begin_β
.Lx183_0:               .quad            .Lx183_0_s
.Lx183_0_s:             .string          "cap"
#-----------------------------------------------------------------------------------------------------------------------
n107_assign_α:          mov              rsi, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx184_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n108_statement_end_α
.Lx184_0:               .quad            .Lx184_0_s
.Lx184_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n108_statement_end_α:   add              rsp, 32;                             jmp   n109_statement_begin_α
#=======================================================================================================================
#         <stmt 16, line 26: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_begin_α:                                                       jmp   n110_lit_string_α
n109_statement_begin_β:                                                       jmp   n116_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx189_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n111_lit_string_α
.Lx189_0:               .quad            .Lx189_0_s
.Lx189_0_s:             .string          "Hello"
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx190_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n112_call_α
.Lx190_0:               .quad            .Lx190_0_s
.Lx190_0_s:             .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n112_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig192z]
                        lea              rax, [rip + icase_alpha];            jmp   rax
.Lsig192z:              .quad            2
                        .quad            .Lx192_2
                        .quad            .Lx192_2
                        .quad            32
                        .quad            16
.Lx192_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx192_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx192_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx192_240
                        add              rsp, 16;                             jmp   n115_statement_end_α
.Lx192_240:                                                                   jmp   n113_lit_string_α
n112_call_β:                                                                  jmp   n115_statement_end_α
.Lx192_0:               .quad            .Lx192_0_s
.Lx192_0_s:             .string          "icase"
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx193_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n114_assign_α
.Lx193_0:               .quad            .Lx193_0_s
.Lx193_0_s:             .string          "ok: icase hello"
#-----------------------------------------------------------------------------------------------------------------------
n114_assign_α:          mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx194_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n115_statement_end_α
.Lx194_0:               .quad            .Lx194_0_s
.Lx194_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n115_statement_end_α:   add              rsp, 64;                             jmp   n116_statement_begin_α
#=======================================================================================================================
#         <stmt 18, line 29: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n116_statement_begin_α:                                                       jmp   n117_lit_string_α
n116_statement_begin_β:                                                       jmp   n123_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n118_lit_string_α
.Lx199_0:               .quad            .Lx199_0_s
.Lx199_0_s:             .string          "HELLO"
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n119_call_α
.Lx200_0:               .quad            .Lx200_0_s
.Lx200_0_s:             .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n119_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig202z]
                        lea              rax, [rip + icase_alpha];            jmp   rax
.Lsig202z:              .quad            2
                        .quad            .Lx202_2
                        .quad            .Lx202_2
                        .quad            32
                        .quad            16
.Lx202_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx202_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx202_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx202_240
                        add              rsp, 16;                             jmp   n122_statement_end_α
.Lx202_240:                                                                   jmp   n120_lit_string_α
n119_call_β:                                                                  jmp   n122_statement_end_α
.Lx202_0:               .quad            .Lx202_0_s
.Lx202_0_s:             .string          "icase"
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n121_assign_α
.Lx203_0:               .quad            .Lx203_0_s
.Lx203_0_s:             .string          "ok: icase HELLO"
#-----------------------------------------------------------------------------------------------------------------------
n121_assign_α:          mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n122_statement_end_α
.Lx204_0:               .quad            .Lx204_0_s
.Lx204_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n122_statement_end_α:   add              rsp, 64;                             jmp   n123_statement_begin_α
#=======================================================================================================================
#         <stmt 20, line 32: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n123_statement_begin_α:                                                       jmp   n124_lit_string_α
n123_statement_begin_β:                                                       jmp   n130_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n125_lit_string_α
.Lx209_0:               .quad            .Lx209_0_s
.Lx209_0_s:             .string          "HeLLo"
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n126_call_α
.Lx210_0:               .quad            .Lx210_0_s
.Lx210_0_s:             .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n126_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig212z]
                        lea              rax, [rip + icase_alpha];            jmp   rax
.Lsig212z:              .quad            2
                        .quad            .Lx212_2
                        .quad            .Lx212_2
                        .quad            32
                        .quad            16
.Lx212_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx212_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx212_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx212_240
                        add              rsp, 16;                             jmp   n129_statement_end_α
.Lx212_240:                                                                   jmp   n127_lit_string_α
n126_call_β:                                                                  jmp   n129_statement_end_α
.Lx212_0:               .quad            .Lx212_0_s
.Lx212_0_s:             .string          "icase"
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n128_assign_α
.Lx213_0:               .quad            .Lx213_0_s
.Lx213_0_s:             .string          "ok: icase HeLLo"
#-----------------------------------------------------------------------------------------------------------------------
n128_assign_α:          mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n129_statement_end_α
.Lx214_0:               .quad            .Lx214_0_s
.Lx214_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n129_statement_end_α:   add              rsp, 64;                             jmp   n130_statement_begin_α
#=======================================================================================================================
#         <stmt 23, line 36: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n130_statement_begin_α:                                                       jmp   n131_lit_string_α
n130_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx219_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n132_lit_string_α
.Lx219_0:               .quad            .Lx219_0_s
.Lx219_0_s:             .string          "world"
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n133_call_α
n132_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n136_lit_string_α
.Lx220_0:               .quad            .Lx220_0_s
.Lx220_0_s:             .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n133_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig222z]
                        lea              rax, [rip + icase_alpha];            jmp   rax
.Lsig222z:              .quad            2
                        .quad            .Lx222_2
                        .quad            .Lx222_2
                        .quad            32
                        .quad            16
.Lx222_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx222_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx222_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx222_240
                        add              rsp, 16;                             jmp   n132_lit_string_β
.Lx222_240:                                                                   jmp   n134_lit_string_α
n133_call_β:                                                                  jmp   n132_lit_string_β
.Lx222_0:               .quad            .Lx222_0_s
.Lx222_0_s:             .string          "icase"
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 32
                        mov              rax, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n135_assign_α
.Lx223_0:               .quad            .Lx223_0_s
.Lx223_0_s:             .string          "fail: icase matched wrong string"
#-----------------------------------------------------------------------------------------------------------------------
n135_assign_α:          mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n138_statement_end_α
.Lx224_0:               .quad            .Lx224_0_s
.Lx224_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:      mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], 11
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n137_assign_α
.Lx225_0:               .quad            .Lx225_0_s
.Lx225_0_s:             .string          "no match ok"
#-----------------------------------------------------------------------------------------------------------------------
n137_assign_α:          mov              rsi, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
                        mov              rdi, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n138_statement_end_α
.Lx226_0:               .quad            .Lx226_0_s
.Lx226_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n138_statement_end_α:   add              rsp, 64;                             jmp   main_γ
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
