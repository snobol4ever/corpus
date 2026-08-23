                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__tform:
                        sub              rsp, 1040
                        mov              qword ptr [rsp + 1016], rcx
                        mov              qword ptr [rsp + 1024], rdx
                        mov              rdi, rsp
                        add              rdi, 880
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
tform_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:       mov              r11, 1
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              dword ptr [rsp + 832], 0;            jmp   n32_var_α
n0_disjunction_as:      mov              r11, 1
                        mov              eax, dword ptr [rsp + 832]
                        cmp              eax, 0;                              jne   .Lx37_0
                                                                              jmp   n1_var_α
.Lx37_0:                                                                      jmp   n1_var_α
n0_disjunction_β:       mov              r11, 1
                        mov              eax, dword ptr [rsp + 832];          jmp   n1_var_α
n0_disjunction_af:      mov              r11, 1
                        add              dword ptr [rsp + 832], 1
                        mov              eax, dword ptr [rsp + 832];          jmp   n1_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:               mov              r11, 2
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 808], rax;          jmp   n2_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n2_scan_enter_α:        mov              r11, 3
                        mov              rdi, qword ptr [rsp + 800]
                        mov              rsi, qword ptr [rsp + 808]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n3_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n3_disjunction_α:       mov              r11, 4
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              dword ptr [rsp + 128], 0;            jmp   n9_lit_charset_α
n3_disjunction_as:      mov              r11, 4
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 0;                              jne   .Lx43_0
                                                                              jmp   n4_scan_α
.Lx43_0:                cmp              eax, 1;                              jne   .Lx43_1
                                                                              jmp   n4_scan_α
.Lx43_1:                                                                      jmp   n4_scan_α
n3_disjunction_β:       mov              r11, 4
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 0;                              je    n35_scan_α
                                                                              jmp   n35_scan_α
n3_disjunction_af:      mov              r11, 4
                        add              dword ptr [rsp + 128], 1
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 1;                              je    n6_var_α
                                                                              jmp   n35_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n4_scan_α:              mov              r11, 5
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 48]
                        mov              r14, qword ptr [rsp + 56]
                        mov              r15, qword ptr [rsp + 64];           jmp   tform_γ
n4_scan_β:              mov              r11, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_reenter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r14, rax;                            jmp   n3_disjunction_β
                                                                              jmp   tform_ω
#-----------------------------------------------------------------------------------------------------------------------
n5_conjunction_α:       mov              r11, 6;                              jmp   n3_disjunction_as
n5_conjunction_β:       mov              r11, 6;                              jmp   n35_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:               mov              r11, 7
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 792], rax;          jmp   n7_call_α
n6_var_β:               mov              r11, 7;                              jmp   tform_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_call_α:              mov              r11, 8
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 760], rax
                        .section         .rodata
.Lrkfn50:               .string          "node"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn50]
                        lea              rsi, [rsp + 752]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    tform_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n8_return_α
n7_call_β:              mov              r11, 8;                              jmp   tform_ω
#-----------------------------------------------------------------------------------------------------------------------
n8_return_α:            mov              r11, 9
                        mov              rax, qword ptr [rsp + 736]
                        mov              rdx, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   tform_γ
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_charset_α:       mov              r11, 10
                        mov              qword ptr [rsp + 720], 2             # result
                        mov              dword ptr [rsp + 724], -1
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n10_scan_upto_α
n9_lit_charset_β:       mov              r11, 10;                             jmp   n3_disjunction_af
.Lx52_0:                .quad            .Lx52_0_s
.Lx52_0_s:              .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n10_scan_upto_α:        mov              r11, 11
                        mov              qword ptr [rsp + 704], r14
.Lx54_0:                mov              rax, qword ptr [rsp + 704]
                        cmp              rax, r15;                            jge   n3_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx54_2]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx54_1
                        mov              qword ptr [rsp + 688], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 696], rax;          jmp   n11_scan_tab_α
.Lx54_1:                inc              qword ptr [rsp + 704];               jmp   .Lx54_0
n10_scan_upto_β:        mov              r11, 11
                        inc              qword ptr [rsp + 704];               jmp   .Lx54_0
.Lx54_2:                .quad            .Lx54_2_s
.Lx54_2_s:              .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n11_scan_tab_α:         mov              r11, 12
                        mov              rax, qword ptr [rsp + 696]
                        cmp              rax, 1;                              jge   .Lx56_0
                        add              rax, r15
                        add              rax, 1
.Lx56_0:                cmp              rax, 1;                              jl    n10_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n10_scan_upto_β
                        mov              qword ptr [rsp + 672], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n12_assign_α
n11_scan_tab_β:         mov              r11, 12
                        mov              r14, qword ptr [rsp + 672];          jmp   n10_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:           mov              r11, 13
                        mov              rax, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n13_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:      mov              r11, 14
                        mov              qword ptr [rsp + 640], 3             # result
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n14_scan_move_α
.Lx58_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n14_scan_move_α:        mov              r11, 15
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n15_lit_charset_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n15_lit_charset_α
                        mov              qword ptr [rsp + 624], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx;          jmp   n15_lit_charset_α
n14_scan_move_β:        mov              r11, 15
                        mov              r14, qword ptr [rsp + 624];          jmp   n15_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_charset_α:      mov              r11, 16
                        mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], -1
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n16_scan_bal_α
.Lx61_0:                .quad            .Lx61_0_s
.Lx61_0_s:              .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n16_scan_bal_α:         mov              r11, 17
                        mov              qword ptr [rsp + 576], r14
                        mov              qword ptr [rsp + 584], 0
.Lx63_0:                mov              rax, qword ptr [rsp + 576]
                        cmp              rax, r15;                            jge   n19_lit_integer_α
                        mov              rdx, qword ptr [rsp + 584]
                        cmp              rdx, 0;                              jne   .Lx63_1
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx63_4]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx63_1
                        mov              qword ptr [rsp + 560], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 568], rax;          jmp   n17_scan_tab_α
.Lx63_1:                mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              rsi, 40;                             jne   .Lx63_2
                        inc              qword ptr [rsp + 584];               jmp   .Lx63_3
.Lx63_2:                cmp              rsi, 41;                             jne   .Lx63_3
                        mov              rdx, qword ptr [rsp + 584]
                        sub              rdx, 1
                        mov              qword ptr [rsp + 584], rdx
                        cmp              rdx, 0;                              jl    n19_lit_integer_α
.Lx63_3:                inc              qword ptr [rsp + 576];               jmp   .Lx63_0
n16_scan_bal_β:         mov              r11, 17
                        inc              qword ptr [rsp + 576];               jmp   .Lx63_0
.Lx63_4:                .quad            .Lx63_4_s
.Lx63_4_s:              .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n17_scan_tab_α:         mov              r11, 18
                        mov              rax, qword ptr [rsp + 568]
                        cmp              rax, 1;                              jge   .Lx65_0
                        add              rax, r15
                        add              rax, 1
.Lx65_0:                cmp              rax, 1;                              jl    n16_scan_bal_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n16_scan_bal_β
                        mov              qword ptr [rsp + 544], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n18_assign_α
n17_scan_tab_β:         mov              r11, 18
                        mov              r14, qword ptr [rsp + 544];          jmp   n16_scan_bal_β
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:           mov              r11, 19
                        mov              rax, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n19_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:      mov              r11, 20
                        mov              qword ptr [rsp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n20_scan_move_α
.Lx67_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n20_scan_move_α:        mov              r11, 21
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n21_lit_charset_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n21_lit_charset_α
                        mov              qword ptr [rsp + 496], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n21_lit_charset_α
n20_scan_move_β:        mov              r11, 21
                        mov              r14, qword ptr [rsp + 496];          jmp   n21_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_charset_α:      mov              r11, 22
                        mov              qword ptr [rsp + 464], 2             # result
                        mov              dword ptr [rsp + 468], -1
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n22_scan_bal_α
.Lx70_0:                .quad            .Lx70_0_s
.Lx70_0_s:              .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n22_scan_bal_α:         mov              r11, 23
                        lea              rdi, [rip + .S0]
                        call             rt_bomb@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
n23_scan_tab_α:         mov              r11, 24
                        mov              rax, qword ptr [rsp + 440]
                        cmp              rax, 1;                              jge   .Lx74_0
                        add              rax, r15
                        add              rax, 1
.Lx74_0:                cmp              rax, 1;                              jl    n22_scan_bal_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n22_scan_bal_β
                        mov              qword ptr [rsp + 416], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n24_assign_α
n23_scan_tab_β:         mov              r11, 24
                        mov              r14, qword ptr [rsp + 416];          jmp   n22_scan_bal_β
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:           mov              r11, 25
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n25_var_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:              mov              r11, 26
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 248], rax;          jmp   n26_var_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:              mov              r11, 27
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 312], rax;          jmp   n27_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n27_call_proc_staged_α: mov              r11, 28
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rsi, [rsp + 304]
                        call             tform_dcα;                           jmp   .Lx81_2
.Lx81_2:                push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx81_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
.Lx81_29:               mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    tform_ω
                                                                              jmp   n28_var_α
n27_call_proc_staged_β: mov              r11, 28;                             jmp   tform_ω
.Lx81_0:                .quad            .Lx81_0_s
.Lx81_0_s:              .string          "tform"
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:              mov              r11, 29
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 376], rax;          jmp   n29_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n29_call_proc_staged_α: mov              r11, 30
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rsi, [rsp + 368]
                        call             tform_dcα;                           jmp   .Lx85_2
.Lx85_2:                push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx85_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
.Lx85_29:               mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    tform_ω
                                                                              jmp   n30_call_α
n29_call_proc_staged_β: mov              r11, 30;                             jmp   tform_ω
.Lx85_0:                .quad            .Lx85_0_s
.Lx85_0_s:              .string          "tform"
#-----------------------------------------------------------------------------------------------------------------------
n30_call_α:             mov              r11, 31
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lrkfn87:               .string          "node"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn87]
                        lea              rsi, [rsp + 176]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    tform_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n31_return_α
n30_call_β:             mov              r11, 31;                             jmp   tform_ω
#-----------------------------------------------------------------------------------------------------------------------
n31_return_α:           mov              r11, 32
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   tform_γ
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:              mov              r11, 33
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 872], rax;          jmp   n33_unop_test_α
n32_var_β:              mov              r11, 33;                             jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n33_unop_test_α:        mov              r11, 34
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 104;                             je    n0_disjunction_af
                        cmp              eax, 0;                              jne   n0_disjunction_af
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0;            jmp   n34_return_α
#-----------------------------------------------------------------------------------------------------------------------
n34_return_α:           mov              r11, 35
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   tform_γ
#-----------------------------------------------------------------------------------------------------------------------
n35_scan_α:             mov              r11, 36
                        lea              rdi, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 48]
                        mov              r14, qword ptr [rsp + 56]
                        mov              r15, qword ptr [rsp + 64];           jmp   tform_ω
n35_scan_β:             mov              r11, 36;                             jmp   tform_ω
#-----------------------------------------------------------------------------------------------------------------------
tform_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
tform_β:
                                                                              jmp   tform_ω
#-----------------------------------------------------------------------------------------------------------------------
tform_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1016]
                        add              rsp, 1040;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
tform_ω:
                        mov              rcx, qword ptr [rsp + 1024]
                        add              rsp, 1040;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
tform_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             r12
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx95_2]
                        lea              rdx, [rip + .Lx95_3];                jmp   FN__tform
.Lx95_2:                pop              r12
                        pop              r12;                                 jmp   r12
.Lx95_3:                pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__walk:
walk_α_body:
                        lea              rax, [rip + n98_suspend_β]
                        mov              qword ptr [rsp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n96_disjunction_α:      mov              r11, 37
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              dword ptr [rsp + 144], 0;            jmp   n102_var_α
n96_disjunction_as:     mov              r11, 37
                        mov              eax, dword ptr [rsp + 144]
                        cmp              eax, 0;                              jne   .Lx109_0
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 136], rax;          jmp   n97_proc_gen_α
.Lx109_0:               cmp              eax, 1;                              jne   .Lx109_1
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 136], rax;          jmp   n97_proc_gen_α
.Lx109_1:                                                                     jmp   n97_proc_gen_α
n96_disjunction_β:      mov              r11, 37
                        mov              eax, dword ptr [rsp + 144]
                        cmp              eax, 0;                              je    n96_disjunction_af
                                                                              jmp   n96_disjunction_af
n96_disjunction_af:     mov              r11, 37
                        add              dword ptr [rsp + 144], 1
                        mov              eax, dword ptr [rsp + 144]
                        cmp              eax, 1;                              je    n99_var_α
                                                                              jmp   n105_var_α
#-----------------------------------------------------------------------------------------------------------------------
n97_proc_gen_α:         mov              r11, 38
                        mov              qword ptr [rsp + 96], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx111_20
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx111_21
.Lx111_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx111_21:              lea              rax, [rip + .Lx111_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx111_1
                        lea              rcx, [rip + .Lx111_3]
                        lea              rdx, [rip + .Lx111_4];               jmp   rax
.Lx111_3:               mov              qword ptr [rsp + 104], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 96]
                        test             rax, rax;                            jne   .Lx111_5
                        mov              qword ptr [rsp + 96], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx111_2
.Lx111_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx111_2
.Lx111_4:               mov              rax, qword ptr [rsp + 96]
                        test             rax, rax;                            jne   .Lx111_6
                        mov              qword ptr [rsp + 96], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx111_2
.Lx111_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx111_2
.Lx111_1:               call             rt_faildescr@PLT
.Lx111_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx111_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
.Lx111_29:              mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    n96_disjunction_β
                                                                              jmp   n98_suspend_α
n97_proc_gen_β:         mov              r11, 38
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 104];          jmp   qword ptr [rsp]
.Lx111_7:               add              rsp, 8
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    n96_disjunction_β
                                                                              jmp   n98_suspend_α
.Lx111_0:               .quad            .Lx111_0_s
.Lx111_0_s:             .string          "walk"
#-----------------------------------------------------------------------------------------------------------------------
n98_suspend_α:          mov              r11, 39
                        lea              rax, [rip + n98_suspend_β]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   walk_γ
n98_suspend_β:          mov              r11, 39;                             jmp   n97_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n99_var_α:              mov              r11, 40
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 248], rax;          jmp   n100_field_get_α
n99_var_β:              mov              r11, 40;                             jmp   n96_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n100_field_get_α:       mov              r11, 41
                        mov              rdi, qword ptr [rip + .Lx116_0]
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n96_disjunction_af
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n101_unop_test_α
.Lx116_0:               .quad            .Lx116_0_s
.Lx116_0_s:             .string          "rtree"
#-----------------------------------------------------------------------------------------------------------------------
n101_unop_test_α:       mov              r11, 42
                        mov              eax, dword ptr [rsp + 224]
                        cmp              al, 104;                             je    n96_disjunction_af
                        cmp              eax, 0;                              je    n96_disjunction_af
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 216], rax;          jmp   n96_disjunction_as
n101_unop_test_β:       mov              r11, 42;                             jmp   n96_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n102_var_α:             mov              r11, 43
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 200], rax;          jmp   n103_field_get_α
n102_var_β:             mov              r11, 43;                             jmp   n96_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n103_field_get_α:       mov              r11, 44
                        mov              rdi, qword ptr [rip + .Lx120_0]
                        mov              rsi, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n96_disjunction_af
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n104_unop_test_α
.Lx120_0:               .quad            .Lx120_0_s
.Lx120_0_s:             .string          "ltree"
#-----------------------------------------------------------------------------------------------------------------------
n104_unop_test_α:       mov              r11, 45
                        mov              eax, dword ptr [rsp + 176]
                        cmp              al, 104;                             je    n96_disjunction_af
                        cmp              eax, 0;                              je    n96_disjunction_af
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax;          jmp   n96_disjunction_as
n104_unop_test_β:       mov              r11, 45;                             jmp   n96_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n105_var_α:             mov              r11, 46
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 56], rax;           jmp   n106_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n106_field_get_α:       mov              r11, 47
                        mov              rdi, qword ptr [rip + .Lx124_0]
                        mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    walk_ω
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx;           jmp   n107_return_α
.Lx124_0:               .quad            .Lx124_0_s
.Lx124_0_s:             .string          "data"
#-----------------------------------------------------------------------------------------------------------------------
n107_return_α:          mov              r11, 48
                        lea              rax, [rip + walk_ω]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   walk_γ
#-----------------------------------------------------------------------------------------------------------------------
walk_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
walk_β:
                                                                              jmp   n98_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
walk_γ:
                        add              rsp, 0
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
walk_ω:
                        add              rsp, 0
                        mov              eax, 104
                        ret
#-----------------------------------------------------------------------------------------------------------------------
FN__leaves:
leaves_α_body:
                        lea              rax, [rip + n129_suspend_β]
                        mov              qword ptr [rsp + 432], rax
#-----------------------------------------------------------------------------------------------------------------------
n126_disjunction_α:     mov              r11, 49
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              dword ptr [rsp + 240], 0;            jmp   n136_disjunction_α
n126_disjunction_as:    mov              r11, 49
                        mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 0;                              jne   .Lx148_0
                                                                              jmp   n127_disjunction_α
.Lx148_0:                                                                     jmp   n127_disjunction_α
n126_disjunction_β:     mov              r11, 49
                        mov              eax, dword ptr [rsp + 240];          jmp   n127_disjunction_α
n126_disjunction_af:    mov              r11, 49
                        add              dword ptr [rsp + 240], 1
                        mov              eax, dword ptr [rsp + 240];          jmp   n127_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n127_disjunction_α:     mov              r11, 50
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              dword ptr [rsp + 112], 0;            jmp   n133_var_α
n127_disjunction_as:    mov              r11, 50
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 0;                              jne   .Lx150_0
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax;          jmp   n128_proc_gen_α
.Lx150_0:               cmp              eax, 1;                              jne   .Lx150_1
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 104], rax;          jmp   n128_proc_gen_α
.Lx150_1:                                                                     jmp   n128_proc_gen_α
n127_disjunction_β:     mov              r11, 50
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 0;                              je    n127_disjunction_af
                                                                              jmp   n127_disjunction_af
n127_disjunction_af:    mov              r11, 50
                        add              dword ptr [rsp + 112], 1
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 1;                              je    n130_var_α
                                                                              jmp   leaves_ω
#-----------------------------------------------------------------------------------------------------------------------
n128_proc_gen_α:        mov              r11, 51
                        mov              qword ptr [rsp + 64], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx152_20
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx152_21
.Lx152_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx152_21:              lea              rax, [rip + .Lx152_7]
                        push             rax
                        mov              edi, 2
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx152_1
                        lea              rcx, [rip + .Lx152_3]
                        lea              rdx, [rip + .Lx152_4];               jmp   rax
.Lx152_3:               mov              qword ptr [rsp + 72], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 64]
                        test             rax, rax;                            jne   .Lx152_5
                        mov              qword ptr [rsp + 64], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx152_2
.Lx152_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx152_2
.Lx152_4:               mov              rax, qword ptr [rsp + 64]
                        test             rax, rax;                            jne   .Lx152_6
                        mov              qword ptr [rsp + 64], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx152_2
.Lx152_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx152_2
.Lx152_1:               call             rt_faildescr@PLT
.Lx152_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx152_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
.Lx152_29:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    n127_disjunction_β
                                                                              jmp   n129_suspend_α
n128_proc_gen_β:        mov              r11, 51
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 72];           jmp   qword ptr [rsp]
.Lx152_7:               add              rsp, 8
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    n127_disjunction_β
                                                                              jmp   n129_suspend_α
.Lx152_0:               .quad            .Lx152_0_s
.Lx152_0_s:             .string          "leaves"
#-----------------------------------------------------------------------------------------------------------------------
n129_suspend_α:         mov              r11, 52
                        lea              rax, [rip + n129_suspend_β]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   leaves_γ
n129_suspend_β:         mov              r11, 52;                             jmp   n128_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n130_var_α:             mov              r11, 53
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 216], rax;          jmp   n131_field_get_α
n130_var_β:             mov              r11, 53;                             jmp   n127_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n131_field_get_α:       mov              r11, 54
                        mov              rdi, qword ptr [rip + .Lx157_0]
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n127_disjunction_af
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n132_unop_test_α
.Lx157_0:               .quad            .Lx157_0_s
.Lx157_0_s:             .string          "rtree"
#-----------------------------------------------------------------------------------------------------------------------
n132_unop_test_α:       mov              r11, 55
                        mov              eax, dword ptr [rsp + 192]
                        cmp              al, 104;                             je    n127_disjunction_af
                        cmp              eax, 0;                              je    n127_disjunction_af
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 184], rax;          jmp   n127_disjunction_as
n132_unop_test_β:       mov              r11, 55;                             jmp   n127_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n133_var_α:             mov              r11, 56
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 168], rax;          jmp   n134_field_get_α
n133_var_β:             mov              r11, 56;                             jmp   n127_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n134_field_get_α:       mov              r11, 57
                        mov              rdi, qword ptr [rip + .Lx161_0]
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n127_disjunction_af
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n135_unop_test_α
.Lx161_0:               .quad            .Lx161_0_s
.Lx161_0_s:             .string          "ltree"
#-----------------------------------------------------------------------------------------------------------------------
n135_unop_test_α:       mov              r11, 58
                        mov              eax, dword ptr [rsp + 144]
                        cmp              al, 104;                             je    n127_disjunction_af
                        cmp              eax, 0;                              je    n127_disjunction_af
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 136], rax;          jmp   n127_disjunction_as
n135_unop_test_β:       mov              r11, 58;                             jmp   n127_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n136_disjunction_α:     mov              r11, 59
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              dword ptr [rsp + 320], 0;            jmp   n140_var_α
n136_disjunction_as:    mov              r11, 59
                        mov              eax, dword ptr [rsp + 320]
                        cmp              eax, 0;                              jne   .Lx164_0
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 312], rax;          jmp   n126_disjunction_af
.Lx164_0:               cmp              eax, 1;                              jne   .Lx164_1
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 312], rax;          jmp   n126_disjunction_af
.Lx164_1:                                                                     jmp   n126_disjunction_af
n136_disjunction_β:     mov              r11, 59
                        mov              eax, dword ptr [rsp + 320]
                        cmp              eax, 0;                              je    n136_disjunction_af
                                                                              jmp   n136_disjunction_af
n136_disjunction_af:    mov              r11, 59
                        add              dword ptr [rsp + 320], 1
                        mov              eax, dword ptr [rsp + 320]
                        cmp              eax, 1;                              je    n137_var_α
                                                                              jmp   n143_var_α
#-----------------------------------------------------------------------------------------------------------------------
n137_var_α:             mov              r11, 60
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 424], rax;          jmp   n138_field_get_α
n137_var_β:             mov              r11, 60;                             jmp   n136_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n138_field_get_α:       mov              r11, 61
                        mov              rdi, qword ptr [rip + .Lx167_0]
                        mov              rsi, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n136_disjunction_af
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n139_unop_test_α
.Lx167_0:               .quad            .Lx167_0_s
.Lx167_0_s:             .string          "rtree"
#-----------------------------------------------------------------------------------------------------------------------
n139_unop_test_α:       mov              r11, 62
                        mov              eax, dword ptr [rsp + 400]
                        cmp              al, 104;                             je    n136_disjunction_af
                        cmp              eax, 0;                              je    n136_disjunction_af
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 392], rax;          jmp   n136_disjunction_as
n139_unop_test_β:       mov              r11, 62;                             jmp   n136_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n140_var_α:             mov              r11, 63
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 376], rax;          jmp   n141_field_get_α
n140_var_β:             mov              r11, 63;                             jmp   n136_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n141_field_get_α:       mov              r11, 64
                        mov              rdi, qword ptr [rip + .Lx171_0]
                        mov              rsi, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n136_disjunction_af
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n142_unop_test_α
.Lx171_0:               .quad            .Lx171_0_s
.Lx171_0_s:             .string          "ltree"
#-----------------------------------------------------------------------------------------------------------------------
n142_unop_test_α:       mov              r11, 65
                        mov              eax, dword ptr [rsp + 352]
                        cmp              al, 104;                             je    n136_disjunction_af
                        cmp              eax, 0;                              je    n136_disjunction_af
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 344], rax;          jmp   n136_disjunction_as
n142_unop_test_β:       mov              r11, 65;                             jmp   n136_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n143_var_α:             mov              r11, 66
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0;            jmp   n144_var_α
n143_var_β:             mov              r11, 66;                             jmp   n126_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n144_var_α:             mov              r11, 67
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 280], rax;          jmp   n145_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n145_field_get_α:       mov              r11, 68
                        mov              rdi, qword ptr [rip + .Lx176_0]
                        mov              rsi, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    leaves_ω
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n146_return_α
.Lx176_0:               .quad            .Lx176_0_s
.Lx176_0_s:             .string          "data"
#-----------------------------------------------------------------------------------------------------------------------
n146_return_α:          mov              r11, 69
                        lea              rax, [rip + leaves_ω]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   leaves_γ
#-----------------------------------------------------------------------------------------------------------------------
leaves_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
leaves_β:
                                                                              jmp   n129_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
leaves_γ:
                        add              rsp, 0
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
leaves_ω:
                        add              rsp, 0
                        mov              eax, 104
                        ret
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 608
                        mov              qword ptr [rsp + 584], rcx
                        mov              qword ptr [rsp + 592], rdx
                        mov              rdi, rsp
                        add              rdi, 496
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n178_call_builtin_icon_α:
                        mov              r11, 70
                        .section         .rodata
.Lrkfn194:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn194]
                        lea              rsi, [rsp + 32]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n179_assign_α
n178_call_builtin_icon_β:
                        mov              r11, 70;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n179_assign_α:          mov              r11, 71
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n180_var_α
#-----------------------------------------------------------------------------------------------------------------------
n180_var_α:             mov              r11, 72
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 488], rax;          jmp   n181_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n181_call_proc_staged_α:
                        mov              r11, 73
                        lea              rsi, [rsp + 480]
                        call             tform_dcα;                           jmp   .Lx199_2
.Lx199_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx199_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
.Lx199_29:              mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n183_lit_string_α
                                                                              jmp   n182_assign_α
n181_call_proc_staged_β:
                        mov              r11, 73;                             jmp   n183_lit_string_α
.Lx199_0:               .quad            .Lx199_0_s
.Lx199_0_s:             .string          "tform"
#-----------------------------------------------------------------------------------------------------------------------
n182_assign_α:          mov              r11, 74
                        mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n183_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_string_α:      mov              r11, 75
                        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 9
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n184_call_builtin_icon_α
.Lx201_0:               .quad            .Lx201_0_s
.Lx201_0_s:             .string          "tree walk"
#-----------------------------------------------------------------------------------------------------------------------
n184_call_builtin_icon_α:
                        mov              r11, 76
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 392], rax
                        .section         .rodata
.Lrkfn203:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn203]
                        lea              rsi, [rsp + 384]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n185_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n185_var_α
n184_call_builtin_icon_β:
                        mov              r11, 76;                             jmp   n185_var_α
#-----------------------------------------------------------------------------------------------------------------------
n185_var_α:             mov              r11, 77
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 360], rax;          jmp   n186_proc_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n186_proc_gen_α:        mov              r11, 78
                        mov              qword ptr [rsp + 320], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx207_20
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx207_21
.Lx207_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx207_21:              lea              rax, [rip + .Lx207_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx207_1
                        lea              rcx, [rip + .Lx207_3]
                        lea              rdx, [rip + .Lx207_4];               jmp   rax
.Lx207_3:               mov              qword ptr [rsp + 328], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 320]
                        test             rax, rax;                            jne   .Lx207_5
                        mov              qword ptr [rsp + 320], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx207_2
.Lx207_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx207_2
.Lx207_4:               mov              rax, qword ptr [rsp + 320]
                        test             rax, rax;                            jne   .Lx207_6
                        mov              qword ptr [rsp + 320], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx207_2
.Lx207_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx207_2
.Lx207_1:               call             rt_faildescr@PLT
.Lx207_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx207_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
.Lx207_29:              mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n188_lit_string_α
                                                                              jmp   n187_call_builtin_icon_α
n186_proc_gen_β:        mov              r11, 78
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 328];          jmp   qword ptr [rsp]
.Lx207_7:               add              rsp, 8
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n188_lit_string_α
                                                                              jmp   n187_call_builtin_icon_α
.Lx207_0:               .quad            .Lx207_0_s
.Lx207_0_s:             .string          "walk"
#-----------------------------------------------------------------------------------------------------------------------
n187_call_builtin_icon_α:
                        mov              r11, 79
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn209:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn209]
                        lea              rsi, [rsp + 256]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n186_proc_gen_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n186_proc_gen_β
n187_call_builtin_icon_β:
                        mov              r11, 79;                             jmp   n186_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n188_lit_string_α:      mov              r11, 80
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 6
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n189_call_builtin_icon_α
.Lx210_0:               .quad            .Lx210_0_s
.Lx210_0_s:             .string          "leaves"
#-----------------------------------------------------------------------------------------------------------------------
n189_call_builtin_icon_α:
                        mov              r11, 81
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn212:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn212]
                        lea              rsi, [rsp + 192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n190_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n190_var_α
n189_call_builtin_icon_β:
                        mov              r11, 81;                             jmp   n190_var_α
#-----------------------------------------------------------------------------------------------------------------------
n190_var_α:             mov              r11, 82
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 168], rax;          jmp   n191_proc_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n191_proc_gen_α:        mov              r11, 83
                        mov              qword ptr [rsp + 128], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx216_20
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx216_21
.Lx216_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx216_21:              lea              rax, [rip + .Lx216_7]
                        push             rax
                        mov              edi, 2
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx216_1
                        lea              rcx, [rip + .Lx216_3]
                        lea              rdx, [rip + .Lx216_4];               jmp   rax
.Lx216_3:               mov              qword ptr [rsp + 136], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 128]
                        test             rax, rax;                            jne   .Lx216_5
                        mov              qword ptr [rsp + 128], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx216_2
.Lx216_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx216_2
.Lx216_4:               mov              rax, qword ptr [rsp + 128]
                        test             rax, rax;                            jne   .Lx216_6
                        mov              qword ptr [rsp + 128], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx216_2
.Lx216_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx216_2
.Lx216_1:               call             rt_faildescr@PLT
.Lx216_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx216_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
.Lx216_29:              mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n178_call_builtin_icon_α
                                                                              jmp   n192_call_builtin_icon_α
n191_proc_gen_β:        mov              r11, 83
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 136];          jmp   qword ptr [rsp]
.Lx216_7:               add              rsp, 8
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n178_call_builtin_icon_α
                                                                              jmp   n192_call_builtin_icon_α
.Lx216_0:               .quad            .Lx216_0_s
.Lx216_0_s:             .string          "leaves"
#-----------------------------------------------------------------------------------------------------------------------
n192_call_builtin_icon_α:
                        mov              r11, 84
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn218:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn218]
                        lea              rsi, [rsp + 64]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    n191_proc_gen_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n191_proc_gen_β
n192_call_builtin_icon_β:
                        mov              r11, 84;                             jmp   n191_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        and              rsp, -16
                        mov              edi, 1
                        call             exit@PLT
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "node(data,ltree,rtree)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "tform"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__tform
                        .quad            tform_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            928
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "walk"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__walk
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            272
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "leaves"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__leaves
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            448
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.S0:                    .string          "bb_scan_bal: unhandled (needs nonempty bracket-free literal c1 + descr flat-chain slot)"
                        .text
                        .section         .note.GNU-stack,"",@progbits
