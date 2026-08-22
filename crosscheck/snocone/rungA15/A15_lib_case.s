                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__lwr:
lwr_α_body:
                        sub              rsp, 192
                        mov              qword ptr [rsp + 168], rcx
                        mov              qword ptr [rsp + 176], rdx
                        mov              qword ptr [rsp + 184], rbp
#=======================================================================================================================
#         <stmt 2, line 6: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:   mov              r11, 1
                        mov              r10, 2;                              jmp   n1_var_α
n0_statement_begin_β:   mov              r11, 1;                              jmp   lwr_γ
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:               sub              rsp, 16
                        mov              r11, 2
                        mov              rax, qword ptr [r9 + 16]             # s
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n2_keyword_snobol4_α
#-----------------------------------------------------------------------------------------------------------------------
n2_keyword_snobol4_α:   sub              rsp, 16
                        mov              r11, 3
                        mov              rdi, qword ptr [rip + .Lx9_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_read_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n3_keyword_snobol4_α
.Lx9_0:                 .quad            21
#-----------------------------------------------------------------------------------------------------------------------
n3_keyword_snobol4_α:   sub              rsp, 16
                        mov              r11, 4
                        mov              rdi, qword ptr [rip + .Lx10_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_read_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n4_call_α
.Lx10_0:                .quad            22
#-----------------------------------------------------------------------------------------------------------------------
n4_call_α:              sub              rsp, 16
                        mov              r11, 5
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
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 48
                        cmp              al, 104;                             jne   .Lx11_240
                        add              rsp, 16
                        add              rsp, 48;                             jmp   lwr_γ
.Lx11_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n5_assign_α
n4_call_β:              mov              r11, 5
                        add              rsp, 16
                        add              rsp, 48;                             jmp   lwr_γ
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:            mov              r11, 6
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # lwr
                        mov              qword ptr [r9 + 8], rdx
                        add              rsp, 64;                             jmp   lwr_γ
#-----------------------------------------------------------------------------------------------------------------------
lwr_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
lwr_β:
                                                                              jmp   lwr_ω
#-----------------------------------------------------------------------------------------------------------------------
lwr_γ:
                        add              rsp, 192
                        add              rsp, 0
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
lwr_ω:
                        add              rsp, 192
                        add              rsp, 0
                        mov              eax, 104
                        ret
#-----------------------------------------------------------------------------------------------------------------------
FN__upr:
upr_α_body:
                        sub              rsp, 192
                        mov              qword ptr [rsp + 168], rcx
                        mov              qword ptr [rsp + 176], rdx
                        mov              qword ptr [rsp + 184], rbp
#=======================================================================================================================
#         <stmt 4, line 9: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n14_statement_begin_α:  mov              r11, 7
                        mov              r10, 4;                              jmp   n15_var_α
n14_statement_begin_β:  mov              r11, 7;                              jmp   upr_γ
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:              sub              rsp, 16
                        mov              r11, 8
                        mov              rax, qword ptr [r9 + 16]             # s
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n16_keyword_snobol4_α
#-----------------------------------------------------------------------------------------------------------------------
n16_keyword_snobol4_α:  sub              rsp, 16
                        mov              r11, 9
                        mov              rdi, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_read_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n17_keyword_snobol4_α
.Lx23_0:                .quad            22
#-----------------------------------------------------------------------------------------------------------------------
n17_keyword_snobol4_α:  sub              rsp, 16
                        mov              r11, 10
                        mov              rdi, qword ptr [rip + .Lx24_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_read_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n18_call_α
.Lx24_0:                .quad            21
#-----------------------------------------------------------------------------------------------------------------------
n18_call_α:             sub              rsp, 16
                        mov              r11, 11
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
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 48
                        cmp              al, 104;                             jne   .Lx25_240
                        add              rsp, 16
                        add              rsp, 48;                             jmp   upr_γ
.Lx25_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n19_assign_α
n18_call_β:             mov              r11, 11
                        add              rsp, 16
                        add              rsp, 48;                             jmp   upr_γ
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:           mov              r11, 12
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # upr
                        mov              qword ptr [r9 + 40], rdx
                        add              rsp, 64;                             jmp   upr_γ
#-----------------------------------------------------------------------------------------------------------------------
upr_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
upr_β:
                                                                              jmp   upr_ω
#-----------------------------------------------------------------------------------------------------------------------
upr_γ:
                        add              rsp, 192
                        add              rsp, 0
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
upr_ω:
                        add              rsp, 192
                        add              rsp, 0
                        mov              eax, 104
                        ret
#-----------------------------------------------------------------------------------------------------------------------
FN__cap:
cap_α_body:
                        sub              rsp, 528
                        mov              qword ptr [rsp + 504], rcx
                        mov              qword ptr [rsp + 512], rdx
                        mov              qword ptr [rsp + 520], rbp
#=======================================================================================================================
#         <stmt 6, line 12: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_begin_α:  mov              r11, 13
                        mov              r10, 6;                              jmp   n29_var_α
n28_statement_begin_β:  mov              r11, 13;                             jmp   cap_γ
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:              sub              rsp, 16
                        mov              r11, 14
                        mov              rax, qword ptr [r9 + 16]             # s
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      sub              rsp, 16
                        mov              r11, 15
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n31_lit_integer_α
n30_lit_integer_β:      mov              r11, 15
                        add              rsp, 16
                        add              rsp, 16;                             jmp   cap_γ
.Lx47_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:      sub              rsp, 16
                        mov              r11, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n32_call_α
n31_lit_integer_β:      mov              r11, 16
                        add              rsp, 16;                             jmp   n30_lit_integer_β
.Lx48_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n32_call_α:             sub              rsp, 16
                        mov              r11, 17
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
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 48
                        cmp              al, 104;                             jne   .Lx49_240
                        add              rsp, 16;                             jmp   n31_lit_integer_β
.Lx49_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n33_keyword_snobol4_α
n32_call_β:             mov              r11, 17
                        add              rsp, 16;                             jmp   n31_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n33_keyword_snobol4_α:  sub              rsp, 16
                        mov              r11, 18
                        mov              rdi, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_read_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n34_keyword_snobol4_α
.Lx51_0:                .quad            22
#-----------------------------------------------------------------------------------------------------------------------
n34_keyword_snobol4_α:  sub              rsp, 16
                        mov              r11, 19
                        mov              rdi, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_read_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n35_call_α
.Lx52_0:                .quad            21
#-----------------------------------------------------------------------------------------------------------------------
n35_call_α:             sub              rsp, 16
                        mov              r11, 20
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
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 48
                        cmp              al, 104;                             jne   .Lx53_240
                        add              rsp, 64;                             jmp   n31_lit_integer_β
.Lx53_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n36_var_α
n35_call_β:             mov              r11, 20
                        add              rsp, 64;                             jmp   n31_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:              sub              rsp, 16
                        mov              r11, 21
                        mov              rax, qword ptr [r9 + 16]             # s
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n37_lit_integer_α
n36_var_β:              mov              r11, 21
                        add              rsp, 80;                             jmp   n31_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:      sub              rsp, 16
                        mov              r11, 22
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n38_call_α
n37_lit_integer_β:      mov              r11, 22
                        add              rsp, 16;                             jmp   n36_var_β
.Lx56_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n38_call_α:             sub              rsp, 16
                        mov              r11, 23
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
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lx57_240
                        add              rsp, 16;                             jmp   n37_lit_integer_β
.Lx57_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n39_keyword_snobol4_α
n38_call_β:             mov              r11, 23
                        add              rsp, 16;                             jmp   n37_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n39_keyword_snobol4_α:  sub              rsp, 16
                        mov              r11, 24
                        mov              rdi, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_read_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n40_keyword_snobol4_α
.Lx59_0:                .quad            21
#-----------------------------------------------------------------------------------------------------------------------
n40_keyword_snobol4_α:  sub              rsp, 16
                        mov              r11, 25
                        mov              rdi, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_read_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n41_call_α
.Lx60_0:                .quad            22
#-----------------------------------------------------------------------------------------------------------------------
n41_call_α:             sub              rsp, 16
                        mov              r11, 26
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
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 48
                        cmp              al, 104;                             jne   .Lx61_240
                        add              rsp, 64;                             jmp   n37_lit_integer_β
.Lx61_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n42_binop_α
n41_call_β:             mov              r11, 26
                        add              rsp, 64;                             jmp   n37_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n42_binop_α:            sub              rsp, 16
                        mov              r11, 27
                        mov              rdi, qword ptr [rsp + 112]           # call
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n43_assign_α
n42_binop_β:            mov              r11, 27
                        add              rsp, 80;                             jmp   n37_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:           mov              r11, 28
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # cap
                        mov              qword ptr [r9 + 56], rdx
                        add              rsp, 224;                            jmp   cap_γ
#-----------------------------------------------------------------------------------------------------------------------
cap_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
cap_β:
                                                                              jmp   cap_ω
#-----------------------------------------------------------------------------------------------------------------------
cap_γ:
                        add              rsp, 528
                        add              rsp, 0
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
cap_ω:
                        add              rsp, 528
                        add              rsp, 0
                        mov              eax, 104
                        ret
#-----------------------------------------------------------------------------------------------------------------------
FN__icase:
icase_α_body:
                        sub              rsp, 192
                        mov              qword ptr [rsp + 168], rcx
                        mov              qword ptr [rsp + 176], rdx
                        mov              qword ptr [rsp + 184], rbp
#=======================================================================================================================
#         <stmt 10, line 16: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_begin_α:  mov              r11, 29
                        mov              r10, 10;                             jmp   n66_var_α
n65_statement_begin_β:  mov              r11, 29;                             jmp   icase_γ
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:              sub              rsp, 16
                        mov              r11, 30
                        mov              rax, qword ptr [r9 + 80]             # subject
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n67_call_α
#-----------------------------------------------------------------------------------------------------------------------
n67_call_α:             sub              rsp, 16
                        mov              r11, 31
                        lea              rcx, [rip + .Lsig75z]
                        lea              rax, [rip + lwr_α];                  jmp   rax
.Lsig75z:               .quad            1
                        .quad            .Lx75_2
                        .quad            .Lx75_2
                        .quad            16
.Lx75_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx75_29
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
.Lx75_29:               mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx75_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   icase_ω
.Lx75_240:                                                                    jmp   n68_var_α
n67_call_β:             mov              r11, 31;                             jmp   icase_ω
.Lx75_0:                .quad            .Lx75_0_s
.Lx75_0_s:              .string          "lwr"
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:              sub              rsp, 16
                        mov              r11, 32
                        mov              rax, qword ptr [r9 + 96]             # pat
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n69_call_α
n68_var_β:              mov              r11, 32
                        add              rsp, 16
                        add              rsp, 32;                             jmp   icase_ω
#-----------------------------------------------------------------------------------------------------------------------
n69_call_α:             sub              rsp, 16
                        mov              r11, 33
                        lea              rcx, [rip + .Lsig78z]
                        lea              rax, [rip + lwr_α];                  jmp   rax
.Lsig78z:               .quad            1
                        .quad            .Lx78_2
                        .quad            .Lx78_2
                        .quad            16
.Lx78_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx78_29
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
.Lx78_29:               mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx78_240
                        add              rsp, 16;                             jmp   n68_var_β
.Lx78_240:                                                                    jmp   n70_ident_α
n69_call_β:             mov              r11, 33;                             jmp   n68_var_β
.Lx78_0:                .quad            .Lx78_0_s
.Lx78_0_s:              .string          "lwr"
#-----------------------------------------------------------------------------------------------------------------------
n70_ident_α:            sub              rsp, 16
                        mov              r11, 34
                        mov              rdi, qword ptr [rsp + 48]            # call
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jne   .Lx80_240
                        add              rsp, 32;                             jmp   n68_var_β
.Lx80_240:              add              rsp, 80;                             jmp   icase_γ
#-----------------------------------------------------------------------------------------------------------------------
icase_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
icase_β:
                                                                              jmp   icase_ω
#-----------------------------------------------------------------------------------------------------------------------
icase_γ:
                        add              rsp, 192
                        add              rsp, 16
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
icase_ω:
                        add              rsp, 192
                        add              rsp, 16
                        mov              eax, 104
                        ret
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
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
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#=======================================================================================================================
#         <stmt 1, line 3: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_begin_α:  mov              r11, 35
                        mov              r10, 1;                              jmp   n82_lit_integer_α
n81_statement_begin_β:  mov              r11, 35;                             jmp   n85_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:      sub              rsp, 16
                        mov              r11, 36
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx140_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n83_keyword_assign_snobol4_α
.Lx140_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n83_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 37
                        mov              rdi, qword ptr [rip + .Lx141_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx141_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n81_statement_begin_β
.Lx141_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n84_statement_end_α
.Lx141_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_end_α:    mov              r11, 38
                        mov              r10, 1
                        add              rsp, 32;                             jmp   n85_statement_begin_α
#=======================================================================================================================
#         <stmt 3, line 7: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n85_statement_begin_α:  mov              r11, 39
                        mov              r10, 3;                              jmp   n86_statement_end_α
n85_statement_begin_β:  mov              r11, 39;                             jmp   n87_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_end_α:    mov              r11, 40
                        mov              r10, 3;                              jmp   n87_statement_begin_α
#=======================================================================================================================
#         <stmt 5, line 10: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_begin_α:  mov              r11, 41
                        mov              r10, 5;                              jmp   n88_statement_end_α
n87_statement_begin_β:  mov              r11, 41;                             jmp   n89_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_end_α:    mov              r11, 42
                        mov              r10, 5;                              jmp   n89_statement_begin_α
#=======================================================================================================================
#         <stmt 7, line 13: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_begin_α:  mov              r11, 43
                        mov              r10, 7;                              jmp   n90_statement_end_α
n89_statement_begin_β:  mov              r11, 43;                             jmp   n91_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n90_statement_end_α:    mov              r11, 44
                        mov              r10, 7;                              jmp   n91_statement_begin_α
#=======================================================================================================================
#         <stmt 11, line 17: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_begin_α:  mov              r11, 45
                        mov              r10, 11;                             jmp   n92_statement_end_α
n91_statement_begin_β:  mov              r11, 45;                             jmp   n93_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_end_α:    mov              r11, 46
                        mov              r10, 11;                             jmp   n93_statement_begin_α
#=======================================================================================================================
#         <stmt 12, line 19: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_begin_α:  mov              r11, 47
                        mov              r10, 12;                             jmp   n94_lit_string_α
n93_statement_begin_β:  mov              r11, 47;                             jmp   n98_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:       sub              rsp, 16
                        mov              r11, 48
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n95_call_α
.Lx162_0:               .quad            .Lx162_0_s
.Lx162_0_s:             .string          "HELLO WORLD"
#-----------------------------------------------------------------------------------------------------------------------
n95_call_α:             sub              rsp, 16
                        mov              r11, 49
                        lea              rcx, [rip + .Lsig164z]
                        lea              rax, [rip + lwr_α];                  jmp   rax
.Lsig164z:              .quad            1
                        .quad            .Lx164_2
                        .quad            .Lx164_2
                        .quad            16
.Lx164_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx164_29
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
.Lx164_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx164_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n93_statement_begin_β
.Lx164_240:                                                                   jmp   n96_assign_α
n95_call_β:             mov              r11, 49;                             jmp   n93_statement_begin_β
.Lx164_0:               .quad            .Lx164_0_s
.Lx164_0_s:             .string          "lwr"
#-----------------------------------------------------------------------------------------------------------------------
n96_assign_α:           mov              r11, 50
                        mov              rsi, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n97_statement_end_α
.Lx165_0:               .quad            .Lx165_0_s
.Lx165_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n97_statement_end_α:    mov              r11, 51
                        mov              r10, 12
                        add              rsp, 32;                             jmp   n98_statement_begin_α
#=======================================================================================================================
#         <stmt 13, line 20: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_begin_α:  mov              r11, 52
                        mov              r10, 13;                             jmp   n99_lit_string_α
n98_statement_begin_β:  mov              r11, 52;                             jmp   n103_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:       sub              rsp, 16
                        mov              r11, 53
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n100_call_α
.Lx170_0:               .quad            .Lx170_0_s
.Lx170_0_s:             .string          "hello world"
#-----------------------------------------------------------------------------------------------------------------------
n100_call_α:            sub              rsp, 16
                        mov              r11, 54
                        lea              rcx, [rip + .Lsig172z]
                        lea              rax, [rip + upr_α];                  jmp   rax
.Lsig172z:              .quad            1
                        .quad            .Lx172_2
                        .quad            .Lx172_2
                        .quad            16
.Lx172_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx172_29
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
.Lx172_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx172_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n98_statement_begin_β
.Lx172_240:                                                                   jmp   n101_assign_α
n100_call_β:            mov              r11, 54;                             jmp   n98_statement_begin_β
.Lx172_0:               .quad            .Lx172_0_s
.Lx172_0_s:             .string          "upr"
#-----------------------------------------------------------------------------------------------------------------------
n101_assign_α:          mov              r11, 55
                        mov              rsi, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n102_statement_end_α
.Lx173_0:               .quad            .Lx173_0_s
.Lx173_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n102_statement_end_α:   mov              r11, 56
                        mov              r10, 13
                        add              rsp, 32;                             jmp   n103_statement_begin_α
#=======================================================================================================================
#         <stmt 14, line 21: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_begin_α: mov              r11, 57
                        mov              r10, 14;                             jmp   n104_lit_string_α
n103_statement_begin_β: mov              r11, 57;                             jmp   n108_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:      sub              rsp, 16
                        mov              r11, 58
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n105_call_α
.Lx178_0:               .quad            .Lx178_0_s
.Lx178_0_s:             .string          "hELLO wORLD"
#-----------------------------------------------------------------------------------------------------------------------
n105_call_α:            sub              rsp, 16
                        mov              r11, 59
                        lea              rcx, [rip + .Lsig180z]
                        lea              rax, [rip + cap_α];                  jmp   rax
.Lsig180z:              .quad            1
                        .quad            .Lx180_2
                        .quad            .Lx180_2
                        .quad            16
.Lx180_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx180_29
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
.Lx180_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx180_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n103_statement_begin_β
.Lx180_240:                                                                   jmp   n106_assign_α
n105_call_β:            mov              r11, 59;                             jmp   n103_statement_begin_β
.Lx180_0:               .quad            .Lx180_0_s
.Lx180_0_s:             .string          "cap"
#-----------------------------------------------------------------------------------------------------------------------
n106_assign_α:          mov              r11, 60
                        mov              rsi, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n107_statement_end_α
.Lx181_0:               .quad            .Lx181_0_s
.Lx181_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n107_statement_end_α:   mov              r11, 61
                        mov              r10, 14
                        add              rsp, 32;                             jmp   n108_statement_begin_α
#=======================================================================================================================
#         <stmt 16, line 26: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n108_statement_begin_α: mov              r11, 62
                        mov              r10, 16;                             jmp   n109_lit_string_α
n108_statement_begin_β: mov              r11, 62;                             jmp   n115_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_string_α:      sub              rsp, 16
                        mov              r11, 63
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n110_lit_string_α
.Lx186_0:               .quad            .Lx186_0_s
.Lx186_0_s:             .string          "Hello"
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:      sub              rsp, 16
                        mov              r11, 64
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n111_call_α
.Lx187_0:               .quad            .Lx187_0_s
.Lx187_0_s:             .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n111_call_α:            sub              rsp, 16
                        mov              r11, 65
                        lea              rcx, [rip + .Lsig189z]
                        lea              rax, [rip + icase_α];                jmp   rax
.Lsig189z:              .quad            2
                        .quad            .Lx189_2
                        .quad            .Lx189_2
                        .quad            32
                        .quad            16
.Lx189_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx189_29
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
.Lx189_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx189_240
                        add              rsp, 16;                             jmp   n114_statement_end_α
.Lx189_240:                                                                   jmp   n112_lit_string_α
n111_call_β:            mov              r11, 65;                             jmp   n114_statement_end_α
.Lx189_0:               .quad            .Lx189_0_s
.Lx189_0_s:             .string          "icase"
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_string_α:      sub              rsp, 16
                        mov              r11, 66
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx190_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n113_assign_α
.Lx190_0:               .quad            .Lx190_0_s
.Lx190_0_s:             .string          "ok: icase hello"
#-----------------------------------------------------------------------------------------------------------------------
n113_assign_α:          mov              r11, 67
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx191_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n114_statement_end_α
.Lx191_0:               .quad            .Lx191_0_s
.Lx191_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n114_statement_end_α:   mov              r11, 68
                        mov              r10, 16
                        add              rsp, 64;                             jmp   n115_statement_begin_α
#=======================================================================================================================
#         <stmt 18, line 29: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n115_statement_begin_α: mov              r11, 69
                        mov              r10, 18;                             jmp   n116_lit_string_α
n115_statement_begin_β: mov              r11, 69;                             jmp   n122_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:      sub              rsp, 16
                        mov              r11, 70
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n117_lit_string_α
.Lx196_0:               .quad            .Lx196_0_s
.Lx196_0_s:             .string          "HELLO"
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:      sub              rsp, 16
                        mov              r11, 71
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n118_call_α
.Lx197_0:               .quad            .Lx197_0_s
.Lx197_0_s:             .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n118_call_α:            sub              rsp, 16
                        mov              r11, 72
                        lea              rcx, [rip + .Lsig199z]
                        lea              rax, [rip + icase_α];                jmp   rax
.Lsig199z:              .quad            2
                        .quad            .Lx199_2
                        .quad            .Lx199_2
                        .quad            32
                        .quad            16
.Lx199_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx199_29
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
.Lx199_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx199_240
                        add              rsp, 16;                             jmp   n121_statement_end_α
.Lx199_240:                                                                   jmp   n119_lit_string_α
n118_call_β:            mov              r11, 72;                             jmp   n121_statement_end_α
.Lx199_0:               .quad            .Lx199_0_s
.Lx199_0_s:             .string          "icase"
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_string_α:      sub              rsp, 16
                        mov              r11, 73
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n120_assign_α
.Lx200_0:               .quad            .Lx200_0_s
.Lx200_0_s:             .string          "ok: icase HELLO"
#-----------------------------------------------------------------------------------------------------------------------
n120_assign_α:          mov              r11, 74
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n121_statement_end_α
.Lx201_0:               .quad            .Lx201_0_s
.Lx201_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n121_statement_end_α:   mov              r11, 75
                        mov              r10, 18
                        add              rsp, 64;                             jmp   n122_statement_begin_α
#=======================================================================================================================
#         <stmt 20, line 32: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n122_statement_begin_α: mov              r11, 76
                        mov              r10, 20;                             jmp   n123_lit_string_α
n122_statement_begin_β: mov              r11, 76;                             jmp   n129_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:      sub              rsp, 16
                        mov              r11, 77
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx206_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n124_lit_string_α
.Lx206_0:               .quad            .Lx206_0_s
.Lx206_0_s:             .string          "HeLLo"
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:      sub              rsp, 16
                        mov              r11, 78
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx207_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n125_call_α
.Lx207_0:               .quad            .Lx207_0_s
.Lx207_0_s:             .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n125_call_α:            sub              rsp, 16
                        mov              r11, 79
                        lea              rcx, [rip + .Lsig209z]
                        lea              rax, [rip + icase_α];                jmp   rax
.Lsig209z:              .quad            2
                        .quad            .Lx209_2
                        .quad            .Lx209_2
                        .quad            32
                        .quad            16
.Lx209_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx209_29
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
.Lx209_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx209_240
                        add              rsp, 16;                             jmp   n128_statement_end_α
.Lx209_240:                                                                   jmp   n126_lit_string_α
n125_call_β:            mov              r11, 79;                             jmp   n128_statement_end_α
.Lx209_0:               .quad            .Lx209_0_s
.Lx209_0_s:             .string          "icase"
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:      sub              rsp, 16
                        mov              r11, 80
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n127_assign_α
.Lx210_0:               .quad            .Lx210_0_s
.Lx210_0_s:             .string          "ok: icase HeLLo"
#-----------------------------------------------------------------------------------------------------------------------
n127_assign_α:          mov              r11, 81
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx211_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n128_statement_end_α
.Lx211_0:               .quad            .Lx211_0_s
.Lx211_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n128_statement_end_α:   mov              r11, 82
                        mov              r10, 20
                        add              rsp, 64;                             jmp   n129_statement_begin_α
#=======================================================================================================================
#         <stmt 23, line 36: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n129_statement_begin_α: mov              r11, 83
                        mov              r10, 23;                             jmp   n130_lit_string_α
n129_statement_begin_β: mov              r11, 83;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_string_α:      sub              rsp, 16
                        mov              r11, 84
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx216_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n131_lit_string_α
.Lx216_0:               .quad            .Lx216_0_s
.Lx216_0_s:             .string          "world"
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:      sub              rsp, 16
                        mov              r11, 85
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n132_call_α
n131_lit_string_β:      mov              r11, 85
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n135_lit_string_α
.Lx217_0:               .quad            .Lx217_0_s
.Lx217_0_s:             .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n132_call_α:            sub              rsp, 16
                        mov              r11, 86
                        lea              rcx, [rip + .Lsig219z]
                        lea              rax, [rip + icase_α];                jmp   rax
.Lsig219z:              .quad            2
                        .quad            .Lx219_2
                        .quad            .Lx219_2
                        .quad            32
                        .quad            16
.Lx219_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx219_29
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
.Lx219_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx219_240
                        add              rsp, 16;                             jmp   n131_lit_string_β
.Lx219_240:                                                                   jmp   n133_lit_string_α
n132_call_β:            mov              r11, 86;                             jmp   n131_lit_string_β
.Lx219_0:               .quad            .Lx219_0_s
.Lx219_0_s:             .string          "icase"
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_string_α:      sub              rsp, 16
                        mov              r11, 87
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 32
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n134_assign_α
.Lx220_0:               .quad            .Lx220_0_s
.Lx220_0_s:             .string          "fail: icase matched wrong string"
#-----------------------------------------------------------------------------------------------------------------------
n134_assign_α:          mov              r11, 88
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n137_statement_end_α
.Lx221_0:               .quad            .Lx221_0_s
.Lx221_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:      mov              r11, 89
                        mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 11
                        mov              rax, qword ptr [rip + .Lx222_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n136_assign_α
.Lx222_0:               .quad            .Lx222_0_s
.Lx222_0_s:             .string          "no match ok"
#-----------------------------------------------------------------------------------------------------------------------
n136_assign_α:          mov              r11, 90
                        mov              rsi, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
                        mov              rdi, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n137_statement_end_α
.Lx223_0:               .quad            .Lx223_0_s
.Lx223_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n137_statement_end_α:   mov              r11, 91
                        mov              r10, 23
                        add              rsp, 64;                             jmp   main_γ
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
.Lseala0:               .string          "lwr"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            lwr_α
                        lea              rdi, [rip + .Lseala0]
                        mov              rsi, qword ptr [rip + lwr_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala1:               .string          "upr"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            upr_α
                        lea              rdi, [rip + .Lseala1]
                        mov              rsi, qword ptr [rip + upr_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala2:               .string          "cap"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            cap_α
                        lea              rdi, [rip + .Lseala2]
                        mov              rsi, qword ptr [rip + cap_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala3:               .string          "icase"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            icase_α
                        lea              rdi, [rip + .Lseala3]
                        mov              rsi, qword ptr [rip + icase_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
