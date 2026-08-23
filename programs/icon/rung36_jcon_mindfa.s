                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__getdfa:
                        sub              rsp, 1360
                        mov              qword ptr [rsp + 1336], rcx
                        mov              qword ptr [rsp + 1344], rdx
                        mov              rdi, rsp
                        add              rdi, 1088
                        xor              eax, eax
                        mov              ecx, 112
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 7
                        call             rt_icn_zframe_args_install@PLT
getdfa_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:        mov              r11, 1
                        mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], 34
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n1_call_proc_staged_α
.Lx47_0:                .quad            .Lx47_0_s
.Lx47_0_s:              .string          "Enter states (1 character names): "
#-----------------------------------------------------------------------------------------------------------------------
n1_call_proc_staged_α:  mov              r11, 2
                        lea              rsi, [rsp + 1072]
                        call             readset_dcα;                         jmp   .Lx49_2
.Lx49_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx49_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1024]
                        mov              rdx, qword ptr [rsp + 1032]
.Lx49_29:               mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              al, 104;                             je    n3_lit_string_α
                                                                              jmp   n2_assign_α
n1_call_proc_staged_β:  mov              r11, 2;                              jmp   n3_lit_string_α
.Lx49_0:                .quad            .Lx49_0_s
.Lx49_0_s:              .string          "readset"
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:            mov              r11, 3
                        mov              rax, qword ptr [rsp + 1024]
                        mov              rdx, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n3_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              r11, 4
                        mov              qword ptr [rsp + 1008], 2            # result
                        mov              dword ptr [rsp + 1012], 22
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n4_call_proc_staged_α
.Lx51_0:                .quad            .Lx51_0_s
.Lx51_0_s:              .string          "Enter input alphabet: "
#-----------------------------------------------------------------------------------------------------------------------
n4_call_proc_staged_α:  mov              r11, 5
                        lea              rsi, [rsp + 1008]
                        call             readset_dcα;                         jmp   .Lx53_2
.Lx53_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx53_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 960]
                        mov              rdx, qword ptr [rsp + 968]
.Lx53_29:               mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              al, 104;                             je    n6_lit_string_α
                                                                              jmp   n5_assign_α
n4_call_proc_staged_β:  mov              r11, 5;                              jmp   n6_lit_string_α
.Lx53_0:                .quad            .Lx53_0_s
.Lx53_0_s:              .string          "readset"
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:            mov              r11, 6
                        mov              rax, qword ptr [rsp + 960]
                        mov              rdx, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              r11, 7
                        mov              qword ptr [rsp + 944], 2             # result
                        mov              dword ptr [rsp + 948], 39
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n7_call_proc_staged_α
.Lx55_0:                .quad            .Lx55_0_s
.Lx55_0_s:              .string          "Enter Final states (subset of states): "
#-----------------------------------------------------------------------------------------------------------------------
n7_call_proc_staged_α:  mov              r11, 8
                        lea              rsi, [rsp + 944]
                        call             readset_dcα;                         jmp   .Lx57_2
.Lx57_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx57_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 896]
                        mov              rdx, qword ptr [rsp + 904]
.Lx57_29:               mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              al, 104;                             je    n9_lit_string_α
                                                                              jmp   n8_assign_α
n7_call_proc_staged_β:  mov              r11, 8;                              jmp   n9_lit_string_α
.Lx57_0:                .quad            .Lx57_0_s
.Lx57_0_s:              .string          "readset"
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:            mov              r11, 9
                        mov              rax, qword ptr [rsp + 896]
                        mov              rdx, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              r11, 10
                        mov              qword ptr [rsp + 880], 2             # result
                        mov              dword ptr [rsp + 884], 25
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n10_call_builtin_icon_α
.Lx59_0:                .quad            .Lx59_0_s
.Lx59_0_s:              .string          "What is the start state? "
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_icon_α:
                        mov              r11, 11
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax
                        .section         .rodata
.Lrkfn61:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn61]
                        lea              rsi, [rsp + 848]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n11_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n11_call_builtin_icon_α
n10_call_builtin_icon_β:
                        mov              r11, 11;                             jmp   n11_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        mov              r11, 12
                        .section         .rodata
.Lrkfn63:               .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn63]
                        lea              rsi, [rsp + 816]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262295
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    n13_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n12_assign_α
n11_call_builtin_icon_β:
                        mov              r11, 12;                             jmp   n13_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:           mov              r11, 13
                        mov              rax, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx;         jmp   n13_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_icon_α:
                        mov              r11, 14
                        .section         .rodata
.Lrkfn66:               .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn66]
                        lea              rsi, [rsp + 784]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              al, 104;                             je    n15_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n14_assign_α
n13_call_builtin_icon_β:
                        mov              r11, 14;                             jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:           mov              r11, 15
                        mov              rax, qword ptr [rsp + 768]
                        mov              rdx, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:              mov              r11, 16
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 344], rax;          jmp   n16_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n16_iterate_α:          mov              r11, 17
                        mov              qword ptr [rsp + 320], 0
.Lx71_0:                mov              rdi, qword ptr [rsp + 336]
                        mov              rsi, qword ptr [rsp + 344]
                        mov              rdx, qword ptr [rsp + 320]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              rax, 104;                            je    n40_var_α
                                                                              jmp   n17_assign_α
n16_iterate_β:          mov              r11, 17
                        inc              qword ptr [rsp + 320];               jmp   .Lx71_0
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_α:           mov              r11, 18
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n18_var_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:              mov              r11, 19
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 280], rax;          jmp   n19_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n19_iterate_α:          mov              r11, 20
                        mov              qword ptr [rsp + 256], 0
.Lx76_0:                mov              rdi, qword ptr [rsp + 272]
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              rax, 104;                            je    n16_iterate_β
                                                                              jmp   n20_assign_α
n19_iterate_β:          mov              r11, 20
                        inc              qword ptr [rsp + 256];               jmp   .Lx76_0
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:           mov              r11, 21
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n21_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n21_conjunction_α:      mov              r11, 22
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 216], rax;          jmp   n22_bound_α
n21_conjunction_β:      mov              r11, 22;                             jmp   n40_var_α
#-----------------------------------------------------------------------------------------------------------------------
n22_bound_α:            mov              r11, 23
                        mov              qword ptr [rsp + 352], rsp;          jmp   n23_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       mov              r11, 24
                        mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 12
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n24_var_α
.Lx81_0:                .quad            .Lx81_0_s
.Lx81_0_s:              .string          "enter delta("
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:              mov              r11, 25
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 712], rax;          jmp   n25_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:       mov              r11, 26
                        mov              qword ptr [rsp + 720], 2             # result
                        mov              dword ptr [rsp + 724], 1
                        mov              rax, qword ptr [rip + .Lx84_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n26_var_α
.Lx84_0:                .quad            .Lx84_0_s
.Lx84_0_s:              .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:              mov              r11, 27
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 744], rax;          jmp   n27_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:       mov              r11, 28
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 4
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n28_call_builtin_icon_α
.Lx87_0:                .quad            .Lx87_0_s
.Lx87_0_s:              .string          ") = "
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_icon_α:
                        mov              r11, 29
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 600], rax
                        .section         .rodata
.Lrkfn89:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn89]
                        lea              rsi, [rsp + 592]
                        mov              edx, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n29_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n29_var_ref_α
n28_call_builtin_icon_β:
                        mov              r11, 29;                             jmp   n29_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n30_var_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:              mov              r11, 31
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 472], rax;          jmp   n31_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:       mov              r11, 32
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 1
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n32_binop_α
.Lx94_0:                .quad            .Lx94_0_s
.Lx94_0_s:              .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n32_binop_α:            mov              r11, 33
                        mov              rdi, qword ptr [rsp + 1184]
                        mov              rsi, qword ptr [rsp + 1192]
                        mov              rdx, qword ptr [rsp + 480]
                        mov              rcx, qword ptr [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n33_var_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:              mov              r11, 34
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 504], rax;          jmp   n34_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n34_binop_α:            mov              r11, 35
                        mov              rdi, qword ptr [rsp + 448]
                        mov              rsi, qword ptr [rsp + 456]
                        mov              rdx, qword ptr [rsp + 1168]
                        mov              rcx, qword ptr [rsp + 1176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n35_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n35_subscript_α:        mov              r11, 36
                        mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 432]
                        mov              rcx, qword ptr [rsp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n39_unmark_α
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n36_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_icon_α:
                        mov              r11, 37
                        .section         .rodata
.Lrkfn101:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn101]
                        lea              rsi, [rsp + 560]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262295
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    n39_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n37_assign_var_α
n36_call_builtin_icon_β:
                        mov              r11, 37;                             jmp   n39_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n37_assign_var_α:       mov              r11, 38
                        mov              rdi, qword ptr [rsp + 512]
                        mov              rsi, qword ptr [rsp + 520]
                        mov              rdx, qword ptr [rsp + 544]
                        mov              rcx, qword ptr [rsp + 552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n39_unmark_α
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n38_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n38_conjunction_α:      mov              r11, 39
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 408], rax;          jmp   n39_unmark_α
n38_conjunction_β:      mov              r11, 39;                             jmp   n39_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n39_unmark_α:           mov              r11, 40
                        mov              rsp, qword ptr [rsp + 352];          jmp   n19_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:              mov              r11, 41
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 136], rax;          jmp   n41_var_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:              mov              r11, 42
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 152], rax;          jmp   n42_var_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:              mov              r11, 43
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 168], rax;          jmp   n43_var_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:              mov              r11, 44
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 184], rax;          jmp   n44_var_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:              mov              r11, 45
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 200], rax;          jmp   n45_call_α
#-----------------------------------------------------------------------------------------------------------------------
n45_call_α:             mov              r11, 46
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lrkfn117:              .string          "dfa"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn117]
                        lea              rsi, [rsp + 32]
                        mov              edx, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196608
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    getdfa_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n46_return_α
n45_call_β:             mov              r11, 46;                             jmp   getdfa_ω
#-----------------------------------------------------------------------------------------------------------------------
n46_return_α:           mov              r11, 47
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   getdfa_γ
#-----------------------------------------------------------------------------------------------------------------------
getdfa_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
getdfa_β:
                                                                              jmp   getdfa_ω
#-----------------------------------------------------------------------------------------------------------------------
getdfa_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1336]
                        add              rsp, 1360;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
getdfa_ω:
                        mov              rcx, qword ptr [rsp + 1344]
                        add              rsp, 1360;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
getdfa_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Lx119_2]
                        lea              rdx, [rip + .Lx119_3];               jmp   FN__getdfa
.Lx119_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx119_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__readset:
                        sub              rsp, 432
                        mov              qword ptr [rsp + 408], rcx
                        mov              qword ptr [rsp + 416], rdx
                        mov              rdi, rsp
                        add              rdi, 336
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
readset_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n120_var_α:             mov              r11, 48
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 328], rax;          jmp   n121_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n121_call_builtin_icon_α:
                        mov              r11, 49
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 296], rax
                        .section         .rodata
.Lrkfn134:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn134]
                        lea              rsi, [rsp + 288]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n122_make_list_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n122_make_list_α
n121_call_builtin_icon_β:
                        mov              r11, 49;                             jmp   n122_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n122_make_list_α:       mov              r11, 50
                        lea              rdi, [rsp + 272]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n123_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n123_assign_α:          mov              r11, 51
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n124_var_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_α:             mov              r11, 52
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 120], rax;          jmp   n125_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n125_call_builtin_icon_α:
                        mov              r11, 53
                        .section         .rodata
.Lrkfn141:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn141]
                        lea              rsi, [rsp + 224]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262295
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n129_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n126_call_builtin_icon_α
n125_call_builtin_icon_β:
                        mov              r11, 53;                             jmp   n129_var_α
#-----------------------------------------------------------------------------------------------------------------------
n126_call_builtin_icon_α:
                        mov              r11, 54
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lrkfn143:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn143]
                        lea              rsi, [rsp + 176]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262258
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n129_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n127_iterate_α
n126_call_builtin_icon_β:
                        mov              r11, 54;                             jmp   n129_var_α
#-----------------------------------------------------------------------------------------------------------------------
n127_iterate_α:         mov              r11, 55
                        mov              qword ptr [rsp + 144], 0
.Lx145_0:               mov              rdi, qword ptr [rsp + 160]
                        mov              rsi, qword ptr [rsp + 168]
                        mov              rdx, qword ptr [rsp + 144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              rax, 104;                            je    n129_var_α
                                                                              jmp   n128_call_builtin_icon_α
n127_iterate_β:         mov              r11, 55
                        inc              qword ptr [rsp + 144];               jmp   .Lx145_0
#-----------------------------------------------------------------------------------------------------------------------
n128_call_builtin_icon_α:
                        mov              r11, 56
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn147:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn147]
                        lea              rsi, [rsp + 64]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    n127_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n127_iterate_β
n128_call_builtin_icon_β:
                        mov              r11, 56;                             jmp   n127_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n129_var_α:             mov              r11, 57
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 40], rax;           jmp   n130_return_α
#-----------------------------------------------------------------------------------------------------------------------
n130_return_α:          mov              r11, 58
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   readset_γ
#-----------------------------------------------------------------------------------------------------------------------
readset_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
readset_β:
                                                                              jmp   readset_ω
#-----------------------------------------------------------------------------------------------------------------------
readset_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 408]
                        add              rsp, 432;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
readset_ω:
                        mov              rcx, qword ptr [rsp + 416]
                        add              rsp, 432;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
readset_dcα:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx151_2]
                        lea              rdx, [rip + .Lx151_3];               jmp   FN__readset
.Lx151_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx151_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__showdfa:
                        sub              rsp, 1776
                        mov              qword ptr [rsp + 1752], rcx
                        mov              qword ptr [rsp + 1760], rdx
                        mov              rdi, rsp
                        add              rdi, 1632
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
showdfa_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_integer_α:     mov              r11, 59
                        mov              qword ptr [rsp + 1520], 3            # result
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n153_lit_integer_α
.Lx214_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:     mov              r11, 60
                        mov              qword ptr [rsp + 1536], 3            # result
                        mov              rax, qword ptr [rip + .Lx215_0]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n154_to_α
.Lx215_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n154_to_α:              mov              r11, 61
                        mov              rdi, qword ptr [rsp + 1520]
                        mov              rsi, qword ptr [rsp + 1528]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1520], 3
                        mov              qword ptr [rsp + 1528], rax
                        mov              rdi, qword ptr [rsp + 1536]
                        mov              rsi, qword ptr [rsp + 1544]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1536], 3
                        mov              qword ptr [rsp + 1544], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1504], rax
.Lx217_0:               mov              rax, qword ptr [rsp + 1504]
                        mov              rcx, qword ptr [rsp + 1544]
                        cmp              rax, rcx;                            jg    n158_var_α
                        mov              qword ptr [rsp + 1488], 3
                        mov              qword ptr [rsp + 1496], rax;         jmp   n155_bound_α
n154_to_β:              mov              r11, 61
                        inc              qword ptr [rsp + 1504];              jmp   .Lx217_0
#-----------------------------------------------------------------------------------------------------------------------
n155_bound_α:           mov              r11, 62
                        mov              qword ptr [rsp + 1552], rsp;         jmp   n156_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n156_call_builtin_icon_α:
                        mov              r11, 63
                        .section         .rodata
.Lrkfn221:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn221]
                        lea              rsi, [rsp + 1616]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx
                        cmp              al, 104;                             je    n157_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n157_unmark_α
n156_call_builtin_icon_β:
                        mov              r11, 63;                             jmp   n157_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n157_unmark_α:          mov              r11, 64
                        mov              rsp, qword ptr [rsp + 1552];         jmp   n154_to_β
#-----------------------------------------------------------------------------------------------------------------------
n158_var_α:             mov              r11, 65
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n159_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:      mov              r11, 66
                        mov              qword ptr [rsp + 1472], 2            # result
                        mov              dword ptr [rsp + 1476], 35
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n160_call_builtin_icon_α
.Lx226_0:               .quad            .Lx226_0_s
.Lx226_0_s:             .string          " Deterministic Finite Automaton is:"
#-----------------------------------------------------------------------------------------------------------------------
n160_call_builtin_icon_α:
                        mov              r11, 67
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1432], rax
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1416], rax
                        .section         .rodata
.Lrkfn228:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn228]
                        lea              rsi, [rsp + 1408]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx
                        cmp              al, 104;                             je    n161_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n161_call_builtin_icon_α
n160_call_builtin_icon_β:
                        mov              r11, 67;                             jmp   n161_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n161_call_builtin_icon_α:
                        mov              r11, 68
                        .section         .rodata
.Lrkfn230:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn230]
                        lea              rsi, [rsp + 1376]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                        cmp              al, 104;                             je    n162_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n162_lit_string_α
n161_call_builtin_icon_β:
                        mov              r11, 68;                             jmp   n162_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:      mov              r11, 69
                        mov              qword ptr [rsp + 1344], 2            # result
                        mov              dword ptr [rsp + 1348], 17
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n163_call_builtin_icon_α
.Lx231_0:               .quad            .Lx231_0_s
.Lx231_0_s:             .string          "\t(Q,S,delta,q0,F)"
#-----------------------------------------------------------------------------------------------------------------------
n163_call_builtin_icon_α:
                        mov              r11, 70
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1320], rax
                        .section         .rodata
.Lrkfn233:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn233]
                        lea              rsi, [rsp + 1312]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        cmp              al, 104;                             je    n164_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n164_call_builtin_icon_α
n163_call_builtin_icon_β:
                        mov              r11, 70;                             jmp   n164_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n164_call_builtin_icon_α:
                        mov              r11, 71
                        .section         .rodata
.Lrkfn235:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn235]
                        lea              rsi, [rsp + 1280]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        cmp              al, 104;                             je    n165_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n165_lit_string_α
n164_call_builtin_icon_β:
                        mov              r11, 71;                             jmp   n165_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:      mov              r11, 72
                        mov              qword ptr [rsp + 1248], 2            # result
                        mov              dword ptr [rsp + 1252], 6
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n166_call_builtin_icon_α
.Lx236_0:               .quad            .Lx236_0_s
.Lx236_0_s:             .string          "where:"
#-----------------------------------------------------------------------------------------------------------------------
n166_call_builtin_icon_α:
                        mov              r11, 73
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1224], rax
                        .section         .rodata
.Lrkfn238:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn238]
                        lea              rsi, [rsp + 1216]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        cmp              al, 104;                             je    n167_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n167_call_builtin_icon_α
n166_call_builtin_icon_β:
                        mov              r11, 73;                             jmp   n167_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n167_call_builtin_icon_α:
                        mov              r11, 74
                        .section         .rodata
.Lrkfn240:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn240]
                        lea              rsi, [rsp + 1184]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        cmp              al, 104;                             je    n168_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n168_lit_string_α
n167_call_builtin_icon_β:
                        mov              r11, 74;                             jmp   n168_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_string_α:      mov              r11, 75
                        mov              qword ptr [rsp + 1120], 2            # result
                        mov              dword ptr [rsp + 1124], 1
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n169_var_α
.Lx241_0:               .quad            .Lx241_0_s
.Lx241_0_s:             .string          "Q"
#-----------------------------------------------------------------------------------------------------------------------
n169_var_α:             mov              r11, 76
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n170_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n170_field_get_α:       mov              r11, 77
                        mov              rdi, qword ptr [rip + .Lx244_0]
                        mov              rsi, qword ptr [rsp + 1152]
                        mov              rdx, qword ptr [rsp + 1160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n172_lit_string_α
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx;         jmp   n171_call_proc_staged_α
.Lx244_0:               .quad            .Lx244_0_s
.Lx244_0_s:             .string          "Q"
#-----------------------------------------------------------------------------------------------------------------------
n171_call_proc_staged_α:
                        mov              r11, 78
                        lea              rsi, [rsp + 1120]
                        lea              rdx, [rsp + 1136]
                        call             writeset_dcα;                        jmp   .Lx246_2
.Lx246_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx246_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1056]
                        mov              rdx, qword ptr [rsp + 1064]
.Lx246_29:              mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n172_lit_string_α
                                                                              jmp   n172_lit_string_α
n171_call_proc_staged_β:
                        mov              r11, 78;                             jmp   n172_lit_string_α
.Lx246_0:               .quad            .Lx246_0_s
.Lx246_0_s:             .string          "writeset"
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_string_α:      mov              r11, 79
                        mov              qword ptr [rsp + 1008], 2            # result
                        mov              dword ptr [rsp + 1012], 1
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n173_var_α
.Lx247_0:               .quad            .Lx247_0_s
.Lx247_0_s:             .string          "S"
#-----------------------------------------------------------------------------------------------------------------------
n173_var_α:             mov              r11, 80
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n174_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n174_field_get_α:       mov              r11, 81
                        mov              rdi, qword ptr [rip + .Lx250_0]
                        mov              rsi, qword ptr [rsp + 1040]
                        mov              rdx, qword ptr [rsp + 1048]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n176_lit_string_α
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n175_call_proc_staged_α
.Lx250_0:               .quad            .Lx250_0_s
.Lx250_0_s:             .string          "S"
#-----------------------------------------------------------------------------------------------------------------------
n175_call_proc_staged_α:
                        mov              r11, 82
                        lea              rsi, [rsp + 1008]
                        lea              rdx, [rsp + 1024]
                        call             writeset_dcα;                        jmp   .Lx252_2
.Lx252_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx252_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 944]
                        mov              rdx, qword ptr [rsp + 952]
.Lx252_29:              mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                        cmp              al, 104;                             je    n176_lit_string_α
                                                                              jmp   n176_lit_string_α
n175_call_proc_staged_β:
                        mov              r11, 82;                             jmp   n176_lit_string_α
.Lx252_0:               .quad            .Lx252_0_s
.Lx252_0_s:             .string          "writeset"
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_string_α:      mov              r11, 83
                        mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], 1
                        mov              rax, qword ptr [rip + .Lx253_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n177_var_α
.Lx253_0:               .quad            .Lx253_0_s
.Lx253_0_s:             .string          "F"
#-----------------------------------------------------------------------------------------------------------------------
n177_var_α:             mov              r11, 84
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 936], rax;          jmp   n178_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n178_field_get_α:       mov              r11, 85
                        mov              rdi, qword ptr [rip + .Lx256_0]
                        mov              rsi, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n180_lit_string_α
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n179_call_proc_staged_α
.Lx256_0:               .quad            .Lx256_0_s
.Lx256_0_s:             .string          "F"
#-----------------------------------------------------------------------------------------------------------------------
n179_call_proc_staged_α:
                        mov              r11, 86
                        lea              rsi, [rsp + 896]
                        lea              rdx, [rsp + 912]
                        call             writeset_dcα;                        jmp   .Lx258_2
.Lx258_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx258_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
.Lx258_29:              mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n180_lit_string_α
                                                                              jmp   n180_lit_string_α
n179_call_proc_staged_β:
                        mov              r11, 86;                             jmp   n180_lit_string_α
.Lx258_0:               .quad            .Lx258_0_s
.Lx258_0_s:             .string          "writeset"
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_string_α:      mov              r11, 87
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 16
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n181_var_α
.Lx259_0:               .quad            .Lx259_0_s
.Lx259_0_s:             .string          "\tStart state is "
#-----------------------------------------------------------------------------------------------------------------------
n181_var_α:             mov              r11, 88
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 824], rax;          jmp   n182_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n182_field_get_α:       mov              r11, 89
                        mov              rdi, qword ptr [rip + .Lx262_0]
                        mov              rsi, qword ptr [rsp + 816]
                        mov              rdx, qword ptr [rsp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n184_lit_string_α
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n183_call_builtin_icon_α
.Lx262_0:               .quad            .Lx262_0_s
.Lx262_0_s:             .string          "q0"
#-----------------------------------------------------------------------------------------------------------------------
n183_call_builtin_icon_α:
                        mov              r11, 90
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 760], rax
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 744], rax
                        .section         .rodata
.Lrkfn264:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn264]
                        lea              rsi, [rsp + 736]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              al, 104;                             je    n184_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n184_lit_string_α
n183_call_builtin_icon_β:
                        mov              r11, 90;                             jmp   n184_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_string_α:      mov              r11, 91
                        mov              qword ptr [rsp + 704], 2             # result
                        mov              dword ptr [rsp + 708], 8
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n185_call_builtin_icon_α
.Lx265_0:               .quad            .Lx265_0_s
.Lx265_0_s:             .string          "\tDelta: "
#-----------------------------------------------------------------------------------------------------------------------
n185_call_builtin_icon_α:
                        mov              r11, 92
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 680], rax
                        .section         .rodata
.Lrkfn267:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn267]
                        lea              rsi, [rsp + 672]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              al, 104;                             je    n186_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n186_var_α
n185_call_builtin_icon_β:
                        mov              r11, 92;                             jmp   n186_var_α
#-----------------------------------------------------------------------------------------------------------------------
n186_var_α:             mov              r11, 93
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 136], rax;          jmp   n187_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n187_field_get_α:       mov              r11, 94
                        mov              rdi, qword ptr [rip + .Lx270_0]
                        mov              rsi, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n212_var_α
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx;          jmp   n188_iterate_α
.Lx270_0:               .quad            .Lx270_0_s
.Lx270_0_s:             .string          "Q"
#-----------------------------------------------------------------------------------------------------------------------
n188_iterate_α:         mov              r11, 95
                        mov              qword ptr [rsp + 96], 0
.Lx272_0:               mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 96]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              rax, 104;                            je    n212_var_α
                                                                              jmp   n189_assign_α
n188_iterate_β:         mov              r11, 95
                        inc              qword ptr [rsp + 96];                jmp   .Lx272_0
#-----------------------------------------------------------------------------------------------------------------------
n189_assign_α:          mov              r11, 96
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx;         jmp   n190_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n190_bound_α:           mov              r11, 97
                        mov              qword ptr [rsp + 144], rsp;          jmp   n191_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_string_α:      mov              r11, 98
                        mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], 3
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n192_var_α
.Lx276_0:               .quad            .Lx276_0_s
.Lx276_0_s:             .string          "\td("
#-----------------------------------------------------------------------------------------------------------------------
n192_var_α:             mov              r11, 99
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 392], rax;          jmp   n193_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_string_α:      mov              r11, 100
                        mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 1
                        mov              rax, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n194_var_α
.Lx279_0:               .quad            .Lx279_0_s
.Lx279_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n194_var_α:             mov              r11, 101
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 488], rax;          jmp   n195_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n195_field_get_α:       mov              r11, 102
                        mov              rdi, qword ptr [rip + .Lx282_0]
                        mov              rsi, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n209_call_builtin_icon_α
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n196_iterate_α
.Lx282_0:               .quad            .Lx282_0_s
.Lx282_0_s:             .string          "S"
#-----------------------------------------------------------------------------------------------------------------------
n196_iterate_α:         mov              r11, 103
                        mov              qword ptr [rsp + 448], 0
.Lx284_0:               mov              rdi, qword ptr [rsp + 464]
                        mov              rsi, qword ptr [rsp + 472]
                        mov              rdx, qword ptr [rsp + 448]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              rax, 104;                            je    n209_call_builtin_icon_α
                                                                              jmp   n197_assign_α
n196_iterate_β:         mov              r11, 103
                        inc              qword ptr [rsp + 448];               jmp   .Lx284_0
#-----------------------------------------------------------------------------------------------------------------------
n197_assign_α:          mov              r11, 104
                        mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n198_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n198_lit_string_α:      mov              r11, 105
                        mov              qword ptr [rsp + 496], 2             # result
                        mov              dword ptr [rsp + 500], 4
                        mov              rax, qword ptr [rip + .Lx286_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n199_var_α
.Lx286_0:               .quad            .Lx286_0_s
.Lx286_0_s:             .string          ") = "
#-----------------------------------------------------------------------------------------------------------------------
n199_var_α:             mov              r11, 106
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 536], rax;          jmp   n200_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n200_field_get_α:       mov              r11, 107
                        mov              rdi, qword ptr [rip + .Lx289_0]
                        mov              rsi, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n196_iterate_β
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n201_var_α
.Lx289_0:               .quad            .Lx289_0_s
.Lx289_0_s:             .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n201_var_α:             mov              r11, 108
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 584], rax;          jmp   n202_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_string_α:      mov              r11, 109
                        mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 1
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n203_binop_α
.Lx292_0:               .quad            .Lx292_0_s
.Lx292_0_s:             .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n203_binop_α:           mov              r11, 110
                        mov              rdi, qword ptr [rsp + 1632]
                        mov              rsi, qword ptr [rsp + 1640]
                        mov              rdx, qword ptr [rsp + 592]
                        mov              rcx, qword ptr [rsp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n204_var_α
#-----------------------------------------------------------------------------------------------------------------------
n204_var_α:             mov              r11, 111
                        mov              rax, qword ptr [rsp + 1648]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 1656]
                        mov              qword ptr [rsp + 616], rax;          jmp   n205_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n205_binop_α:           mov              r11, 112
                        mov              rdi, qword ptr [rsp + 560]
                        mov              rsi, qword ptr [rsp + 568]
                        mov              rdx, qword ptr [rsp + 1648]
                        mov              rcx, qword ptr [rsp + 1656]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n206_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n206_subscript_α:       mov              r11, 113
                        mov              rdi, qword ptr [rsp + 512]
                        mov              rsi, qword ptr [rsp + 520]
                        mov              rdx, qword ptr [rsp + 544]
                        mov              rcx, qword ptr [rsp + 552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n196_iterate_β
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n207_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n207_deref_α:           mov              r11, 114
                        mov              rdi, qword ptr [rsp + 624]
                        mov              rsi, qword ptr [rsp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n196_iterate_β
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n208_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n208_call_builtin_icon_α:
                        mov              r11, 115
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn300:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn300]
                        lea              rsi, [rsp + 256]
                        mov              edx, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n196_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n196_iterate_β
n208_call_builtin_icon_β:
                        mov              r11, 115;                            jmp   n196_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n209_call_builtin_icon_α:
                        mov              r11, 116
                        .section         .rodata
.Lrkfn302:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn302]
                        lea              rsi, [rsp + 224]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n211_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n210_conjunction_α
n209_call_builtin_icon_β:
                        mov              r11, 116;                            jmp   n211_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n210_conjunction_α:     mov              r11, 117
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 200], rax;          jmp   n211_unmark_α
n210_conjunction_β:     mov              r11, 117;                            jmp   n211_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n211_unmark_α:          mov              r11, 118
                        mov              rsp, qword ptr [rsp + 144];          jmp   n188_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n212_var_α:             mov              r11, 119
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 56], rax;           jmp   n213_return_α
#-----------------------------------------------------------------------------------------------------------------------
n213_return_α:          mov              r11, 120
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   showdfa_γ
#-----------------------------------------------------------------------------------------------------------------------
showdfa_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
showdfa_β:
                                                                              jmp   showdfa_ω
#-----------------------------------------------------------------------------------------------------------------------
showdfa_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1752]
                        add              rsp, 1776;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
showdfa_ω:
                        mov              rcx, qword ptr [rsp + 1760]
                        add              rsp, 1776;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
showdfa_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             rdx
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx309_2]
                        lea              rdx, [rip + .Lx309_3];               jmp   FN__showdfa
.Lx309_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx309_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__writeset:
                        sub              rsp, 544
                        mov              qword ptr [rsp + 520], rcx
                        mov              qword ptr [rsp + 528], rdx
                        mov              rdi, rsp
                        add              rdi, 432
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
writeset_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n310_lit_string_α:      mov              r11, 121
                        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 0
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n311_assign_α
.Lx329_0:               .quad            .Lx329_0_s
.Lx329_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n311_assign_α:          mov              r11, 122
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n312_var_α
#-----------------------------------------------------------------------------------------------------------------------
n312_var_α:             mov              r11, 123
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 328], rax;          jmp   n313_var_α
#-----------------------------------------------------------------------------------------------------------------------
n313_var_α:             mov              r11, 124
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 392], rax;          jmp   n314_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n314_iterate_α:         mov              r11, 125
                        mov              qword ptr [rsp + 368], 0
.Lx336_0:               mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              rdx, qword ptr [rsp + 368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              rax, 104;                            je    n319_lit_string_α
                                                                              jmp   n315_lit_string_α
n314_iterate_β:         mov              r11, 125
                        inc              qword ptr [rsp + 368];               jmp   .Lx336_0
#-----------------------------------------------------------------------------------------------------------------------
n315_lit_string_α:      mov              r11, 126
                        mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 1
                        mov              rax, qword ptr [rip + .Lx337_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n316_binop_α
.Lx337_0:               .quad            .Lx337_0_s
.Lx337_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n316_binop_α:           mov              r11, 127
                        mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 400]
                        mov              rcx, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n317_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n317_binop_α:           mov              r11, 128
                        mov              rdi, qword ptr [rsp + 432]
                        mov              rsi, qword ptr [rsp + 440]
                        mov              rdx, qword ptr [rsp + 336]
                        mov              rcx, qword ptr [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n318_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n318_assign_α:          mov              r11, 129
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n314_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n319_lit_string_α:      mov              r11, 130
                        mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 1
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n320_var_α
.Lx341_0:               .quad            .Lx341_0_s
.Lx341_0_s:             .string          "\t"
#-----------------------------------------------------------------------------------------------------------------------
n320_var_α:             mov              r11, 131
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 184], rax;          jmp   n321_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_string_α:      mov              r11, 132
                        mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 4
                        mov              rax, qword ptr [rip + .Lx344_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n322_var_α
.Lx344_0:               .quad            .Lx344_0_s
.Lx344_0_s:             .string          " = {"
#-----------------------------------------------------------------------------------------------------------------------
n322_var_α:             mov              r11, 133
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 232], rax;          jmp   n323_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_integer_α:     mov              r11, 134
                        mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lx347_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n324_lit_integer_α
.Lx347_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_integer_α:     mov              r11, 135
                        mov              qword ptr [rsp + 256], 3             # result
                        mov              rax, qword ptr [rip + .Lx348_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n325_subscript_α
.Lx348_0:               .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n325_subscript_α:       mov              r11, 136
                        mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              r8, qword ptr [rsp + 256]
                        mov              r9, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n328_return_α
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n326_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n326_lit_string_α:      mov              r11, 137
                        mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 1
                        mov              rax, qword ptr [rip + .Lx350_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n327_call_builtin_icon_α
.Lx350_0:               .quad            .Lx350_0_s
.Lx350_0_s:             .string          "}"
#-----------------------------------------------------------------------------------------------------------------------
n327_call_builtin_icon_α:
                        mov              r11, 138
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn352:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn352]
                        lea              rsi, [rsp + 64]
                        mov              edx, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    n328_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n328_return_α
n327_call_builtin_icon_β:
                        mov              r11, 138;                            jmp   n328_return_α
#-----------------------------------------------------------------------------------------------------------------------
n328_return_α:          mov              r11, 139
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   writeset_γ
#-----------------------------------------------------------------------------------------------------------------------
writeset_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
writeset_β:
                                                                              jmp   writeset_ω
#-----------------------------------------------------------------------------------------------------------------------
writeset_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 520]
                        add              rsp, 544;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
writeset_ω:
                        mov              rcx, qword ptr [rsp + 528]
                        add              rsp, 544;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
writeset_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             rdx
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx354_2]
                        lea              rdx, [rip + .Lx354_3];               jmp   FN__writeset
.Lx354_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx354_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__minimize:
                        sub              rsp, 3536
                        mov              qword ptr [rsp + 3512], rcx
                        mov              qword ptr [rsp + 3520], rdx
                        mov              rdi, rsp
                        add              rdi, 3280
                        xor              eax, eax
                        mov              ecx, 96
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 6
                        call             rt_icn_zframe_args_install@PLT
minimize_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n355_call_builtin_icon_α:
                        mov              r11, 140
                        .section         .rodata
.Lrkfn526:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn526]
                        lea              rsi, [rsp + 3264]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 3248], rax
                        mov              qword ptr [rsp + 3256], rdx
                        cmp              al, 104;                             je    n357_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n356_assign_α
n355_call_builtin_icon_β:
                        mov              r11, 140;                            jmp   n357_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n356_assign_α:          mov              r11, 141
                        mov              rax, qword ptr [rsp + 3248]
                        mov              rdx, qword ptr [rsp + 3256]
                        mov              qword ptr [r9 + 0], rax              # distab
                        mov              qword ptr [r9 + 8], rdx;             jmp   n357_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n357_call_builtin_icon_α:
                        mov              r11, 142
                        .section         .rodata
.Lrkfn529:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn529]
                        lea              rsi, [rsp + 3232]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 3216], rax
                        mov              qword ptr [rsp + 3224], rdx
                        cmp              al, 104;                             je    n359_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n358_assign_α
n357_call_builtin_icon_β:
                        mov              r11, 142;                            jmp   n359_var_α
#-----------------------------------------------------------------------------------------------------------------------
n358_assign_α:          mov              r11, 143
                        mov              rax, qword ptr [rsp + 3216]
                        mov              rdx, qword ptr [rsp + 3224]
                        mov              qword ptr [r9 + 16], rax             # dlists
                        mov              qword ptr [r9 + 24], rdx;            jmp   n359_var_α
#-----------------------------------------------------------------------------------------------------------------------
n359_var_α:             mov              r11, 144
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 3200], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 3208], rax;         jmp   n360_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n360_field_get_α:       mov              r11, 145
                        mov              rdi, qword ptr [rip + .Lx533_0]
                        mov              rsi, qword ptr [rsp + 3200]
                        mov              rdx, qword ptr [rsp + 3208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n362_var_α
                        mov              qword ptr [rsp + 3184], rax
                        mov              qword ptr [rsp + 3192], rdx;         jmp   n361_assign_α
.Lx533_0:               .quad            .Lx533_0_s
.Lx533_0_s:             .string          "F"
#-----------------------------------------------------------------------------------------------------------------------
n361_assign_α:          mov              r11, 146
                        mov              rax, qword ptr [rsp + 3184]
                        mov              rdx, qword ptr [rsp + 3192]
                        mov              qword ptr [rsp + 3312], rax
                        mov              qword ptr [rsp + 3320], rdx;         jmp   n362_var_α
#-----------------------------------------------------------------------------------------------------------------------
n362_var_α:             mov              r11, 147
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 3136], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 3144], rax;         jmp   n363_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n363_field_get_α:       mov              r11, 148
                        mov              rdi, qword ptr [rip + .Lx537_0]
                        mov              rsi, qword ptr [rsp + 3136]
                        mov              rdx, qword ptr [rsp + 3144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n368_var_α
                        mov              qword ptr [rsp + 3120], rax
                        mov              qword ptr [rsp + 3128], rdx;         jmp   n364_var_α
.Lx537_0:               .quad            .Lx537_0_s
.Lx537_0_s:             .string          "Q"
#-----------------------------------------------------------------------------------------------------------------------
n364_var_α:             mov              r11, 149
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 3168], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 3176], rax;         jmp   n365_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n365_field_get_α:       mov              r11, 150
                        mov              rdi, qword ptr [rip + .Lx540_0]
                        mov              rsi, qword ptr [rsp + 3168]
                        mov              rdx, qword ptr [rsp + 3176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n368_var_α
                        mov              qword ptr [rsp + 3152], rax
                        mov              qword ptr [rsp + 3160], rdx;         jmp   n366_call_proc_staged_α
.Lx540_0:               .quad            .Lx540_0_s
.Lx540_0_s:             .string          "F"
#-----------------------------------------------------------------------------------------------------------------------
n366_call_proc_staged_α:
                        mov              r11, 151
                        lea              rsi, [rsp + 3120]
                        lea              rdx, [rsp + 3152]
                        call             diff_dcα;                            jmp   .Lx542_2
.Lx542_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx542_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3056], rax
                        mov              qword ptr [rsp + 3064], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3056]
                        mov              rdx, qword ptr [rsp + 3064]
.Lx542_29:              mov              qword ptr [rsp + 3056], rax
                        mov              qword ptr [rsp + 3064], rdx
                        cmp              al, 104;                             je    n368_var_α
                                                                              jmp   n367_assign_α
n366_call_proc_staged_β:
                        mov              r11, 151;                            jmp   n368_var_α
.Lx542_0:               .quad            .Lx542_0_s
.Lx542_0_s:             .string          "diff"
#-----------------------------------------------------------------------------------------------------------------------
n367_assign_α:          mov              r11, 152
                        mov              rax, qword ptr [rsp + 3056]
                        mov              rdx, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 3328], rax
                        mov              qword ptr [rsp + 3336], rdx;         jmp   n368_var_α
#-----------------------------------------------------------------------------------------------------------------------
n368_var_α:             mov              r11, 153
                        mov              rax, qword ptr [rsp + 3312]
                        mov              qword ptr [rsp + 2832], rax
                        mov              rax, qword ptr [rsp + 3320]
                        mov              qword ptr [rsp + 2840], rax;         jmp   n369_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n369_iterate_α:         mov              r11, 154
                        mov              qword ptr [rsp + 2816], 0
.Lx547_0:               mov              rdi, qword ptr [rsp + 2832]
                        mov              rsi, qword ptr [rsp + 2840]
                        mov              rdx, qword ptr [rsp + 2816]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2800], rax
                        mov              qword ptr [rsp + 2808], rdx
                        cmp              rax, 104;                            je    n385_disjunction_α
                                                                              jmp   n370_assign_α
n369_iterate_β:         mov              r11, 154
                        inc              qword ptr [rsp + 2816];              jmp   .Lx547_0
#-----------------------------------------------------------------------------------------------------------------------
n370_assign_α:          mov              r11, 155
                        mov              rax, qword ptr [rsp + 2800]
                        mov              rdx, qword ptr [rsp + 2808]
                        mov              qword ptr [rsp + 3280], rax
                        mov              qword ptr [rsp + 3288], rdx;         jmp   n371_var_α
#-----------------------------------------------------------------------------------------------------------------------
n371_var_α:             mov              r11, 156
                        mov              rax, qword ptr [rsp + 3328]
                        mov              qword ptr [rsp + 2784], rax
                        mov              rax, qword ptr [rsp + 3336]
                        mov              qword ptr [rsp + 2792], rax;         jmp   n372_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n372_iterate_α:         mov              r11, 157
                        mov              qword ptr [rsp + 2768], 0
.Lx552_0:               mov              rdi, qword ptr [rsp + 2784]
                        mov              rsi, qword ptr [rsp + 2792]
                        mov              rdx, qword ptr [rsp + 2768]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2752], rax
                        mov              qword ptr [rsp + 2760], rdx
                        cmp              rax, 104;                            je    n369_iterate_β
                                                                              jmp   n373_assign_α
n372_iterate_β:         mov              r11, 157
                        inc              qword ptr [rsp + 2768];              jmp   .Lx552_0
#-----------------------------------------------------------------------------------------------------------------------
n373_assign_α:          mov              r11, 158
                        mov              rax, qword ptr [rsp + 2752]
                        mov              rdx, qword ptr [rsp + 2760]
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx
                        mov              qword ptr [rsp + 2736], rax
                        mov              qword ptr [rsp + 2744], rdx;         jmp   n374_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n374_conjunction_α:     mov              r11, 159
                        mov              rax, qword ptr [rsp + 2736]
                        mov              qword ptr [rsp + 2720], rax
                        mov              rax, qword ptr [rsp + 2744]
                        mov              qword ptr [rsp + 2728], rax;         jmp   n375_bound_α
n374_conjunction_β:     mov              r11, 159;                            jmp   n385_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n375_bound_α:           mov              r11, 160
                        mov              qword ptr [rsp + 2848], rsp;         jmp   n376_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n376_var_ref_α:         mov              r11, 161
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # distab
                        mov              qword ptr [rsp + 2896], rax
                        mov              qword ptr [rsp + 2904], rdx;         jmp   n377_var_α
#-----------------------------------------------------------------------------------------------------------------------
n377_var_α:             mov              r11, 162
                        mov              rax, qword ptr [rsp + 3280]
                        mov              qword ptr [rsp + 2976], rax
                        mov              rax, qword ptr [rsp + 3288]
                        mov              qword ptr [rsp + 2984], rax;         jmp   n378_var_α
#-----------------------------------------------------------------------------------------------------------------------
n378_var_α:             mov              r11, 163
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 2992], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 3000], rax;         jmp   n379_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n379_binop_α:           mov              r11, 164
                        mov              rdi, qword ptr [rsp + 3280]
                        mov              rsi, qword ptr [rsp + 3288]
                        mov              rdx, qword ptr [rsp + 3296]
                        mov              rcx, qword ptr [rsp + 3304]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n380_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n380_call_builtin_icon_α:
                        mov              r11, 165
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 2928], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 2936], rax
                        .section         .rodata
.Lrkfn565:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn565]
                        lea              rsi, [rsp + 2928]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262258
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx
                        cmp              al, 104;                             je    n384_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n381_subscript_α
n380_call_builtin_icon_β:
                        mov              r11, 165;                            jmp   n384_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n381_subscript_α:       mov              r11, 166
                        mov              rdi, qword ptr [rsp + 2896]
                        mov              rsi, qword ptr [rsp + 2904]
                        mov              rdx, qword ptr [rsp + 2912]
                        mov              rcx, qword ptr [rsp + 2920]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n384_unmark_α
                        mov              qword ptr [rsp + 3008], rax
                        mov              qword ptr [rsp + 3016], rdx;         jmp   n382_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n382_lit_string_α:      mov              r11, 167
                        mov              qword ptr [rsp + 3040], 2            # result
                        mov              dword ptr [rsp + 3044], 1
                        mov              rax, qword ptr [rip + .Lx567_0]
                        mov              qword ptr [rsp + 3048], rax;         jmp   n383_assign_var_α
.Lx567_0:               .quad            .Lx567_0_s
.Lx567_0_s:             .string          "X"
#-----------------------------------------------------------------------------------------------------------------------
n383_assign_var_α:      mov              r11, 168
                        mov              rdi, qword ptr [rsp + 3008]
                        mov              rsi, qword ptr [rsp + 3016]
                        mov              rdx, qword ptr [rsp + 3040]
                        mov              rcx, qword ptr [rsp + 3048]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n384_unmark_α
                        mov              qword ptr [rsp + 3024], rax
                        mov              qword ptr [rsp + 3032], rdx;         jmp   n384_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n384_unmark_α:          mov              r11, 169
                        mov              rsp, qword ptr [rsp + 2848];         jmp   n372_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n385_disjunction_α:     mov              r11, 170
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              dword ptr [rsp + 208], 0;            jmp   n514_var_α
n385_disjunction_as:    mov              r11, 170
                        mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 0;                              jne   .Lx572_0
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 200], rax;          jmp   n386_var_α
.Lx572_0:               cmp              eax, 1;                              jne   .Lx572_1
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 200], rax;          jmp   n386_var_α
.Lx572_1:                                                                     jmp   n386_var_α
n385_disjunction_β:     mov              r11, 170
                        mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 0;                              je    n518_iterate_β
                                                                              jmp   n511_iterate_β
n385_disjunction_af:    mov              r11, 170
                        add              dword ptr [rsp + 208], 1
                        mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 1;                              je    n507_var_α
                                                                              jmp   n521_var_α
#-----------------------------------------------------------------------------------------------------------------------
n386_var_α:             mov              r11, 171
                        mov              rax, qword ptr [rsp + 3280]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 3288]
                        mov              qword ptr [rsp + 168], rax;          jmp   n387_var_α
#-----------------------------------------------------------------------------------------------------------------------
n387_var_α:             mov              r11, 172
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 184], rax;          jmp   n388_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n388_binop_test_α:      mov              r11, 173
                        mov              rdi, qword ptr [rsp + 3280]
                        mov              rsi, qword ptr [rsp + 3288]
                        mov              rdx, qword ptr [rsp + 3296]
                        mov              rcx, qword ptr [rsp + 3304]
                        mov              r8d, 17
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n385_disjunction_β
                        mov              rdi, qword ptr [rsp + 3296]
                        mov              rsi, qword ptr [rsp + 3304]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n389_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n389_conjunction_α:     mov              r11, 174
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 136], rax;          jmp   n390_bound_α
n389_conjunction_β:     mov              r11, 174;                            jmp   n521_var_α
#-----------------------------------------------------------------------------------------------------------------------
n390_bound_α:           mov              r11, 175
                        mov              qword ptr [rsp + 496], rsp;          jmp   n391_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n391_disjunction_α:     mov              r11, 176
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              dword ptr [rsp + 560], 0;            jmp   n462_var_ref_α
n391_disjunction_as:    mov              r11, 176
                        mov              eax, dword ptr [rsp + 560]
                        cmp              eax, 0;                              jne   .Lx582_0
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 552], rax;          jmp   n506_unmark_α
.Lx582_0:               cmp              eax, 1;                              jne   .Lx582_1
                                                                              jmp   n506_unmark_α
.Lx582_1:                                                                     jmp   n506_unmark_α
n391_disjunction_β:     mov              r11, 176
                        mov              eax, dword ptr [rsp + 560]
                        cmp              eax, 0;                              je    n506_unmark_α
                                                                              jmp   n506_unmark_α
n391_disjunction_af:    mov              r11, 176
                        add              dword ptr [rsp + 560], 1
                        mov              eax, dword ptr [rsp + 560]
                        cmp              eax, 1;                              je    n392_var_α
                                                                              jmp   n506_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n392_var_α:             mov              r11, 177
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n393_field_get_α
n392_var_β:             mov              r11, 177;                            jmp   n506_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n393_field_get_α:       mov              r11, 178
                        mov              rdi, qword ptr [rip + .Lx585_0]
                        mov              rsi, qword ptr [rsp + 1472]
                        mov              rdx, qword ptr [rsp + 1480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n506_unmark_α
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx;         jmp   n394_iterate_α
.Lx585_0:               .quad            .Lx585_0_s
.Lx585_0_s:             .string          "S"
#-----------------------------------------------------------------------------------------------------------------------
n394_iterate_α:         mov              r11, 179
                        mov              qword ptr [rsp + 1440], 0
.Lx587_0:               mov              rdi, qword ptr [rsp + 1456]
                        mov              rsi, qword ptr [rsp + 1464]
                        mov              rdx, qword ptr [rsp + 1440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                        cmp              rax, 104;                            je    n506_unmark_α
                                                                              jmp   n395_assign_α
n394_iterate_β:         mov              r11, 179
                        inc              qword ptr [rsp + 1440];              jmp   .Lx587_0
#-----------------------------------------------------------------------------------------------------------------------
n395_assign_α:          mov              r11, 180
                        mov              rax, qword ptr [rsp + 1424]
                        mov              rdx, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 3344], rax
                        mov              qword ptr [rsp + 3352], rdx;         jmp   n396_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n396_bound_α:           mov              r11, 181
                        mov              qword ptr [rsp + 1488], rsp;         jmp   n397_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n397_disjunction_α:     mov              r11, 182
                        mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              dword ptr [rsp + 1552], 0;           jmp   n398_var_α
n397_disjunction_as:    mov              r11, 182
                        mov              eax, dword ptr [rsp + 1552]
                        cmp              eax, 0;                              jne   .Lx592_0
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n461_unmark_α
.Lx592_0:                                                                     jmp   n461_unmark_α
n397_disjunction_β:     mov              r11, 182
                        mov              eax, dword ptr [rsp + 1552];         jmp   n461_unmark_α
n397_disjunction_af:    mov              r11, 182
                        add              dword ptr [rsp + 1552], 1
                        mov              eax, dword ptr [rsp + 1552];         jmp   n461_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n398_var_α:             mov              r11, 183
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 2448], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 2456], rax;         jmp   n399_field_get_α
n398_var_β:             mov              r11, 183;                            jmp   n397_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n399_field_get_α:       mov              r11, 184
                        mov              rdi, qword ptr [rip + .Lx595_0]
                        mov              rsi, qword ptr [rsp + 2448]
                        mov              rdx, qword ptr [rsp + 2456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n397_disjunction_af
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx;         jmp   n400_var_α
.Lx595_0:               .quad            .Lx595_0_s
.Lx595_0_s:             .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n400_var_α:             mov              r11, 185
                        mov              rax, qword ptr [rsp + 3280]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 3288]
                        mov              qword ptr [rsp + 2504], rax;         jmp   n401_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n401_lit_string_α:      mov              r11, 186
                        mov              qword ptr [rsp + 2512], 2            # result
                        mov              dword ptr [rsp + 2516], 1
                        mov              rax, qword ptr [rip + .Lx598_0]
                        mov              qword ptr [rsp + 2520], rax;         jmp   n402_binop_α
.Lx598_0:               .quad            .Lx598_0_s
.Lx598_0_s:             .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n402_binop_α:           mov              r11, 187
                        mov              rdi, qword ptr [rsp + 3280]
                        mov              rsi, qword ptr [rsp + 3288]
                        mov              rdx, qword ptr [rsp + 2512]
                        mov              rcx, qword ptr [rsp + 2520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 2480], rax
                        mov              qword ptr [rsp + 2488], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n403_var_α
#-----------------------------------------------------------------------------------------------------------------------
n403_var_α:             mov              r11, 188
                        mov              rax, qword ptr [rsp + 3344]
                        mov              qword ptr [rsp + 2528], rax
                        mov              rax, qword ptr [rsp + 3352]
                        mov              qword ptr [rsp + 2536], rax;         jmp   n404_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n404_binop_α:           mov              r11, 189
                        mov              rdi, qword ptr [rsp + 2480]
                        mov              rsi, qword ptr [rsp + 2488]
                        mov              rdx, qword ptr [rsp + 3344]
                        mov              rcx, qword ptr [rsp + 3352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n405_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n405_subscript_α:       mov              r11, 190
                        mov              rdi, qword ptr [rsp + 2432]
                        mov              rsi, qword ptr [rsp + 2440]
                        mov              rdx, qword ptr [rsp + 2464]
                        mov              rcx, qword ptr [rsp + 2472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n397_disjunction_af
                        mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx;         jmp   n406_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n406_deref_α:           mov              r11, 191
                        mov              rdi, qword ptr [rsp + 2544]
                        mov              rsi, qword ptr [rsp + 2552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n397_disjunction_af
                        mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx;         jmp   n407_var_α
#-----------------------------------------------------------------------------------------------------------------------
n407_var_α:             mov              r11, 192
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 2592], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 2600], rax;         jmp   n408_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n408_field_get_α:       mov              r11, 193
                        mov              rdi, qword ptr [rip + .Lx607_0]
                        mov              rsi, qword ptr [rsp + 2592]
                        mov              rdx, qword ptr [rsp + 2600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n397_disjunction_af
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx;         jmp   n409_var_α
.Lx607_0:               .quad            .Lx607_0_s
.Lx607_0_s:             .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n409_var_α:             mov              r11, 194
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 2640], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 2648], rax;         jmp   n410_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n410_lit_string_α:      mov              r11, 195
                        mov              qword ptr [rsp + 2656], 2            # result
                        mov              dword ptr [rsp + 2660], 1
                        mov              rax, qword ptr [rip + .Lx610_0]
                        mov              qword ptr [rsp + 2664], rax;         jmp   n411_binop_α
.Lx610_0:               .quad            .Lx610_0_s
.Lx610_0_s:             .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n411_binop_α:           mov              r11, 196
                        mov              rdi, qword ptr [rsp + 3296]
                        mov              rsi, qword ptr [rsp + 3304]
                        mov              rdx, qword ptr [rsp + 2656]
                        mov              rcx, qword ptr [rsp + 2664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n412_var_α
#-----------------------------------------------------------------------------------------------------------------------
n412_var_α:             mov              r11, 197
                        mov              rax, qword ptr [rsp + 3344]
                        mov              qword ptr [rsp + 2672], rax
                        mov              rax, qword ptr [rsp + 3352]
                        mov              qword ptr [rsp + 2680], rax;         jmp   n413_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n413_binop_α:           mov              r11, 198
                        mov              rdi, qword ptr [rsp + 2624]
                        mov              rsi, qword ptr [rsp + 2632]
                        mov              rdx, qword ptr [rsp + 3344]
                        mov              rcx, qword ptr [rsp + 3352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n414_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n414_subscript_α:       mov              r11, 199
                        mov              rdi, qword ptr [rsp + 2576]
                        mov              rsi, qword ptr [rsp + 2584]
                        mov              rdx, qword ptr [rsp + 2608]
                        mov              rcx, qword ptr [rsp + 2616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n397_disjunction_af
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx;         jmp   n415_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n415_deref_α:           mov              r11, 200
                        mov              rdi, qword ptr [rsp + 2688]
                        mov              rsi, qword ptr [rsp + 2696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n397_disjunction_af
                        mov              qword ptr [rsp + 2704], rax
                        mov              qword ptr [rsp + 2712], rdx;         jmp   n416_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n416_binop_test_α:      mov              r11, 201
                        mov              rdi, qword ptr [rsp + 2560]
                        mov              rsi, qword ptr [rsp + 2568]
                        mov              rdx, qword ptr [rsp + 2704]
                        mov              rcx, qword ptr [rsp + 2712]
                        mov              r8d, 17
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n397_disjunction_af
                        mov              rdi, qword ptr [rsp + 2704]
                        mov              rsi, qword ptr [rsp + 2712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 2416], rax
                        mov              qword ptr [rsp + 2424], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n417_var_α
#-----------------------------------------------------------------------------------------------------------------------
n417_var_α:             mov              r11, 202
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 2152], rax;         jmp   n418_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n418_field_get_α:       mov              r11, 203
                        mov              rdi, qword ptr [rip + .Lx620_0]
                        mov              rsi, qword ptr [rsp + 2144]
                        mov              rdx, qword ptr [rsp + 2152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n438_disjunction_α
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx;         jmp   n419_var_α
.Lx620_0:               .quad            .Lx620_0_s
.Lx620_0_s:             .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n419_var_α:             mov              r11, 204
                        mov              rax, qword ptr [rsp + 3280]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 3288]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n420_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n420_lit_string_α:      mov              r11, 205
                        mov              qword ptr [rsp + 2208], 2            # result
                        mov              dword ptr [rsp + 2212], 1
                        mov              rax, qword ptr [rip + .Lx623_0]
                        mov              qword ptr [rsp + 2216], rax;         jmp   n421_binop_α
.Lx623_0:               .quad            .Lx623_0_s
.Lx623_0_s:             .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n421_binop_α:           mov              r11, 206
                        mov              rdi, qword ptr [rsp + 3280]
                        mov              rsi, qword ptr [rsp + 3288]
                        mov              rdx, qword ptr [rsp + 2208]
                        mov              rcx, qword ptr [rsp + 2216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2184], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n422_var_α
#-----------------------------------------------------------------------------------------------------------------------
n422_var_α:             mov              r11, 207
                        mov              rax, qword ptr [rsp + 3344]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 3352]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n423_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n423_binop_α:           mov              r11, 208
                        mov              rdi, qword ptr [rsp + 2176]
                        mov              rsi, qword ptr [rsp + 2184]
                        mov              rdx, qword ptr [rsp + 3344]
                        mov              rcx, qword ptr [rsp + 3352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n424_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n424_subscript_α:       mov              r11, 209
                        mov              rdi, qword ptr [rsp + 2128]
                        mov              rsi, qword ptr [rsp + 2136]
                        mov              rdx, qword ptr [rsp + 2160]
                        mov              rcx, qword ptr [rsp + 2168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n438_disjunction_α
                        mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx;         jmp   n425_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n425_deref_α:           mov              r11, 210
                        mov              rdi, qword ptr [rsp + 2240]
                        mov              rsi, qword ptr [rsp + 2248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n438_disjunction_α
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx;         jmp   n426_var_α
#-----------------------------------------------------------------------------------------------------------------------
n426_var_α:             mov              r11, 211
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 2296], rax;         jmp   n427_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n427_field_get_α:       mov              r11, 212
                        mov              rdi, qword ptr [rip + .Lx632_0]
                        mov              rsi, qword ptr [rsp + 2288]
                        mov              rdx, qword ptr [rsp + 2296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n438_disjunction_α
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx;         jmp   n428_var_α
.Lx632_0:               .quad            .Lx632_0_s
.Lx632_0_s:             .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n428_var_α:             mov              r11, 213
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 2336], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 2344], rax;         jmp   n429_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n429_lit_string_α:      mov              r11, 214
                        mov              qword ptr [rsp + 2352], 2            # result
                        mov              dword ptr [rsp + 2356], 1
                        mov              rax, qword ptr [rip + .Lx635_0]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n430_binop_α
.Lx635_0:               .quad            .Lx635_0_s
.Lx635_0_s:             .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n430_binop_α:           mov              r11, 215
                        mov              rdi, qword ptr [rsp + 3296]
                        mov              rsi, qword ptr [rsp + 3304]
                        mov              rdx, qword ptr [rsp + 2352]
                        mov              rcx, qword ptr [rsp + 2360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 2320], rax
                        mov              qword ptr [rsp + 2328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n431_var_α
#-----------------------------------------------------------------------------------------------------------------------
n431_var_α:             mov              r11, 216
                        mov              rax, qword ptr [rsp + 3344]
                        mov              qword ptr [rsp + 2368], rax
                        mov              rax, qword ptr [rsp + 3352]
                        mov              qword ptr [rsp + 2376], rax;         jmp   n432_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n432_binop_α:           mov              r11, 217
                        mov              rdi, qword ptr [rsp + 2320]
                        mov              rsi, qword ptr [rsp + 2328]
                        mov              rdx, qword ptr [rsp + 3344]
                        mov              rcx, qword ptr [rsp + 3352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n433_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n433_subscript_α:       mov              r11, 218
                        mov              rdi, qword ptr [rsp + 2272]
                        mov              rsi, qword ptr [rsp + 2280]
                        mov              rdx, qword ptr [rsp + 2304]
                        mov              rcx, qword ptr [rsp + 2312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n438_disjunction_α
                        mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx;         jmp   n434_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n434_deref_α:           mov              r11, 219
                        mov              rdi, qword ptr [rsp + 2384]
                        mov              rsi, qword ptr [rsp + 2392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n438_disjunction_α
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx;         jmp   n435_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n435_binop_α:           mov              r11, 220
                        mov              rdi, qword ptr [rsp + 2256]
                        mov              rsi, qword ptr [rsp + 2264]
                        mov              rdx, qword ptr [rsp + 2400]
                        mov              rcx, qword ptr [rsp + 2408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n436_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n436_call_builtin_icon_α:
                        mov              r11, 221
                        mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 2088], rax
                        .section         .rodata
.Lrkfn644:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn644]
                        lea              rsi, [rsp + 2080]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262258
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx
                        cmp              al, 104;                             je    n438_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n437_assign_α
n436_call_builtin_icon_β:
                        mov              r11, 221;                            jmp   n438_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n437_assign_α:          mov              r11, 222
                        mov              rax, qword ptr [rsp + 2064]
                        mov              rdx, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 3360], rax
                        mov              qword ptr [rsp + 3368], rdx;         jmp   n438_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n438_disjunction_α:     mov              r11, 223
                        mov              qword ptr [rsp + 1904], 0
                        mov              qword ptr [rsp + 1912], 0
                        mov              dword ptr [rsp + 1920], 0;           jmp   n455_var_α
n438_disjunction_as:    mov              r11, 223
                        mov              eax, dword ptr [rsp + 1920]
                        cmp              eax, 0;                              jne   .Lx647_0
                                                                              jmp   n439_var_ref_α
.Lx647_0:                                                                     jmp   n439_var_ref_α
n438_disjunction_β:     mov              r11, 223
                        mov              eax, dword ptr [rsp + 1920];         jmp   n439_var_ref_α
n438_disjunction_af:    mov              r11, 223
                        add              dword ptr [rsp + 1920], 1
                        mov              eax, dword ptr [rsp + 1920];         jmp   n439_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n439_var_ref_α:         mov              r11, 224
                        mov              rax, 4294967336
                        mov              rdx, 1879052304                      # dlists
                        mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx;         jmp   n440_var_α
#-----------------------------------------------------------------------------------------------------------------------
n440_var_α:             mov              r11, 225
                        mov              rax, qword ptr [rsp + 3360]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 3368]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n441_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n441_subscript_α:       mov              r11, 226
                        mov              rdi, qword ptr [rsp + 1808]
                        mov              rsi, qword ptr [rsp + 1816]
                        mov              rdx, qword ptr [rsp + 1824]
                        mov              rcx, qword ptr [rsp + 1832]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n445_var_ref_α
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx;         jmp   n442_nulltest_var_α
#-----------------------------------------------------------------------------------------------------------------------
n442_nulltest_var_α:    mov              r11, 227
                        mov              eax, dword ptr [rsp + 1840]
                        cmp              al, 104;                             je    n445_var_ref_α
                        mov              rdi, qword ptr [rsp + 1840]
                        mov              rsi, qword ptr [rsp + 1848]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n445_var_ref_α
                        cmp              eax, 0;                              jne   n445_var_ref_α
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n443_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n443_make_list_α:       mov              r11, 228
                        lea              rdi, [rsp + 1904]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx;         jmp   n444_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n444_assign_var_α:      mov              r11, 229
                        mov              rdi, qword ptr [rsp + 1856]
                        mov              rsi, qword ptr [rsp + 1864]
                        mov              rdx, qword ptr [rsp + 1888]
                        mov              rcx, qword ptr [rsp + 1896]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n445_var_ref_α
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx;         jmp   n445_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n445_var_ref_α:         mov              r11, 230
                        mov              rax, 4294967336
                        mov              rdx, 1879052304                      # dlists
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx;         jmp   n446_var_α
#-----------------------------------------------------------------------------------------------------------------------
n446_var_α:             mov              r11, 231
                        mov              rax, qword ptr [rsp + 3360]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 3368]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n447_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n447_subscript_α:       mov              r11, 232
                        mov              rdi, qword ptr [rsp + 1648]
                        mov              rsi, qword ptr [rsp + 1656]
                        mov              rdx, qword ptr [rsp + 1664]
                        mov              rcx, qword ptr [rsp + 1672]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n461_unmark_α
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx;         jmp   n448_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n448_deref_α:           mov              r11, 233
                        mov              rdi, qword ptr [rsp + 1680]
                        mov              rsi, qword ptr [rsp + 1688]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n461_unmark_α
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx;         jmp   n449_var_α
#-----------------------------------------------------------------------------------------------------------------------
n449_var_α:             mov              r11, 234
                        mov              rax, qword ptr [rsp + 3280]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 3288]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n450_var_α
#-----------------------------------------------------------------------------------------------------------------------
n450_var_α:             mov              r11, 235
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 1800], rax;         jmp   n451_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n451_binop_α:           mov              r11, 236
                        mov              rdi, qword ptr [rsp + 3280]
                        mov              rsi, qword ptr [rsp + 3288]
                        mov              rdx, qword ptr [rsp + 3296]
                        mov              rcx, qword ptr [rsp + 3304]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n452_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n452_call_builtin_icon_α:
                        mov              r11, 237
                        mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1736], rax
                        .section         .rodata
.Lrkfn669:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn669]
                        lea              rsi, [rsp + 1728]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262258
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx
                        cmp              al, 104;                             je    n461_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n453_call_builtin_icon_α
n452_call_builtin_icon_β:
                        mov              r11, 237;                            jmp   n461_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n453_call_builtin_icon_α:
                        mov              r11, 238
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1624], rax
                        mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 1608], rax
                        .section         .rodata
.Lrkfn671:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn671]
                        lea              rsi, [rsp + 1600]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                        cmp              al, 104;                             je    n461_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n454_conjunction_α
n453_call_builtin_icon_β:
                        mov              r11, 238;                            jmp   n461_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n454_conjunction_α:     mov              r11, 239
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 1576], rax;         jmp   n397_disjunction_as
n454_conjunction_β:     mov              r11, 239;                            jmp   n461_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n455_var_α:             mov              r11, 240
                        mov              rax, qword ptr [rsp + 3360]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 3368]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n456_var_α
n455_var_β:             mov              r11, 240;                            jmp   n438_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n456_var_α:             mov              r11, 241
                        mov              rax, qword ptr [rsp + 3280]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 3288]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n457_var_α
#-----------------------------------------------------------------------------------------------------------------------
n457_var_α:             mov              r11, 242
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n458_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n458_binop_α:           mov              r11, 243
                        mov              rdi, qword ptr [rsp + 3280]
                        mov              rsi, qword ptr [rsp + 3288]
                        mov              rdx, qword ptr [rsp + 3296]
                        mov              rcx, qword ptr [rsp + 3304]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 2016], rax
                        mov              qword ptr [rsp + 2024], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n459_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n459_call_builtin_icon_α:
                        mov              r11, 244
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 1984], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 1992], rax
                        .section         .rodata
.Lrkfn681:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn681]
                        lea              rsi, [rsp + 1984]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262258
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx
                        cmp              al, 104;                             je    n438_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n460_binop_test_α
n459_call_builtin_icon_β:
                        mov              r11, 244;                            jmp   n438_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n460_binop_test_α:      mov              r11, 245
                        mov              rdi, qword ptr [rsp + 3360]
                        mov              rsi, qword ptr [rsp + 3368]
                        mov              rdx, qword ptr [rsp + 1968]
                        mov              rcx, qword ptr [rsp + 1976]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n438_disjunction_af
                        mov              rdi, qword ptr [rsp + 1968]
                        mov              rsi, qword ptr [rsp + 1976]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n461_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n461_unmark_α:          mov              r11, 246
                        mov              rsp, qword ptr [rsp + 1488];         jmp   n394_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n462_var_ref_α:         mov              r11, 247
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # distab
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n463_var_α
n462_var_ref_β:         mov              r11, 247;                            jmp   n391_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n463_var_α:             mov              r11, 248
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n464_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n464_field_get_α:       mov              r11, 249
                        mov              rdi, qword ptr [rip + .Lx689_0]
                        mov              rsi, qword ptr [rsp + 1056]
                        mov              rdx, qword ptr [rsp + 1064]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n391_disjunction_af
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n465_var_α
.Lx689_0:               .quad            .Lx689_0_s
.Lx689_0_s:             .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n465_var_α:             mov              r11, 250
                        mov              rax, qword ptr [rsp + 3280]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 3288]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n466_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n466_lit_string_α:      mov              r11, 251
                        mov              qword ptr [rsp + 1120], 2            # result
                        mov              dword ptr [rsp + 1124], 1
                        mov              rax, qword ptr [rip + .Lx692_0]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n467_binop_α
.Lx692_0:               .quad            .Lx692_0_s
.Lx692_0_s:             .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n467_binop_α:           mov              r11, 252
                        mov              rdi, qword ptr [rsp + 3280]
                        mov              rsi, qword ptr [rsp + 3288]
                        mov              rdx, qword ptr [rsp + 1120]
                        mov              rcx, qword ptr [rsp + 1128]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n468_var_α
#-----------------------------------------------------------------------------------------------------------------------
n468_var_α:             mov              r11, 253
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n469_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n469_field_get_α:       mov              r11, 254
                        mov              rdi, qword ptr [rip + .Lx696_0]
                        mov              rsi, qword ptr [rsp + 1200]
                        mov              rdx, qword ptr [rsp + 1208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n391_disjunction_af
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n470_iterate_α
.Lx696_0:               .quad            .Lx696_0_s
.Lx696_0_s:             .string          "S"
#-----------------------------------------------------------------------------------------------------------------------
n470_iterate_α:         mov              r11, 255
                        mov              qword ptr [rsp + 1168], 0
.Lx698_0:               mov              rdi, qword ptr [rsp + 1184]
                        mov              rsi, qword ptr [rsp + 1192]
                        mov              rdx, qword ptr [rsp + 1168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        cmp              rax, 104;                            je    n391_disjunction_af
                                                                              jmp   n471_assign_α
n470_iterate_β:         mov              r11, 255
                        inc              qword ptr [rsp + 1168];              jmp   .Lx698_0
#-----------------------------------------------------------------------------------------------------------------------
n471_assign_α:          mov              r11, 256
                        mov              rax, qword ptr [rsp + 1152]
                        mov              rdx, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 3344], rax
                        mov              qword ptr [rsp + 3352], rdx
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx;         jmp   n472_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n472_binop_α:           mov              r11, 257
                        mov              rdi, qword ptr [rsp + 1088]
                        mov              rsi, qword ptr [rsp + 1096]
                        mov              rdx, qword ptr [rsp + 1136]
                        mov              rcx, qword ptr [rsp + 1144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n473_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n473_subscript_α:       mov              r11, 258
                        mov              rdi, qword ptr [rsp + 1040]
                        mov              rsi, qword ptr [rsp + 1048]
                        mov              rdx, qword ptr [rsp + 1072]
                        mov              rcx, qword ptr [rsp + 1080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n470_iterate_β
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n474_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n474_deref_α:           mov              r11, 259
                        mov              rdi, qword ptr [rsp + 1216]
                        mov              rsi, qword ptr [rsp + 1224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n470_iterate_β
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx;         jmp   n475_var_α
#-----------------------------------------------------------------------------------------------------------------------
n475_var_α:             mov              r11, 260
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n476_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n476_field_get_α:       mov              r11, 261
                        mov              rdi, qword ptr [rip + .Lx705_0]
                        mov              rsi, qword ptr [rsp + 1264]
                        mov              rdx, qword ptr [rsp + 1272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n470_iterate_β
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx;         jmp   n477_var_α
.Lx705_0:               .quad            .Lx705_0_s
.Lx705_0_s:             .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n477_var_α:             mov              r11, 262
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n478_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n478_lit_string_α:      mov              r11, 263
                        mov              qword ptr [rsp + 1328], 2            # result
                        mov              dword ptr [rsp + 1332], 1
                        mov              rax, qword ptr [rip + .Lx708_0]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n479_binop_α
.Lx708_0:               .quad            .Lx708_0_s
.Lx708_0_s:             .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n479_binop_α:           mov              r11, 264
                        mov              rdi, qword ptr [rsp + 3296]
                        mov              rsi, qword ptr [rsp + 3304]
                        mov              rdx, qword ptr [rsp + 1328]
                        mov              rcx, qword ptr [rsp + 1336]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n480_var_α
#-----------------------------------------------------------------------------------------------------------------------
n480_var_α:             mov              r11, 265
                        mov              rax, qword ptr [rsp + 3344]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 3352]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n481_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n481_binop_α:           mov              r11, 266
                        mov              rdi, qword ptr [rsp + 1296]
                        mov              rsi, qword ptr [rsp + 1304]
                        mov              rdx, qword ptr [rsp + 3344]
                        mov              rcx, qword ptr [rsp + 3352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n482_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n482_subscript_α:       mov              r11, 267
                        mov              rdi, qword ptr [rsp + 1248]
                        mov              rsi, qword ptr [rsp + 1256]
                        mov              rdx, qword ptr [rsp + 1280]
                        mov              rcx, qword ptr [rsp + 1288]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n470_iterate_β
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx;         jmp   n483_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n483_deref_α:           mov              r11, 268
                        mov              rdi, qword ptr [rsp + 1360]
                        mov              rsi, qword ptr [rsp + 1368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n470_iterate_β
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx;         jmp   n484_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n484_binop_α:           mov              r11, 269
                        mov              rdi, qword ptr [rsp + 1232]
                        mov              rsi, qword ptr [rsp + 1240]
                        mov              rdx, qword ptr [rsp + 1376]
                        mov              rcx, qword ptr [rsp + 1384]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n485_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n485_call_builtin_icon_α:
                        mov              r11, 270
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1000], rax
                        .section         .rodata
.Lrkfn717:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn717]
                        lea              rsi, [rsp + 992]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262258
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n470_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n486_subscript_α
n485_call_builtin_icon_β:
                        mov              r11, 270;                            jmp   n470_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n486_subscript_α:       mov              r11, 271
                        mov              rdi, qword ptr [rsp + 960]
                        mov              rsi, qword ptr [rsp + 968]
                        mov              rdx, qword ptr [rsp + 976]
                        mov              rcx, qword ptr [rsp + 984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n470_iterate_β
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx;         jmp   n487_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n487_deref_α:           mov              r11, 272
                        mov              rdi, qword ptr [rsp + 1392]
                        mov              rsi, qword ptr [rsp + 1400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n470_iterate_β
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx;         jmp   n488_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n488_unop_test_α:       mov              r11, 273
                        mov              eax, dword ptr [rsp + 1408]
                        cmp              al, 104;                             je    n470_iterate_β
                        cmp              eax, 0;                              je    n470_iterate_β
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 952], rax;          jmp   n489_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n489_var_ref_α:         mov              r11, 274
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # distab
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n490_var_α
#-----------------------------------------------------------------------------------------------------------------------
n490_var_α:             mov              r11, 275
                        mov              rax, qword ptr [rsp + 3280]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 3288]
                        mov              qword ptr [rsp + 872], rax;          jmp   n491_var_α
#-----------------------------------------------------------------------------------------------------------------------
n491_var_α:             mov              r11, 276
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 888], rax;          jmp   n492_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n492_binop_α:           mov              r11, 277
                        mov              rdi, qword ptr [rsp + 3280]
                        mov              rsi, qword ptr [rsp + 3288]
                        mov              rdx, qword ptr [rsp + 3296]
                        mov              rcx, qword ptr [rsp + 3304]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n493_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n493_call_builtin_icon_α:
                        mov              r11, 278
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 824], rax
                        .section         .rodata
.Lrkfn729:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn729]
                        lea              rsi, [rsp + 816]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262258
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    n497_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n494_subscript_α
n493_call_builtin_icon_β:
                        mov              r11, 278;                            jmp   n497_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n494_subscript_α:       mov              r11, 279
                        mov              rdi, qword ptr [rsp + 784]
                        mov              rsi, qword ptr [rsp + 792]
                        mov              rdx, qword ptr [rsp + 800]
                        mov              rcx, qword ptr [rsp + 808]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n497_var_ref_α
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n495_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n495_lit_string_α:      mov              r11, 280
                        mov              qword ptr [rsp + 928], 2             # result
                        mov              dword ptr [rsp + 932], 1
                        mov              rax, qword ptr [rip + .Lx731_0]
                        mov              qword ptr [rsp + 936], rax;          jmp   n496_assign_var_α
.Lx731_0:               .quad            .Lx731_0_s
.Lx731_0_s:             .string          "X"
#-----------------------------------------------------------------------------------------------------------------------
n496_assign_var_α:      mov              r11, 281
                        mov              rdi, qword ptr [rsp + 896]
                        mov              rsi, qword ptr [rsp + 904]
                        mov              rdx, qword ptr [rsp + 928]
                        mov              rcx, qword ptr [rsp + 936]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n497_var_ref_α
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n497_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n497_var_ref_α:         mov              r11, 282
                        mov              rax, 4294967336
                        mov              rdx, 1879052304                      # dlists
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n498_var_α
#-----------------------------------------------------------------------------------------------------------------------
n498_var_α:             mov              r11, 283
                        mov              rax, qword ptr [rsp + 3280]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 3288]
                        mov              qword ptr [rsp + 728], rax;          jmp   n499_var_α
#-----------------------------------------------------------------------------------------------------------------------
n499_var_α:             mov              r11, 284
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 744], rax;          jmp   n500_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n500_binop_α:           mov              r11, 285
                        mov              rdi, qword ptr [rsp + 3280]
                        mov              rsi, qword ptr [rsp + 3288]
                        mov              rdx, qword ptr [rsp + 3296]
                        mov              rcx, qword ptr [rsp + 3304]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n501_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n501_call_builtin_icon_α:
                        mov              r11, 286
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 680], rax
                        .section         .rodata
.Lrkfn741:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn741]
                        lea              rsi, [rsp + 672]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262258
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              al, 104;                             je    n506_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n502_subscript_α
n501_call_builtin_icon_β:
                        mov              r11, 286;                            jmp   n506_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n502_subscript_α:       mov              r11, 287
                        mov              rdi, qword ptr [rsp + 640]
                        mov              rsi, qword ptr [rsp + 648]
                        mov              rdx, qword ptr [rsp + 656]
                        mov              rcx, qword ptr [rsp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n506_unmark_α
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n503_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n503_deref_α:           mov              r11, 288
                        mov              rdi, qword ptr [rsp + 752]
                        mov              rsi, qword ptr [rsp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n506_unmark_α
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n504_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n504_call_proc_staged_α:
                        mov              r11, 289
                        lea              rsi, [rsp + 768]
                        call             marklists_dcα;                       jmp   .Lx745_2
.Lx745_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx745_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
.Lx745_29:              mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n506_unmark_α
                                                                              jmp   n505_conjunction_α
n504_call_proc_staged_β:
                        mov              r11, 289;                            jmp   n506_unmark_α
.Lx745_0:               .quad            .Lx745_0_s
.Lx745_0_s:             .string          "marklists"
#-----------------------------------------------------------------------------------------------------------------------
n505_conjunction_α:     mov              r11, 290
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 584], rax;          jmp   n391_disjunction_as
n505_conjunction_β:     mov              r11, 290;                            jmp   n506_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n506_unmark_α:          mov              r11, 291
                        mov              rsp, qword ptr [rsp + 496];          jmp   n385_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n507_var_α:             mov              r11, 292
                        mov              rax, qword ptr [rsp + 3328]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 3336]
                        mov              qword ptr [rsp + 488], rax;          jmp   n508_iterate_α
n507_var_β:             mov              r11, 292;                            jmp   n385_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n508_iterate_α:         mov              r11, 293
                        mov              qword ptr [rsp + 464], 0
.Lx752_0:               mov              rdi, qword ptr [rsp + 480]
                        mov              rsi, qword ptr [rsp + 488]
                        mov              rdx, qword ptr [rsp + 464]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              rax, 104;                            je    n385_disjunction_af
                                                                              jmp   n509_assign_α
n508_iterate_β:         mov              r11, 293
                        inc              qword ptr [rsp + 464];               jmp   .Lx752_0
#-----------------------------------------------------------------------------------------------------------------------
n509_assign_α:          mov              r11, 294
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 3280], rax
                        mov              qword ptr [rsp + 3288], rdx;         jmp   n510_var_α
#-----------------------------------------------------------------------------------------------------------------------
n510_var_α:             mov              r11, 295
                        mov              rax, qword ptr [rsp + 3328]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 3336]
                        mov              qword ptr [rsp + 440], rax;          jmp   n511_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n511_iterate_α:         mov              r11, 296
                        mov              qword ptr [rsp + 416], 0
.Lx757_0:               mov              rdi, qword ptr [rsp + 432]
                        mov              rsi, qword ptr [rsp + 440]
                        mov              rdx, qword ptr [rsp + 416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              rax, 104;                            je    n508_iterate_β
                                                                              jmp   n512_assign_α
n511_iterate_β:         mov              r11, 296
                        inc              qword ptr [rsp + 416];               jmp   .Lx757_0
#-----------------------------------------------------------------------------------------------------------------------
n512_assign_α:          mov              r11, 297
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n513_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n513_conjunction_α:     mov              r11, 298
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 376], rax;          jmp   n385_disjunction_as
n513_conjunction_β:     mov              r11, 298;                            jmp   n385_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n514_var_α:             mov              r11, 299
                        mov              rax, qword ptr [rsp + 3312]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 3320]
                        mov              qword ptr [rsp + 360], rax;          jmp   n515_iterate_α
n514_var_β:             mov              r11, 299;                            jmp   n385_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n515_iterate_α:         mov              r11, 300
                        mov              qword ptr [rsp + 336], 0
.Lx763_0:               mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 336]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              rax, 104;                            je    n385_disjunction_af
                                                                              jmp   n516_assign_α
n515_iterate_β:         mov              r11, 300
                        inc              qword ptr [rsp + 336];               jmp   .Lx763_0
#-----------------------------------------------------------------------------------------------------------------------
n516_assign_α:          mov              r11, 301
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 3280], rax
                        mov              qword ptr [rsp + 3288], rdx;         jmp   n517_var_α
#-----------------------------------------------------------------------------------------------------------------------
n517_var_α:             mov              r11, 302
                        mov              rax, qword ptr [rsp + 3312]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 3320]
                        mov              qword ptr [rsp + 296], rax;          jmp   n518_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n518_iterate_α:         mov              r11, 303
                        mov              qword ptr [rsp + 272], 0
.Lx768_0:               mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              rax, 104;                            je    n515_iterate_β
                                                                              jmp   n519_assign_α
n518_iterate_β:         mov              r11, 303
                        inc              qword ptr [rsp + 272];               jmp   .Lx768_0
#-----------------------------------------------------------------------------------------------------------------------
n519_assign_α:          mov              r11, 304
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n520_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n520_conjunction_α:     mov              r11, 305
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 232], rax;          jmp   n385_disjunction_as
n520_conjunction_β:     mov              r11, 305;                            jmp   n385_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n521_var_α:             mov              r11, 306
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 104], rax;          jmp   n522_var_α
#-----------------------------------------------------------------------------------------------------------------------
n522_var_α:             mov              r11, 307
                        mov              rax, qword ptr [r9 + 0]              # distab
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 112], rax           # result
                        mov              qword ptr [rsp + 120], rdx;          jmp   n523_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n523_call_proc_staged_α:
                        mov              r11, 308
                        lea              rsi, [rsp + 96]
                        lea              rdx, [rsp + 112]
                        call             makemdfa_dcα;                        jmp   .Lx775_2
.Lx775_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx775_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
.Lx775_29:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    minimize_ω
                                                                              jmp   n524_return_α
n523_call_proc_staged_β:
                        mov              r11, 308;                            jmp   minimize_ω
.Lx775_0:               .quad            .Lx775_0_s
.Lx775_0_s:             .string          "makemdfa"
#-----------------------------------------------------------------------------------------------------------------------
n524_return_α:          mov              r11, 309
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   minimize_γ
#-----------------------------------------------------------------------------------------------------------------------
minimize_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
minimize_β:
                                                                              jmp   minimize_ω
#-----------------------------------------------------------------------------------------------------------------------
minimize_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 3512]
                        add              rsp, 3536;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
minimize_ω:
                        mov              rcx, qword ptr [rsp + 3520]
                        add              rsp, 3536;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
minimize_dcα:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx777_2]
                        lea              rdx, [rip + .Lx777_3];               jmp   FN__minimize
.Lx777_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx777_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__marklists:
                        sub              rsp, 512
                        mov              qword ptr [rsp + 488], rcx
                        mov              qword ptr [rsp + 496], rdx
                        mov              rdi, rsp
                        add              rdi, 416
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
marklists_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n778_disjunction_α:     mov              r11, 310
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              dword ptr [rsp + 368], 0;            jmp   n796_var_α
n778_disjunction_as:    mov              r11, 310
                        mov              eax, dword ptr [rsp + 368]
                        cmp              eax, 0;                              jne   .Lx800_0
                                                                              jmp   n779_var_α
.Lx800_0:                                                                     jmp   n779_var_α
n778_disjunction_β:     mov              r11, 310
                        mov              eax, dword ptr [rsp + 368];          jmp   n779_var_α
n778_disjunction_af:    mov              r11, 310
                        add              dword ptr [rsp + 368], 1
                        mov              eax, dword ptr [rsp + 368];          jmp   n779_var_α
#-----------------------------------------------------------------------------------------------------------------------
n779_var_α:             mov              r11, 311
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 88], rax;           jmp   n780_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n780_iterate_α:         mov              r11, 312
                        mov              qword ptr [rsp + 64], 0
.Lx804_0:               mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 64]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              rax, 104;                            je    n795_return_α
                                                                              jmp   n781_assign_α
n780_iterate_β:         mov              r11, 312
                        inc              qword ptr [rsp + 64];                jmp   .Lx804_0
#-----------------------------------------------------------------------------------------------------------------------
n781_assign_α:          mov              r11, 313
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n782_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n782_bound_α:           mov              r11, 314
                        mov              qword ptr [rsp + 96], rsp;           jmp   n783_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n783_var_ref_α:         mov              r11, 315
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # distab
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n784_var_α
#-----------------------------------------------------------------------------------------------------------------------
n784_var_α:             mov              r11, 316
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 296], rax;          jmp   n785_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n785_subscript_α:       mov              r11, 317
                        mov              rdi, qword ptr [rsp + 272]
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 288]
                        mov              rcx, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n788_var_ref_α
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n786_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n786_lit_string_α:      mov              r11, 318
                        mov              qword ptr [rsp + 336], 2             # result
                        mov              dword ptr [rsp + 340], 1
                        mov              rax, qword ptr [rip + .Lx813_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n787_assign_var_α
.Lx813_0:               .quad            .Lx813_0_s
.Lx813_0_s:             .string          "X"
#-----------------------------------------------------------------------------------------------------------------------
n787_assign_var_α:      mov              r11, 319
                        mov              rdi, qword ptr [rsp + 304]
                        mov              rsi, qword ptr [rsp + 312]
                        mov              rdx, qword ptr [rsp + 336]
                        mov              rcx, qword ptr [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n788_var_ref_α
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n788_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n788_var_ref_α:         mov              r11, 320
                        mov              rax, 4294967336
                        mov              rdx, 1879052304                      # dlists
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n789_var_α
#-----------------------------------------------------------------------------------------------------------------------
n789_var_α:             mov              r11, 321
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 232], rax;          jmp   n790_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n790_subscript_α:       mov              r11, 322
                        mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdx, qword ptr [rsp + 224]
                        mov              rcx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n794_unmark_α
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n791_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n791_deref_α:           mov              r11, 323
                        mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n794_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n792_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n792_call_proc_staged_α:
                        mov              r11, 324
                        lea              rsi, [rsp + 256]
                        call             marklists_dcα;                       jmp   .Lx822_2
.Lx822_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx822_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
.Lx822_29:              mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n794_unmark_α
                                                                              jmp   n793_conjunction_α
n792_call_proc_staged_β:
                        mov              r11, 324;                            jmp   n794_unmark_α
.Lx822_0:               .quad            .Lx822_0_s
.Lx822_0_s:             .string          "marklists"
#-----------------------------------------------------------------------------------------------------------------------
n793_conjunction_α:     mov              r11, 325
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 152], rax;          jmp   n794_unmark_α
n793_conjunction_β:     mov              r11, 325;                            jmp   n794_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n794_unmark_α:          mov              r11, 326
                        mov              rsp, qword ptr [rsp + 96];           jmp   n780_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n795_return_α:          mov              r11, 327
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   marklists_γ
#-----------------------------------------------------------------------------------------------------------------------
n796_var_α:             mov              r11, 328
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 408], rax;          jmp   n797_unop_test_α
n796_var_β:             mov              r11, 328;                            jmp   n778_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n797_unop_test_α:       mov              r11, 329
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 104;                             je    n778_disjunction_af
                        cmp              eax, 0;                              jne   n778_disjunction_af
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0;            jmp   n798_return_α
#-----------------------------------------------------------------------------------------------------------------------
n798_return_α:          mov              r11, 330
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   marklists_γ
#-----------------------------------------------------------------------------------------------------------------------
marklists_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
marklists_β:
                                                                              jmp   marklists_ω
#-----------------------------------------------------------------------------------------------------------------------
marklists_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 488]
                        add              rsp, 512;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
marklists_ω:
                        mov              rcx, qword ptr [rsp + 496]
                        add              rsp, 512;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
marklists_dcα:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx831_2]
                        lea              rdx, [rip + .Lx831_3];               jmp   FN__marklists
.Lx831_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx831_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__makemdfa:
                        sub              rsp, 3808
                        mov              qword ptr [rsp + 3784], rcx
                        mov              qword ptr [rsp + 3792], rdx
                        mov              rdi, rsp
                        add              rdi, 3408
                        xor              eax, eax
                        mov              ecx, 176
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 9
                        call             rt_icn_zframe_args_install@PLT
makemdfa_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n832_call_builtin_icon_α:
                        mov              r11, 331
                        .section         .rodata
.Lrkfn999:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn999]
                        lea              rsi, [rsp + 3392]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 3376], rax
                        mov              qword ptr [rsp + 3384], rdx
                        cmp              al, 104;                             je    n834_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n833_assign_α
n832_call_builtin_icon_β:
                        mov              r11, 331;                            jmp   n834_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n833_assign_α:          mov              r11, 332
                        mov              rax, qword ptr [rsp + 3376]
                        mov              rdx, qword ptr [rsp + 3384]
                        mov              qword ptr [rsp + 3520], rax
                        mov              qword ptr [rsp + 3528], rdx;         jmp   n834_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n834_lit_charset_α:     mov              r11, 333
                        mov              qword ptr [rsp + 3360], 2            # result
                        mov              dword ptr [rsp + 3364], -1
                        mov              rax, qword ptr [rip + .Lx1001_0]
                        mov              qword ptr [rsp + 3368], rax;         jmp   n835_assign_α
.Lx1001_0:              .quad            .Lx1001_0_s
.Lx1001_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n835_assign_α:          mov              r11, 334
                        mov              rax, qword ptr [rsp + 3360]
                        mov              rdx, qword ptr [rsp + 3368]
                        mov              qword ptr [rsp + 3568], rax
                        mov              qword ptr [rsp + 3576], rdx;         jmp   n836_var_α
#-----------------------------------------------------------------------------------------------------------------------
n836_var_α:             mov              r11, 335
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 2320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n837_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n837_field_get_α:       mov              r11, 336
                        mov              rdi, qword ptr [rip + .Lx1005_0]
                        mov              rsi, qword ptr [rsp + 2320]
                        mov              rdx, qword ptr [rsp + 2328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n888_make_list_α
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx;         jmp   n838_iterate_α
.Lx1005_0:              .quad            .Lx1005_0_s
.Lx1005_0_s:            .string          "Q"
#-----------------------------------------------------------------------------------------------------------------------
n838_iterate_α:         mov              r11, 337
                        mov              qword ptr [rsp + 2288], 0
.Lx1007_0:              mov              rdi, qword ptr [rsp + 2304]
                        mov              rsi, qword ptr [rsp + 2312]
                        mov              rdx, qword ptr [rsp + 2288]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx
                        cmp              rax, 104;                            je    n888_make_list_α
                                                                              jmp   n839_assign_α
n838_iterate_β:         mov              r11, 337
                        inc              qword ptr [rsp + 2288];              jmp   .Lx1007_0
#-----------------------------------------------------------------------------------------------------------------------
n839_assign_α:          mov              r11, 338
                        mov              rax, qword ptr [rsp + 2272]
                        mov              rdx, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 3536], rax
                        mov              qword ptr [rsp + 3544], rdx;         jmp   n840_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n840_bound_α:           mov              r11, 339
                        mov              qword ptr [rsp + 2336], rsp;         jmp   n841_var_α
#-----------------------------------------------------------------------------------------------------------------------
n841_var_α:             mov              r11, 340
                        mov              rax, qword ptr [rsp + 3568]
                        mov              qword ptr [rsp + 3328], rax
                        mov              rax, qword ptr [rsp + 3576]
                        mov              qword ptr [rsp + 3336], rax;         jmp   n842_var_α
#-----------------------------------------------------------------------------------------------------------------------
n842_var_α:             mov              r11, 341
                        mov              rax, qword ptr [rsp + 3536]
                        mov              qword ptr [rsp + 3344], rax
                        mov              rax, qword ptr [rsp + 3544]
                        mov              qword ptr [rsp + 3352], rax;         jmp   n843_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n843_binop_α:           mov              r11, 342
                        mov              rdi, qword ptr [rsp + 3568]
                        mov              rsi, qword ptr [rsp + 3576]
                        mov              rdx, qword ptr [rsp + 3536]
                        mov              rcx, qword ptr [rsp + 3544]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cunion@PLT
                        cmp              al, 104;                             je    n845_disjunction_α
                        mov              qword ptr [rsp + 3312], rax
                        mov              qword ptr [rsp + 3320], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n844_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n844_assign_α:          mov              r11, 343
                        mov              rax, qword ptr [rsp + 3312]
                        mov              rdx, qword ptr [rsp + 3320]
                        mov              qword ptr [rsp + 3568], rax
                        mov              qword ptr [rsp + 3576], rdx;         jmp   n845_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n845_disjunction_α:     mov              r11, 344
                        mov              qword ptr [rsp + 3120], 0
                        mov              qword ptr [rsp + 3128], 0
                        mov              dword ptr [rsp + 3136], 0;           jmp   n885_var_α
n845_disjunction_as:    mov              r11, 344
                        mov              eax, dword ptr [rsp + 3136]
                        cmp              eax, 0;                              jne   .Lx1018_0
                        mov              rax, qword ptr [rsp + 3152]
                        mov              qword ptr [rsp + 3120], rax
                        mov              rax, qword ptr [rsp + 3160]
                        mov              qword ptr [rsp + 3128], rax;         jmp   n846_assign_α
.Lx1018_0:              cmp              eax, 1;                              jne   .Lx1018_1
                        mov              rax, qword ptr [rsp + 3248]
                        mov              qword ptr [rsp + 3120], rax
                        mov              rax, qword ptr [rsp + 3256]
                        mov              qword ptr [rsp + 3128], rax;         jmp   n846_assign_α
.Lx1018_1:                                                                    jmp   n846_assign_α
n845_disjunction_β:     mov              r11, 344
                        mov              eax, dword ptr [rsp + 3136]
                        cmp              eax, 0;                              je    n845_disjunction_af
                                                                              jmp   n845_disjunction_af
n845_disjunction_af:    mov              r11, 344
                        add              dword ptr [rsp + 3136], 1
                        mov              eax, dword ptr [rsp + 3136]
                        cmp              eax, 1;                              je    n883_var_α
                                                                              jmp   n847_var_α
#-----------------------------------------------------------------------------------------------------------------------
n846_assign_α:          mov              r11, 345
                        mov              rax, qword ptr [rsp + 3120]
                        mov              rdx, qword ptr [rsp + 3128]
                        mov              qword ptr [rsp + 3552], rax
                        mov              qword ptr [rsp + 3560], rdx;         jmp   n847_var_α
#-----------------------------------------------------------------------------------------------------------------------
n847_var_α:             mov              r11, 346
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 2656], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 2664], rax;         jmp   n848_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n848_field_get_α:       mov              r11, 347
                        mov              rdi, qword ptr [rip + .Lx1022_0]
                        mov              rsi, qword ptr [rsp + 2656]
                        mov              rdx, qword ptr [rsp + 2664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n876_var_ref_α
                        mov              qword ptr [rsp + 2640], rax
                        mov              qword ptr [rsp + 2648], rdx;         jmp   n849_var_α
.Lx1022_0:              .quad            .Lx1022_0_s
.Lx1022_0_s:            .string          "Q"
#-----------------------------------------------------------------------------------------------------------------------
n849_var_α:             mov              r11, 348
                        mov              rax, qword ptr [rsp + 3568]
                        mov              qword ptr [rsp + 2672], rax
                        mov              rax, qword ptr [rsp + 3576]
                        mov              qword ptr [rsp + 2680], rax;         jmp   n850_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n850_call_proc_staged_α:
                        mov              r11, 349
                        lea              rsi, [rsp + 2640]
                        lea              rdx, [rsp + 2672]
                        call             diff_dcα;                            jmp   .Lx1026_2
.Lx1026_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1026_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2576]
                        mov              rdx, qword ptr [rsp + 2584]
.Lx1026_29:             mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx
                        cmp              al, 104;                             je    n876_var_ref_α
                                                                              jmp   n851_iterate_α
n850_call_proc_staged_β:
                        mov              r11, 349;                            jmp   n876_var_ref_α
.Lx1026_0:              .quad            .Lx1026_0_s
.Lx1026_0_s:            .string          "diff"
#-----------------------------------------------------------------------------------------------------------------------
n851_iterate_α:         mov              r11, 350
                        mov              qword ptr [rsp + 2560], 0
.Lx1028_0:              mov              rdi, qword ptr [rsp + 2576]
                        mov              rsi, qword ptr [rsp + 2584]
                        mov              rdx, qword ptr [rsp + 2560]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx
                        cmp              rax, 104;                            je    n876_var_ref_α
                                                                              jmp   n852_assign_α
n851_iterate_β:         mov              r11, 350
                        inc              qword ptr [rsp + 2560];              jmp   .Lx1028_0
#-----------------------------------------------------------------------------------------------------------------------
n852_assign_α:          mov              r11, 351
                        mov              rax, qword ptr [rsp + 2544]
                        mov              rdx, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 3456], rax
                        mov              qword ptr [rsp + 3464], rdx;         jmp   n853_var_α
#-----------------------------------------------------------------------------------------------------------------------
n853_var_α:             mov              r11, 352
                        mov              rax, qword ptr [rsp + 3536]
                        mov              qword ptr [rsp + 2512], rax
                        mov              rax, qword ptr [rsp + 3544]
                        mov              qword ptr [rsp + 2520], rax;         jmp   n854_var_α
#-----------------------------------------------------------------------------------------------------------------------
n854_var_α:             mov              r11, 353
                        mov              rax, qword ptr [rsp + 3456]
                        mov              qword ptr [rsp + 2528], rax
                        mov              rax, qword ptr [rsp + 3464]
                        mov              qword ptr [rsp + 2536], rax;         jmp   n855_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n855_binop_test_α:      mov              r11, 354
                        mov              rdi, qword ptr [rsp + 3536]
                        mov              rsi, qword ptr [rsp + 3544]
                        mov              rdx, qword ptr [rsp + 3456]
                        mov              rcx, qword ptr [rsp + 3464]
                        mov              r8d, 17
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n851_iterate_β
                        mov              rdi, qword ptr [rsp + 3456]
                        mov              rsi, qword ptr [rsp + 3464]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n856_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n856_conjunction_α:     mov              r11, 355
                        mov              rax, qword ptr [rsp + 2496]
                        mov              qword ptr [rsp + 2480], rax
                        mov              rax, qword ptr [rsp + 2504]
                        mov              qword ptr [rsp + 2488], rax;         jmp   n857_bound_α
n856_conjunction_β:     mov              r11, 355;                            jmp   n876_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n857_bound_α:           mov              r11, 356
                        mov              qword ptr [rsp + 2688], rsp;         jmp   n858_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n858_disjunction_α:     mov              r11, 357
                        mov              qword ptr [rsp + 2736], 0
                        mov              qword ptr [rsp + 2744], 0
                        mov              dword ptr [rsp + 2752], 0;           jmp   n859_var_ref_α
n858_disjunction_as:    mov              r11, 357
                        mov              eax, dword ptr [rsp + 2752]
                        cmp              eax, 0;                              jne   .Lx1039_0
                        mov              rax, qword ptr [rsp + 2768]
                        mov              qword ptr [rsp + 2736], rax
                        mov              rax, qword ptr [rsp + 2776]
                        mov              qword ptr [rsp + 2744], rax;         jmp   n875_unmark_α
.Lx1039_0:                                                                    jmp   n875_unmark_α
n858_disjunction_β:     mov              r11, 357
                        mov              eax, dword ptr [rsp + 2752];         jmp   n868_disjunction_β
n858_disjunction_af:    mov              r11, 357
                        add              dword ptr [rsp + 2752], 1
                        mov              eax, dword ptr [rsp + 2752];         jmp   n875_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n859_var_ref_α:         mov              r11, 358
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # distab
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx;         jmp   n860_var_α
n859_var_ref_β:         mov              r11, 358;                            jmp   n858_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n860_var_α:             mov              r11, 359
                        mov              rax, qword ptr [rsp + 3536]
                        mov              qword ptr [rsp + 3056], rax
                        mov              rax, qword ptr [rsp + 3544]
                        mov              qword ptr [rsp + 3064], rax;         jmp   n861_var_α
#-----------------------------------------------------------------------------------------------------------------------
n861_var_α:             mov              r11, 360
                        mov              rax, qword ptr [rsp + 3456]
                        mov              qword ptr [rsp + 3072], rax
                        mov              rax, qword ptr [rsp + 3464]
                        mov              qword ptr [rsp + 3080], rax;         jmp   n862_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n862_binop_α:           mov              r11, 361
                        mov              rdi, qword ptr [rsp + 3536]
                        mov              rsi, qword ptr [rsp + 3544]
                        mov              rdx, qword ptr [rsp + 3456]
                        mov              rcx, qword ptr [rsp + 3464]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 3040], rax
                        mov              qword ptr [rsp + 3048], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n863_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n863_call_builtin_icon_α:
                        mov              r11, 362
                        mov              rax, qword ptr [rsp + 3040]
                        mov              qword ptr [rsp + 3008], rax
                        mov              rax, qword ptr [rsp + 3048]
                        mov              qword ptr [rsp + 3016], rax
                        .section         .rodata
.Lrkfn1048:             .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1048]
                        lea              rsi, [rsp + 3008]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262258
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2992], rax
                        mov              qword ptr [rsp + 3000], rdx
                        cmp              al, 104;                             je    n858_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n864_subscript_α
n863_call_builtin_icon_β:
                        mov              r11, 362;                            jmp   n858_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n864_subscript_α:       mov              r11, 363
                        mov              rdi, qword ptr [rsp + 2976]
                        mov              rsi, qword ptr [rsp + 2984]
                        mov              rdx, qword ptr [rsp + 2992]
                        mov              rcx, qword ptr [rsp + 3000]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n858_disjunction_af
                        mov              qword ptr [rsp + 3088], rax
                        mov              qword ptr [rsp + 3096], rdx;         jmp   n865_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n865_deref_α:           mov              r11, 364
                        mov              rdi, qword ptr [rsp + 3088]
                        mov              rsi, qword ptr [rsp + 3096]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n858_disjunction_af
                        mov              qword ptr [rsp + 3104], rax
                        mov              qword ptr [rsp + 3112], rdx;         jmp   n866_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n866_unop_test_α:       mov              r11, 365
                        mov              eax, dword ptr [rsp + 3104]
                        cmp              al, 104;                             je    n858_disjunction_af
                        cmp              eax, 0;                              jne   n858_disjunction_af
                        mov              qword ptr [rsp + 2960], 0
                        mov              qword ptr [rsp + 2968], 0;           jmp   n867_var_α
#-----------------------------------------------------------------------------------------------------------------------
n867_var_α:             mov              r11, 366
                        mov              rax, qword ptr [rsp + 3552]
                        mov              qword ptr [rsp + 2800], rax
                        mov              rax, qword ptr [rsp + 3560]
                        mov              qword ptr [rsp + 2808], rax;         jmp   n868_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n868_disjunction_α:     mov              r11, 367
                        mov              qword ptr [rsp + 2816], 0
                        mov              qword ptr [rsp + 2824], 0
                        mov              dword ptr [rsp + 2832], 0;           jmp   n872_var_α
n868_disjunction_as:    mov              r11, 367
                        mov              eax, dword ptr [rsp + 2832]
                        cmp              eax, 0;                              jne   .Lx1055_0
                        mov              rax, qword ptr [rsp + 2848]
                        mov              qword ptr [rsp + 2816], rax
                        mov              rax, qword ptr [rsp + 2856]
                        mov              qword ptr [rsp + 2824], rax;         jmp   n869_binop_α
.Lx1055_0:              cmp              eax, 1;                              jne   .Lx1055_1
                        mov              rax, qword ptr [rsp + 3456]
                        mov              qword ptr [rsp + 2816], rax
                        mov              rax, qword ptr [rsp + 3464]
                        mov              qword ptr [rsp + 2824], rax;         jmp   n869_binop_α
.Lx1055_1:                                                                    jmp   n869_binop_α
n868_disjunction_β:     mov              r11, 367
                        mov              eax, dword ptr [rsp + 2832]
                        cmp              eax, 0;                              je    n868_disjunction_af
                                                                              jmp   n868_disjunction_af
n868_disjunction_af:    mov              r11, 367
                        add              dword ptr [rsp + 2832], 1
                        mov              eax, dword ptr [rsp + 2832]
                        cmp              eax, 1;                              je    n871_var_α
                                                                              jmp   n875_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n869_binop_α:           mov              r11, 368
                        mov              rdi, qword ptr [rsp + 3552]
                        mov              rsi, qword ptr [rsp + 3560]
                        mov              rdx, qword ptr [rsp + 2816]
                        mov              rcx, qword ptr [rsp + 2824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cunion@PLT
                        cmp              al, 104;                             je    n875_unmark_α
                        mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n870_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n870_assign_α:          mov              r11, 369
                        mov              rax, qword ptr [rsp + 2784]
                        mov              rdx, qword ptr [rsp + 2792]
                        mov              qword ptr [rsp + 3552], rax
                        mov              qword ptr [rsp + 3560], rdx
                        mov              qword ptr [rsp + 2768], rax
                        mov              qword ptr [rsp + 2776], rdx;         jmp   n858_disjunction_as
n870_assign_β:          mov              r11, 369;                            jmp   n875_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n871_var_α:             mov              r11, 370
                        mov              rax, qword ptr [rsp + 3456]
                        mov              qword ptr [rsp + 2944], rax
                        mov              rax, qword ptr [rsp + 3464]
                        mov              qword ptr [rsp + 2952], rax;         jmp   n868_disjunction_as
n871_var_β:             mov              r11, 370;                            jmp   n868_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n872_var_α:             mov              r11, 371
                        mov              rax, qword ptr [rsp + 3456]
                        mov              qword ptr [rsp + 2912], rax
                        mov              rax, qword ptr [rsp + 3464]
                        mov              qword ptr [rsp + 2920], rax;         jmp   n873_var_α
n872_var_β:             mov              r11, 371;                            jmp   n868_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n873_var_α:             mov              r11, 372
                        mov              rax, qword ptr [rsp + 3520]
                        mov              qword ptr [rsp + 2928], rax
                        mov              rax, qword ptr [rsp + 3528]
                        mov              qword ptr [rsp + 2936], rax;         jmp   n874_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n874_call_proc_staged_α:
                        mov              r11, 373
                        lea              rsi, [rsp + 2912]
                        lea              rdx, [rsp + 2928]
                        call             equiv_dcα;                           jmp   .Lx1065_2
.Lx1065_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1065_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2848], rax
                        mov              qword ptr [rsp + 2856], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2848]
                        mov              rdx, qword ptr [rsp + 2856]
.Lx1065_29:             mov              qword ptr [rsp + 2848], rax
                        mov              qword ptr [rsp + 2856], rdx
                        cmp              al, 104;                             je    n868_disjunction_af
                                                                              jmp   n868_disjunction_as
n874_call_proc_staged_β:
                        mov              r11, 373;                            jmp   n868_disjunction_af
.Lx1065_0:              .quad            .Lx1065_0_s
.Lx1065_0_s:            .string          "equiv"
#-----------------------------------------------------------------------------------------------------------------------
n875_unmark_α:          mov              r11, 374
                        mov              rsp, qword ptr [rsp + 2688];         jmp   n851_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n876_var_ref_α:         mov              r11, 375
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3520]
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx;         jmp   n877_var_α
#-----------------------------------------------------------------------------------------------------------------------
n877_var_α:             mov              r11, 376
                        mov              rax, qword ptr [rsp + 3552]
                        mov              qword ptr [rsp + 2416], rax
                        mov              rax, qword ptr [rsp + 3560]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n878_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n878_subscript_α:       mov              r11, 377
                        mov              rdi, qword ptr [rsp + 2400]
                        mov              rsi, qword ptr [rsp + 2408]
                        mov              rdx, qword ptr [rsp + 2416]
                        mov              rcx, qword ptr [rsp + 2424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n882_unmark_α
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx;         jmp   n879_var_α
#-----------------------------------------------------------------------------------------------------------------------
n879_var_α:             mov              r11, 378
                        mov              rax, qword ptr [rsp + 3552]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 3560]
                        mov              qword ptr [rsp + 2472], rax;         jmp   n880_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n880_assign_var_α:      mov              r11, 379
                        mov              rdi, qword ptr [rsp + 2432]
                        mov              rsi, qword ptr [rsp + 2440]
                        mov              rdx, qword ptr [rsp + 2464]
                        mov              rcx, qword ptr [rsp + 2472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n882_unmark_α
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx;         jmp   n881_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n881_conjunction_α:     mov              r11, 380
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 2392], rax;         jmp   n882_unmark_α
n881_conjunction_β:     mov              r11, 380;                            jmp   n882_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n882_unmark_α:          mov              r11, 381
                        mov              rsp, qword ptr [rsp + 2336];         jmp   n838_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n883_var_α:             mov              r11, 382
                        mov              rax, qword ptr [rsp + 3536]
                        mov              qword ptr [rsp + 3296], rax
                        mov              rax, qword ptr [rsp + 3544]
                        mov              qword ptr [rsp + 3304], rax;         jmp   n884_call_builtin_icon_α
n883_var_β:             mov              r11, 382;                            jmp   n845_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n884_call_builtin_icon_α:
                        mov              r11, 383
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 3264], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 3272], rax
                        .section         .rodata
.Lrkfn1082:             .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1082]
                        lea              rsi, [rsp + 3264]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262258
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 3248], rax
                        mov              qword ptr [rsp + 3256], rdx
                        cmp              al, 104;                             je    n845_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n845_disjunction_as
n884_call_builtin_icon_β:
                        mov              r11, 383;                            jmp   n845_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n885_var_α:             mov              r11, 384
                        mov              rax, qword ptr [rsp + 3536]
                        mov              qword ptr [rsp + 3216], rax
                        mov              rax, qword ptr [rsp + 3544]
                        mov              qword ptr [rsp + 3224], rax;         jmp   n886_var_α
n885_var_β:             mov              r11, 384;                            jmp   n845_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n886_var_α:             mov              r11, 385
                        mov              rax, qword ptr [rsp + 3520]
                        mov              qword ptr [rsp + 3232], rax
                        mov              rax, qword ptr [rsp + 3528]
                        mov              qword ptr [rsp + 3240], rax;         jmp   n887_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n887_call_proc_staged_α:
                        mov              r11, 386
                        lea              rsi, [rsp + 3216]
                        lea              rdx, [rsp + 3232]
                        call             equiv_dcα;                           jmp   .Lx1088_2
.Lx1088_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1088_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3152], rax
                        mov              qword ptr [rsp + 3160], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3152]
                        mov              rdx, qword ptr [rsp + 3160]
.Lx1088_29:             mov              qword ptr [rsp + 3152], rax
                        mov              qword ptr [rsp + 3160], rdx
                        cmp              al, 104;                             je    n845_disjunction_af
                                                                              jmp   n845_disjunction_as
n887_call_proc_staged_β:
                        mov              r11, 386;                            jmp   n845_disjunction_af
.Lx1088_0:              .quad            .Lx1088_0_s
.Lx1088_0_s:            .string          "equiv"
#-----------------------------------------------------------------------------------------------------------------------
n888_make_list_α:       mov              r11, 387
                        lea              rdi, [rsp + 2272]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx;         jmp   n889_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n889_assign_α:          mov              r11, 388
                        mov              rax, qword ptr [rsp + 2256]
                        mov              rdx, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 3472], rax
                        mov              qword ptr [rsp + 3480], rdx;         jmp   n890_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n890_make_list_α:       mov              r11, 389
                        lea              rdi, [rsp + 2256]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx;         jmp   n891_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n891_assign_α:          mov              r11, 390
                        mov              rax, qword ptr [rsp + 2240]
                        mov              rdx, qword ptr [rsp + 2248]
                        mov              qword ptr [rsp + 3408], rax
                        mov              qword ptr [rsp + 3416], rdx;         jmp   n892_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n892_call_builtin_icon_α:
                        mov              r11, 391
                        .section         .rodata
.Lrkfn1096:             .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1096]
                        lea              rsi, [rsp + 2224]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                        cmp              al, 104;                             je    n894_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n893_assign_α
n892_call_builtin_icon_β:
                        mov              r11, 391;                            jmp   n894_var_α
#-----------------------------------------------------------------------------------------------------------------------
n893_assign_α:          mov              r11, 392
                        mov              rax, qword ptr [rsp + 2208]
                        mov              rdx, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 3424], rax
                        mov              qword ptr [rsp + 3432], rdx;         jmp   n894_var_α
#-----------------------------------------------------------------------------------------------------------------------
n894_var_α:             mov              r11, 393
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n895_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n895_field_get_α:       mov              r11, 394
                        mov              rdi, qword ptr [rip + .Lx1100_0]
                        mov              rsi, qword ptr [rsp + 2176]
                        mov              rdx, qword ptr [rsp + 2184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n899_var_α
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx;         jmp   n896_var_α
.Lx1100_0:              .quad            .Lx1100_0_s
.Lx1100_0_s:            .string          "q0"
#-----------------------------------------------------------------------------------------------------------------------
n896_var_α:             mov              r11, 395
                        mov              rax, qword ptr [rsp + 3520]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 3528]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n897_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n897_call_proc_staged_α:
                        mov              r11, 396
                        lea              rsi, [rsp + 2160]
                        lea              rdx, [rsp + 2192]
                        call             equiv_dcα;                           jmp   .Lx1104_2
.Lx1104_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1104_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2096]
                        mov              rdx, qword ptr [rsp + 2104]
.Lx1104_29:             mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx
                        cmp              al, 104;                             je    n899_var_α
                                                                              jmp   n898_assign_α
n897_call_proc_staged_β:
                        mov              r11, 396;                            jmp   n899_var_α
.Lx1104_0:              .quad            .Lx1104_0_s
.Lx1104_0_s:            .string          "equiv"
#-----------------------------------------------------------------------------------------------------------------------
n898_assign_α:          mov              r11, 397
                        mov              rax, qword ptr [rsp + 2096]
                        mov              rdx, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 3440], rax
                        mov              qword ptr [rsp + 3448], rdx;         jmp   n899_var_α
#-----------------------------------------------------------------------------------------------------------------------
n899_var_α:             mov              r11, 398
                        mov              rax, qword ptr [rsp + 3472]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 3480]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n900_var_α
#-----------------------------------------------------------------------------------------------------------------------
n900_var_α:             mov              r11, 399
                        mov              rax, qword ptr [rsp + 3440]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 3448]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n901_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n901_call_builtin_icon_α:
                        mov              r11, 400
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 2040], rax
                        mov              rax, qword ptr [rsp + 2064]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 2024], rax
                        .section         .rodata
.Lrkfn1111:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1111]
                        lea              rsi, [rsp + 2016]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx
                        cmp              al, 104;                             je    n902_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n902_var_α
n901_call_builtin_icon_β:
                        mov              r11, 400;                            jmp   n902_var_α
#-----------------------------------------------------------------------------------------------------------------------
n902_var_α:             mov              r11, 401
                        mov              rax, qword ptr [rsp + 3408]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 3416]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n903_var_α
#-----------------------------------------------------------------------------------------------------------------------
n903_var_α:             mov              r11, 402
                        mov              rax, qword ptr [rsp + 3440]
                        mov              qword ptr [rsp + 1984], rax
                        mov              rax, qword ptr [rsp + 3448]
                        mov              qword ptr [rsp + 1992], rax;         jmp   n904_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n904_call_builtin_icon_α:
                        mov              r11, 403
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1936], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1944], rax
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 1928], rax
                        .section         .rodata
.Lrkfn1117:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1117]
                        lea              rsi, [rsp + 1920]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx
                        cmp              al, 104;                             je    n905_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n905_call_builtin_icon_α
n904_call_builtin_icon_β:
                        mov              r11, 403;                            jmp   n905_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n905_call_builtin_icon_α:
                        mov              r11, 404
                        .section         .rodata
.Lrkfn1119:             .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1119]
                        lea              rsi, [rsp + 1888]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx
                        cmp              al, 104;                             je    n907_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n906_assign_α
n905_call_builtin_icon_β:
                        mov              r11, 404;                            jmp   n907_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n906_assign_α:          mov              r11, 405
                        mov              rax, qword ptr [rsp + 1872]
                        mov              rdx, qword ptr [rsp + 1880]
                        mov              qword ptr [rsp + 3504], rax
                        mov              qword ptr [rsp + 3512], rdx;         jmp   n907_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n907_var_ref_α:         mov              r11, 406
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3504]
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx;         jmp   n908_var_α
#-----------------------------------------------------------------------------------------------------------------------
n908_var_α:             mov              r11, 407
                        mov              rax, qword ptr [rsp + 3440]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 3448]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n909_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n909_subscript_α:       mov              r11, 408
                        mov              rdi, qword ptr [rsp + 1792]
                        mov              rsi, qword ptr [rsp + 1800]
                        mov              rdx, qword ptr [rsp + 1808]
                        mov              rcx, qword ptr [rsp + 1816]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n912_var_α
                        mov              qword ptr [rsp + 1824], rax
                        mov              qword ptr [rsp + 1832], rdx;         jmp   n910_var_α
#-----------------------------------------------------------------------------------------------------------------------
n910_var_α:             mov              r11, 409
                        mov              rax, qword ptr [rsp + 3440]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 3448]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n911_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n911_assign_var_α:      mov              r11, 410
                        mov              rdi, qword ptr [rsp + 1824]
                        mov              rsi, qword ptr [rsp + 1832]
                        mov              rdx, qword ptr [rsp + 1856]
                        mov              rcx, qword ptr [rsp + 1864]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n912_var_α
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx;         jmp   n912_var_α
#-----------------------------------------------------------------------------------------------------------------------
n912_var_α:             mov              r11, 411
                        mov              rax, qword ptr [rsp + 3472]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 3480]
                        mov              qword ptr [rsp + 408], rax;          jmp   n913_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n913_call_builtin_icon_α:
                        mov              r11, 412
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax
                        .section         .rodata
.Lrkfn1132:             .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1132]
                        lea              rsi, [rsp + 368]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196728
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n988_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n914_assign_α
n913_call_builtin_icon_β:
                        mov              r11, 412;                            jmp   n988_var_α
#-----------------------------------------------------------------------------------------------------------------------
n914_assign_α:          mov              r11, 413
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 3456], rax
                        mov              qword ptr [rsp + 3464], rdx;         jmp   n915_var_α
#-----------------------------------------------------------------------------------------------------------------------
n915_var_α:             mov              r11, 414
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 472], rax;          jmp   n916_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n916_field_get_α:       mov              r11, 415
                        mov              rdi, qword ptr [rip + .Lx1136_0]
                        mov              rsi, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n912_var_α
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n917_iterate_α
.Lx1136_0:              .quad            .Lx1136_0_s
.Lx1136_0_s:            .string          "S"
#-----------------------------------------------------------------------------------------------------------------------
n917_iterate_α:         mov              r11, 416
                        mov              qword ptr [rsp + 432], 0
.Lx1138_0:              mov              rdi, qword ptr [rsp + 448]
                        mov              rsi, qword ptr [rsp + 456]
                        mov              rdx, qword ptr [rsp + 432]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              rax, 104;                            je    n912_var_α
                                                                              jmp   n918_assign_α
n917_iterate_β:         mov              r11, 416
                        inc              qword ptr [rsp + 432];               jmp   .Lx1138_0
#-----------------------------------------------------------------------------------------------------------------------
n918_assign_α:          mov              r11, 417
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 3488], rax
                        mov              qword ptr [rsp + 3496], rdx;         jmp   n919_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n919_bound_α:           mov              r11, 418
                        mov              qword ptr [rsp + 480], rsp;          jmp   n920_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n920_var_ref_α:         mov              r11, 419
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3424]
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx;         jmp   n921_var_α
#-----------------------------------------------------------------------------------------------------------------------
n921_var_α:             mov              r11, 420
                        mov              rax, qword ptr [rsp + 3456]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 3464]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n922_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n922_lit_string_α:      mov              r11, 421
                        mov              qword ptr [rsp + 1568], 2            # result
                        mov              dword ptr [rsp + 1572], 1
                        mov              rax, qword ptr [rip + .Lx1146_0]
                        mov              qword ptr [rsp + 1576], rax;         jmp   n923_binop_α
.Lx1146_0:              .quad            .Lx1146_0_s
.Lx1146_0_s:            .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n923_binop_α:           mov              r11, 422
                        mov              rdi, qword ptr [rsp + 3456]
                        mov              rsi, qword ptr [rsp + 3464]
                        mov              rdx, qword ptr [rsp + 1568]
                        mov              rcx, qword ptr [rsp + 1576]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n924_var_α
#-----------------------------------------------------------------------------------------------------------------------
n924_var_α:             mov              r11, 423
                        mov              rax, qword ptr [rsp + 3488]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 3496]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n925_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n925_binop_α:           mov              r11, 424
                        mov              rdi, qword ptr [rsp + 1536]
                        mov              rsi, qword ptr [rsp + 1544]
                        mov              rdx, qword ptr [rsp + 3488]
                        mov              rcx, qword ptr [rsp + 3496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n926_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n926_subscript_α:       mov              r11, 425
                        mov              rdi, qword ptr [rsp + 1504]
                        mov              rsi, qword ptr [rsp + 1512]
                        mov              rdx, qword ptr [rsp + 1520]
                        mov              rcx, qword ptr [rsp + 1528]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n933_disjunction_α
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx;         jmp   n927_var_α
#-----------------------------------------------------------------------------------------------------------------------
n927_var_α:             mov              r11, 426
                        mov              rax, qword ptr [rsp + 3456]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 3464]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n928_var_α
#-----------------------------------------------------------------------------------------------------------------------
n928_var_α:             mov              r11, 427
                        mov              rax, qword ptr [rsp + 3488]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 3496]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n929_var_α
#-----------------------------------------------------------------------------------------------------------------------
n929_var_α:             mov              r11, 428
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n930_var_α
#-----------------------------------------------------------------------------------------------------------------------
n930_var_α:             mov              r11, 429
                        mov              rax, qword ptr [rsp + 3520]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 3528]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n931_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n931_call_proc_staged_α:
                        mov              r11, 430
                        lea              rsi, [rsp + 1728]
                        lea              rdx, [rsp + 1744]
                        lea              rcx, [rsp + 1760]
                        lea              r8, [rsp + 1776]
                        call             equivdelta_dcα;                      jmp   .Lx1161_2
.Lx1161_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1161_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1632]
                        mov              rdx, qword ptr [rsp + 1640]
.Lx1161_29:             mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx
                        cmp              al, 104;                             je    n933_disjunction_α
                                                                              jmp   n932_assign_var_α
n931_call_proc_staged_β:
                        mov              r11, 430;                            jmp   n933_disjunction_α
.Lx1161_0:              .quad            .Lx1161_0_s
.Lx1161_0_s:            .string          "equivdelta"
#-----------------------------------------------------------------------------------------------------------------------
n932_assign_var_α:      mov              r11, 431
                        mov              rdi, qword ptr [rsp + 1600]
                        mov              rsi, qword ptr [rsp + 1608]
                        mov              rdx, qword ptr [rsp + 1632]
                        mov              rcx, qword ptr [rsp + 1640]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n933_disjunction_α
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx;         jmp   n933_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n933_disjunction_α:     mov              r11, 432
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              dword ptr [rsp + 560], 0;            jmp   n935_var_ref_α
n933_disjunction_as:    mov              r11, 432
                        mov              eax, dword ptr [rsp + 560]
                        cmp              eax, 0;                              jne   .Lx1164_0
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 552], rax;          jmp   n934_conjunction_α
.Lx1164_0:                                                                    jmp   n934_conjunction_α
n933_disjunction_β:     mov              r11, 432
                        mov              eax, dword ptr [rsp + 560];          jmp   n987_unmark_α
n933_disjunction_af:    mov              r11, 432
                        add              dword ptr [rsp + 560], 1
                        mov              eax, dword ptr [rsp + 560];          jmp   n987_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n934_conjunction_α:     mov              r11, 433
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 536], rax;          jmp   n987_unmark_α
n934_conjunction_β:     mov              r11, 433;                            jmp   n987_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n935_var_ref_α:         mov              r11, 434
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3504]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n936_var_ref_α
n935_var_ref_β:         mov              r11, 434;                            jmp   n933_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n936_var_ref_α:         mov              r11, 435
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3424]
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx;         jmp   n937_var_α
#-----------------------------------------------------------------------------------------------------------------------
n937_var_α:             mov              r11, 436
                        mov              rax, qword ptr [rsp + 3456]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 3464]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n938_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n938_lit_string_α:      mov              r11, 437
                        mov              qword ptr [rsp + 1408], 2            # result
                        mov              dword ptr [rsp + 1412], 1
                        mov              rax, qword ptr [rip + .Lx1172_0]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n939_binop_α
.Lx1172_0:              .quad            .Lx1172_0_s
.Lx1172_0_s:            .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n939_binop_α:           mov              r11, 438
                        mov              rdi, qword ptr [rsp + 3456]
                        mov              rsi, qword ptr [rsp + 3464]
                        mov              rdx, qword ptr [rsp + 1408]
                        mov              rcx, qword ptr [rsp + 1416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n940_var_α
#-----------------------------------------------------------------------------------------------------------------------
n940_var_α:             mov              r11, 439
                        mov              rax, qword ptr [rsp + 3488]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 3496]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n941_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n941_binop_α:           mov              r11, 440
                        mov              rdi, qword ptr [rsp + 1376]
                        mov              rsi, qword ptr [rsp + 1384]
                        mov              rdx, qword ptr [rsp + 3488]
                        mov              rcx, qword ptr [rsp + 3496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n942_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n942_subscript_α:       mov              r11, 441
                        mov              rdi, qword ptr [rsp + 1344]
                        mov              rsi, qword ptr [rsp + 1352]
                        mov              rdx, qword ptr [rsp + 1360]
                        mov              rcx, qword ptr [rsp + 1368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n933_disjunction_af
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx;         jmp   n943_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n943_deref_α:           mov              r11, 442
                        mov              rdi, qword ptr [rsp + 1440]
                        mov              rsi, qword ptr [rsp + 1448]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n933_disjunction_af
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx;         jmp   n944_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n944_subscript_α:       mov              r11, 443
                        mov              rdi, qword ptr [rsp + 1328]
                        mov              rsi, qword ptr [rsp + 1336]
                        mov              rdx, qword ptr [rsp + 1456]
                        mov              rcx, qword ptr [rsp + 1464]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n933_disjunction_af
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx;         jmp   n945_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n945_deref_α:           mov              r11, 444
                        mov              rdi, qword ptr [rsp + 1472]
                        mov              rsi, qword ptr [rsp + 1480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n933_disjunction_af
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx;         jmp   n946_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n946_unop_test_α:       mov              r11, 445
                        mov              eax, dword ptr [rsp + 1488]
                        cmp              al, 104;                             je    n933_disjunction_af
                        cmp              eax, 0;                              jne   n933_disjunction_af
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0;           jmp   n947_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n947_var_ref_α:         mov              r11, 446
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3504]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n948_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n948_var_ref_α:         mov              r11, 447
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3424]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n949_var_α
#-----------------------------------------------------------------------------------------------------------------------
n949_var_α:             mov              r11, 448
                        mov              rax, qword ptr [rsp + 3456]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 3464]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n950_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n950_lit_string_α:      mov              r11, 449
                        mov              qword ptr [rsp + 1088], 2            # result
                        mov              dword ptr [rsp + 1092], 1
                        mov              rax, qword ptr [rip + .Lx1188_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n951_binop_α
.Lx1188_0:              .quad            .Lx1188_0_s
.Lx1188_0_s:            .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n951_binop_α:           mov              r11, 450
                        mov              rdi, qword ptr [rsp + 3456]
                        mov              rsi, qword ptr [rsp + 3464]
                        mov              rdx, qword ptr [rsp + 1088]
                        mov              rcx, qword ptr [rsp + 1096]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n952_var_α
#-----------------------------------------------------------------------------------------------------------------------
n952_var_α:             mov              r11, 451
                        mov              rax, qword ptr [rsp + 3488]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 3496]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n953_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n953_binop_α:           mov              r11, 452
                        mov              rdi, qword ptr [rsp + 1056]
                        mov              rsi, qword ptr [rsp + 1064]
                        mov              rdx, qword ptr [rsp + 3488]
                        mov              rcx, qword ptr [rsp + 3496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n954_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n954_subscript_α:       mov              r11, 453
                        mov              rdi, qword ptr [rsp + 1024]
                        mov              rsi, qword ptr [rsp + 1032]
                        mov              rdx, qword ptr [rsp + 1040]
                        mov              rcx, qword ptr [rsp + 1048]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n966_var_α
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n955_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n955_deref_α:           mov              r11, 454
                        mov              rdi, qword ptr [rsp + 1120]
                        mov              rsi, qword ptr [rsp + 1128]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n966_var_α
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx;         jmp   n956_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n956_subscript_α:       mov              r11, 455
                        mov              rdi, qword ptr [rsp + 1008]
                        mov              rsi, qword ptr [rsp + 1016]
                        mov              rdx, qword ptr [rsp + 1136]
                        mov              rcx, qword ptr [rsp + 1144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n966_var_α
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n957_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n957_var_ref_α:         mov              r11, 456
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3424]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n958_var_α
#-----------------------------------------------------------------------------------------------------------------------
n958_var_α:             mov              r11, 457
                        mov              rax, qword ptr [rsp + 3456]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 3464]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n959_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n959_lit_string_α:      mov              r11, 458
                        mov              qword ptr [rsp + 1248], 2            # result
                        mov              dword ptr [rsp + 1252], 1
                        mov              rax, qword ptr [rip + .Lx1200_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n960_binop_α
.Lx1200_0:              .quad            .Lx1200_0_s
.Lx1200_0_s:            .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n960_binop_α:           mov              r11, 459
                        mov              rdi, qword ptr [rsp + 3456]
                        mov              rsi, qword ptr [rsp + 3464]
                        mov              rdx, qword ptr [rsp + 1248]
                        mov              rcx, qword ptr [rsp + 1256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n961_var_α
#-----------------------------------------------------------------------------------------------------------------------
n961_var_α:             mov              r11, 460
                        mov              rax, qword ptr [rsp + 3488]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 3496]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n962_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n962_binop_α:           mov              r11, 461
                        mov              rdi, qword ptr [rsp + 1216]
                        mov              rsi, qword ptr [rsp + 1224]
                        mov              rdx, qword ptr [rsp + 3488]
                        mov              rcx, qword ptr [rsp + 3496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n963_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n963_subscript_α:       mov              r11, 462
                        mov              rdi, qword ptr [rsp + 1184]
                        mov              rsi, qword ptr [rsp + 1192]
                        mov              rdx, qword ptr [rsp + 1200]
                        mov              rcx, qword ptr [rsp + 1208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n966_var_α
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx;         jmp   n964_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n964_deref_α:           mov              r11, 463
                        mov              rdi, qword ptr [rsp + 1280]
                        mov              rsi, qword ptr [rsp + 1288]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n966_var_α
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx;         jmp   n965_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n965_assign_var_α:      mov              r11, 464
                        mov              rdi, qword ptr [rsp + 1152]
                        mov              rsi, qword ptr [rsp + 1160]
                        mov              rdx, qword ptr [rsp + 1296]
                        mov              rcx, qword ptr [rsp + 1304]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n966_var_α
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n966_var_α
#-----------------------------------------------------------------------------------------------------------------------
n966_var_α:             mov              r11, 465
                        mov              rax, qword ptr [rsp + 3472]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 3480]
                        mov              qword ptr [rsp + 872], rax;          jmp   n967_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n967_var_ref_α:         mov              r11, 466
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3424]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n968_var_α
#-----------------------------------------------------------------------------------------------------------------------
n968_var_α:             mov              r11, 467
                        mov              rax, qword ptr [rsp + 3456]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 3464]
                        mov              qword ptr [rsp + 936], rax;          jmp   n969_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n969_lit_string_α:      mov              r11, 468
                        mov              qword ptr [rsp + 944], 2             # result
                        mov              dword ptr [rsp + 948], 1
                        mov              rax, qword ptr [rip + .Lx1214_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n970_binop_α
.Lx1214_0:              .quad            .Lx1214_0_s
.Lx1214_0_s:            .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n970_binop_α:           mov              r11, 469
                        mov              rdi, qword ptr [rsp + 3456]
                        mov              rsi, qword ptr [rsp + 3464]
                        mov              rdx, qword ptr [rsp + 944]
                        mov              rcx, qword ptr [rsp + 952]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n971_var_α
#-----------------------------------------------------------------------------------------------------------------------
n971_var_α:             mov              r11, 470
                        mov              rax, qword ptr [rsp + 3488]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 3496]
                        mov              qword ptr [rsp + 968], rax;          jmp   n972_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n972_binop_α:           mov              r11, 471
                        mov              rdi, qword ptr [rsp + 912]
                        mov              rsi, qword ptr [rsp + 920]
                        mov              rdx, qword ptr [rsp + 3488]
                        mov              rcx, qword ptr [rsp + 3496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n973_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n973_subscript_α:       mov              r11, 472
                        mov              rdi, qword ptr [rsp + 880]
                        mov              rsi, qword ptr [rsp + 888]
                        mov              rdx, qword ptr [rsp + 896]
                        mov              rcx, qword ptr [rsp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n976_var_α
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n974_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n974_deref_α:           mov              r11, 473
                        mov              rdi, qword ptr [rsp + 976]
                        mov              rsi, qword ptr [rsp + 984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n976_var_α
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx;         jmp   n975_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n975_call_builtin_icon_α:
                        mov              r11, 474
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 840], rax
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 824], rax
                        .section         .rodata
.Lrkfn1222:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1222]
                        lea              rsi, [rsp + 816]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    n976_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n976_var_α
n975_call_builtin_icon_β:
                        mov              r11, 474;                            jmp   n976_var_α
#-----------------------------------------------------------------------------------------------------------------------
n976_var_α:             mov              r11, 475
                        mov              rax, qword ptr [rsp + 3408]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 3416]
                        mov              qword ptr [rsp + 664], rax;          jmp   n977_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n977_var_ref_α:         mov              r11, 476
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3424]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n978_var_α
#-----------------------------------------------------------------------------------------------------------------------
n978_var_α:             mov              r11, 477
                        mov              rax, qword ptr [rsp + 3456]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 3464]
                        mov              qword ptr [rsp + 728], rax;          jmp   n979_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n979_lit_string_α:      mov              r11, 478
                        mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], 1
                        mov              rax, qword ptr [rip + .Lx1229_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n980_binop_α
.Lx1229_0:              .quad            .Lx1229_0_s
.Lx1229_0_s:            .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n980_binop_α:           mov              r11, 479
                        mov              rdi, qword ptr [rsp + 3456]
                        mov              rsi, qword ptr [rsp + 3464]
                        mov              rdx, qword ptr [rsp + 736]
                        mov              rcx, qword ptr [rsp + 744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n981_var_α
#-----------------------------------------------------------------------------------------------------------------------
n981_var_α:             mov              r11, 480
                        mov              rax, qword ptr [rsp + 3488]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 3496]
                        mov              qword ptr [rsp + 760], rax;          jmp   n982_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n982_binop_α:           mov              r11, 481
                        mov              rdi, qword ptr [rsp + 704]
                        mov              rsi, qword ptr [rsp + 712]
                        mov              rdx, qword ptr [rsp + 3488]
                        mov              rcx, qword ptr [rsp + 3496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n983_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n983_subscript_α:       mov              r11, 482
                        mov              rdi, qword ptr [rsp + 672]
                        mov              rsi, qword ptr [rsp + 680]
                        mov              rdx, qword ptr [rsp + 688]
                        mov              rcx, qword ptr [rsp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n987_unmark_α
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n984_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n984_deref_α:           mov              r11, 483
                        mov              rdi, qword ptr [rsp + 768]
                        mov              rsi, qword ptr [rsp + 776]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n987_unmark_α
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n985_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n985_call_builtin_icon_α:
                        mov              r11, 484
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 616], rax
                        .section         .rodata
.Lrkfn1237:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1237]
                        lea              rsi, [rsp + 608]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n987_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n986_conjunction_α
n985_call_builtin_icon_β:
                        mov              r11, 484;                            jmp   n987_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n986_conjunction_α:     mov              r11, 485
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 584], rax;          jmp   n933_disjunction_as
n986_conjunction_β:     mov              r11, 485;                            jmp   n987_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n987_unmark_α:          mov              r11, 486
                        mov              rsp, qword ptr [rsp + 480];          jmp   n917_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n988_var_α:             mov              r11, 487
                        mov              rax, qword ptr [rsp + 3408]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 3416]
                        mov              qword ptr [rsp + 168], rax;          jmp   n989_var_α
#-----------------------------------------------------------------------------------------------------------------------
n989_var_α:             mov              r11, 488
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 200], rax;          jmp   n990_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n990_field_get_α:       mov              r11, 489
                        mov              rdi, qword ptr [rip + .Lx1245_0]
                        mov              rsi, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    makemdfa_ω
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n991_var_α
.Lx1245_0:              .quad            .Lx1245_0_s
.Lx1245_0_s:            .string          "S"
#-----------------------------------------------------------------------------------------------------------------------
n991_var_α:             mov              r11, 490
                        mov              rax, qword ptr [rsp + 3424]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 3432]
                        mov              qword ptr [rsp + 216], rax;          jmp   n992_var_α
#-----------------------------------------------------------------------------------------------------------------------
n992_var_α:             mov              r11, 491
                        mov              rax, qword ptr [rsp + 3440]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 3448]
                        mov              qword ptr [rsp + 232], rax;          jmp   n993_var_α
#-----------------------------------------------------------------------------------------------------------------------
n993_var_α:             mov              r11, 492
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 312], rax;          jmp   n994_var_α
#-----------------------------------------------------------------------------------------------------------------------
n994_var_α:             mov              r11, 493
                        mov              rax, qword ptr [rsp + 3408]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 3416]
                        mov              qword ptr [rsp + 328], rax;          jmp   n995_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n995_call_proc_staged_α:
                        mov              r11, 494
                        lea              rsi, [rsp + 304]
                        lea              rdx, [rsp + 320]
                        call             finalstates_dcα;                     jmp   .Lx1255_2
.Lx1255_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1255_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
.Lx1255_29:             mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    makemdfa_ω
                                                                              jmp   n996_call_α
n995_call_proc_staged_β:
                        mov              r11, 494;                            jmp   makemdfa_ω
.Lx1255_0:              .quad            .Lx1255_0_s
.Lx1255_0_s:            .string          "finalstates"
#-----------------------------------------------------------------------------------------------------------------------
n996_call_α:            mov              r11, 495
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn1257:             .string          "dfa"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1257]
                        lea              rsi, [rsp + 64]
                        mov              edx, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196608
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    makemdfa_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n997_return_α
n996_call_β:            mov              r11, 495;                            jmp   makemdfa_ω
#-----------------------------------------------------------------------------------------------------------------------
n997_return_α:          mov              r11, 496
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   makemdfa_γ
#-----------------------------------------------------------------------------------------------------------------------
makemdfa_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
makemdfa_β:
                                                                              jmp   makemdfa_ω
#-----------------------------------------------------------------------------------------------------------------------
makemdfa_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 3784]
                        add              rsp, 3808;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
makemdfa_ω:
                        mov              rcx, qword ptr [rsp + 3792]
                        add              rsp, 3808;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
makemdfa_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             rdx
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx1259_2]
                        lea              rdx, [rip + .Lx1259_3];              jmp   FN__makemdfa
.Lx1259_2:              pop              r12
                        pop              r12;                                 jmp   r12
.Lx1259_3:              pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__equiv:
                        sub              rsp, 384
                        mov              qword ptr [rsp + 360], rcx
                        mov              qword ptr [rsp + 368], rdx
                        mov              rdi, rsp
                        add              rdi, 288
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
equiv_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1260_var_α:            mov              r11, 497
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 104], rax;          jmp   n1261_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n1261_iterate_α:        mov              r11, 498
                        mov              qword ptr [rsp + 80], 0
.Lx1276_0:              mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              rax, 104;                            je    equiv_ω
                                                                              jmp   n1262_assign_α
n1261_iterate_β:        mov              r11, 498
                        inc              qword ptr [rsp + 80];                jmp   .Lx1276_0
#-----------------------------------------------------------------------------------------------------------------------
n1262_assign_α:         mov              r11, 499
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n1263_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n1263_bound_α:          mov              r11, 500
                        mov              qword ptr [rsp + 112], rsp;          jmp   n1264_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1264_disjunction_α:    mov              r11, 501
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              dword ptr [rsp + 176], 0;            jmp   n1266_var_α
n1264_disjunction_as:   mov              r11, 501
                        mov              eax, dword ptr [rsp + 176]
                        cmp              eax, 0;                              jne   .Lx1281_0
                                                                              jmp   n1265_unmark_α
.Lx1281_0:                                                                    jmp   n1265_unmark_α
n1264_disjunction_β:    mov              r11, 501
                        mov              eax, dword ptr [rsp + 176];          jmp   n1265_unmark_α
n1264_disjunction_af:   mov              r11, 501
                        add              dword ptr [rsp + 176], 1
                        mov              eax, dword ptr [rsp + 176];          jmp   n1265_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n1265_unmark_α:         mov              r11, 502
                        mov              rsp, qword ptr [rsp + 112];          jmp   n1261_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1266_var_α:            mov              r11, 503
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 248], rax;          jmp   n1267_var_α
n1266_var_β:            mov              r11, 503;                            jmp   n1264_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1267_var_α:            mov              r11, 504
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 264], rax;          jmp   n1268_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1268_binop_α:          mov              r11, 505
                        mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cunion@PLT
                        cmp              al, 104;                             je    n1264_disjunction_af
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1269_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1269_var_α:            mov              r11, 506
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 280], rax;          jmp   n1270_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n1270_binop_test_α:     mov              r11, 507
                        mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 288]
                        mov              rcx, qword ptr [rsp + 296]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n1264_disjunction_af
                        mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1271_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1271_var_α:            mov              r11, 508
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 200], rax;          jmp   n1272_return_α
#-----------------------------------------------------------------------------------------------------------------------
n1272_return_α:         mov              r11, 509
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   equiv_γ
#-----------------------------------------------------------------------------------------------------------------------
equiv_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
equiv_β:
                                                                              jmp   equiv_ω
#-----------------------------------------------------------------------------------------------------------------------
equiv_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 360]
                        add              rsp, 384;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
equiv_ω:
                        mov              rcx, qword ptr [rsp + 368]
                        add              rsp, 384;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
equiv_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             rdx
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx1295_2]
                        lea              rdx, [rip + .Lx1295_3];              jmp   FN__equiv
.Lx1295_2:              pop              r12
                        pop              r12;                                 jmp   r12
.Lx1295_3:              pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__equivdelta:
                        sub              rsp, 560
                        mov              qword ptr [rsp + 536], rcx
                        mov              qword ptr [rsp + 544], rdx
                        mov              rdi, rsp
                        add              rdi, 384
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 4
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
equivdelta_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1296_var_α:            mov              r11, 510
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 376], rax;          jmp   n1297_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n1297_iterate_α:        mov              r11, 511
                        mov              qword ptr [rsp + 352], 0
.Lx1316_0:              mov              rdi, qword ptr [rsp + 368]
                        mov              rsi, qword ptr [rsp + 376]
                        mov              rdx, qword ptr [rsp + 352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              rax, 104;                            je    n1299_var_α
                                                                              jmp   n1298_assign_α
n1297_iterate_β:        mov              r11, 511
                        inc              qword ptr [rsp + 352];               jmp   .Lx1316_0
#-----------------------------------------------------------------------------------------------------------------------
n1298_assign_α:         mov              r11, 512
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n1299_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1299_var_α:            mov              r11, 513
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 216], rax;          jmp   n1300_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n1300_field_get_α:      mov              r11, 514
                        mov              rdi, qword ptr [rip + .Lx1320_0]
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n1309_var_α
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n1301_var_α
.Lx1320_0:              .quad            .Lx1320_0_s
.Lx1320_0_s:            .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n1301_var_α:            mov              r11, 515
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 264], rax;          jmp   n1302_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1302_lit_string_α:     mov              r11, 516
                        mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 1
                        mov              rax, qword ptr [rip + .Lx1323_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n1303_binop_α
.Lx1323_0:              .quad            .Lx1323_0_s
.Lx1323_0_s:            .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n1303_binop_α:          mov              r11, 517
                        mov              rdi, qword ptr [rsp + 400]
                        mov              rsi, qword ptr [rsp + 408]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              rcx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1304_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1304_var_α:            mov              r11, 518
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 296], rax;          jmp   n1305_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1305_binop_α:          mov              r11, 519
                        mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1306_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n1306_subscript_α:      mov              r11, 520
                        mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdx, qword ptr [rsp + 224]
                        mov              rcx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n1309_var_α
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n1307_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n1307_deref_α:          mov              r11, 521
                        mov              rdi, qword ptr [rsp + 304]
                        mov              rsi, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n1309_var_α
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n1308_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1308_assign_α:         mov              r11, 522
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n1309_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1309_var_α:            mov              r11, 523
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 152], rax;          jmp   n1310_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1310_var_α:            mov              r11, 524
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 168], rax;          jmp   n1311_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1311_call_proc_staged_α:
                        mov              r11, 525
                        lea              rsi, [rsp + 144]
                        lea              rdx, [rsp + 160]
                        call             equiv_dcα;                           jmp   .Lx1336_2
.Lx1336_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1336_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx1336_29:             mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    equivdelta_ω
                                                                              jmp   n1312_return_α
n1311_call_proc_staged_β:
                        mov              r11, 525;                            jmp   equivdelta_ω
.Lx1336_0:              .quad            .Lx1336_0_s
.Lx1336_0_s:            .string          "equiv"
#-----------------------------------------------------------------------------------------------------------------------
n1312_return_α:         mov              r11, 526
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   equivdelta_γ
#-----------------------------------------------------------------------------------------------------------------------
equivdelta_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
equivdelta_β:
                                                                              jmp   equivdelta_ω
#-----------------------------------------------------------------------------------------------------------------------
equivdelta_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 536]
                        add              rsp, 560;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
equivdelta_ω:
                        mov              rcx, qword ptr [rsp + 544]
                        add              rsp, 560;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
equivdelta_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             r8
                        push             rcx
                        push             rdx
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 16]
                        mov              edi, 2
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 24]
                        mov              edi, 3
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        lea              rcx, [rip + .Lx1338_2]
                        lea              rdx, [rip + .Lx1338_3];              jmp   FN__equivdelta
.Lx1338_2:              pop              r12
                        pop              r12;                                 jmp   r12
.Lx1338_3:              pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__finalstates:
                        sub              rsp, 832
                        mov              qword ptr [rsp + 808], rcx
                        mov              qword ptr [rsp + 816], rdx
                        mov              rdi, rsp
                        add              rdi, 640
                        xor              eax, eax
                        mov              ecx, 64
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
finalstates_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1339_call_builtin_icon_α:
                        mov              r11, 527
                        .section         .rodata
.Lrkfn1368:             .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1368]
                        lea              rsi, [rsp + 624]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n1341_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1340_assign_α
n1339_call_builtin_icon_β:
                        mov              r11, 527;                            jmp   n1341_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1340_assign_α:         mov              r11, 528
                        mov              rax, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n1341_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1341_var_α:            mov              r11, 529
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 376], rax;          jmp   n1342_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n1342_field_get_α:      mov              r11, 530
                        mov              rdi, qword ptr [rip + .Lx1372_0]
                        mov              rsi, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n1355_make_list_α
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n1343_iterate_α
.Lx1372_0:              .quad            .Lx1372_0_s
.Lx1372_0_s:            .string          "F"
#-----------------------------------------------------------------------------------------------------------------------
n1343_iterate_α:        mov              r11, 531
                        mov              qword ptr [rsp + 336], 0
.Lx1374_0:              mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 336]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              rax, 104;                            je    n1355_make_list_α
                                                                              jmp   n1344_assign_α
n1343_iterate_β:        mov              r11, 531
                        inc              qword ptr [rsp + 336];               jmp   .Lx1374_0
#-----------------------------------------------------------------------------------------------------------------------
n1344_assign_α:         mov              r11, 532
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n1345_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n1345_bound_α:          mov              r11, 533
                        mov              qword ptr [rsp + 384], rsp;          jmp   n1346_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1346_var_ref_α:        mov              r11, 534
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 656]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n1347_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1347_var_α:            mov              r11, 535
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 536], rax;          jmp   n1348_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1348_var_α:            mov              r11, 536
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 552], rax;          jmp   n1349_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1349_call_proc_staged_α:
                        mov              r11, 537
                        lea              rsi, [rsp + 528]
                        lea              rdx, [rsp + 544]
                        call             equiv_dcα;                           jmp   .Lx1385_2
.Lx1385_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1385_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
.Lx1385_29:             mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n1354_unmark_α
                                                                              jmp   n1350_assign_α
n1349_call_proc_staged_β:
                        mov              r11, 537;                            jmp   n1354_unmark_α
.Lx1385_0:              .quad            .Lx1385_0_s
.Lx1385_0_s:            .string          "equiv"
#-----------------------------------------------------------------------------------------------------------------------
n1350_assign_α:         mov              r11, 538
                        mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n1351_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n1351_subscript_α:      mov              r11, 539
                        mov              rdi, qword ptr [rsp + 432]
                        mov              rsi, qword ptr [rsp + 440]
                        mov              rdx, qword ptr [rsp + 448]
                        mov              rcx, qword ptr [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n1354_unmark_α
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n1352_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1352_var_α:            mov              r11, 540
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 600], rax;          jmp   n1353_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1353_assign_var_α:     mov              r11, 541
                        mov              rdi, qword ptr [rsp + 560]
                        mov              rsi, qword ptr [rsp + 568]
                        mov              rdx, qword ptr [rsp + 592]
                        mov              rcx, qword ptr [rsp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n1354_unmark_α
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n1354_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n1354_unmark_α:         mov              r11, 542
                        mov              rsp, qword ptr [rsp + 384];          jmp   n1343_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1355_make_list_α:      mov              r11, 543
                        lea              rdi, [rsp + 320]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n1356_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1356_assign_α:         mov              r11, 544
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n1357_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1357_var_α:            mov              r11, 545
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 136], rax;          jmp   n1358_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1358_var_α:            mov              r11, 546
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 232], rax;          jmp   n1359_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1359_call_builtin_icon_α:
                        mov              r11, 547
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn1401:             .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1401]
                        lea              rsi, [rsp + 192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n1365_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1360_iterate_α
n1359_call_builtin_icon_β:
                        mov              r11, 547;                            jmp   n1365_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1360_iterate_α:        mov              r11, 548
                        mov              qword ptr [rsp + 160], 0
.Lx1403_0:              mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        mov              rdx, qword ptr [rsp + 160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              rax, 104;                            je    n1365_var_α
                                                                              jmp   n1361_lit_integer_α
n1360_iterate_β:        mov              r11, 548
                        inc              qword ptr [rsp + 160];               jmp   .Lx1403_0
#-----------------------------------------------------------------------------------------------------------------------
n1361_lit_integer_α:    mov              r11, 549
                        mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lx1404_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n1362_subscript_α
.Lx1404_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1362_subscript_α:      mov              r11, 550
                        mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n1360_iterate_β
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n1363_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n1363_deref_α:          mov              r11, 551
                        mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n1360_iterate_β
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n1364_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1364_call_builtin_icon_α:
                        mov              r11, 552
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 88], rax
                        .section         .rodata
.Lrkfn1408:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1408]
                        lea              rsi, [rsp + 80]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    n1360_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1360_iterate_β
n1364_call_builtin_icon_β:
                        mov              r11, 552;                            jmp   n1360_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1365_var_α:            mov              r11, 553
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 56], rax;           jmp   n1366_return_α
#-----------------------------------------------------------------------------------------------------------------------
n1366_return_α:         mov              r11, 554
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   finalstates_γ
#-----------------------------------------------------------------------------------------------------------------------
finalstates_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
finalstates_β:
                                                                              jmp   finalstates_ω
#-----------------------------------------------------------------------------------------------------------------------
finalstates_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 808]
                        add              rsp, 832;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
finalstates_ω:
                        mov              rcx, qword ptr [rsp + 816]
                        add              rsp, 832;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
finalstates_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             rdx
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx1412_2]
                        lea              rdx, [rip + .Lx1412_3];              jmp   FN__finalstates
.Lx1412_2:              pop              r12
                        pop              r12;                                 jmp   r12
.Lx1412_3:              pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__diff:
                        sub              rsp, 720
                        mov              qword ptr [rsp + 696], rcx
                        mov              qword ptr [rsp + 704], rdx
                        mov              rdi, rsp
                        add              rdi, 544
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
diff_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1413_lit_charset_α:    mov              r11, 555
                        mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], -1
                        mov              rax, qword ptr [rip + .Lx1442_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n1414_assign_α
.Lx1442_0:              .quad            .Lx1442_0_s
.Lx1442_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n1414_assign_α:         mov              r11, 556
                        mov              rax, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n1415_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1415_var_α:            mov              r11, 557
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 472], rax;          jmp   n1416_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1416_var_α:            mov              r11, 558
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 520], rax;          jmp   n1417_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n1417_iterate_α:        mov              r11, 559
                        mov              qword ptr [rsp + 496], 0
.Lx1449_0:              mov              rdi, qword ptr [rsp + 512]
                        mov              rsi, qword ptr [rsp + 520]
                        mov              rdx, qword ptr [rsp + 496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              rax, 104;                            je    n1420_lit_charset_α
                                                                              jmp   n1418_binop_α
n1417_iterate_β:        mov              r11, 559
                        inc              qword ptr [rsp + 496];               jmp   .Lx1449_0
#-----------------------------------------------------------------------------------------------------------------------
n1418_binop_α:          mov              r11, 560
                        mov              rdi, qword ptr [rsp + 560]
                        mov              rsi, qword ptr [rsp + 568]
                        mov              rdx, qword ptr [rsp + 480]
                        mov              rcx, qword ptr [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cunion@PLT
                        cmp              al, 104;                             je    n1420_lit_charset_α
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1419_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1419_assign_α:         mov              r11, 561
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n1417_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1420_lit_charset_α:    mov              r11, 562
                        mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], -1
                        mov              rax, qword ptr [rip + .Lx1452_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n1421_assign_α
.Lx1452_0:              .quad            .Lx1452_0_s
.Lx1452_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n1421_assign_α:         mov              r11, 563
                        mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n1422_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1422_var_α:            mov              r11, 564
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 376], rax;          jmp   n1423_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1423_var_α:            mov              r11, 565
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 424], rax;          jmp   n1424_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n1424_iterate_α:        mov              r11, 566
                        mov              qword ptr [rsp + 400], 0
.Lx1459_0:              mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              rax, 104;                            je    n1427_make_list_α
                                                                              jmp   n1425_binop_α
n1424_iterate_β:        mov              r11, 566
                        inc              qword ptr [rsp + 400];               jmp   .Lx1459_0
#-----------------------------------------------------------------------------------------------------------------------
n1425_binop_α:          mov              r11, 567
                        mov              rdi, qword ptr [rsp + 576]
                        mov              rsi, qword ptr [rsp + 584]
                        mov              rdx, qword ptr [rsp + 384]
                        mov              rcx, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cunion@PLT
                        cmp              al, 104;                             je    n1427_make_list_α
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1426_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1426_assign_α:         mov              r11, 568
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n1424_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1427_make_list_α:      mov              r11, 569
                        lea              rdi, [rsp + 352]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n1428_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1428_assign_α:         mov              r11, 570
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n1429_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1429_var_α:            mov              r11, 571
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 232], rax;          jmp   n1430_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1430_var_α:            mov              r11, 572
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 296], rax;          jmp   n1431_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1431_var_α:            mov              r11, 573
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 312], rax;          jmp   n1432_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1432_binop_α:          mov              r11, 574
                        mov              rdi, qword ptr [rsp + 560]
                        mov              rsi, qword ptr [rsp + 568]
                        mov              rdx, qword ptr [rsp + 576]
                        mov              rcx, qword ptr [rsp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cdiff@PLT
                        cmp              al, 104;                             je    n1435_disjunction_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1433_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n1433_iterate_α:        mov              r11, 575
                        mov              qword ptr [rsp + 256], 0
.Lx1473_0:              mov              rdi, qword ptr [rsp + 272]
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              rax, 104;                            je    n1435_disjunction_α
                                                                              jmp   n1434_call_builtin_icon_α
n1433_iterate_β:        mov              r11, 575
                        inc              qword ptr [rsp + 256];               jmp   .Lx1473_0
#-----------------------------------------------------------------------------------------------------------------------
n1434_call_builtin_icon_α:
                        mov              r11, 576
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lrkfn1475:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1475]
                        lea              rsi, [rsp + 176]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n1433_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1433_iterate_β
n1434_call_builtin_icon_β:
                        mov              r11, 576;                            jmp   n1433_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1435_disjunction_α:    mov              r11, 577
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              dword ptr [rsp + 80], 0;             jmp   n1438_var_α
n1435_disjunction_as:   mov              r11, 577
                        mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 0;                              jne   .Lx1477_0
                                                                              jmp   n1436_var_α
.Lx1477_0:                                                                    jmp   n1436_var_α
n1435_disjunction_β:    mov              r11, 577
                        mov              eax, dword ptr [rsp + 80];           jmp   n1436_var_α
n1435_disjunction_af:   mov              r11, 577
                        add              dword ptr [rsp + 80], 1
                        mov              eax, dword ptr [rsp + 80];           jmp   n1436_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1436_var_α:            mov              r11, 578
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 56], rax;           jmp   n1437_return_α
#-----------------------------------------------------------------------------------------------------------------------
n1437_return_α:         mov              r11, 579
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   diff_γ
#-----------------------------------------------------------------------------------------------------------------------
n1438_var_α:            mov              r11, 580
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 136], rax;          jmp   n1439_unop_α
n1438_var_β:            mov              r11, 580;                            jmp   n1435_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1439_unop_α:           mov              r11, 581
                        mov              rdi, qword ptr [rsp + 544]
                        mov              rsi, qword ptr [rsp + 552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx;          jmp   n1440_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1440_lit_integer_α:    mov              r11, 582
                        mov              qword ptr [rsp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Lx1484_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n1441_binop_test_α
.Lx1484_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1441_binop_test_α:     mov              r11, 583
                        mov              eax, dword ptr [rsp + 112]
                        cmp              al, 112;                             je    .Lx1485_0
                        mov              eax, dword ptr [rsp + 144]
                        cmp              al, 112;                             je    .Lx1485_0
                        mov              eax, dword ptr [rsp + 112]
                        cmp              al, 3;                               jne   .Lx1485_2
                        mov              eax, dword ptr [rsp + 144]
                        cmp              al, 3;                               jne   .Lx1485_2
.Lx1485_1:              mov              rax, qword ptr [rsp + 120]
                        mov              rcx, qword ptr [rsp + 152]
                        cmp              rax, rcx;                            jne   n1435_disjunction_af
                        mov              rcx, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 96], rcx
                        mov              rcx, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 104], rcx;          jmp   diff_ω
.Lx1485_0:              mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 144]
                        mov              rcx, qword ptr [rsp + 152]
                        mov              r8d, 9
                        lea              r9, [rsp + 96]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx1485_1
                        cmp              eax, 1;                              je    n1435_disjunction_af
                                                                              jmp   diff_ω
.Lx1485_2:              mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 144]
                        mov              rcx, qword ptr [rsp + 152]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n1435_disjunction_af
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 104], rax;          jmp   diff_ω
#-----------------------------------------------------------------------------------------------------------------------
diff_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
diff_β:
                                                                              jmp   diff_ω
#-----------------------------------------------------------------------------------------------------------------------
diff_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 696]
                        add              rsp, 720;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
diff_ω:
                        mov              rcx, qword ptr [rsp + 704]
                        add              rsp, 720;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
diff_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             rdx
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx1486_2]
                        lea              rdx, [rip + .Lx1486_3];              jmp   FN__diff
.Lx1486_2:              pop              r12
                        pop              r12;                                 jmp   r12
.Lx1486_3:              pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 2
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 2
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "distab"
.Lgvan1:                .string          "dlists"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 448
                        mov              qword ptr [rsp + 424], rcx
                        mov              qword ptr [rsp + 432], rdx
                        mov              rdi, rsp
                        add              rdi, 384
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1487_call_proc_staged_α:
                        mov              r11, 584
                        call             getdfa_dcα;                          jmp   .Lx1501_2
.Lx1501_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1501_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
.Lx1501_29:             mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n1489_lit_integer_α
                                                                              jmp   n1488_assign_α
n1487_call_proc_staged_β:
                        mov              r11, 584;                            jmp   n1489_lit_integer_α
.Lx1501_0:              .quad            .Lx1501_0_s
.Lx1501_0_s:            .string          "getdfa"
#-----------------------------------------------------------------------------------------------------------------------
n1488_assign_α:         mov              r11, 585
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n1489_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1489_lit_integer_α:    mov              r11, 586
                        mov              qword ptr [rsp + 32], 3              # result
                        mov              rax, qword ptr [rip + .Lx1503_0]
                        mov              qword ptr [rsp + 40], rax;           jmp   n1490_lit_integer_α
.Lx1503_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1490_lit_integer_α:    mov              r11, 587
                        mov              qword ptr [rsp + 48], 3              # result
                        mov              rax, qword ptr [rip + .Lx1504_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n1491_to_α
.Lx1504_0:              .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n1491_to_α:             mov              r11, 588
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], 3
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 16], rax
.Lx1506_0:              mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 56]
                        cmp              rax, rcx;                            jg    main_ω
                        mov              qword ptr [rsp + 0], 3
                        mov              qword ptr [rsp + 8], rax;            jmp   n1492_bound_α
n1491_to_β:             mov              r11, 588
                        inc              qword ptr [rsp + 16];                jmp   .Lx1506_0
#-----------------------------------------------------------------------------------------------------------------------
n1492_bound_α:          mov              r11, 589
                        mov              qword ptr [rsp + 64], rsp;           jmp   n1493_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1493_lit_string_α:     mov              r11, 590
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 7
                        mov              rax, qword ptr [rip + .Lx1509_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n1494_lit_string_α
.Lx1509_0:              .quad            .Lx1509_0_s
.Lx1509_0_s:            .string          "Reduced"
#-----------------------------------------------------------------------------------------------------------------------
n1494_lit_string_α:     mov              r11, 591
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 8
                        mov              rax, qword ptr [rip + .Lx1510_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n1495_var_α
.Lx1510_0:              .quad            .Lx1510_0_s
.Lx1510_0_s:            .string          "Original"
#-----------------------------------------------------------------------------------------------------------------------
n1495_var_α:            mov              r11, 592
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 328], rax;          jmp   n1496_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1496_call_proc_staged_α:
                        mov              r11, 593
                        lea              rsi, [rsp + 304]
                        lea              rdx, [rsp + 320]
                        call             showdfa_dcα;                         jmp   .Lx1514_2
.Lx1514_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1514_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
.Lx1514_29:             mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n1499_unmark_α
                                                                              jmp   n1497_call_proc_staged_α
n1496_call_proc_staged_β:
                        mov              r11, 593;                            jmp   n1499_unmark_α
.Lx1514_0:              .quad            .Lx1514_0_s
.Lx1514_0_s:            .string          "showdfa"
#-----------------------------------------------------------------------------------------------------------------------
n1497_call_proc_staged_α:
                        mov              r11, 594
                        lea              rsi, [rsp + 240]
                        call             minimize_dcα;                        jmp   .Lx1516_2
.Lx1516_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1516_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
.Lx1516_29:             mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n1499_unmark_α
                                                                              jmp   n1498_call_proc_staged_α
n1497_call_proc_staged_β:
                        mov              r11, 594;                            jmp   n1499_unmark_α
.Lx1516_0:              .quad            .Lx1516_0_s
.Lx1516_0_s:            .string          "minimize"
#-----------------------------------------------------------------------------------------------------------------------
n1498_call_proc_staged_α:
                        mov              r11, 595
                        lea              rsi, [rsp + 176]
                        lea              rdx, [rsp + 192]
                        call             showdfa_dcα;                         jmp   .Lx1518_2
.Lx1518_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1518_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
.Lx1518_29:             mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n1499_unmark_α
                                                                              jmp   n1499_unmark_α
n1498_call_proc_staged_β:
                        mov              r11, 595;                            jmp   n1499_unmark_α
.Lx1518_0:              .quad            .Lx1518_0_s
.Lx1518_0_s:            .string          "showdfa"
#-----------------------------------------------------------------------------------------------------------------------
n1499_unmark_α:         mov              r11, 596
                        mov              rsp, qword ptr [rsp + 64];           jmp   n1491_to_β
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
.Lclassspec0:           .string          "dfa(Q,S,d,q0,F)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "getdfa"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__getdfa
                        .quad            getdfa_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1200
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "readset"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__readset
                        .quad            readset_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            352
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "showdfa"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__showdfa
                        .quad            showdfa_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            1664
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "writeset"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__writeset
                        .quad            writeset_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            448
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "minimize"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__minimize
                        .quad            minimize_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            3376
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "marklists"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__marklists
                        .quad            marklists_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            432
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "makemdfa"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
                        .quad            FN__makemdfa
                        .quad            makemdfa_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            3584
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "equiv"
                        .align           8
.Lstartup_prec7:
                        .quad            .Lstartup_pname7
                        .quad            FN__equiv
                        .quad            equiv_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            304
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec7]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "equivdelta"
                        .align           8
.Lstartup_prec8:
                        .quad            .Lstartup_pname8
                        .quad            FN__equivdelta
                        .quad            equivdelta_dcα
                        .quad            0
                        .quad            0
                        .long            4
                        .long            0
                        .long            416
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec8]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "finalstates"
                        .align           8
.Lstartup_prec9:
                        .quad            .Lstartup_pname9
                        .quad            FN__finalstates
                        .quad            finalstates_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            704
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec9]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "diff"
                        .align           8
.Lstartup_prec10:
                        .quad            .Lstartup_pname10
                        .quad            FN__diff
                        .quad            diff_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            592
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec10]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
