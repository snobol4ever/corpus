                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__sendmoney$2F0:
                        sub              rsp, 2112
                        mov              qword ptr [rsp + 2088], rcx
                        mov              qword ptr [rsp + 2096], rdx
                        mov              qword ptr [rsp + 2104], rsp
                        mov              rdi, rsp
                        mov              esi, 2032
                        mov              edx, 2080
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
sendmoney$2F0_α_body:
                        lea              rax, [rip + n54_suspend_β]
                        mov              qword ptr [rsp + 2032], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx56_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx56_101
.Lx56_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx56_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx56_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx56_101
.Lx56_100:              lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx56_101:              mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    sendmoney$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                        mov              r11, 1;                              jmp   sendmoney$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2048]
                        mov              qword ptr [rsp + 2016], rax
                        mov              qword ptr [rsp + 2024], rdx;         jmp   n2_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n2_call_proc_staged_α:  mov              r11, 3
                        mov              qword ptr [rsp + 1984], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx60_20
                        mov              rax, qword ptr [rsp + 2016]
                        mov              rdx, qword ptr [rsp + 2024]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx60_21
.Lx60_20:               mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2016]
                        mov              rdx, qword ptr [rsp + 2024]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx60_21:               lea              rax, [rip + .Lx60_7]
                        push             rax
                        mov              edi, 3
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx60_1
                        lea              rcx, [rip + .Lx60_3]
                        lea              rdx, [rip + .Lx60_4];                jmp   rax
.Lx60_3:                mov              qword ptr [rsp + 1992], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1984]
                        test             rax, rax;                            jne   .Lx60_5
                        mov              qword ptr [rsp + 1984], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx60_2
.Lx60_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx60_2
.Lx60_4:                mov              rax, qword ptr [rsp + 1984]
                        test             rax, rax;                            jne   .Lx60_6
                        mov              qword ptr [rsp + 1984], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx60_2
.Lx60_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx60_2
.Lx60_1:                call             rt_faildescr@PLT
.Lx60_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx60_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1952]
                        mov              rdx, qword ptr [rsp + 1960]
.Lx60_29:               mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx
                        cmp              al, 104;                             je    n55_call_builtin_prolog_α
                                                                              jmp   n3_var_ref_α
n2_call_proc_staged_β:  mov              r11, 3
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1984], 0
                        lea              rdi, [rsp + 2000]
                        lea              rsi, [rsp + 2008]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n55_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 2000]
                        mov              rdx, qword ptr [rsp + 2008]
                        mov              ecx, 32
                        mov              r8d, 3552
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2016]
                        mov              rdx, qword ptr [rsp + 2024]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 3
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n55_call_builtin_prolog_α
                        lea              r8, [rip + .Lx60_7]
                        push             r8
                        lea              rcx, [rip + .Lx60_3]
                        lea              rdx, [rip + .Lx60_4];                jmp   rax
.Lx60_7:                add              rsp, 8
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx
                        cmp              al, 104;                             je    n55_call_builtin_prolog_α
                                                                              jmp   n3_var_ref_α
.Lx60_0:                .quad            .Lx60_0_s
.Lx60_0_s:              .string          "send/1"
#-----------------------------------------------------------------------------------------------------------------------
n3_var_ref_α:           mov              r11, 4
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2048]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n4_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:        mov              r11, 5
                        mov              qword ptr [rsp + 1936], 2            # result
                        mov              dword ptr [rsp + 1940], 1
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rsp + 1944], rax;         jmp   n5_lit_string_α
.Lx63_0:                .quad            .Lx63_0_s
.Lx63_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              r11, 6
                        mov              qword ptr [rsp + 1840], 2            # result
                        mov              dword ptr [rsp + 1844], 1
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n6_lit_integer_α
.Lx64_0:                .quad            .Lx64_0_s
.Lx64_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       mov              r11, 7
                        mov              qword ptr [rsp + 1744], 3            # result
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n7_lit_string_α
.Lx65_0:                .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              r11, 8
                        mov              qword ptr [rsp + 1728], 2            # result
                        mov              dword ptr [rsp + 1732], 1
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n8_lit_integer_α
.Lx66_0:                .quad            .Lx66_0_s
.Lx66_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:       mov              r11, 9
                        mov              qword ptr [rsp + 1632], 3            # result
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n9_lit_string_α
.Lx67_0:                .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              r11, 10
                        mov              qword ptr [rsp + 1616], 2            # result
                        mov              dword ptr [rsp + 1620], 1
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n10_lit_integer_α
.Lx68_0:                .quad            .Lx68_0_s
.Lx68_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      mov              r11, 11
                        mov              qword ptr [rsp + 1520], 3            # result
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n11_lit_string_α
.Lx69_0:                .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:       mov              r11, 12
                        mov              qword ptr [rsp + 1504], 2            # result
                        mov              dword ptr [rsp + 1508], 1
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n12_lit_integer_α
.Lx70_0:                .quad            .Lx70_0_s
.Lx70_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      mov              r11, 13
                        mov              qword ptr [rsp + 1408], 3            # result
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n13_lit_string_α
.Lx71_0:                .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:       mov              r11, 14
                        mov              qword ptr [rsp + 1392], 2            # result
                        mov              dword ptr [rsp + 1396], 2
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n14_call_builtin_prolog_α
.Lx72_0:                .quad            .Lx72_0_s
.Lx72_0_s:              .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_prolog_α:
                        mov              r11, 15
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1480], rax
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1464], rax
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1448], rax
                        lea              rdi, [rsp + 1440]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                        cmp              al, 104;                             je    sendmoney$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n15_call_builtin_prolog_α
n14_call_builtin_prolog_β:
                        mov              r11, 15;                             jmp   sendmoney$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_prolog_α:
                        mov              r11, 16
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1592], rax
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1576], rax
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1560], rax
                        lea              rdi, [rsp + 1552]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        cmp              al, 104;                             je    sendmoney$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n16_call_builtin_prolog_α
n15_call_builtin_prolog_β:
                        mov              r11, 16;                             jmp   sendmoney$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_prolog_α:
                        mov              r11, 17
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1704], rax
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1688], rax
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1672], rax
                        lea              rdi, [rsp + 1664]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx
                        cmp              al, 104;                             je    sendmoney$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n17_call_builtin_prolog_α
n16_call_builtin_prolog_β:
                        mov              r11, 17;                             jmp   sendmoney$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_prolog_α:
                        mov              r11, 18
                        mov              rax, qword ptr [rsp + 1648]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 1656]
                        mov              qword ptr [rsp + 1816], rax
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1800], rax
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1784], rax
                        lea              rdi, [rsp + 1776]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx
                        cmp              al, 104;                             je    sendmoney$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n18_lit_string_α
n17_call_builtin_prolog_β:
                        mov              r11, 18;                             jmp   sendmoney$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:       mov              r11, 19
                        mov              qword ptr [rsp + 1376], 2            # result
                        mov              dword ptr [rsp + 1380], 1
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n19_lit_string_α
.Lx77_0:                .quad            .Lx77_0_s
.Lx77_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              r11, 20
                        mov              qword ptr [rsp + 1280], 2            # result
                        mov              dword ptr [rsp + 1284], 1
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n20_lit_integer_α
.Lx78_0:                .quad            .Lx78_0_s
.Lx78_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:      mov              r11, 21
                        mov              qword ptr [rsp + 1184], 3            # result
                        mov              rax, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n21_lit_string_α
.Lx79_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:       mov              r11, 22
                        mov              qword ptr [rsp + 1168], 2            # result
                        mov              dword ptr [rsp + 1172], 1
                        mov              rax, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n22_lit_integer_α
.Lx80_0:                .quad            .Lx80_0_s
.Lx80_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:      mov              r11, 23
                        mov              qword ptr [rsp + 1072], 3            # result
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n23_lit_string_α
.Lx81_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       mov              r11, 24
                        mov              qword ptr [rsp + 1056], 2            # result
                        mov              dword ptr [rsp + 1060], 1
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n24_lit_integer_α
.Lx82_0:                .quad            .Lx82_0_s
.Lx82_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:      mov              r11, 25
                        mov              qword ptr [rsp + 960], 3             # result
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n25_lit_string_α
.Lx83_0:                .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:       mov              r11, 26
                        mov              qword ptr [rsp + 944], 2             # result
                        mov              dword ptr [rsp + 948], 1
                        mov              rax, qword ptr [rip + .Lx84_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n26_lit_integer_α
.Lx84_0:                .quad            .Lx84_0_s
.Lx84_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:      mov              r11, 27
                        mov              qword ptr [rsp + 848], 3             # result
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n27_lit_string_α
.Lx85_0:                .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:       mov              r11, 28
                        mov              qword ptr [rsp + 832], 2             # result
                        mov              dword ptr [rsp + 836], 2
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n28_call_builtin_prolog_α
.Lx86_0:                .quad            .Lx86_0_s
.Lx86_0_s:              .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_prolog_α:
                        mov              r11, 29
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 920], rax
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 904], rax
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 888], rax
                        lea              rdi, [rsp + 880]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              al, 104;                             je    sendmoney$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n29_call_builtin_prolog_α
n28_call_builtin_prolog_β:
                        mov              r11, 29;                             jmp   sendmoney$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_prolog_α:
                        mov              r11, 30
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 1032], rax
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 1016], rax
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1000], rax
                        lea              rdi, [rsp + 992]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    sendmoney$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n30_call_builtin_prolog_α
n29_call_builtin_prolog_β:
                        mov              r11, 30;                             jmp   sendmoney$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_prolog_α:
                        mov              r11, 31
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 1144], rax
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1128], rax
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1112], rax
                        lea              rdi, [rsp + 1104]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        cmp              al, 104;                             je    sendmoney$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n31_call_builtin_prolog_α
n30_call_builtin_prolog_β:
                        mov              r11, 31;                             jmp   sendmoney$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_prolog_α:
                        mov              r11, 32
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1256], rax
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1240], rax
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1224], rax
                        lea              rdi, [rsp + 1216]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        cmp              al, 104;                             je    sendmoney$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n32_lit_string_α
n31_call_builtin_prolog_β:
                        mov              r11, 32;                             jmp   sendmoney$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:       mov              r11, 33
                        mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 1
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n33_lit_string_α
.Lx91_0:                .quad            .Lx91_0_s
.Lx91_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:       mov              r11, 34
                        mov              qword ptr [rsp + 720], 2             # result
                        mov              dword ptr [rsp + 724], 1
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n34_lit_integer_α
.Lx92_0:                .quad            .Lx92_0_s
.Lx92_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:      mov              r11, 35
                        mov              qword ptr [rsp + 624], 3             # result
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n35_lit_string_α
.Lx93_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:       mov              r11, 36
                        mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], 1
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n36_lit_integer_α
.Lx94_0:                .quad            .Lx94_0_s
.Lx94_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:      mov              r11, 37
                        mov              qword ptr [rsp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n37_lit_string_α
.Lx95_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:       mov              r11, 38
                        mov              qword ptr [rsp + 496], 2             # result
                        mov              dword ptr [rsp + 500], 1
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n38_lit_integer_α
.Lx96_0:                .quad            .Lx96_0_s
.Lx96_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:      mov              r11, 39
                        mov              qword ptr [rsp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n39_lit_string_α
.Lx97_0:                .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       mov              r11, 40
                        mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 1
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n40_lit_integer_α
.Lx98_0:                .quad            .Lx98_0_s
.Lx98_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:      mov              r11, 41
                        mov              qword ptr [rsp + 288], 3             # result
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n41_lit_string_α
.Lx99_0:                .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:       mov              r11, 42
                        mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 1
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n42_lit_integer_α
.Lx100_0:               .quad            .Lx100_0_s
.Lx100_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:      mov              r11, 43
                        mov              qword ptr [rsp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n43_lit_string_α
.Lx101_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:       mov              r11, 44
                        mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 2
                        mov              rax, qword ptr [rip + .Lx102_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n44_call_builtin_prolog_α
.Lx102_0:               .quad            .Lx102_0_s
.Lx102_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_prolog_α:
                        mov              r11, 45
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 216], rax
                        lea              rdi, [rsp + 208]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    sendmoney$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n45_call_builtin_prolog_α
n44_call_builtin_prolog_β:
                        mov              r11, 45;                             jmp   sendmoney$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n45_call_builtin_prolog_α:
                        mov              r11, 46
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 328], rax
                        lea              rdi, [rsp + 320]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    sendmoney$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n46_call_builtin_prolog_α
n45_call_builtin_prolog_β:
                        mov              r11, 46;                             jmp   sendmoney$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n46_call_builtin_prolog_α:
                        mov              r11, 47
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 456], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 440], rax
                        lea              rdi, [rsp + 432]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    sendmoney$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n47_call_builtin_prolog_α
n46_call_builtin_prolog_β:
                        mov              r11, 47;                             jmp   sendmoney$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n47_call_builtin_prolog_α:
                        mov              r11, 48
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 584], rax
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 568], rax
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 552], rax
                        lea              rdi, [rsp + 544]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    sendmoney$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n48_call_builtin_prolog_α
n47_call_builtin_prolog_β:
                        mov              r11, 48;                             jmp   sendmoney$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_prolog_α:
                        mov              r11, 49
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 680], rax
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 664], rax
                        lea              rdi, [rsp + 656]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              al, 104;                             je    sendmoney$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n49_lit_string_α
n48_call_builtin_prolog_β:
                        mov              r11, 49;                             jmp   sendmoney$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:       mov              r11, 50
                        mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 2
                        mov              rax, qword ptr [rip + .Lx108_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n50_call_builtin_prolog_α
.Lx108_0:               .quad            .Lx108_0_s
.Lx108_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n50_call_builtin_prolog_α:
                        mov              r11, 51
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 792], rax
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 776], rax
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 760], rax
                        lea              rdi, [rsp + 752]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    sendmoney$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n51_call_builtin_prolog_α
n50_call_builtin_prolog_β:
                        mov              r11, 51;                             jmp   sendmoney$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n51_call_builtin_prolog_α:
                        mov              r11, 52
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 1352], rax
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1336], rax
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1320], rax
                        lea              rdi, [rsp + 1312]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        cmp              al, 104;                             je    sendmoney$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n52_call_builtin_prolog_α
n51_call_builtin_prolog_β:
                        mov              r11, 52;                             jmp   sendmoney$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n52_call_builtin_prolog_α:
                        mov              r11, 53
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1912], rax
                        mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1896], rax
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1880], rax
                        lea              rdi, [rsp + 1872]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx
                        cmp              al, 104;                             je    n55_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n53_call_builtin_prolog_α
n52_call_builtin_prolog_β:
                        mov              r11, 53;                             jmp   n55_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n53_call_builtin_prolog_α:
                        mov              r11, 54
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn113:              .string          "$atop_eq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn113]
                        lea              rsi, [rsp + 96]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 524288
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n2_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n54_suspend_α
n53_call_builtin_prolog_β:
                        mov              r11, 54;                             jmp   n2_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n54_suspend_α:          mov              r11, 55
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx115_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2032];         jmp   rax
.Lx115_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n54_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n54_suspend_β]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   sendmoney$2F0_γ
n54_suspend_β:          mov              r11, 55;                             jmp   n2_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n55_call_builtin_prolog_α:
                        mov              r11, 56
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    sendmoney$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   sendmoney$2F0_ω
n55_call_builtin_prolog_β:
                        mov              r11, 56;                             jmp   sendmoney$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
sendmoney$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
sendmoney$2F0_β:
                                                                              jmp   n54_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
sendmoney$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx116_50
                        mov              qword ptr [rsp + 2032], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2032];         jmp   rax
.Lx116_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2088]
                        add              rsp, 2112;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
sendmoney$2F0_ω:
                        mov              rcx, qword ptr [rsp + 2096]
                        add              rsp, 2112;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__$2C$2F2:
                        sub              rsp, 4960
                        mov              qword ptr [rsp + 4936], rcx
                        mov              qword ptr [rsp + 4944], rdx
                        mov              qword ptr [rsp + 4952], rsp
                        mov              rdi, rsp
                        mov              esi, 4800
                        mov              edx, 4928
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
$2C$2F2_α_body:
                        lea              rax, [rip + n128_suspend_β]
                        mov              qword ptr [rsp + 4800], rax
#-----------------------------------------------------------------------------------------------------------------------
n117_call_builtin_prolog_α:
                        mov              r11, 57
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx274_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx274_101
.Lx274_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx274_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx274_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx274_101
.Lx274_100:             lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx274_101:             mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    $2C$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n118_var_ref_α
n117_call_builtin_prolog_β:
                        mov              r11, 57;                             jmp   $2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n118_var_ref_α:         mov              r11, 58
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4752], rax
                        mov              qword ptr [rsp + 4760], rdx;         jmp   n119_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_integer_α:     mov              r11, 59
                        mov              qword ptr [rsp + 4768], 3            # result
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rsp + 4776], rax;         jmp   n120_lit_integer_α
.Lx277_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_integer_α:     mov              r11, 60
                        mov              qword ptr [rsp + 4784], 3            # result
                        mov              rax, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rsp + 4792], rax;         jmp   n121_call_builtin_prolog_α
.Lx278_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n121_call_builtin_prolog_α:
                        mov              r11, 61
                        mov              rax, qword ptr [rsp + 4784]
                        mov              qword ptr [rsp + 4736], rax
                        mov              rax, qword ptr [rsp + 4792]
                        mov              qword ptr [rsp + 4744], rax
                        mov              rax, qword ptr [rsp + 4768]
                        mov              qword ptr [rsp + 4720], rax
                        mov              rax, qword ptr [rsp + 4776]
                        mov              qword ptr [rsp + 4728], rax
                        mov              rax, qword ptr [rsp + 4752]
                        mov              qword ptr [rsp + 4704], rax
                        mov              rax, qword ptr [rsp + 4760]
                        mov              qword ptr [rsp + 4712], rax
                        lea              rdi, [rsp + 4704]
                        lea              r8, [rsp + 4704]
.Lx279_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx279_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx279_111
                        cmp              esi, 1;                              jne   .Lx279_112
                        mov              r8, rax;                             jmp   .Lx279_110
.Lx279_112:             cmp              esi, 2;                              jne   .Lx279_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx279_111
                        mov              r8, rax;                             jmp   .Lx279_110
.Lx279_113:             cmp              al, 72;                              jne   .Lx279_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx279_111
                        cmp              rax, r8;                             je    .Lx279_111
                        mov              r8, rax;                             jmp   .Lx279_110
.Lx279_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx279_114
                        cmp              al, 104;                             je    .Lx279_114
                        cmp              al, 72;                              jne   .Lx279_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx279_114
                                                                              jmp   .Lx279_118
.Lx279_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx279_115
                        cmp              al, 3;                               jne   .Lx279_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx279_114
                        movabs           rdx, 9
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lx279_115
                                                                              jmp   .Lx279_114
.Lx279_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx279_117
.Lx279_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx279_117
.Lx279_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx279_117:             mov              qword ptr [rsp + 4688], rax
                        mov              qword ptr [rsp + 4696], rdx
                        cmp              al, 104;                             je    n130_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n122_var_ref_α
n121_call_builtin_prolog_β:
                        mov              r11, 61;                             jmp   n130_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n122_var_ref_α:         mov              r11, 62
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4656], rax
                        mov              qword ptr [rsp + 4664], rdx;         jmp   n123_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_integer_α:     mov              r11, 63
                        mov              qword ptr [rsp + 4672], 3            # result
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rsp + 4680], rax;         jmp   n124_call_builtin_prolog_α
.Lx282_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n124_call_builtin_prolog_α:
                        mov              r11, 64
                        mov              rax, qword ptr [rsp + 4656]
                        mov              qword ptr [rsp + 4624], rax
                        mov              rax, qword ptr [rsp + 4664]
                        mov              qword ptr [rsp + 4632], rax
                        lea              rdi, [rsp + 4624]
                        movabs           rsi, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4608], rax
                        mov              qword ptr [rsp + 4616], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n125_var_ref_α
n124_call_builtin_prolog_β:
                        mov              r11, 64;                             jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n125_var_ref_α:         mov              r11, 65
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 4576], rax
                        mov              qword ptr [rsp + 4584], rdx;         jmp   n126_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n126_var_ref_α:         mov              r11, 66
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4832]
                        mov              qword ptr [rsp + 4592], rax
                        mov              qword ptr [rsp + 4600], rdx;         jmp   n127_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n127_call_builtin_prolog_α:
                        mov              r11, 67
                        mov              rax, qword ptr [rsp + 4592]
                        mov              qword ptr [rsp + 4560], rax
                        mov              rax, qword ptr [rsp + 4600]
                        mov              qword ptr [rsp + 4568], rax
                        mov              rax, qword ptr [rsp + 4576]
                        mov              qword ptr [rsp + 4544], rax
                        mov              rax, qword ptr [rsp + 4584]
                        mov              qword ptr [rsp + 4552], rax
                        lea              rdi, [rsp + 4544]
                        lea              r8, [rsp + 4544]
.Lx288_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx288_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx288_41
                        cmp              esi, 1;                              jne   .Lx288_55
                        mov              r8, rax;                             jmp   .Lx288_40
.Lx288_55:              cmp              esi, 2;                              jne   .Lx288_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx288_41
                        mov              r8, rax;                             jmp   .Lx288_40
.Lx288_56:              cmp              al, 72;                              jne   .Lx288_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx288_41
                        cmp              rax, r8;                             je    .Lx288_41
                        mov              r8, rax;                             jmp   .Lx288_40
.Lx288_41:              lea              r9, [rsp + 4560]
.Lx288_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx288_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx288_43
                        cmp              esi, 1;                              jne   .Lx288_57
                        mov              r9, rax;                             jmp   .Lx288_42
.Lx288_57:              cmp              esi, 2;                              jne   .Lx288_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx288_43
                        mov              r9, rax;                             jmp   .Lx288_42
.Lx288_58:              cmp              al, 72;                              jne   .Lx288_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx288_43
                        cmp              rax, r9;                             je    .Lx288_43
                        mov              r9, rax;                             jmp   .Lx288_42
.Lx288_43:              cmp              r8, r9;                              je    .Lx288_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx288_44
                        cmp              al, 104;                             je    .Lx288_44
                        cmp              al, 72;                              jne   .Lx288_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx288_44
                                                                              jmp   .Lx288_45
.Lx288_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx288_53
                        cmp              al, 104;                             je    .Lx288_53
                        cmp              al, 72;                              jne   .Lx288_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx288_53
                                                                              jmp   .Lx288_46
.Lx288_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx288_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx288_53
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx288_51
.Lx288_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx288_47
                        cmp              al, 104;                             je    .Lx288_47
                        cmp              al, 72;                              jne   .Lx288_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx288_47
                                                                              jmp   .Lx288_48
.Lx288_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx288_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx288_53
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx288_51
.Lx288_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx288_49
                        cmp              dl, 80;                              je    .Lx288_53
                                                                              jmp   .Lx288_52
.Lx288_49:              cmp              dl, 80;                              je    .Lx288_52
                        cmp              cl, 5;                               je    .Lx288_53
                        cmp              dl, 5;                               je    .Lx288_53
                        cmp              cl, 3;                               jne   .Lx288_50
                        cmp              dl, 3;                               jne   .Lx288_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx288_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx288_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx288_51
                                                                              jmp   .Lx288_52
.Lx288_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx288_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx288_53
.Lx288_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx288_54
.Lx288_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx288_54
.Lx288_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx288_54:              mov              qword ptr [rsp + 4528], rax
                        mov              qword ptr [rsp + 4536], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n128_suspend_α
n127_call_builtin_prolog_β:
                        mov              r11, 67;                             jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n128_suspend_α:         mov              r11, 68
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx290_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4800];         jmp   rax
.Lx290_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n128_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n128_suspend_β]
                        mov              qword ptr [rsp + 4800], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   $2C$2F2_γ
n128_suspend_β:         mov              r11, 68;                             jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n129_call_builtin_prolog_α:
                        mov              r11, 69
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 4496], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 4504], rax
                        lea              rdi, [rsp + 4496]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4480], rax
                        mov              qword ptr [rsp + 4488], rdx
                        cmp              al, 104;                             je    $2C$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n130_var_ref_α
n129_call_builtin_prolog_β:
                        mov              r11, 69;                             jmp   $2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n130_var_ref_α:         mov              r11, 70
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4432], rax
                        mov              qword ptr [rsp + 4440], rdx;         jmp   n131_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_integer_α:     mov              r11, 71
                        mov              qword ptr [rsp + 4448], 3            # result
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rsp + 4456], rax;         jmp   n132_lit_integer_α
.Lx294_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_integer_α:     mov              r11, 72
                        mov              qword ptr [rsp + 4464], 3            # result
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rsp + 4472], rax;         jmp   n133_call_builtin_prolog_α
.Lx295_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n133_call_builtin_prolog_α:
                        mov              r11, 73
                        mov              rax, qword ptr [rsp + 4464]
                        mov              qword ptr [rsp + 4416], rax
                        mov              rax, qword ptr [rsp + 4472]
                        mov              qword ptr [rsp + 4424], rax
                        mov              rax, qword ptr [rsp + 4448]
                        mov              qword ptr [rsp + 4400], rax
                        mov              rax, qword ptr [rsp + 4456]
                        mov              qword ptr [rsp + 4408], rax
                        mov              rax, qword ptr [rsp + 4432]
                        mov              qword ptr [rsp + 4384], rax
                        mov              rax, qword ptr [rsp + 4440]
                        mov              qword ptr [rsp + 4392], rax
                        lea              rdi, [rsp + 4384]
                        lea              r8, [rsp + 4384]
.Lx296_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx296_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx296_111
                        cmp              esi, 1;                              jne   .Lx296_112
                        mov              r8, rax;                             jmp   .Lx296_110
.Lx296_112:             cmp              esi, 2;                              jne   .Lx296_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx296_111
                        mov              r8, rax;                             jmp   .Lx296_110
.Lx296_113:             cmp              al, 72;                              jne   .Lx296_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx296_111
                        cmp              rax, r8;                             je    .Lx296_111
                        mov              r8, rax;                             jmp   .Lx296_110
.Lx296_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx296_114
                        cmp              al, 104;                             je    .Lx296_114
                        cmp              al, 72;                              jne   .Lx296_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx296_114
                                                                              jmp   .Lx296_118
.Lx296_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx296_115
                        cmp              al, 3;                               jne   .Lx296_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx296_114
                        movabs           rdx, 1
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lx296_115
                                                                              jmp   .Lx296_114
.Lx296_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx296_117
.Lx296_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx296_117
.Lx296_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx296_117:             mov              qword ptr [rsp + 4368], rax
                        mov              qword ptr [rsp + 4376], rdx
                        cmp              al, 104;                             je    n142_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n134_var_ref_α
n133_call_builtin_prolog_β:
                        mov              r11, 73;                             jmp   n142_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n134_var_ref_α:         mov              r11, 74
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4336], rax
                        mov              qword ptr [rsp + 4344], rdx;         jmp   n135_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_integer_α:     mov              r11, 75
                        mov              qword ptr [rsp + 4352], 3            # result
                        mov              rax, qword ptr [rip + .Lx299_0]
                        mov              qword ptr [rsp + 4360], rax;         jmp   n136_call_builtin_prolog_α
.Lx299_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n136_call_builtin_prolog_α:
                        mov              r11, 76
                        mov              rax, qword ptr [rsp + 4336]
                        mov              qword ptr [rsp + 4304], rax
                        mov              rax, qword ptr [rsp + 4344]
                        mov              qword ptr [rsp + 4312], rax
                        lea              rdi, [rsp + 4304]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4288], rax
                        mov              qword ptr [rsp + 4296], rdx
                        cmp              al, 104;                             je    n141_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n137_var_ref_α
n136_call_builtin_prolog_β:
                        mov              r11, 76;                             jmp   n141_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n137_var_ref_α:         mov              r11, 77
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 4256], rax
                        mov              qword ptr [rsp + 4264], rdx;         jmp   n138_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:         mov              r11, 78
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4832]
                        mov              qword ptr [rsp + 4272], rax
                        mov              qword ptr [rsp + 4280], rdx;         jmp   n139_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n139_call_builtin_prolog_α:
                        mov              r11, 79
                        mov              rax, qword ptr [rsp + 4272]
                        mov              qword ptr [rsp + 4240], rax
                        mov              rax, qword ptr [rsp + 4280]
                        mov              qword ptr [rsp + 4248], rax
                        mov              rax, qword ptr [rsp + 4256]
                        mov              qword ptr [rsp + 4224], rax
                        mov              rax, qword ptr [rsp + 4264]
                        mov              qword ptr [rsp + 4232], rax
                        lea              rdi, [rsp + 4224]
                        lea              r8, [rsp + 4224]
.Lx305_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx305_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx305_41
                        cmp              esi, 1;                              jne   .Lx305_55
                        mov              r8, rax;                             jmp   .Lx305_40
.Lx305_55:              cmp              esi, 2;                              jne   .Lx305_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx305_41
                        mov              r8, rax;                             jmp   .Lx305_40
.Lx305_56:              cmp              al, 72;                              jne   .Lx305_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx305_41
                        cmp              rax, r8;                             je    .Lx305_41
                        mov              r8, rax;                             jmp   .Lx305_40
.Lx305_41:              lea              r9, [rsp + 4240]
.Lx305_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx305_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx305_43
                        cmp              esi, 1;                              jne   .Lx305_57
                        mov              r9, rax;                             jmp   .Lx305_42
.Lx305_57:              cmp              esi, 2;                              jne   .Lx305_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx305_43
                        mov              r9, rax;                             jmp   .Lx305_42
.Lx305_58:              cmp              al, 72;                              jne   .Lx305_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx305_43
                        cmp              rax, r9;                             je    .Lx305_43
                        mov              r9, rax;                             jmp   .Lx305_42
.Lx305_43:              cmp              r8, r9;                              je    .Lx305_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx305_44
                        cmp              al, 104;                             je    .Lx305_44
                        cmp              al, 72;                              jne   .Lx305_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx305_44
                                                                              jmp   .Lx305_45
.Lx305_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx305_53
                        cmp              al, 104;                             je    .Lx305_53
                        cmp              al, 72;                              jne   .Lx305_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx305_53
                                                                              jmp   .Lx305_46
.Lx305_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx305_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx305_53
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx305_51
.Lx305_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx305_47
                        cmp              al, 104;                             je    .Lx305_47
                        cmp              al, 72;                              jne   .Lx305_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx305_47
                                                                              jmp   .Lx305_48
.Lx305_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx305_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx305_53
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx305_51
.Lx305_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx305_49
                        cmp              dl, 80;                              je    .Lx305_53
                                                                              jmp   .Lx305_52
.Lx305_49:              cmp              dl, 80;                              je    .Lx305_52
                        cmp              cl, 5;                               je    .Lx305_53
                        cmp              dl, 5;                               je    .Lx305_53
                        cmp              cl, 3;                               jne   .Lx305_50
                        cmp              dl, 3;                               jne   .Lx305_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx305_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx305_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx305_51
                                                                              jmp   .Lx305_52
.Lx305_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx305_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx305_53
.Lx305_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx305_54
.Lx305_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx305_54
.Lx305_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx305_54:              mov              qword ptr [rsp + 4208], rax
                        mov              qword ptr [rsp + 4216], rdx
                        cmp              al, 104;                             je    n141_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n140_suspend_α
n139_call_builtin_prolog_β:
                        mov              r11, 79;                             jmp   n141_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n140_suspend_α:         mov              r11, 80
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx307_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4800];         jmp   rax
.Lx307_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n140_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n140_suspend_β]
                        mov              qword ptr [rsp + 4800], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   $2C$2F2_γ
n140_suspend_β:         mov              r11, 80;                             jmp   n141_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n141_call_builtin_prolog_α:
                        mov              r11, 81
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 4176], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 4184], rax
                        lea              rdi, [rsp + 4176]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4160], rax
                        mov              qword ptr [rsp + 4168], rdx
                        cmp              al, 104;                             je    $2C$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n142_var_ref_α
n141_call_builtin_prolog_β:
                        mov              r11, 81;                             jmp   $2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n142_var_ref_α:         mov              r11, 82
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4128], rax
                        mov              qword ptr [rsp + 4136], rdx;         jmp   n143_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n143_var_ref_α:         mov              r11, 83
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4896]
                        mov              qword ptr [rsp + 4144], rax
                        mov              qword ptr [rsp + 4152], rdx;         jmp   n144_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n144_call_builtin_prolog_α:
                        mov              r11, 84
                        mov              rax, qword ptr [rsp + 4144]
                        mov              qword ptr [rsp + 4112], rax
                        mov              rax, qword ptr [rsp + 4152]
                        mov              qword ptr [rsp + 4120], rax
                        mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 4096], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 4104], rax
                        lea              rdi, [rsp + 4096]
                        lea              r8, [rsp + 4096]
.Lx313_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx313_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx313_41
                        cmp              esi, 1;                              jne   .Lx313_55
                        mov              r8, rax;                             jmp   .Lx313_40
.Lx313_55:              cmp              esi, 2;                              jne   .Lx313_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx313_41
                        mov              r8, rax;                             jmp   .Lx313_40
.Lx313_56:              cmp              al, 72;                              jne   .Lx313_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx313_41
                        cmp              rax, r8;                             je    .Lx313_41
                        mov              r8, rax;                             jmp   .Lx313_40
.Lx313_41:              lea              r9, [rsp + 4112]
.Lx313_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx313_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx313_43
                        cmp              esi, 1;                              jne   .Lx313_57
                        mov              r9, rax;                             jmp   .Lx313_42
.Lx313_57:              cmp              esi, 2;                              jne   .Lx313_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx313_43
                        mov              r9, rax;                             jmp   .Lx313_42
.Lx313_58:              cmp              al, 72;                              jne   .Lx313_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx313_43
                        cmp              rax, r9;                             je    .Lx313_43
                        mov              r9, rax;                             jmp   .Lx313_42
.Lx313_43:              cmp              r8, r9;                              je    .Lx313_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx313_44
                        cmp              al, 104;                             je    .Lx313_44
                        cmp              al, 72;                              jne   .Lx313_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx313_44
                                                                              jmp   .Lx313_45
.Lx313_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx313_53
                        cmp              al, 104;                             je    .Lx313_53
                        cmp              al, 72;                              jne   .Lx313_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx313_53
                                                                              jmp   .Lx313_46
.Lx313_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx313_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx313_53
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx313_51
.Lx313_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx313_47
                        cmp              al, 104;                             je    .Lx313_47
                        cmp              al, 72;                              jne   .Lx313_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx313_47
                                                                              jmp   .Lx313_48
.Lx313_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx313_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx313_53
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx313_51
.Lx313_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx313_49
                        cmp              dl, 80;                              je    .Lx313_53
                                                                              jmp   .Lx313_52
.Lx313_49:              cmp              dl, 80;                              je    .Lx313_52
                        cmp              cl, 5;                               je    .Lx313_53
                        cmp              dl, 5;                               je    .Lx313_53
                        cmp              cl, 3;                               jne   .Lx313_50
                        cmp              dl, 3;                               jne   .Lx313_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx313_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx313_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx313_51
                                                                              jmp   .Lx313_52
.Lx313_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx313_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx313_53
.Lx313_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx313_54
.Lx313_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx313_54
.Lx313_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx313_54:              mov              qword ptr [rsp + 4080], rax
                        mov              qword ptr [rsp + 4088], rdx
                        cmp              al, 104;                             je    n155_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n145_var_ref_α
n144_call_builtin_prolog_β:
                        mov              r11, 84;                             jmp   n155_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n145_var_ref_α:         mov              r11, 85
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3824], rax
                        mov              qword ptr [rsp + 3832], rdx;         jmp   n146_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:      mov              r11, 86
                        mov              qword ptr [rsp + 4064], 2            # result
                        mov              dword ptr [rsp + 4068], 1
                        mov              rax, qword ptr [rip + .Lx316_0]
                        mov              qword ptr [rsp + 4072], rax;         jmp   n147_var_ref_α
.Lx316_0:               .quad            .Lx316_0_s
.Lx316_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n147_var_ref_α:         mov              r11, 87
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4816]
                        mov              qword ptr [rsp + 3840], rax
                        mov              qword ptr [rsp + 3848], rdx;         jmp   n148_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_string_α:      mov              r11, 88
                        mov              qword ptr [rsp + 3968], 2            # result
                        mov              dword ptr [rsp + 3972], 1
                        mov              rax, qword ptr [rip + .Lx319_0]
                        mov              qword ptr [rsp + 3976], rax;         jmp   n149_lit_integer_α
.Lx319_0:               .quad            .Lx319_0_s
.Lx319_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_integer_α:     mov              r11, 89
                        mov              qword ptr [rsp + 3856], 3            # result
                        mov              rax, qword ptr [rip + .Lx320_0]
                        mov              qword ptr [rsp + 3864], rax;         jmp   n150_var_ref_α
.Lx320_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n150_var_ref_α:         mov              r11, 90
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4896]
                        mov              qword ptr [rsp + 3872], rax
                        mov              qword ptr [rsp + 3880], rdx;         jmp   n151_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n151_call_builtin_prolog_α:
                        mov              r11, 91
                        mov              rax, qword ptr [rsp + 3872]
                        mov              qword ptr [rsp + 3936], rax
                        mov              rax, qword ptr [rsp + 3880]
                        mov              qword ptr [rsp + 3944], rax
                        mov              rax, qword ptr [rsp + 3856]
                        mov              qword ptr [rsp + 3920], rax
                        mov              rax, qword ptr [rsp + 3864]
                        mov              qword ptr [rsp + 3928], rax
                        mov              rax, qword ptr [rsp + 3968]
                        mov              qword ptr [rsp + 3904], rax
                        mov              rax, qword ptr [rsp + 3976]
                        mov              qword ptr [rsp + 3912], rax
                        lea              rdi, [rsp + 3904]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3888], rax
                        mov              qword ptr [rsp + 3896], rdx
                        cmp              al, 104;                             je    $2C$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n152_call_builtin_prolog_α
n151_call_builtin_prolog_β:
                        mov              r11, 91;                             jmp   $2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n152_call_builtin_prolog_α:
                        mov              r11, 92
                        mov              rax, qword ptr [rsp + 3888]
                        mov              qword ptr [rsp + 4032], rax
                        mov              rax, qword ptr [rsp + 3896]
                        mov              qword ptr [rsp + 4040], rax
                        mov              rax, qword ptr [rsp + 3840]
                        mov              qword ptr [rsp + 4016], rax
                        mov              rax, qword ptr [rsp + 3848]
                        mov              qword ptr [rsp + 4024], rax
                        mov              rax, qword ptr [rsp + 4064]
                        mov              qword ptr [rsp + 4000], rax
                        mov              rax, qword ptr [rsp + 4072]
                        mov              qword ptr [rsp + 4008], rax
                        lea              rdi, [rsp + 4000]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3984], rax
                        mov              qword ptr [rsp + 3992], rdx
                        cmp              al, 104;                             je    n155_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n153_call_builtin_prolog_α
n152_call_builtin_prolog_β:
                        mov              r11, 92;                             jmp   n155_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n153_call_builtin_prolog_α:
                        mov              r11, 93
                        mov              rax, qword ptr [rsp + 3984]
                        mov              qword ptr [rsp + 3808], rax
                        mov              rax, qword ptr [rsp + 3992]
                        mov              qword ptr [rsp + 3816], rax
                        mov              rax, qword ptr [rsp + 3824]
                        mov              qword ptr [rsp + 3792], rax
                        mov              rax, qword ptr [rsp + 3832]
                        mov              qword ptr [rsp + 3800], rax
                        lea              rdi, [rsp + 3792]
                        lea              r8, [rsp + 3792]
.Lx325_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx325_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx325_41
                        cmp              esi, 1;                              jne   .Lx325_55
                        mov              r8, rax;                             jmp   .Lx325_40
.Lx325_55:              cmp              esi, 2;                              jne   .Lx325_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx325_41
                        mov              r8, rax;                             jmp   .Lx325_40
.Lx325_56:              cmp              al, 72;                              jne   .Lx325_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx325_41
                        cmp              rax, r8;                             je    .Lx325_41
                        mov              r8, rax;                             jmp   .Lx325_40
.Lx325_41:              lea              r9, [rsp + 3808]
.Lx325_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx325_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx325_43
                        cmp              esi, 1;                              jne   .Lx325_57
                        mov              r9, rax;                             jmp   .Lx325_42
.Lx325_57:              cmp              esi, 2;                              jne   .Lx325_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx325_43
                        mov              r9, rax;                             jmp   .Lx325_42
.Lx325_58:              cmp              al, 72;                              jne   .Lx325_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx325_43
                        cmp              rax, r9;                             je    .Lx325_43
                        mov              r9, rax;                             jmp   .Lx325_42
.Lx325_43:              cmp              r8, r9;                              je    .Lx325_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx325_44
                        cmp              al, 104;                             je    .Lx325_44
                        cmp              al, 72;                              jne   .Lx325_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx325_44
                                                                              jmp   .Lx325_45
.Lx325_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx325_53
                        cmp              al, 104;                             je    .Lx325_53
                        cmp              al, 72;                              jne   .Lx325_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx325_53
                                                                              jmp   .Lx325_46
.Lx325_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx325_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx325_53
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx325_51
.Lx325_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx325_47
                        cmp              al, 104;                             je    .Lx325_47
                        cmp              al, 72;                              jne   .Lx325_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx325_47
                                                                              jmp   .Lx325_48
.Lx325_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx325_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx325_53
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx325_51
.Lx325_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx325_49
                        cmp              dl, 80;                              je    .Lx325_53
                                                                              jmp   .Lx325_52
.Lx325_49:              cmp              dl, 80;                              je    .Lx325_52
                        cmp              cl, 5;                               je    .Lx325_53
                        cmp              dl, 5;                               je    .Lx325_53
                        cmp              cl, 3;                               jne   .Lx325_50
                        cmp              dl, 3;                               jne   .Lx325_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx325_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx325_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx325_51
                                                                              jmp   .Lx325_52
.Lx325_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx325_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx325_53
.Lx325_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx325_54
.Lx325_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx325_54
.Lx325_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx325_54:              mov              qword ptr [rsp + 3776], rax
                        mov              qword ptr [rsp + 3784], rdx
                        cmp              al, 104;                             je    n155_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n154_suspend_α
n153_call_builtin_prolog_β:
                        mov              r11, 93;                             jmp   n155_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n154_suspend_α:         mov              r11, 94
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx327_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4800];         jmp   rax
.Lx327_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n154_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n154_suspend_β]
                        mov              qword ptr [rsp + 4800], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   $2C$2F2_γ
n154_suspend_β:         mov              r11, 94;                             jmp   n155_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n155_call_builtin_prolog_α:
                        mov              r11, 95
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 3744], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 3752], rax
                        lea              rdi, [rsp + 3744]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3728], rax
                        mov              qword ptr [rsp + 3736], rdx
                        cmp              al, 104;                             je    $2C$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n156_var_ref_α
n155_call_builtin_prolog_β:
                        mov              r11, 95;                             jmp   $2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n156_var_ref_α:         mov              r11, 96
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3680], rax
                        mov              qword ptr [rsp + 3688], rdx;         jmp   n157_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_integer_α:     mov              r11, 97
                        mov              qword ptr [rsp + 3696], 3            # result
                        mov              rax, qword ptr [rip + .Lx331_0]
                        mov              qword ptr [rsp + 3704], rax;         jmp   n158_lit_string_α
.Lx331_0:               .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_string_α:      mov              r11, 98
                        mov              qword ptr [rsp + 3712], 2            # result
                        mov              dword ptr [rsp + 3716], 1
                        mov              rax, qword ptr [rip + .Lx332_0]
                        mov              qword ptr [rsp + 3720], rax;         jmp   n159_call_builtin_prolog_α
.Lx332_0:               .quad            .Lx332_0_s
.Lx332_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n159_call_builtin_prolog_α:
                        mov              r11, 99
                        mov              rax, qword ptr [rsp + 3712]
                        mov              qword ptr [rsp + 3664], rax
                        mov              rax, qword ptr [rsp + 3720]
                        mov              qword ptr [rsp + 3672], rax
                        mov              rax, qword ptr [rsp + 3696]
                        mov              qword ptr [rsp + 3648], rax
                        mov              rax, qword ptr [rsp + 3704]
                        mov              qword ptr [rsp + 3656], rax
                        mov              rax, qword ptr [rsp + 3680]
                        mov              qword ptr [rsp + 3632], rax
                        mov              rax, qword ptr [rsp + 3688]
                        mov              qword ptr [rsp + 3640], rax
                        lea              rdi, [rsp + 3632]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3616], rax
                        mov              qword ptr [rsp + 3624], rdx
                        cmp              al, 104;                             je    n180_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n160_var_ref_α
n159_call_builtin_prolog_β:
                        mov              r11, 99;                             jmp   n180_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n160_var_ref_α:         mov              r11, 100
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3360], rax
                        mov              qword ptr [rsp + 3368], rdx;         jmp   n161_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_string_α:      mov              r11, 101
                        mov              qword ptr [rsp + 3600], 2            # result
                        mov              dword ptr [rsp + 3604], 1
                        mov              rax, qword ptr [rip + .Lx336_0]
                        mov              qword ptr [rsp + 3608], rax;         jmp   n162_lit_string_α
.Lx336_0:               .quad            .Lx336_0_s
.Lx336_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:      mov              r11, 102
                        mov              qword ptr [rsp + 3488], 2            # result
                        mov              dword ptr [rsp + 3492], 1
                        mov              rax, qword ptr [rip + .Lx337_0]
                        mov              qword ptr [rsp + 3496], rax;         jmp   n163_var_ref_α
.Lx337_0:               .quad            .Lx337_0_s
.Lx337_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n163_var_ref_α:         mov              r11, 103
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4816]
                        mov              qword ptr [rsp + 3376], rax
                        mov              qword ptr [rsp + 3384], rdx;         jmp   n164_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:         mov              r11, 104
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4848]
                        mov              qword ptr [rsp + 3392], rax
                        mov              qword ptr [rsp + 3400], rdx;         jmp   n165_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n165_call_builtin_prolog_α:
                        mov              r11, 105
                        mov              rax, qword ptr [rsp + 3392]
                        mov              qword ptr [rsp + 3456], rax
                        mov              rax, qword ptr [rsp + 3400]
                        mov              qword ptr [rsp + 3464], rax
                        mov              rax, qword ptr [rsp + 3376]
                        mov              qword ptr [rsp + 3440], rax
                        mov              rax, qword ptr [rsp + 3384]
                        mov              qword ptr [rsp + 3448], rax
                        mov              rax, qword ptr [rsp + 3488]
                        mov              qword ptr [rsp + 3424], rax
                        mov              rax, qword ptr [rsp + 3496]
                        mov              qword ptr [rsp + 3432], rax
                        lea              rdi, [rsp + 3424]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3408], rax
                        mov              qword ptr [rsp + 3416], rdx
                        cmp              al, 104;                             je    $2C$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n166_var_ref_α
n165_call_builtin_prolog_β:
                        mov              r11, 105;                            jmp   $2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n166_var_ref_α:         mov              r11, 106
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4880]
                        mov              qword ptr [rsp + 3504], rax
                        mov              qword ptr [rsp + 3512], rdx;         jmp   n167_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n167_call_builtin_prolog_α:
                        mov              r11, 107
                        mov              rax, qword ptr [rsp + 3504]
                        mov              qword ptr [rsp + 3568], rax
                        mov              rax, qword ptr [rsp + 3512]
                        mov              qword ptr [rsp + 3576], rax
                        mov              rax, qword ptr [rsp + 3408]
                        mov              qword ptr [rsp + 3552], rax
                        mov              rax, qword ptr [rsp + 3416]
                        mov              qword ptr [rsp + 3560], rax
                        mov              rax, qword ptr [rsp + 3600]
                        mov              qword ptr [rsp + 3536], rax
                        mov              rax, qword ptr [rsp + 3608]
                        mov              qword ptr [rsp + 3544], rax
                        lea              rdi, [rsp + 3536]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3520], rax
                        mov              qword ptr [rsp + 3528], rdx
                        cmp              al, 104;                             je    n179_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n168_call_builtin_prolog_α
n167_call_builtin_prolog_β:
                        mov              r11, 107;                            jmp   n179_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n168_call_builtin_prolog_α:
                        mov              r11, 108
                        mov              rax, qword ptr [rsp + 3520]
                        mov              qword ptr [rsp + 3344], rax
                        mov              rax, qword ptr [rsp + 3528]
                        mov              qword ptr [rsp + 3352], rax
                        mov              rax, qword ptr [rsp + 3360]
                        mov              qword ptr [rsp + 3328], rax
                        mov              rax, qword ptr [rsp + 3368]
                        mov              qword ptr [rsp + 3336], rax
                        lea              rdi, [rsp + 3328]
                        lea              r8, [rsp + 3328]
.Lx346_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx346_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx346_41
                        cmp              esi, 1;                              jne   .Lx346_55
                        mov              r8, rax;                             jmp   .Lx346_40
.Lx346_55:              cmp              esi, 2;                              jne   .Lx346_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx346_41
                        mov              r8, rax;                             jmp   .Lx346_40
.Lx346_56:              cmp              al, 72;                              jne   .Lx346_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx346_41
                        cmp              rax, r8;                             je    .Lx346_41
                        mov              r8, rax;                             jmp   .Lx346_40
.Lx346_41:              lea              r9, [rsp + 3344]
.Lx346_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx346_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx346_43
                        cmp              esi, 1;                              jne   .Lx346_57
                        mov              r9, rax;                             jmp   .Lx346_42
.Lx346_57:              cmp              esi, 2;                              jne   .Lx346_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx346_43
                        mov              r9, rax;                             jmp   .Lx346_42
.Lx346_58:              cmp              al, 72;                              jne   .Lx346_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx346_43
                        cmp              rax, r9;                             je    .Lx346_43
                        mov              r9, rax;                             jmp   .Lx346_42
.Lx346_43:              cmp              r8, r9;                              je    .Lx346_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx346_44
                        cmp              al, 104;                             je    .Lx346_44
                        cmp              al, 72;                              jne   .Lx346_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx346_44
                                                                              jmp   .Lx346_45
.Lx346_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx346_53
                        cmp              al, 104;                             je    .Lx346_53
                        cmp              al, 72;                              jne   .Lx346_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx346_53
                                                                              jmp   .Lx346_46
.Lx346_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx346_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx346_53
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx346_51
.Lx346_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx346_47
                        cmp              al, 104;                             je    .Lx346_47
                        cmp              al, 72;                              jne   .Lx346_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx346_47
                                                                              jmp   .Lx346_48
.Lx346_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx346_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx346_53
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx346_51
.Lx346_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx346_49
                        cmp              dl, 80;                              je    .Lx346_53
                                                                              jmp   .Lx346_52
.Lx346_49:              cmp              dl, 80;                              je    .Lx346_52
                        cmp              cl, 5;                               je    .Lx346_53
                        cmp              dl, 5;                               je    .Lx346_53
                        cmp              cl, 3;                               jne   .Lx346_50
                        cmp              dl, 3;                               jne   .Lx346_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx346_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx346_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx346_51
                                                                              jmp   .Lx346_52
.Lx346_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx346_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx346_53
.Lx346_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx346_54
.Lx346_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx346_54
.Lx346_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx346_54:              mov              qword ptr [rsp + 3312], rax
                        mov              qword ptr [rsp + 3320], rdx
                        cmp              al, 104;                             je    n179_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n169_var_ref_α
n168_call_builtin_prolog_β:
                        mov              r11, 108;                            jmp   n179_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n169_var_ref_α:         mov              r11, 109
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3056], rax
                        mov              qword ptr [rsp + 3064], rdx;         jmp   n170_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n170_lit_string_α:      mov              r11, 110
                        mov              qword ptr [rsp + 3296], 2            # result
                        mov              dword ptr [rsp + 3300], 1
                        mov              rax, qword ptr [rip + .Lx349_0]
                        mov              qword ptr [rsp + 3304], rax;         jmp   n171_var_ref_α
.Lx349_0:               .quad            .Lx349_0_s
.Lx349_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n171_var_ref_α:         mov              r11, 111
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4864]
                        mov              qword ptr [rsp + 3072], rax
                        mov              qword ptr [rsp + 3080], rdx;         jmp   n172_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_string_α:      mov              r11, 112
                        mov              qword ptr [rsp + 3200], 2            # result
                        mov              dword ptr [rsp + 3204], 1
                        mov              rax, qword ptr [rip + .Lx352_0]
                        mov              qword ptr [rsp + 3208], rax;         jmp   n173_lit_integer_α
.Lx352_0:               .quad            .Lx352_0_s
.Lx352_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_integer_α:     mov              r11, 113
                        mov              qword ptr [rsp + 3088], 3            # result
                        mov              rax, qword ptr [rip + .Lx353_0]
                        mov              qword ptr [rsp + 3096], rax;         jmp   n174_var_ref_α
.Lx353_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n174_var_ref_α:         mov              r11, 114
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4880]
                        mov              qword ptr [rsp + 3104], rax
                        mov              qword ptr [rsp + 3112], rdx;         jmp   n175_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n175_call_builtin_prolog_α:
                        mov              r11, 115
                        mov              rax, qword ptr [rsp + 3104]
                        mov              qword ptr [rsp + 3168], rax
                        mov              rax, qword ptr [rsp + 3112]
                        mov              qword ptr [rsp + 3176], rax
                        mov              rax, qword ptr [rsp + 3088]
                        mov              qword ptr [rsp + 3152], rax
                        mov              rax, qword ptr [rsp + 3096]
                        mov              qword ptr [rsp + 3160], rax
                        mov              rax, qword ptr [rsp + 3200]
                        mov              qword ptr [rsp + 3136], rax
                        mov              rax, qword ptr [rsp + 3208]
                        mov              qword ptr [rsp + 3144], rax
                        lea              rdi, [rsp + 3136]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3120], rax
                        mov              qword ptr [rsp + 3128], rdx
                        cmp              al, 104;                             je    $2C$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n176_call_builtin_prolog_α
n175_call_builtin_prolog_β:
                        mov              r11, 115;                            jmp   $2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n176_call_builtin_prolog_α:
                        mov              r11, 116
                        mov              rax, qword ptr [rsp + 3120]
                        mov              qword ptr [rsp + 3264], rax
                        mov              rax, qword ptr [rsp + 3128]
                        mov              qword ptr [rsp + 3272], rax
                        mov              rax, qword ptr [rsp + 3072]
                        mov              qword ptr [rsp + 3248], rax
                        mov              rax, qword ptr [rsp + 3080]
                        mov              qword ptr [rsp + 3256], rax
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 3232], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 3240], rax
                        lea              rdi, [rsp + 3232]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3216], rax
                        mov              qword ptr [rsp + 3224], rdx
                        cmp              al, 104;                             je    n179_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n177_call_builtin_prolog_α
n176_call_builtin_prolog_β:
                        mov              r11, 116;                            jmp   n179_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n177_call_builtin_prolog_α:
                        mov              r11, 117
                        mov              rax, qword ptr [rsp + 3216]
                        mov              qword ptr [rsp + 3040], rax
                        mov              rax, qword ptr [rsp + 3224]
                        mov              qword ptr [rsp + 3048], rax
                        mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 3024], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 3032], rax
                        lea              rdi, [rsp + 3024]
                        lea              r8, [rsp + 3024]
.Lx358_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx358_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx358_41
                        cmp              esi, 1;                              jne   .Lx358_55
                        mov              r8, rax;                             jmp   .Lx358_40
.Lx358_55:              cmp              esi, 2;                              jne   .Lx358_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx358_41
                        mov              r8, rax;                             jmp   .Lx358_40
.Lx358_56:              cmp              al, 72;                              jne   .Lx358_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx358_41
                        cmp              rax, r8;                             je    .Lx358_41
                        mov              r8, rax;                             jmp   .Lx358_40
.Lx358_41:              lea              r9, [rsp + 3040]
.Lx358_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx358_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx358_43
                        cmp              esi, 1;                              jne   .Lx358_57
                        mov              r9, rax;                             jmp   .Lx358_42
.Lx358_57:              cmp              esi, 2;                              jne   .Lx358_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx358_43
                        mov              r9, rax;                             jmp   .Lx358_42
.Lx358_58:              cmp              al, 72;                              jne   .Lx358_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx358_43
                        cmp              rax, r9;                             je    .Lx358_43
                        mov              r9, rax;                             jmp   .Lx358_42
.Lx358_43:              cmp              r8, r9;                              je    .Lx358_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx358_44
                        cmp              al, 104;                             je    .Lx358_44
                        cmp              al, 72;                              jne   .Lx358_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx358_44
                                                                              jmp   .Lx358_45
.Lx358_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx358_53
                        cmp              al, 104;                             je    .Lx358_53
                        cmp              al, 72;                              jne   .Lx358_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx358_53
                                                                              jmp   .Lx358_46
.Lx358_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx358_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx358_53
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx358_51
.Lx358_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx358_47
                        cmp              al, 104;                             je    .Lx358_47
                        cmp              al, 72;                              jne   .Lx358_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx358_47
                                                                              jmp   .Lx358_48
.Lx358_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx358_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx358_53
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx358_51
.Lx358_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx358_49
                        cmp              dl, 80;                              je    .Lx358_53
                                                                              jmp   .Lx358_52
.Lx358_49:              cmp              dl, 80;                              je    .Lx358_52
                        cmp              cl, 5;                               je    .Lx358_53
                        cmp              dl, 5;                               je    .Lx358_53
                        cmp              cl, 3;                               jne   .Lx358_50
                        cmp              dl, 3;                               jne   .Lx358_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx358_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx358_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx358_51
                                                                              jmp   .Lx358_52
.Lx358_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx358_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx358_53
.Lx358_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx358_54
.Lx358_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx358_54
.Lx358_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx358_54:              mov              qword ptr [rsp + 3008], rax
                        mov              qword ptr [rsp + 3016], rdx
                        cmp              al, 104;                             je    n179_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n178_suspend_α
n177_call_builtin_prolog_β:
                        mov              r11, 117;                            jmp   n179_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n178_suspend_α:         mov              r11, 118
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx360_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4800];         jmp   rax
.Lx360_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n178_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n178_suspend_β]
                        mov              qword ptr [rsp + 4800], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   $2C$2F2_γ
n178_suspend_β:         mov              r11, 118;                            jmp   n179_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n179_call_builtin_prolog_α:
                        mov              r11, 119
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 2976], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 2984], rax
                        lea              rdi, [rsp + 2976]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx
                        cmp              al, 104;                             je    $2C$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n180_var_ref_α
n179_call_builtin_prolog_β:
                        mov              r11, 119;                            jmp   $2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n180_var_ref_α:         mov              r11, 120
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx;         jmp   n181_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_integer_α:     mov              r11, 121
                        mov              qword ptr [rsp + 2928], 3            # result
                        mov              rax, qword ptr [rip + .Lx364_0]
                        mov              qword ptr [rsp + 2936], rax;         jmp   n182_lit_string_α
.Lx364_0:               .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_string_α:      mov              r11, 122
                        mov              qword ptr [rsp + 2944], 2            # result
                        mov              dword ptr [rsp + 2948], 1
                        mov              rax, qword ptr [rip + .Lx365_0]
                        mov              qword ptr [rsp + 2952], rax;         jmp   n183_call_builtin_prolog_α
.Lx365_0:               .quad            .Lx365_0_s
.Lx365_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n183_call_builtin_prolog_α:
                        mov              r11, 123
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 2896], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 2904], rax
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 2880], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 2888], rax
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 2864], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 2872], rax
                        lea              rdi, [rsp + 2864]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2848], rax
                        mov              qword ptr [rsp + 2856], rdx
                        cmp              al, 104;                             je    n204_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n184_var_ref_α
n183_call_builtin_prolog_β:
                        mov              r11, 123;                            jmp   n204_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n184_var_ref_α:         mov              r11, 124
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2592], rax
                        mov              qword ptr [rsp + 2600], rdx;         jmp   n185_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_string_α:      mov              r11, 125
                        mov              qword ptr [rsp + 2832], 2            # result
                        mov              dword ptr [rsp + 2836], 1
                        mov              rax, qword ptr [rip + .Lx369_0]
                        mov              qword ptr [rsp + 2840], rax;         jmp   n186_lit_string_α
.Lx369_0:               .quad            .Lx369_0_s
.Lx369_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:      mov              r11, 126
                        mov              qword ptr [rsp + 2720], 2            # result
                        mov              dword ptr [rsp + 2724], 1
                        mov              rax, qword ptr [rip + .Lx370_0]
                        mov              qword ptr [rsp + 2728], rax;         jmp   n187_var_ref_α
.Lx370_0:               .quad            .Lx370_0_s
.Lx370_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n187_var_ref_α:         mov              r11, 127
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4816]
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx;         jmp   n188_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n188_var_ref_α:         mov              r11, 128
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4848]
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx;         jmp   n189_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n189_call_builtin_prolog_α:
                        mov              r11, 129
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2696], rax
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 2672], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 2680], rax
                        mov              rax, qword ptr [rsp + 2720]
                        mov              qword ptr [rsp + 2656], rax
                        mov              rax, qword ptr [rsp + 2728]
                        mov              qword ptr [rsp + 2664], rax
                        lea              rdi, [rsp + 2656]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2640], rax
                        mov              qword ptr [rsp + 2648], rdx
                        cmp              al, 104;                             je    $2C$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n190_var_ref_α
n189_call_builtin_prolog_β:
                        mov              r11, 129;                            jmp   $2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n190_var_ref_α:         mov              r11, 130
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4880]
                        mov              qword ptr [rsp + 2736], rax
                        mov              qword ptr [rsp + 2744], rdx;         jmp   n191_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n191_call_builtin_prolog_α:
                        mov              r11, 131
                        mov              rax, qword ptr [rsp + 2736]
                        mov              qword ptr [rsp + 2800], rax
                        mov              rax, qword ptr [rsp + 2744]
                        mov              qword ptr [rsp + 2808], rax
                        mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 2784], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 2792], rax
                        mov              rax, qword ptr [rsp + 2832]
                        mov              qword ptr [rsp + 2768], rax
                        mov              rax, qword ptr [rsp + 2840]
                        mov              qword ptr [rsp + 2776], rax
                        lea              rdi, [rsp + 2768]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2752], rax
                        mov              qword ptr [rsp + 2760], rdx
                        cmp              al, 104;                             je    n203_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n192_call_builtin_prolog_α
n191_call_builtin_prolog_β:
                        mov              r11, 131;                            jmp   n203_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n192_call_builtin_prolog_α:
                        mov              r11, 132
                        mov              rax, qword ptr [rsp + 2752]
                        mov              qword ptr [rsp + 2576], rax
                        mov              rax, qword ptr [rsp + 2760]
                        mov              qword ptr [rsp + 2584], rax
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 2560], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 2568], rax
                        lea              rdi, [rsp + 2560]
                        lea              r8, [rsp + 2560]
.Lx379_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx379_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx379_41
                        cmp              esi, 1;                              jne   .Lx379_55
                        mov              r8, rax;                             jmp   .Lx379_40
.Lx379_55:              cmp              esi, 2;                              jne   .Lx379_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx379_41
                        mov              r8, rax;                             jmp   .Lx379_40
.Lx379_56:              cmp              al, 72;                              jne   .Lx379_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx379_41
                        cmp              rax, r8;                             je    .Lx379_41
                        mov              r8, rax;                             jmp   .Lx379_40
.Lx379_41:              lea              r9, [rsp + 2576]
.Lx379_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx379_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx379_43
                        cmp              esi, 1;                              jne   .Lx379_57
                        mov              r9, rax;                             jmp   .Lx379_42
.Lx379_57:              cmp              esi, 2;                              jne   .Lx379_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx379_43
                        mov              r9, rax;                             jmp   .Lx379_42
.Lx379_58:              cmp              al, 72;                              jne   .Lx379_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx379_43
                        cmp              rax, r9;                             je    .Lx379_43
                        mov              r9, rax;                             jmp   .Lx379_42
.Lx379_43:              cmp              r8, r9;                              je    .Lx379_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx379_44
                        cmp              al, 104;                             je    .Lx379_44
                        cmp              al, 72;                              jne   .Lx379_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx379_44
                                                                              jmp   .Lx379_45
.Lx379_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx379_53
                        cmp              al, 104;                             je    .Lx379_53
                        cmp              al, 72;                              jne   .Lx379_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx379_53
                                                                              jmp   .Lx379_46
.Lx379_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx379_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx379_53
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx379_51
.Lx379_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx379_47
                        cmp              al, 104;                             je    .Lx379_47
                        cmp              al, 72;                              jne   .Lx379_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx379_47
                                                                              jmp   .Lx379_48
.Lx379_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx379_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx379_53
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx379_51
.Lx379_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx379_49
                        cmp              dl, 80;                              je    .Lx379_53
                                                                              jmp   .Lx379_52
.Lx379_49:              cmp              dl, 80;                              je    .Lx379_52
                        cmp              cl, 5;                               je    .Lx379_53
                        cmp              dl, 5;                               je    .Lx379_53
                        cmp              cl, 3;                               jne   .Lx379_50
                        cmp              dl, 3;                               jne   .Lx379_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx379_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx379_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx379_51
                                                                              jmp   .Lx379_52
.Lx379_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx379_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx379_53
.Lx379_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx379_54
.Lx379_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx379_54
.Lx379_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx379_54:              mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx
                        cmp              al, 104;                             je    n203_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n193_var_ref_α
n192_call_builtin_prolog_β:
                        mov              r11, 132;                            jmp   n203_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n193_var_ref_α:         mov              r11, 133
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx;         jmp   n194_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_string_α:      mov              r11, 134
                        mov              qword ptr [rsp + 2528], 2            # result
                        mov              dword ptr [rsp + 2532], 1
                        mov              rax, qword ptr [rip + .Lx382_0]
                        mov              qword ptr [rsp + 2536], rax;         jmp   n195_var_ref_α
.Lx382_0:               .quad            .Lx382_0_s
.Lx382_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n195_var_ref_α:         mov              r11, 135
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4848]
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx;         jmp   n196_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_string_α:      mov              r11, 136
                        mov              qword ptr [rsp + 2432], 2            # result
                        mov              dword ptr [rsp + 2436], 1
                        mov              rax, qword ptr [rip + .Lx385_0]
                        mov              qword ptr [rsp + 2440], rax;         jmp   n197_lit_integer_α
.Lx385_0:               .quad            .Lx385_0_s
.Lx385_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_integer_α:     mov              r11, 137
                        mov              qword ptr [rsp + 2320], 3            # result
                        mov              rax, qword ptr [rip + .Lx386_0]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n198_var_ref_α
.Lx386_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n198_var_ref_α:         mov              r11, 138
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4880]
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx;         jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n199_call_builtin_prolog_α:
                        mov              r11, 139
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 2400], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 2408], rax
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 2392], rax
                        mov              rax, qword ptr [rsp + 2432]
                        mov              qword ptr [rsp + 2368], rax
                        mov              rax, qword ptr [rsp + 2440]
                        mov              qword ptr [rsp + 2376], rax
                        lea              rdi, [rsp + 2368]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2352], rax
                        mov              qword ptr [rsp + 2360], rdx
                        cmp              al, 104;                             je    $2C$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n200_call_builtin_prolog_α
n199_call_builtin_prolog_β:
                        mov              r11, 139;                            jmp   $2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n200_call_builtin_prolog_α:
                        mov              r11, 140
                        mov              rax, qword ptr [rsp + 2352]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 2360]
                        mov              qword ptr [rsp + 2504], rax
                        mov              rax, qword ptr [rsp + 2304]
                        mov              qword ptr [rsp + 2480], rax
                        mov              rax, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 2488], rax
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 2472], rax
                        lea              rdi, [rsp + 2464]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx
                        cmp              al, 104;                             je    n203_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n201_call_builtin_prolog_α
n200_call_builtin_prolog_β:
                        mov              r11, 140;                            jmp   n203_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n201_call_builtin_prolog_α:
                        mov              r11, 141
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 2272], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 2280], rax
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 2256], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 2264], rax
                        lea              rdi, [rsp + 2256]
                        lea              r8, [rsp + 2256]
.Lx391_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx391_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx391_41
                        cmp              esi, 1;                              jne   .Lx391_55
                        mov              r8, rax;                             jmp   .Lx391_40
.Lx391_55:              cmp              esi, 2;                              jne   .Lx391_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx391_41
                        mov              r8, rax;                             jmp   .Lx391_40
.Lx391_56:              cmp              al, 72;                              jne   .Lx391_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx391_41
                        cmp              rax, r8;                             je    .Lx391_41
                        mov              r8, rax;                             jmp   .Lx391_40
.Lx391_41:              lea              r9, [rsp + 2272]
.Lx391_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx391_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx391_43
                        cmp              esi, 1;                              jne   .Lx391_57
                        mov              r9, rax;                             jmp   .Lx391_42
.Lx391_57:              cmp              esi, 2;                              jne   .Lx391_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx391_43
                        mov              r9, rax;                             jmp   .Lx391_42
.Lx391_58:              cmp              al, 72;                              jne   .Lx391_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx391_43
                        cmp              rax, r9;                             je    .Lx391_43
                        mov              r9, rax;                             jmp   .Lx391_42
.Lx391_43:              cmp              r8, r9;                              je    .Lx391_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx391_44
                        cmp              al, 104;                             je    .Lx391_44
                        cmp              al, 72;                              jne   .Lx391_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx391_44
                                                                              jmp   .Lx391_45
.Lx391_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx391_53
                        cmp              al, 104;                             je    .Lx391_53
                        cmp              al, 72;                              jne   .Lx391_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx391_53
                                                                              jmp   .Lx391_46
.Lx391_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx391_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx391_53
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx391_51
.Lx391_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx391_47
                        cmp              al, 104;                             je    .Lx391_47
                        cmp              al, 72;                              jne   .Lx391_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx391_47
                                                                              jmp   .Lx391_48
.Lx391_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx391_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx391_53
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx391_51
.Lx391_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx391_49
                        cmp              dl, 80;                              je    .Lx391_53
                                                                              jmp   .Lx391_52
.Lx391_49:              cmp              dl, 80;                              je    .Lx391_52
                        cmp              cl, 5;                               je    .Lx391_53
                        cmp              dl, 5;                               je    .Lx391_53
                        cmp              cl, 3;                               jne   .Lx391_50
                        cmp              dl, 3;                               jne   .Lx391_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx391_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx391_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx391_51
                                                                              jmp   .Lx391_52
.Lx391_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx391_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx391_53
.Lx391_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx391_54
.Lx391_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx391_54
.Lx391_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx391_54:              mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx
                        cmp              al, 104;                             je    n203_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n202_suspend_α
n201_call_builtin_prolog_β:
                        mov              r11, 141;                            jmp   n203_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n202_suspend_α:         mov              r11, 142
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx393_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4800];         jmp   rax
.Lx393_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n202_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n202_suspend_β]
                        mov              qword ptr [rsp + 4800], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   $2C$2F2_γ
n202_suspend_β:         mov              r11, 142;                            jmp   n203_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n203_call_builtin_prolog_α:
                        mov              r11, 143
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 2208], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 2216], rax
                        lea              rdi, [rsp + 2208]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx
                        cmp              al, 104;                             je    $2C$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n204_var_ref_α
n203_call_builtin_prolog_β:
                        mov              r11, 143;                            jmp   $2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n204_var_ref_α:         mov              r11, 144
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx;         jmp   n205_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_integer_α:     mov              r11, 145
                        mov              qword ptr [rsp + 2160], 3            # result
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rsp + 2168], rax;         jmp   n206_lit_string_α
.Lx397_0:               .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n206_lit_string_α:      mov              r11, 146
                        mov              qword ptr [rsp + 2176], 2            # result
                        mov              dword ptr [rsp + 2180], 1
                        mov              rax, qword ptr [rip + .Lx398_0]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n207_call_builtin_prolog_α
.Lx398_0:               .quad            .Lx398_0_s
.Lx398_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n207_call_builtin_prolog_α:
                        mov              r11, 147
                        mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 2128], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 2136], rax
                        mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 2112], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 2120], rax
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2104], rax
                        lea              rdi, [rsp + 2096]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx
                        cmp              al, 104;                             je    n228_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n208_var_ref_α
n207_call_builtin_prolog_β:
                        mov              r11, 147;                            jmp   n228_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n208_var_ref_α:         mov              r11, 148
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1824], rax
                        mov              qword ptr [rsp + 1832], rdx;         jmp   n209_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_string_α:      mov              r11, 149
                        mov              qword ptr [rsp + 2064], 2            # result
                        mov              dword ptr [rsp + 2068], 1
                        mov              rax, qword ptr [rip + .Lx402_0]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n210_lit_string_α
.Lx402_0:               .quad            .Lx402_0_s
.Lx402_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n210_lit_string_α:      mov              r11, 150
                        mov              qword ptr [rsp + 1952], 2            # result
                        mov              dword ptr [rsp + 1956], 1
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n211_var_ref_α
.Lx403_0:               .quad            .Lx403_0_s
.Lx403_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n211_var_ref_α:         mov              r11, 151
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4816]
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx;         jmp   n212_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n212_var_ref_α:         mov              r11, 152
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4848]
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx;         jmp   n213_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n213_call_builtin_prolog_α:
                        mov              r11, 153
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1928], rax
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1912], rax
                        mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 1896], rax
                        lea              rdi, [rsp + 1888]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx
                        cmp              al, 104;                             je    $2C$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n214_var_ref_α
n213_call_builtin_prolog_β:
                        mov              r11, 153;                            jmp   $2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n214_var_ref_α:         mov              r11, 154
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4880]
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx;         jmp   n215_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n215_call_builtin_prolog_α:
                        mov              r11, 155
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 2040], rax
                        mov              rax, qword ptr [rsp + 1872]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 1880]
                        mov              qword ptr [rsp + 2024], rax
                        mov              rax, qword ptr [rsp + 2064]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 2008], rax
                        lea              rdi, [rsp + 2000]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx
                        cmp              al, 104;                             je    n227_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n216_call_builtin_prolog_α
n215_call_builtin_prolog_β:
                        mov              r11, 155;                            jmp   n227_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n216_call_builtin_prolog_α:
                        mov              r11, 156
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1816], rax
                        mov              rax, qword ptr [rsp + 1824]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 1832]
                        mov              qword ptr [rsp + 1800], rax
                        lea              rdi, [rsp + 1792]
                        lea              r8, [rsp + 1792]
.Lx412_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx412_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx412_41
                        cmp              esi, 1;                              jne   .Lx412_55
                        mov              r8, rax;                             jmp   .Lx412_40
.Lx412_55:              cmp              esi, 2;                              jne   .Lx412_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx412_41
                        mov              r8, rax;                             jmp   .Lx412_40
.Lx412_56:              cmp              al, 72;                              jne   .Lx412_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx412_41
                        cmp              rax, r8;                             je    .Lx412_41
                        mov              r8, rax;                             jmp   .Lx412_40
.Lx412_41:              lea              r9, [rsp + 1808]
.Lx412_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx412_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx412_43
                        cmp              esi, 1;                              jne   .Lx412_57
                        mov              r9, rax;                             jmp   .Lx412_42
.Lx412_57:              cmp              esi, 2;                              jne   .Lx412_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx412_43
                        mov              r9, rax;                             jmp   .Lx412_42
.Lx412_58:              cmp              al, 72;                              jne   .Lx412_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx412_43
                        cmp              rax, r9;                             je    .Lx412_43
                        mov              r9, rax;                             jmp   .Lx412_42
.Lx412_43:              cmp              r8, r9;                              je    .Lx412_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx412_44
                        cmp              al, 104;                             je    .Lx412_44
                        cmp              al, 72;                              jne   .Lx412_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx412_44
                                                                              jmp   .Lx412_45
.Lx412_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx412_53
                        cmp              al, 104;                             je    .Lx412_53
                        cmp              al, 72;                              jne   .Lx412_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx412_53
                                                                              jmp   .Lx412_46
.Lx412_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx412_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx412_53
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx412_51
.Lx412_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx412_47
                        cmp              al, 104;                             je    .Lx412_47
                        cmp              al, 72;                              jne   .Lx412_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx412_47
                                                                              jmp   .Lx412_48
.Lx412_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx412_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx412_53
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx412_51
.Lx412_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx412_49
                        cmp              dl, 80;                              je    .Lx412_53
                                                                              jmp   .Lx412_52
.Lx412_49:              cmp              dl, 80;                              je    .Lx412_52
                        cmp              cl, 5;                               je    .Lx412_53
                        cmp              dl, 5;                               je    .Lx412_53
                        cmp              cl, 3;                               jne   .Lx412_50
                        cmp              dl, 3;                               jne   .Lx412_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx412_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx412_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx412_51
                                                                              jmp   .Lx412_52
.Lx412_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx412_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx412_53
.Lx412_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx412_54
.Lx412_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx412_54
.Lx412_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx412_54:              mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx
                        cmp              al, 104;                             je    n227_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n217_var_ref_α
n216_call_builtin_prolog_β:
                        mov              r11, 156;                            jmp   n227_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n217_var_ref_α:         mov              r11, 157
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx;         jmp   n218_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n218_lit_string_α:      mov              r11, 158
                        mov              qword ptr [rsp + 1760], 2            # result
                        mov              dword ptr [rsp + 1764], 1
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n219_var_ref_α
.Lx415_0:               .quad            .Lx415_0_s
.Lx415_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n219_var_ref_α:         mov              r11, 159
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4864]
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx;         jmp   n220_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_string_α:      mov              r11, 160
                        mov              qword ptr [rsp + 1664], 2            # result
                        mov              dword ptr [rsp + 1668], 1
                        mov              rax, qword ptr [rip + .Lx418_0]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n221_lit_integer_α
.Lx418_0:               .quad            .Lx418_0_s
.Lx418_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_integer_α:     mov              r11, 161
                        mov              qword ptr [rsp + 1552], 3            # result
                        mov              rax, qword ptr [rip + .Lx419_0]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n222_var_ref_α
.Lx419_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n222_var_ref_α:         mov              r11, 162
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4880]
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx;         jmp   n223_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n223_call_builtin_prolog_α:
                        mov              r11, 163
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 1640], rax
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1624], rax
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1608], rax
                        lea              rdi, [rsp + 1600]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                        cmp              al, 104;                             je    $2C$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n224_call_builtin_prolog_α
n223_call_builtin_prolog_β:
                        mov              r11, 163;                            jmp   $2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n224_call_builtin_prolog_α:
                        mov              r11, 164
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 1736], rax
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1720], rax
                        mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1704], rax
                        lea              rdi, [rsp + 1696]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx
                        cmp              al, 104;                             je    n227_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n225_call_builtin_prolog_α
n224_call_builtin_prolog_β:
                        mov              r11, 164;                            jmp   n227_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n225_call_builtin_prolog_α:
                        mov              r11, 165
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1512], rax
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1496], rax
                        lea              rdi, [rsp + 1488]
                        lea              r8, [rsp + 1488]
.Lx424_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx424_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx424_41
                        cmp              esi, 1;                              jne   .Lx424_55
                        mov              r8, rax;                             jmp   .Lx424_40
.Lx424_55:              cmp              esi, 2;                              jne   .Lx424_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx424_41
                        mov              r8, rax;                             jmp   .Lx424_40
.Lx424_56:              cmp              al, 72;                              jne   .Lx424_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx424_41
                        cmp              rax, r8;                             je    .Lx424_41
                        mov              r8, rax;                             jmp   .Lx424_40
.Lx424_41:              lea              r9, [rsp + 1504]
.Lx424_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx424_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx424_43
                        cmp              esi, 1;                              jne   .Lx424_57
                        mov              r9, rax;                             jmp   .Lx424_42
.Lx424_57:              cmp              esi, 2;                              jne   .Lx424_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx424_43
                        mov              r9, rax;                             jmp   .Lx424_42
.Lx424_58:              cmp              al, 72;                              jne   .Lx424_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx424_43
                        cmp              rax, r9;                             je    .Lx424_43
                        mov              r9, rax;                             jmp   .Lx424_42
.Lx424_43:              cmp              r8, r9;                              je    .Lx424_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx424_44
                        cmp              al, 104;                             je    .Lx424_44
                        cmp              al, 72;                              jne   .Lx424_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx424_44
                                                                              jmp   .Lx424_45
.Lx424_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx424_53
                        cmp              al, 104;                             je    .Lx424_53
                        cmp              al, 72;                              jne   .Lx424_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx424_53
                                                                              jmp   .Lx424_46
.Lx424_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx424_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx424_53
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx424_51
.Lx424_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx424_47
                        cmp              al, 104;                             je    .Lx424_47
                        cmp              al, 72;                              jne   .Lx424_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx424_47
                                                                              jmp   .Lx424_48
.Lx424_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx424_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx424_53
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx424_51
.Lx424_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx424_49
                        cmp              dl, 80;                              je    .Lx424_53
                                                                              jmp   .Lx424_52
.Lx424_49:              cmp              dl, 80;                              je    .Lx424_52
                        cmp              cl, 5;                               je    .Lx424_53
                        cmp              dl, 5;                               je    .Lx424_53
                        cmp              cl, 3;                               jne   .Lx424_50
                        cmp              dl, 3;                               jne   .Lx424_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx424_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx424_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx424_51
                                                                              jmp   .Lx424_52
.Lx424_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx424_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx424_53
.Lx424_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx424_54
.Lx424_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx424_54
.Lx424_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx424_54:              mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx
                        cmp              al, 104;                             je    n227_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n226_suspend_α
n225_call_builtin_prolog_β:
                        mov              r11, 165;                            jmp   n227_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n226_suspend_α:         mov              r11, 166
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx426_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4800];         jmp   rax
.Lx426_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n226_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n226_suspend_β]
                        mov              qword ptr [rsp + 4800], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   $2C$2F2_γ
n226_suspend_β:         mov              r11, 166;                            jmp   n227_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n227_call_builtin_prolog_α:
                        mov              r11, 167
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 1448], rax
                        lea              rdi, [rsp + 1440]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                        cmp              al, 104;                             je    $2C$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n228_var_ref_α
n227_call_builtin_prolog_β:
                        mov              r11, 167;                            jmp   $2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n228_var_ref_α:         mov              r11, 168
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx;         jmp   n229_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_integer_α:     mov              r11, 169
                        mov              qword ptr [rsp + 1392], 3            # result
                        mov              rax, qword ptr [rip + .Lx430_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n230_lit_string_α
.Lx430_0:               .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_string_α:      mov              r11, 170
                        mov              qword ptr [rsp + 1408], 2            # result
                        mov              dword ptr [rsp + 1412], 1
                        mov              rax, qword ptr [rip + .Lx431_0]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n231_call_builtin_prolog_α
.Lx431_0:               .quad            .Lx431_0_s
.Lx431_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n231_call_builtin_prolog_α:
                        mov              r11, 171
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1368], rax
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1352], rax
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1336], rax
                        lea              rdi, [rsp + 1328]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        cmp              al, 104;                             je    n243_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n232_var_ref_α
n231_call_builtin_prolog_β:
                        mov              r11, 171;                            jmp   n243_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n232_var_ref_α:         mov              r11, 172
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n233_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n233_lit_string_α:      mov              r11, 173
                        mov              qword ptr [rsp + 1296], 2            # result
                        mov              dword ptr [rsp + 1300], 1
                        mov              rax, qword ptr [rip + .Lx435_0]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n234_var_ref_α
.Lx435_0:               .quad            .Lx435_0_s
.Lx435_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n234_var_ref_α:         mov              r11, 174
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4816]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n235_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n235_var_ref_α:         mov              r11, 175
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4848]
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx;         jmp   n236_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n236_call_builtin_prolog_α:
                        mov              r11, 176
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1272], rax
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1256], rax
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1240], rax
                        lea              rdi, [rsp + 1232]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              al, 104;                             je    n242_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n237_call_builtin_prolog_α
n236_call_builtin_prolog_β:
                        mov              r11, 176;                            jmp   n242_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n237_call_builtin_prolog_α:
                        mov              r11, 177
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1160], rax
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1144], rax
                        lea              rdi, [rsp + 1136]
                        lea              r8, [rsp + 1136]
.Lx441_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx441_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx441_41
                        cmp              esi, 1;                              jne   .Lx441_55
                        mov              r8, rax;                             jmp   .Lx441_40
.Lx441_55:              cmp              esi, 2;                              jne   .Lx441_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx441_41
                        mov              r8, rax;                             jmp   .Lx441_40
.Lx441_56:              cmp              al, 72;                              jne   .Lx441_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx441_41
                        cmp              rax, r8;                             je    .Lx441_41
                        mov              r8, rax;                             jmp   .Lx441_40
.Lx441_41:              lea              r9, [rsp + 1152]
.Lx441_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx441_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx441_43
                        cmp              esi, 1;                              jne   .Lx441_57
                        mov              r9, rax;                             jmp   .Lx441_42
.Lx441_57:              cmp              esi, 2;                              jne   .Lx441_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx441_43
                        mov              r9, rax;                             jmp   .Lx441_42
.Lx441_58:              cmp              al, 72;                              jne   .Lx441_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx441_43
                        cmp              rax, r9;                             je    .Lx441_43
                        mov              r9, rax;                             jmp   .Lx441_42
.Lx441_43:              cmp              r8, r9;                              je    .Lx441_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx441_44
                        cmp              al, 104;                             je    .Lx441_44
                        cmp              al, 72;                              jne   .Lx441_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx441_44
                                                                              jmp   .Lx441_45
.Lx441_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx441_53
                        cmp              al, 104;                             je    .Lx441_53
                        cmp              al, 72;                              jne   .Lx441_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx441_53
                                                                              jmp   .Lx441_46
.Lx441_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx441_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx441_53
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx441_51
.Lx441_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx441_47
                        cmp              al, 104;                             je    .Lx441_47
                        cmp              al, 72;                              jne   .Lx441_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx441_47
                                                                              jmp   .Lx441_48
.Lx441_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx441_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx441_53
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx441_51
.Lx441_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx441_49
                        cmp              dl, 80;                              je    .Lx441_53
                                                                              jmp   .Lx441_52
.Lx441_49:              cmp              dl, 80;                              je    .Lx441_52
                        cmp              cl, 5;                               je    .Lx441_53
                        cmp              dl, 5;                               je    .Lx441_53
                        cmp              cl, 3;                               jne   .Lx441_50
                        cmp              dl, 3;                               jne   .Lx441_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx441_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx441_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx441_51
                                                                              jmp   .Lx441_52
.Lx441_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx441_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx441_53
.Lx441_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx441_54
.Lx441_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx441_54
.Lx441_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx441_54:              mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        cmp              al, 104;                             je    n242_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n238_var_ref_α
n237_call_builtin_prolog_β:
                        mov              r11, 177;                            jmp   n242_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n238_var_ref_α:         mov              r11, 178
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n239_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n239_var_ref_α:         mov              r11, 179
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4832]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n240_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n240_call_builtin_prolog_α:
                        mov              r11, 180
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1080], rax
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1064], rax
                        lea              rdi, [rsp + 1056]
                        lea              r8, [rsp + 1056]
.Lx446_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx446_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx446_41
                        cmp              esi, 1;                              jne   .Lx446_55
                        mov              r8, rax;                             jmp   .Lx446_40
.Lx446_55:              cmp              esi, 2;                              jne   .Lx446_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx446_41
                        mov              r8, rax;                             jmp   .Lx446_40
.Lx446_56:              cmp              al, 72;                              jne   .Lx446_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx446_41
                        cmp              rax, r8;                             je    .Lx446_41
                        mov              r8, rax;                             jmp   .Lx446_40
.Lx446_41:              lea              r9, [rsp + 1072]
.Lx446_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx446_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx446_43
                        cmp              esi, 1;                              jne   .Lx446_57
                        mov              r9, rax;                             jmp   .Lx446_42
.Lx446_57:              cmp              esi, 2;                              jne   .Lx446_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx446_43
                        mov              r9, rax;                             jmp   .Lx446_42
.Lx446_58:              cmp              al, 72;                              jne   .Lx446_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx446_43
                        cmp              rax, r9;                             je    .Lx446_43
                        mov              r9, rax;                             jmp   .Lx446_42
.Lx446_43:              cmp              r8, r9;                              je    .Lx446_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx446_44
                        cmp              al, 104;                             je    .Lx446_44
                        cmp              al, 72;                              jne   .Lx446_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx446_44
                                                                              jmp   .Lx446_45
.Lx446_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx446_53
                        cmp              al, 104;                             je    .Lx446_53
                        cmp              al, 72;                              jne   .Lx446_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx446_53
                                                                              jmp   .Lx446_46
.Lx446_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx446_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx446_53
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx446_51
.Lx446_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx446_47
                        cmp              al, 104;                             je    .Lx446_47
                        cmp              al, 72;                              jne   .Lx446_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx446_47
                                                                              jmp   .Lx446_48
.Lx446_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx446_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx446_53
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx446_51
.Lx446_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx446_49
                        cmp              dl, 80;                              je    .Lx446_53
                                                                              jmp   .Lx446_52
.Lx446_49:              cmp              dl, 80;                              je    .Lx446_52
                        cmp              cl, 5;                               je    .Lx446_53
                        cmp              dl, 5;                               je    .Lx446_53
                        cmp              cl, 3;                               jne   .Lx446_50
                        cmp              dl, 3;                               jne   .Lx446_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx446_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx446_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx446_51
                                                                              jmp   .Lx446_52
.Lx446_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx446_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx446_53
.Lx446_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx446_54
.Lx446_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx446_54
.Lx446_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx446_54:              mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              al, 104;                             je    n242_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n241_suspend_α
n240_call_builtin_prolog_β:
                        mov              r11, 180;                            jmp   n242_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n241_suspend_α:         mov              r11, 181
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx448_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4800];         jmp   rax
.Lx448_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n241_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n241_suspend_β]
                        mov              qword ptr [rsp + 4800], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   $2C$2F2_γ
n241_suspend_β:         mov              r11, 181;                            jmp   n242_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n242_call_builtin_prolog_α:
                        mov              r11, 182
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 1016], rax
                        lea              rdi, [rsp + 1008]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              al, 104;                             je    $2C$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n243_var_ref_α
n242_call_builtin_prolog_β:
                        mov              r11, 182;                            jmp   $2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n243_var_ref_α:         mov              r11, 183
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n244_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_integer_α:     mov              r11, 184
                        mov              qword ptr [rsp + 960], 3             # result
                        mov              rax, qword ptr [rip + .Lx452_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n245_lit_integer_α
.Lx452_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_integer_α:     mov              r11, 185
                        mov              qword ptr [rsp + 976], 3             # result
                        mov              rax, qword ptr [rip + .Lx453_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n246_call_builtin_prolog_α
.Lx453_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n246_call_builtin_prolog_α:
                        mov              r11, 186
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 936], rax
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 920], rax
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 904], rax
                        lea              rdi, [rsp + 896]
                        lea              r8, [rsp + 896]
.Lx454_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx454_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx454_111
                        cmp              esi, 1;                              jne   .Lx454_112
                        mov              r8, rax;                             jmp   .Lx454_110
.Lx454_112:             cmp              esi, 2;                              jne   .Lx454_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx454_111
                        mov              r8, rax;                             jmp   .Lx454_110
.Lx454_113:             cmp              al, 72;                              jne   .Lx454_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx454_111
                        cmp              rax, r8;                             je    .Lx454_111
                        mov              r8, rax;                             jmp   .Lx454_110
.Lx454_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx454_114
                        cmp              al, 104;                             je    .Lx454_114
                        cmp              al, 72;                              jne   .Lx454_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx454_114
                                                                              jmp   .Lx454_118
.Lx454_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx454_115
                        cmp              al, 3;                               jne   .Lx454_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx454_114
                        movabs           rdx, 1
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lx454_115
                                                                              jmp   .Lx454_114
.Lx454_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx454_117
.Lx454_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx454_117
.Lx454_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx454_117:             mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              al, 104;                             je    n255_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n247_var_ref_α
n246_call_builtin_prolog_β:
                        mov              r11, 186;                            jmp   n255_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n247_var_ref_α:         mov              r11, 187
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n248_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_integer_α:     mov              r11, 188
                        mov              qword ptr [rsp + 864], 3             # result
                        mov              rax, qword ptr [rip + .Lx457_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n249_call_builtin_prolog_α
.Lx457_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n249_call_builtin_prolog_α:
                        mov              r11, 189
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 824], rax
                        lea              rdi, [rsp + 816]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    n254_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n250_var_ref_α
n249_call_builtin_prolog_β:
                        mov              r11, 189;                            jmp   n254_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n250_var_ref_α:         mov              r11, 190
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n251_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n251_var_ref_α:         mov              r11, 191
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4832]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n252_call_builtin_prolog_α:
                        mov              r11, 192
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 760], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 744], rax
                        lea              rdi, [rsp + 736]
                        lea              r8, [rsp + 736]
.Lx463_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx463_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx463_41
                        cmp              esi, 1;                              jne   .Lx463_55
                        mov              r8, rax;                             jmp   .Lx463_40
.Lx463_55:              cmp              esi, 2;                              jne   .Lx463_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx463_41
                        mov              r8, rax;                             jmp   .Lx463_40
.Lx463_56:              cmp              al, 72;                              jne   .Lx463_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx463_41
                        cmp              rax, r8;                             je    .Lx463_41
                        mov              r8, rax;                             jmp   .Lx463_40
.Lx463_41:              lea              r9, [rsp + 752]
.Lx463_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx463_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx463_43
                        cmp              esi, 1;                              jne   .Lx463_57
                        mov              r9, rax;                             jmp   .Lx463_42
.Lx463_57:              cmp              esi, 2;                              jne   .Lx463_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx463_43
                        mov              r9, rax;                             jmp   .Lx463_42
.Lx463_58:              cmp              al, 72;                              jne   .Lx463_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx463_43
                        cmp              rax, r9;                             je    .Lx463_43
                        mov              r9, rax;                             jmp   .Lx463_42
.Lx463_43:              cmp              r8, r9;                              je    .Lx463_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx463_44
                        cmp              al, 104;                             je    .Lx463_44
                        cmp              al, 72;                              jne   .Lx463_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx463_44
                                                                              jmp   .Lx463_45
.Lx463_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx463_53
                        cmp              al, 104;                             je    .Lx463_53
                        cmp              al, 72;                              jne   .Lx463_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx463_53
                                                                              jmp   .Lx463_46
.Lx463_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx463_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx463_53
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx463_51
.Lx463_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx463_47
                        cmp              al, 104;                             je    .Lx463_47
                        cmp              al, 72;                              jne   .Lx463_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx463_47
                                                                              jmp   .Lx463_48
.Lx463_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx463_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx463_53
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx463_51
.Lx463_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx463_49
                        cmp              dl, 80;                              je    .Lx463_53
                                                                              jmp   .Lx463_52
.Lx463_49:              cmp              dl, 80;                              je    .Lx463_52
                        cmp              cl, 5;                               je    .Lx463_53
                        cmp              dl, 5;                               je    .Lx463_53
                        cmp              cl, 3;                               jne   .Lx463_50
                        cmp              dl, 3;                               jne   .Lx463_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx463_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx463_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx463_51
                                                                              jmp   .Lx463_52
.Lx463_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx463_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx463_53
.Lx463_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx463_54
.Lx463_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx463_54
.Lx463_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx463_54:              mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              al, 104;                             je    n254_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n253_suspend_α
n252_call_builtin_prolog_β:
                        mov              r11, 192;                            jmp   n254_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n253_suspend_α:         mov              r11, 193
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx465_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4800];         jmp   rax
.Lx465_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n253_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n253_suspend_β]
                        mov              qword ptr [rsp + 4800], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   $2C$2F2_γ
n253_suspend_β:         mov              r11, 193;                            jmp   n254_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n254_call_builtin_prolog_α:
                        mov              r11, 194
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 696], rax
                        lea              rdi, [rsp + 688]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    $2C$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n255_var_ref_α
n254_call_builtin_prolog_β:
                        mov              r11, 194;                            jmp   $2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n255_var_ref_α:         mov              r11, 195
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n256_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n256_lit_integer_α:     mov              r11, 196
                        mov              qword ptr [rsp + 640], 3             # result
                        mov              rax, qword ptr [rip + .Lx469_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n257_lit_integer_α
.Lx469_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n257_lit_integer_α:     mov              r11, 197
                        mov              qword ptr [rsp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Lx470_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n258_call_builtin_prolog_α
.Lx470_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n258_call_builtin_prolog_α:
                        mov              r11, 198
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 584], rax
                        lea              rdi, [rsp + 576]
                        lea              r8, [rsp + 576]
.Lx471_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx471_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx471_111
                        cmp              esi, 1;                              jne   .Lx471_112
                        mov              r8, rax;                             jmp   .Lx471_110
.Lx471_112:             cmp              esi, 2;                              jne   .Lx471_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx471_111
                        mov              r8, rax;                             jmp   .Lx471_110
.Lx471_113:             cmp              al, 72;                              jne   .Lx471_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx471_111
                        cmp              rax, r8;                             je    .Lx471_111
                        mov              r8, rax;                             jmp   .Lx471_110
.Lx471_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx471_114
                        cmp              al, 104;                             je    .Lx471_114
                        cmp              al, 72;                              jne   .Lx471_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx471_114
                                                                              jmp   .Lx471_118
.Lx471_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx471_115
                        cmp              al, 3;                               jne   .Lx471_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx471_114
                        movabs           rdx, 1
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lx471_115
                                                                              jmp   .Lx471_114
.Lx471_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx471_117
.Lx471_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx471_117
.Lx471_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx471_117:             mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n273_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n259_var_ref_α
n258_call_builtin_prolog_β:
                        mov              r11, 198;                            jmp   n273_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n259_var_ref_α:         mov              r11, 199
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n260_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_integer_α:     mov              r11, 200
                        mov              qword ptr [rsp + 544], 3             # result
                        mov              rax, qword ptr [rip + .Lx474_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n261_call_builtin_prolog_α
.Lx474_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n261_call_builtin_prolog_α:
                        mov              r11, 201
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 504], rax
                        lea              rdi, [rsp + 496]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n273_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n262_var_ref_α
n261_call_builtin_prolog_β:
                        mov              r11, 201;                            jmp   n273_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n262_var_ref_α:         mov              r11, 202
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n263_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n263_lit_string_α:      mov              r11, 203
                        mov              qword ptr [rsp + 464], 2             # result
                        mov              dword ptr [rsp + 468], 1
                        mov              rax, qword ptr [rip + .Lx478_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n264_lit_string_α
.Lx478_0:               .quad            .Lx478_0_s
.Lx478_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n264_lit_string_α:      mov              r11, 204
                        mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 13
                        mov              rax, qword ptr [rip + .Lx479_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n265_var_ref_α
.Lx479_0:               .quad            .Lx479_0_s
.Lx479_0_s:             .string          "all_different"
#-----------------------------------------------------------------------------------------------------------------------
n265_var_ref_α:         mov              r11, 205
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4816]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n266_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n266_call_builtin_prolog_α:
                        mov              r11, 206
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 232], rax
                        lea              rdi, [rsp + 224]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    $2C$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n267_lit_string_α
n266_call_builtin_prolog_β:
                        mov              r11, 206;                            jmp   $2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n267_lit_string_α:      mov              r11, 207
                        mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], 5
                        mov              rax, qword ptr [rip + .Lx483_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n268_var_ref_α
.Lx483_0:               .quad            .Lx483_0_s
.Lx483_0_s:             .string          "label"
#-----------------------------------------------------------------------------------------------------------------------
n268_var_ref_α:         mov              r11, 208
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4816]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n269_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n269_call_builtin_prolog_α:
                        mov              r11, 209
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 328], rax
                        lea              rdi, [rsp + 320]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    $2C$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n270_call_builtin_prolog_α
n269_call_builtin_prolog_β:
                        mov              r11, 209;                            jmp   $2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n270_call_builtin_prolog_α:
                        mov              r11, 210
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 440], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 424], rax
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 408], rax
                        lea              rdi, [rsp + 400]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n273_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n271_call_builtin_prolog_α
n270_call_builtin_prolog_β:
                        mov              r11, 210;                            jmp   n273_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n271_call_builtin_prolog_α:
                        mov              r11, 211
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        lea              r8, [rsp + 144]
.Lx488_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx488_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx488_41
                        cmp              esi, 1;                              jne   .Lx488_55
                        mov              r8, rax;                             jmp   .Lx488_40
.Lx488_55:              cmp              esi, 2;                              jne   .Lx488_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx488_41
                        mov              r8, rax;                             jmp   .Lx488_40
.Lx488_56:              cmp              al, 72;                              jne   .Lx488_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx488_41
                        cmp              rax, r8;                             je    .Lx488_41
                        mov              r8, rax;                             jmp   .Lx488_40
.Lx488_41:              lea              r9, [rsp + 160]
.Lx488_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx488_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx488_43
                        cmp              esi, 1;                              jne   .Lx488_57
                        mov              r9, rax;                             jmp   .Lx488_42
.Lx488_57:              cmp              esi, 2;                              jne   .Lx488_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx488_43
                        mov              r9, rax;                             jmp   .Lx488_42
.Lx488_58:              cmp              al, 72;                              jne   .Lx488_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx488_43
                        cmp              rax, r9;                             je    .Lx488_43
                        mov              r9, rax;                             jmp   .Lx488_42
.Lx488_43:              cmp              r8, r9;                              je    .Lx488_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx488_44
                        cmp              al, 104;                             je    .Lx488_44
                        cmp              al, 72;                              jne   .Lx488_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx488_44
                                                                              jmp   .Lx488_45
.Lx488_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx488_53
                        cmp              al, 104;                             je    .Lx488_53
                        cmp              al, 72;                              jne   .Lx488_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx488_53
                                                                              jmp   .Lx488_46
.Lx488_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx488_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx488_53
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx488_51
.Lx488_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx488_47
                        cmp              al, 104;                             je    .Lx488_47
                        cmp              al, 72;                              jne   .Lx488_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx488_47
                                                                              jmp   .Lx488_48
.Lx488_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx488_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx488_53
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx488_51
.Lx488_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx488_49
                        cmp              dl, 80;                              je    .Lx488_53
                                                                              jmp   .Lx488_52
.Lx488_49:              cmp              dl, 80;                              je    .Lx488_52
                        cmp              cl, 5;                               je    .Lx488_53
                        cmp              dl, 5;                               je    .Lx488_53
                        cmp              cl, 3;                               jne   .Lx488_50
                        cmp              dl, 3;                               jne   .Lx488_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx488_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx488_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx488_51
                                                                              jmp   .Lx488_52
.Lx488_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx488_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx488_53
.Lx488_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx488_54
.Lx488_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx488_54
.Lx488_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx488_54:              mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n273_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n272_suspend_α
n271_call_builtin_prolog_β:
                        mov              r11, 211;                            jmp   n273_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n272_suspend_α:         mov              r11, 212
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx490_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4800];         jmp   rax
.Lx490_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n272_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n272_suspend_β]
                        mov              qword ptr [rsp + 4800], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   $2C$2F2_γ
n272_suspend_β:         mov              r11, 212;                            jmp   n273_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n273_call_builtin_prolog_α:
                        mov              r11, 213
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 104], rax
                        lea              rdi, [rsp + 96]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    $2C$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   $2C$2F2_ω
n273_call_builtin_prolog_β:
                        mov              r11, 213;                            jmp   $2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
$2C$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$2C$2F2_β:
                                                                              jmp   n128_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
$2C$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx491_50
                        mov              qword ptr [rsp + 4800], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4800];         jmp   rax
.Lx491_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 4936]
                        add              rsp, 4960;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$2C$2F2_ω:
                        mov              rcx, qword ptr [rsp + 4944]
                        add              rsp, 4960;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__$call$2F1:
                        sub              rsp, 160
                        mov              qword ptr [rsp + 136], rcx
                        mov              qword ptr [rsp + 144], rdx
                        mov              qword ptr [rsp + 152], rsp
                        mov              rdi, rsp
                        mov              esi, 96
                        mov              edx, 128
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
$call$2F1_α_body:
                        lea              rax, [rip + n494_suspend_β]
                        mov              qword ptr [rsp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n492_var_ref_α:         mov              r11, 214
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n493_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n493_call_builtin_gen_α:
                        mov              r11, 215
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [rsp + 64], 0
.Lx497_60:              .section         .rodata
.Lbynamegenfn215:       .string          "$call"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn215]
                        lea              rsi, [rsp + 48]
                        mov              edx, 1
                        lea              rcx, [rsp + 64]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    $call$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n494_suspend_α
n493_call_builtin_gen_β:
                        mov              r11, 215;                            jmp   .Lx497_60
#-----------------------------------------------------------------------------------------------------------------------
n494_suspend_α:         mov              r11, 216
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx499_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 96];           jmp   rax
.Lx499_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n494_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n494_suspend_β]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   $call$2F1_γ
n494_suspend_β:         mov              r11, 216;                            jmp   n493_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
$call$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$call$2F1_β:
                                                                              jmp   n493_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
$call$2F1_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx499_50
                        mov              qword ptr [rsp + 96], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 96];           jmp   rax
.Lx499_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 136]
                        add              rsp, 160;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$call$2F1_ω:
                        mov              rcx, qword ptr [rsp + 144]
                        add              rsp, 160;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__send$2F1:
                        sub              rsp, 3840
                        mov              qword ptr [rsp + 3816], rcx
                        mov              qword ptr [rsp + 3824], rdx
                        mov              qword ptr [rsp + 3832], rsp
                        mov              rdi, rsp
                        mov              esi, 3552
                        mov              edx, 3808
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
send$2F1_α_body:
                        lea              rax, [rip + n596_suspend_β]
                        mov              qword ptr [rsp + 3552], rax
#-----------------------------------------------------------------------------------------------------------------------
n500_call_builtin_prolog_α:
                        mov              r11, 217
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx598_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx598_101
.Lx598_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx598_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx598_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx598_101
.Lx598_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx598_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    send$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n501_var_ref_α
n500_call_builtin_prolog_β:
                        mov              r11, 217;                            jmp   send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n501_var_ref_α:         mov              r11, 218
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx;         jmp   n502_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n502_lit_string_α:      mov              r11, 219
                        mov              qword ptr [rsp + 3536], 2            # result
                        mov              dword ptr [rsp + 3540], 1
                        mov              rax, qword ptr [rip + .Lx601_0]
                        mov              qword ptr [rsp + 3544], rax;         jmp   n503_lit_string_α
.Lx601_0:               .quad            .Lx601_0_s
.Lx601_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n503_lit_string_α:      mov              r11, 220
                        mov              qword ptr [rsp + 3440], 2            # result
                        mov              dword ptr [rsp + 3444], 1
                        mov              rax, qword ptr [rip + .Lx602_0]
                        mov              qword ptr [rsp + 3448], rax;         jmp   n504_var_ref_α
.Lx602_0:               .quad            .Lx602_0_s
.Lx602_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n504_var_ref_α:         mov              r11, 221
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3776]
                        mov              qword ptr [rsp + 3344], rax
                        mov              qword ptr [rsp + 3352], rdx;         jmp   n505_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n505_lit_string_α:      mov              r11, 222
                        mov              qword ptr [rsp + 3328], 2            # result
                        mov              dword ptr [rsp + 3332], 1
                        mov              rax, qword ptr [rip + .Lx605_0]
                        mov              qword ptr [rsp + 3336], rax;         jmp   n506_var_ref_α
.Lx605_0:               .quad            .Lx605_0_s
.Lx605_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n506_var_ref_α:         mov              r11, 223
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3760]
                        mov              qword ptr [rsp + 3232], rax
                        mov              qword ptr [rsp + 3240], rdx;         jmp   n507_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n507_lit_string_α:      mov              r11, 224
                        mov              qword ptr [rsp + 3216], 2            # result
                        mov              dword ptr [rsp + 3220], 1
                        mov              rax, qword ptr [rip + .Lx608_0]
                        mov              qword ptr [rsp + 3224], rax;         jmp   n508_var_ref_α
.Lx608_0:               .quad            .Lx608_0_s
.Lx608_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n508_var_ref_α:         mov              r11, 225
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3744]
                        mov              qword ptr [rsp + 3120], rax
                        mov              qword ptr [rsp + 3128], rdx;         jmp   n509_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n509_lit_string_α:      mov              r11, 226
                        mov              qword ptr [rsp + 3104], 2            # result
                        mov              dword ptr [rsp + 3108], 1
                        mov              rax, qword ptr [rip + .Lx611_0]
                        mov              qword ptr [rsp + 3112], rax;         jmp   n510_var_ref_α
.Lx611_0:               .quad            .Lx611_0_s
.Lx611_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n510_var_ref_α:         mov              r11, 227
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3728]
                        mov              qword ptr [rsp + 3008], rax
                        mov              qword ptr [rsp + 3016], rdx;         jmp   n511_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n511_lit_string_α:      mov              r11, 228
                        mov              qword ptr [rsp + 2992], 2            # result
                        mov              dword ptr [rsp + 2996], 2
                        mov              rax, qword ptr [rip + .Lx614_0]
                        mov              qword ptr [rsp + 3000], rax;         jmp   n512_call_builtin_prolog_α
.Lx614_0:               .quad            .Lx614_0_s
.Lx614_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n512_call_builtin_prolog_α:
                        mov              r11, 229
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 3072], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 3080], rax
                        mov              rax, qword ptr [rsp + 3008]
                        mov              qword ptr [rsp + 3056], rax
                        mov              rax, qword ptr [rsp + 3016]
                        mov              qword ptr [rsp + 3064], rax
                        mov              rax, qword ptr [rsp + 3104]
                        mov              qword ptr [rsp + 3040], rax
                        mov              rax, qword ptr [rsp + 3112]
                        mov              qword ptr [rsp + 3048], rax
                        lea              rdi, [rsp + 3040]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3024], rax
                        mov              qword ptr [rsp + 3032], rdx
                        cmp              al, 104;                             je    send$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n513_call_builtin_prolog_α
n512_call_builtin_prolog_β:
                        mov              r11, 229;                            jmp   send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n513_call_builtin_prolog_α:
                        mov              r11, 230
                        mov              rax, qword ptr [rsp + 3024]
                        mov              qword ptr [rsp + 3184], rax
                        mov              rax, qword ptr [rsp + 3032]
                        mov              qword ptr [rsp + 3192], rax
                        mov              rax, qword ptr [rsp + 3120]
                        mov              qword ptr [rsp + 3168], rax
                        mov              rax, qword ptr [rsp + 3128]
                        mov              qword ptr [rsp + 3176], rax
                        mov              rax, qword ptr [rsp + 3216]
                        mov              qword ptr [rsp + 3152], rax
                        mov              rax, qword ptr [rsp + 3224]
                        mov              qword ptr [rsp + 3160], rax
                        lea              rdi, [rsp + 3152]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3136], rax
                        mov              qword ptr [rsp + 3144], rdx
                        cmp              al, 104;                             je    send$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n514_call_builtin_prolog_α
n513_call_builtin_prolog_β:
                        mov              r11, 230;                            jmp   send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n514_call_builtin_prolog_α:
                        mov              r11, 231
                        mov              rax, qword ptr [rsp + 3136]
                        mov              qword ptr [rsp + 3296], rax
                        mov              rax, qword ptr [rsp + 3144]
                        mov              qword ptr [rsp + 3304], rax
                        mov              rax, qword ptr [rsp + 3232]
                        mov              qword ptr [rsp + 3280], rax
                        mov              rax, qword ptr [rsp + 3240]
                        mov              qword ptr [rsp + 3288], rax
                        mov              rax, qword ptr [rsp + 3328]
                        mov              qword ptr [rsp + 3264], rax
                        mov              rax, qword ptr [rsp + 3336]
                        mov              qword ptr [rsp + 3272], rax
                        lea              rdi, [rsp + 3264]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3248], rax
                        mov              qword ptr [rsp + 3256], rdx
                        cmp              al, 104;                             je    send$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n515_call_builtin_prolog_α
n514_call_builtin_prolog_β:
                        mov              r11, 231;                            jmp   send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n515_call_builtin_prolog_α:
                        mov              r11, 232
                        mov              rax, qword ptr [rsp + 3248]
                        mov              qword ptr [rsp + 3408], rax
                        mov              rax, qword ptr [rsp + 3256]
                        mov              qword ptr [rsp + 3416], rax
                        mov              rax, qword ptr [rsp + 3344]
                        mov              qword ptr [rsp + 3392], rax
                        mov              rax, qword ptr [rsp + 3352]
                        mov              qword ptr [rsp + 3400], rax
                        mov              rax, qword ptr [rsp + 3440]
                        mov              qword ptr [rsp + 3376], rax
                        mov              rax, qword ptr [rsp + 3448]
                        mov              qword ptr [rsp + 3384], rax
                        lea              rdi, [rsp + 3376]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3360], rax
                        mov              qword ptr [rsp + 3368], rdx
                        cmp              al, 104;                             je    send$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n516_lit_string_α
n515_call_builtin_prolog_β:
                        mov              r11, 232;                            jmp   send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n516_lit_string_α:      mov              r11, 233
                        mov              qword ptr [rsp + 2976], 2            # result
                        mov              dword ptr [rsp + 2980], 1
                        mov              rax, qword ptr [rip + .Lx619_0]
                        mov              qword ptr [rsp + 2984], rax;         jmp   n517_lit_string_α
.Lx619_0:               .quad            .Lx619_0_s
.Lx619_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n517_lit_string_α:      mov              r11, 234
                        mov              qword ptr [rsp + 2880], 2            # result
                        mov              dword ptr [rsp + 2884], 1
                        mov              rax, qword ptr [rip + .Lx620_0]
                        mov              qword ptr [rsp + 2888], rax;         jmp   n518_var_ref_α
.Lx620_0:               .quad            .Lx620_0_s
.Lx620_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n518_var_ref_α:         mov              r11, 235
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3712]
                        mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx;         jmp   n519_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n519_lit_string_α:      mov              r11, 236
                        mov              qword ptr [rsp + 2768], 2            # result
                        mov              dword ptr [rsp + 2772], 1
                        mov              rax, qword ptr [rip + .Lx623_0]
                        mov              qword ptr [rsp + 2776], rax;         jmp   n520_var_ref_α
.Lx623_0:               .quad            .Lx623_0_s
.Lx623_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n520_var_ref_α:         mov              r11, 237
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3696]
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx;         jmp   n521_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n521_lit_string_α:      mov              r11, 238
                        mov              qword ptr [rsp + 2656], 2            # result
                        mov              dword ptr [rsp + 2660], 1
                        mov              rax, qword ptr [rip + .Lx626_0]
                        mov              qword ptr [rsp + 2664], rax;         jmp   n522_var_ref_α
.Lx626_0:               .quad            .Lx626_0_s
.Lx626_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n522_var_ref_α:         mov              r11, 239
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3680]
                        mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx;         jmp   n523_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n523_lit_string_α:      mov              r11, 240
                        mov              qword ptr [rsp + 2544], 2            # result
                        mov              dword ptr [rsp + 2548], 1
                        mov              rax, qword ptr [rip + .Lx629_0]
                        mov              qword ptr [rsp + 2552], rax;         jmp   n524_var_ref_α
.Lx629_0:               .quad            .Lx629_0_s
.Lx629_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n524_var_ref_α:         mov              r11, 241
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3760]
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx;         jmp   n525_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n525_lit_string_α:      mov              r11, 242
                        mov              qword ptr [rsp + 2432], 2            # result
                        mov              dword ptr [rsp + 2436], 2
                        mov              rax, qword ptr [rip + .Lx632_0]
                        mov              qword ptr [rsp + 2440], rax;         jmp   n526_call_builtin_prolog_α
.Lx632_0:               .quad            .Lx632_0_s
.Lx632_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n526_call_builtin_prolog_α:
                        mov              r11, 243
                        mov              rax, qword ptr [rsp + 2432]
                        mov              qword ptr [rsp + 2512], rax
                        mov              rax, qword ptr [rsp + 2440]
                        mov              qword ptr [rsp + 2520], rax
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 2504], rax
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 2480], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 2488], rax
                        lea              rdi, [rsp + 2480]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx
                        cmp              al, 104;                             je    send$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n527_call_builtin_prolog_α
n526_call_builtin_prolog_β:
                        mov              r11, 243;                            jmp   send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n527_call_builtin_prolog_α:
                        mov              r11, 244
                        mov              rax, qword ptr [rsp + 2464]
                        mov              qword ptr [rsp + 2624], rax
                        mov              rax, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 2632], rax
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 2608], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 2616], rax
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 2592], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 2600], rax
                        lea              rdi, [rsp + 2592]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx
                        cmp              al, 104;                             je    send$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n528_call_builtin_prolog_α
n527_call_builtin_prolog_β:
                        mov              r11, 244;                            jmp   send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n528_call_builtin_prolog_α:
                        mov              r11, 245
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 2736], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 2744], rax
                        mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 2720], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 2728], rax
                        mov              rax, qword ptr [rsp + 2768]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 2776]
                        mov              qword ptr [rsp + 2712], rax
                        lea              rdi, [rsp + 2704]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx
                        cmp              al, 104;                             je    send$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n529_call_builtin_prolog_α
n528_call_builtin_prolog_β:
                        mov              r11, 245;                            jmp   send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n529_call_builtin_prolog_α:
                        mov              r11, 246
                        mov              rax, qword ptr [rsp + 2688]
                        mov              qword ptr [rsp + 2848], rax
                        mov              rax, qword ptr [rsp + 2696]
                        mov              qword ptr [rsp + 2856], rax
                        mov              rax, qword ptr [rsp + 2784]
                        mov              qword ptr [rsp + 2832], rax
                        mov              rax, qword ptr [rsp + 2792]
                        mov              qword ptr [rsp + 2840], rax
                        mov              rax, qword ptr [rsp + 2880]
                        mov              qword ptr [rsp + 2816], rax
                        mov              rax, qword ptr [rsp + 2888]
                        mov              qword ptr [rsp + 2824], rax
                        lea              rdi, [rsp + 2816]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2800], rax
                        mov              qword ptr [rsp + 2808], rdx
                        cmp              al, 104;                             je    send$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n530_lit_string_α
n529_call_builtin_prolog_β:
                        mov              r11, 246;                            jmp   send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n530_lit_string_α:      mov              r11, 247
                        mov              qword ptr [rsp + 2416], 2            # result
                        mov              dword ptr [rsp + 2420], 1
                        mov              rax, qword ptr [rip + .Lx637_0]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n531_lit_string_α
.Lx637_0:               .quad            .Lx637_0_s
.Lx637_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n531_lit_string_α:      mov              r11, 248
                        mov              qword ptr [rsp + 2320], 2            # result
                        mov              dword ptr [rsp + 2324], 1
                        mov              rax, qword ptr [rip + .Lx638_0]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n532_var_ref_α
.Lx638_0:               .quad            .Lx638_0_s
.Lx638_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n532_var_ref_α:         mov              r11, 249
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3712]
                        mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx;         jmp   n533_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n533_lit_string_α:      mov              r11, 250
                        mov              qword ptr [rsp + 2208], 2            # result
                        mov              dword ptr [rsp + 2212], 1
                        mov              rax, qword ptr [rip + .Lx641_0]
                        mov              qword ptr [rsp + 2216], rax;         jmp   n534_var_ref_α
.Lx641_0:               .quad            .Lx641_0_s
.Lx641_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n534_var_ref_α:         mov              r11, 251
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3696]
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx;         jmp   n535_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n535_lit_string_α:      mov              r11, 252
                        mov              qword ptr [rsp + 2096], 2            # result
                        mov              dword ptr [rsp + 2100], 1
                        mov              rax, qword ptr [rip + .Lx644_0]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n536_var_ref_α
.Lx644_0:               .quad            .Lx644_0_s
.Lx644_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n536_var_ref_α:         mov              r11, 253
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3744]
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx;         jmp   n537_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n537_lit_string_α:      mov              r11, 254
                        mov              qword ptr [rsp + 1984], 2            # result
                        mov              dword ptr [rsp + 1988], 1
                        mov              rax, qword ptr [rip + .Lx647_0]
                        mov              qword ptr [rsp + 1992], rax;         jmp   n538_var_ref_α
.Lx647_0:               .quad            .Lx647_0_s
.Lx647_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n538_var_ref_α:         mov              r11, 255
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3760]
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx;         jmp   n539_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n539_lit_string_α:      mov              r11, 256
                        mov              qword ptr [rsp + 1872], 2            # result
                        mov              dword ptr [rsp + 1876], 1
                        mov              rax, qword ptr [rip + .Lx650_0]
                        mov              qword ptr [rsp + 1880], rax;         jmp   n540_var_ref_α
.Lx650_0:               .quad            .Lx650_0_s
.Lx650_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n540_var_ref_α:         mov              r11, 257
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3664]
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx;         jmp   n541_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n541_lit_string_α:      mov              r11, 258
                        mov              qword ptr [rsp + 1760], 2            # result
                        mov              dword ptr [rsp + 1764], 2
                        mov              rax, qword ptr [rip + .Lx653_0]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n542_call_builtin_prolog_α
.Lx653_0:               .quad            .Lx653_0_s
.Lx653_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n542_call_builtin_prolog_α:
                        mov              r11, 259
                        mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1840], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1848], rax
                        mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 1832], rax
                        mov              rax, qword ptr [rsp + 1872]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 1880]
                        mov              qword ptr [rsp + 1816], rax
                        lea              rdi, [rsp + 1808]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
                        cmp              al, 104;                             je    send$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n543_call_builtin_prolog_α
n542_call_builtin_prolog_β:
                        mov              r11, 259;                            jmp   send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n543_call_builtin_prolog_α:
                        mov              r11, 260
                        mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1960], rax
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 1936], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 1944], rax
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1928], rax
                        lea              rdi, [rsp + 1920]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx
                        cmp              al, 104;                             je    send$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n544_call_builtin_prolog_α
n543_call_builtin_prolog_β:
                        mov              r11, 260;                            jmp   send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n544_call_builtin_prolog_α:
                        mov              r11, 261
                        mov              rax, qword ptr [rsp + 1904]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 1912]
                        mov              qword ptr [rsp + 2072], rax
                        mov              rax, qword ptr [rsp + 2000]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 2008]
                        mov              qword ptr [rsp + 2056], rax
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 2040], rax
                        lea              rdi, [rsp + 2032]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2016], rax
                        mov              qword ptr [rsp + 2024], rdx
                        cmp              al, 104;                             je    send$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n545_call_builtin_prolog_α
n544_call_builtin_prolog_β:
                        mov              r11, 261;                            jmp   send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n545_call_builtin_prolog_α:
                        mov              r11, 262
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 2184], rax
                        mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 2168], rax
                        mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 2152], rax
                        lea              rdi, [rsp + 2144]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx
                        cmp              al, 104;                             je    send$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n546_call_builtin_prolog_α
n545_call_builtin_prolog_β:
                        mov              r11, 262;                            jmp   send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n546_call_builtin_prolog_α:
                        mov              r11, 263
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2296], rax
                        mov              rax, qword ptr [rsp + 2224]
                        mov              qword ptr [rsp + 2272], rax
                        mov              rax, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 2280], rax
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 2256], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 2264], rax
                        lea              rdi, [rsp + 2256]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx
                        cmp              al, 104;                             je    send$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n547_lit_string_α
n546_call_builtin_prolog_β:
                        mov              r11, 263;                            jmp   send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n547_lit_string_α:      mov              r11, 264
                        mov              qword ptr [rsp + 1744], 2            # result
                        mov              dword ptr [rsp + 1748], 2
                        mov              rax, qword ptr [rip + .Lx659_0]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n548_call_builtin_prolog_α
.Lx659_0:               .quad            .Lx659_0_s
.Lx659_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n548_call_builtin_prolog_α:
                        mov              r11, 265
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 2392], rax
                        mov              rax, qword ptr [rsp + 2240]
                        mov              qword ptr [rsp + 2368], rax
                        mov              rax, qword ptr [rsp + 2248]
                        mov              qword ptr [rsp + 2376], rax
                        mov              rax, qword ptr [rsp + 2416]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2424]
                        mov              qword ptr [rsp + 2360], rax
                        lea              rdi, [rsp + 2352]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx
                        cmp              al, 104;                             je    send$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n549_call_builtin_prolog_α
n548_call_builtin_prolog_β:
                        mov              r11, 265;                            jmp   send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n549_call_builtin_prolog_α:
                        mov              r11, 266
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 2944], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 2952], rax
                        mov              rax, qword ptr [rsp + 2800]
                        mov              qword ptr [rsp + 2928], rax
                        mov              rax, qword ptr [rsp + 2808]
                        mov              qword ptr [rsp + 2936], rax
                        mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 2912], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 2920], rax
                        lea              rdi, [rsp + 2912]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2896], rax
                        mov              qword ptr [rsp + 2904], rdx
                        cmp              al, 104;                             je    send$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n550_call_builtin_prolog_α
n549_call_builtin_prolog_β:
                        mov              r11, 266;                            jmp   send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n550_call_builtin_prolog_α:
                        mov              r11, 267
                        mov              rax, qword ptr [rsp + 2896]
                        mov              qword ptr [rsp + 3504], rax
                        mov              rax, qword ptr [rsp + 2904]
                        mov              qword ptr [rsp + 3512], rax
                        mov              rax, qword ptr [rsp + 3360]
                        mov              qword ptr [rsp + 3488], rax
                        mov              rax, qword ptr [rsp + 3368]
                        mov              qword ptr [rsp + 3496], rax
                        mov              rax, qword ptr [rsp + 3536]
                        mov              qword ptr [rsp + 3472], rax
                        mov              rax, qword ptr [rsp + 3544]
                        mov              qword ptr [rsp + 3480], rax
                        lea              rdi, [rsp + 3472]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3456], rax
                        mov              qword ptr [rsp + 3464], rdx
                        cmp              al, 104;                             je    n597_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n551_call_builtin_prolog_α
n550_call_builtin_prolog_β:
                        mov              r11, 267;                            jmp   n597_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n551_call_builtin_prolog_α:
                        mov              r11, 268
                        mov              rax, qword ptr [rsp + 3456]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 3464]
                        mov              qword ptr [rsp + 1720], rax
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1704], rax
                        lea              rdi, [rsp + 1696]
                        lea              r8, [rsp + 1696]
.Lx663_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx663_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx663_41
                        cmp              esi, 1;                              jne   .Lx663_55
                        mov              r8, rax;                             jmp   .Lx663_40
.Lx663_55:              cmp              esi, 2;                              jne   .Lx663_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx663_41
                        mov              r8, rax;                             jmp   .Lx663_40
.Lx663_56:              cmp              al, 72;                              jne   .Lx663_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx663_41
                        cmp              rax, r8;                             je    .Lx663_41
                        mov              r8, rax;                             jmp   .Lx663_40
.Lx663_41:              lea              r9, [rsp + 1712]
.Lx663_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx663_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx663_43
                        cmp              esi, 1;                              jne   .Lx663_57
                        mov              r9, rax;                             jmp   .Lx663_42
.Lx663_57:              cmp              esi, 2;                              jne   .Lx663_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx663_43
                        mov              r9, rax;                             jmp   .Lx663_42
.Lx663_58:              cmp              al, 72;                              jne   .Lx663_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx663_43
                        cmp              rax, r9;                             je    .Lx663_43
                        mov              r9, rax;                             jmp   .Lx663_42
.Lx663_43:              cmp              r8, r9;                              je    .Lx663_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx663_44
                        cmp              al, 104;                             je    .Lx663_44
                        cmp              al, 72;                              jne   .Lx663_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx663_44
                                                                              jmp   .Lx663_45
.Lx663_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx663_53
                        cmp              al, 104;                             je    .Lx663_53
                        cmp              al, 72;                              jne   .Lx663_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx663_53
                                                                              jmp   .Lx663_46
.Lx663_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx663_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx663_53
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx663_51
.Lx663_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx663_47
                        cmp              al, 104;                             je    .Lx663_47
                        cmp              al, 72;                              jne   .Lx663_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx663_47
                                                                              jmp   .Lx663_48
.Lx663_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx663_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx663_53
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx663_51
.Lx663_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx663_49
                        cmp              dl, 80;                              je    .Lx663_53
                                                                              jmp   .Lx663_52
.Lx663_49:              cmp              dl, 80;                              je    .Lx663_52
                        cmp              cl, 5;                               je    .Lx663_53
                        cmp              dl, 5;                               je    .Lx663_53
                        cmp              cl, 3;                               jne   .Lx663_50
                        cmp              dl, 3;                               jne   .Lx663_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx663_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx663_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx663_51
                                                                              jmp   .Lx663_52
.Lx663_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx663_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx663_53
.Lx663_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx663_54
.Lx663_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx663_54
.Lx663_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx663_54:              mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx
                        cmp              al, 104;                             je    n597_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n552_var_ref_α
n551_call_builtin_prolog_β:
                        mov              r11, 268;                            jmp   n597_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n552_var_ref_α:         mov              r11, 269
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3568]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n553_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n553_lit_string_α:      mov              r11, 270
                        mov              qword ptr [rsp + 1664], 2            # result
                        mov              dword ptr [rsp + 1668], 1
                        mov              rax, qword ptr [rip + .Lx666_0]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n554_var_ref_α
.Lx666_0:               .quad            .Lx666_0_s
.Lx666_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n554_var_ref_α:         mov              r11, 271
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3776]
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx;         jmp   n555_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n555_lit_string_α:      mov              r11, 272
                        mov              qword ptr [rsp + 1552], 2            # result
                        mov              dword ptr [rsp + 1556], 1
                        mov              rax, qword ptr [rip + .Lx669_0]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n556_var_ref_α
.Lx669_0:               .quad            .Lx669_0_s
.Lx669_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n556_var_ref_α:         mov              r11, 273
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3760]
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx;         jmp   n557_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n557_lit_string_α:      mov              r11, 274
                        mov              qword ptr [rsp + 1440], 2            # result
                        mov              dword ptr [rsp + 1444], 1
                        mov              rax, qword ptr [rip + .Lx672_0]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n558_var_ref_α
.Lx672_0:               .quad            .Lx672_0_s
.Lx672_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n558_var_ref_α:         mov              r11, 275
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3744]
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx;         jmp   n559_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n559_lit_string_α:      mov              r11, 276
                        mov              qword ptr [rsp + 1328], 2            # result
                        mov              dword ptr [rsp + 1332], 1
                        mov              rax, qword ptr [rip + .Lx675_0]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n560_var_ref_α
.Lx675_0:               .quad            .Lx675_0_s
.Lx675_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n560_var_ref_α:         mov              r11, 277
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3728]
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx;         jmp   n561_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n561_lit_string_α:      mov              r11, 278
                        mov              qword ptr [rsp + 1216], 2            # result
                        mov              dword ptr [rsp + 1220], 1
                        mov              rax, qword ptr [rip + .Lx678_0]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n562_var_ref_α
.Lx678_0:               .quad            .Lx678_0_s
.Lx678_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n562_var_ref_α:         mov              r11, 279
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3712]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n563_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n563_lit_string_α:      mov              r11, 280
                        mov              qword ptr [rsp + 1104], 2            # result
                        mov              dword ptr [rsp + 1108], 1
                        mov              rax, qword ptr [rip + .Lx681_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n564_var_ref_α
.Lx681_0:               .quad            .Lx681_0_s
.Lx681_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n564_var_ref_α:         mov              r11, 281
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3696]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n565_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n565_lit_string_α:      mov              r11, 282
                        mov              qword ptr [rsp + 992], 2             # result
                        mov              dword ptr [rsp + 996], 1
                        mov              rax, qword ptr [rip + .Lx684_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n566_var_ref_α
.Lx684_0:               .quad            .Lx684_0_s
.Lx684_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n566_var_ref_α:         mov              r11, 283
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3680]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n567_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n567_lit_string_α:      mov              r11, 284
                        mov              qword ptr [rsp + 880], 2             # result
                        mov              dword ptr [rsp + 884], 1
                        mov              rax, qword ptr [rip + .Lx687_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n568_var_ref_α
.Lx687_0:               .quad            .Lx687_0_s
.Lx687_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n568_var_ref_α:         mov              r11, 285
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3664]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n569_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n569_lit_string_α:      mov              r11, 286
                        mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 2
                        mov              rax, qword ptr [rip + .Lx690_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n570_call_builtin_prolog_α
.Lx690_0:               .quad            .Lx690_0_s
.Lx690_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n570_call_builtin_prolog_α:
                        mov              r11, 287
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 856], rax
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 840], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 824], rax
                        lea              rdi, [rsp + 816]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    send$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n571_call_builtin_prolog_α
n570_call_builtin_prolog_β:
                        mov              r11, 287;                            jmp   send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n571_call_builtin_prolog_α:
                        mov              r11, 288
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 952], rax
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 936], rax
                        lea              rdi, [rsp + 928]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    send$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n572_call_builtin_prolog_α
n571_call_builtin_prolog_β:
                        mov              r11, 288;                            jmp   send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n572_call_builtin_prolog_α:
                        mov              r11, 289
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 1080], rax
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 1064], rax
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1048], rax
                        lea              rdi, [rsp + 1040]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              al, 104;                             je    send$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n573_call_builtin_prolog_α
n572_call_builtin_prolog_β:
                        mov              r11, 289;                            jmp   send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n573_call_builtin_prolog_α:
                        mov              r11, 290
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1192], rax
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1176], rax
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1160], rax
                        lea              rdi, [rsp + 1152]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        cmp              al, 104;                             je    send$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n574_call_builtin_prolog_α
n573_call_builtin_prolog_β:
                        mov              r11, 290;                            jmp   send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n574_call_builtin_prolog_α:
                        mov              r11, 291
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1304], rax
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1288], rax
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1272], rax
                        lea              rdi, [rsp + 1264]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                        cmp              al, 104;                             je    send$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n575_call_builtin_prolog_α
n574_call_builtin_prolog_β:
                        mov              r11, 291;                            jmp   send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n575_call_builtin_prolog_α:
                        mov              r11, 292
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1416], rax
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1400], rax
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1384], rax
                        lea              rdi, [rsp + 1376]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                        cmp              al, 104;                             je    send$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n576_call_builtin_prolog_α
n575_call_builtin_prolog_β:
                        mov              r11, 292;                            jmp   send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n576_call_builtin_prolog_α:
                        mov              r11, 293
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1528], rax
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1512], rax
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1496], rax
                        lea              rdi, [rsp + 1488]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx
                        cmp              al, 104;                             je    send$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n577_call_builtin_prolog_α
n576_call_builtin_prolog_β:
                        mov              r11, 293;                            jmp   send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n577_call_builtin_prolog_α:
                        mov              r11, 294
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1640], rax
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 1624], rax
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1608], rax
                        lea              rdi, [rsp + 1600]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                        cmp              al, 104;                             je    n597_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n578_call_builtin_prolog_α
n577_call_builtin_prolog_β:
                        mov              r11, 294;                            jmp   n597_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n578_call_builtin_prolog_α:
                        mov              r11, 295
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 744], rax
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 728], rax
                        lea              rdi, [rsp + 720]
                        lea              r8, [rsp + 720]
.Lx699_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx699_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx699_41
                        cmp              esi, 1;                              jne   .Lx699_55
                        mov              r8, rax;                             jmp   .Lx699_40
.Lx699_55:              cmp              esi, 2;                              jne   .Lx699_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx699_41
                        mov              r8, rax;                             jmp   .Lx699_40
.Lx699_56:              cmp              al, 72;                              jne   .Lx699_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx699_41
                        cmp              rax, r8;                             je    .Lx699_41
                        mov              r8, rax;                             jmp   .Lx699_40
.Lx699_41:              lea              r9, [rsp + 736]
.Lx699_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx699_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx699_43
                        cmp              esi, 1;                              jne   .Lx699_57
                        mov              r9, rax;                             jmp   .Lx699_42
.Lx699_57:              cmp              esi, 2;                              jne   .Lx699_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx699_43
                        mov              r9, rax;                             jmp   .Lx699_42
.Lx699_58:              cmp              al, 72;                              jne   .Lx699_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx699_43
                        cmp              rax, r9;                             je    .Lx699_43
                        mov              r9, rax;                             jmp   .Lx699_42
.Lx699_43:              cmp              r8, r9;                              je    .Lx699_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx699_44
                        cmp              al, 104;                             je    .Lx699_44
                        cmp              al, 72;                              jne   .Lx699_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx699_44
                                                                              jmp   .Lx699_45
.Lx699_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx699_53
                        cmp              al, 104;                             je    .Lx699_53
                        cmp              al, 72;                              jne   .Lx699_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx699_53
                                                                              jmp   .Lx699_46
.Lx699_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx699_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx699_53
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx699_51
.Lx699_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx699_47
                        cmp              al, 104;                             je    .Lx699_47
                        cmp              al, 72;                              jne   .Lx699_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx699_47
                                                                              jmp   .Lx699_48
.Lx699_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx699_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx699_53
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx699_51
.Lx699_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx699_49
                        cmp              dl, 80;                              je    .Lx699_53
                                                                              jmp   .Lx699_52
.Lx699_49:              cmp              dl, 80;                              je    .Lx699_52
                        cmp              cl, 5;                               je    .Lx699_53
                        cmp              dl, 5;                               je    .Lx699_53
                        cmp              cl, 3;                               jne   .Lx699_50
                        cmp              dl, 3;                               jne   .Lx699_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx699_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx699_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx699_51
                                                                              jmp   .Lx699_52
.Lx699_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx699_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx699_53
.Lx699_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx699_54
.Lx699_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx699_54
.Lx699_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx699_54:              mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              al, 104;                             je    n597_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n579_var_ref_α
n578_call_builtin_prolog_β:
                        mov              r11, 295;                            jmp   n597_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n579_var_ref_α:         mov              r11, 296
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3584]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n580_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n580_lit_string_α:      mov              r11, 297
                        mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 1
                        mov              rax, qword ptr [rip + .Lx702_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n581_var_ref_α
.Lx702_0:               .quad            .Lx702_0_s
.Lx702_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n581_var_ref_α:         mov              r11, 298
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3648]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n582_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n582_lit_string_α:      mov              r11, 299
                        mov              qword ptr [rsp + 576], 2             # result
                        mov              dword ptr [rsp + 580], 1
                        mov              rax, qword ptr [rip + .Lx705_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n583_var_ref_α
.Lx705_0:               .quad            .Lx705_0_s
.Lx705_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n583_var_ref_α:         mov              r11, 300
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3632]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n584_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n584_lit_string_α:      mov              r11, 301
                        mov              qword ptr [rsp + 464], 2             # result
                        mov              dword ptr [rsp + 468], 1
                        mov              rax, qword ptr [rip + .Lx708_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n585_var_ref_α
.Lx708_0:               .quad            .Lx708_0_s
.Lx708_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n585_var_ref_α:         mov              r11, 302
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3616]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n586_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n586_lit_string_α:      mov              r11, 303
                        mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 1
                        mov              rax, qword ptr [rip + .Lx711_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n587_var_ref_α
.Lx711_0:               .quad            .Lx711_0_s
.Lx711_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n587_var_ref_α:         mov              r11, 304
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3600]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n588_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n588_lit_string_α:      mov              r11, 305
                        mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 2
                        mov              rax, qword ptr [rip + .Lx714_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n589_call_builtin_prolog_α
.Lx714_0:               .quad            .Lx714_0_s
.Lx714_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n589_call_builtin_prolog_α:
                        mov              r11, 306
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 296], rax
                        lea              rdi, [rsp + 288]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    send$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n590_call_builtin_prolog_α
n589_call_builtin_prolog_β:
                        mov              r11, 306;                            jmp   send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n590_call_builtin_prolog_α:
                        mov              r11, 307
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 440], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 424], rax
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 408], rax
                        lea              rdi, [rsp + 400]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    send$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n591_call_builtin_prolog_α
n590_call_builtin_prolog_β:
                        mov              r11, 307;                            jmp   send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n591_call_builtin_prolog_α:
                        mov              r11, 308
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 520], rax
                        lea              rdi, [rsp + 512]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    send$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n592_call_builtin_prolog_α
n591_call_builtin_prolog_β:
                        mov              r11, 308;                            jmp   send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n592_call_builtin_prolog_α:
                        mov              r11, 309
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 632], rax
                        lea              rdi, [rsp + 624]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n597_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n593_call_builtin_prolog_α
n592_call_builtin_prolog_β:
                        mov              r11, 309;                            jmp   n597_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n593_call_builtin_prolog_α:
                        mov              r11, 310
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        lea              rdi, [rsp + 192]
                        lea              r8, [rsp + 192]
.Lx719_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx719_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx719_41
                        cmp              esi, 1;                              jne   .Lx719_55
                        mov              r8, rax;                             jmp   .Lx719_40
.Lx719_55:              cmp              esi, 2;                              jne   .Lx719_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx719_41
                        mov              r8, rax;                             jmp   .Lx719_40
.Lx719_56:              cmp              al, 72;                              jne   .Lx719_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx719_41
                        cmp              rax, r8;                             je    .Lx719_41
                        mov              r8, rax;                             jmp   .Lx719_40
.Lx719_41:              lea              r9, [rsp + 208]
.Lx719_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx719_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx719_43
                        cmp              esi, 1;                              jne   .Lx719_57
                        mov              r9, rax;                             jmp   .Lx719_42
.Lx719_57:              cmp              esi, 2;                              jne   .Lx719_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx719_43
                        mov              r9, rax;                             jmp   .Lx719_42
.Lx719_58:              cmp              al, 72;                              jne   .Lx719_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx719_43
                        cmp              rax, r9;                             je    .Lx719_43
                        mov              r9, rax;                             jmp   .Lx719_42
.Lx719_43:              cmp              r8, r9;                              je    .Lx719_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx719_44
                        cmp              al, 104;                             je    .Lx719_44
                        cmp              al, 72;                              jne   .Lx719_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx719_44
                                                                              jmp   .Lx719_45
.Lx719_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx719_53
                        cmp              al, 104;                             je    .Lx719_53
                        cmp              al, 72;                              jne   .Lx719_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx719_53
                                                                              jmp   .Lx719_46
.Lx719_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx719_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx719_53
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx719_51
.Lx719_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx719_47
                        cmp              al, 104;                             je    .Lx719_47
                        cmp              al, 72;                              jne   .Lx719_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx719_47
                                                                              jmp   .Lx719_48
.Lx719_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx719_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx719_53
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx719_51
.Lx719_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx719_49
                        cmp              dl, 80;                              je    .Lx719_53
                                                                              jmp   .Lx719_52
.Lx719_49:              cmp              dl, 80;                              je    .Lx719_52
                        cmp              cl, 5;                               je    .Lx719_53
                        cmp              dl, 5;                               je    .Lx719_53
                        cmp              cl, 3;                               jne   .Lx719_50
                        cmp              dl, 3;                               jne   .Lx719_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx719_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx719_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx719_51
                                                                              jmp   .Lx719_52
.Lx719_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx719_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx719_53
.Lx719_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx719_54
.Lx719_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx719_54
.Lx719_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx719_54:              mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n597_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n594_var_ref_α
n593_call_builtin_prolog_β:
                        mov              r11, 310;                            jmp   n597_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n594_var_ref_α:         mov              r11, 311
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3568]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n595_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n595_call_proc_staged_α:
                        mov              r11, 312
                        mov              qword ptr [rsp + 128], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx723_20
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx723_21
.Lx723_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx723_21:              lea              rax, [rip + .Lx723_7]
                        push             rax
                        mov              edi, 2
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx723_1
                        lea              rcx, [rip + .Lx723_3]
                        lea              rdx, [rip + .Lx723_4];               jmp   rax
.Lx723_3:               mov              qword ptr [rsp + 136], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 128]
                        test             rax, rax;                            jne   .Lx723_5
                        mov              qword ptr [rsp + 128], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx723_2
.Lx723_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx723_2
.Lx723_4:               mov              rax, qword ptr [rsp + 128]
                        test             rax, rax;                            jne   .Lx723_6
                        mov              qword ptr [rsp + 128], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx723_2
.Lx723_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx723_2
.Lx723_1:               call             rt_faildescr@PLT
.Lx723_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx723_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
.Lx723_29:              mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n597_call_builtin_prolog_α
                                                                              jmp   n596_suspend_α
n595_call_proc_staged_β:
                        mov              r11, 312
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 128], 0
                        lea              rdi, [rsp + 144]
                        lea              rsi, [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n597_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              ecx, 0
                        mov              r8d, 96
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n597_call_builtin_prolog_α
                        lea              r8, [rip + .Lx723_7]
                        push             r8
                        lea              rcx, [rip + .Lx723_3]
                        lea              rdx, [rip + .Lx723_4];               jmp   rax
.Lx723_7:               add              rsp, 8
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n597_call_builtin_prolog_α
                                                                              jmp   n596_suspend_α
.Lx723_0:               .quad            .Lx723_0_s
.Lx723_0_s:             .string          "$call/1"
#-----------------------------------------------------------------------------------------------------------------------
n596_suspend_α:         mov              r11, 313
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx725_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3552];         jmp   rax
.Lx725_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n596_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n596_suspend_β]
                        mov              qword ptr [rsp + 3552], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   send$2F1_γ
n596_suspend_β:         mov              r11, 313;                            jmp   n595_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n597_call_builtin_prolog_α:
                        mov              r11, 314
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    send$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   send$2F1_ω
n597_call_builtin_prolog_β:
                        mov              r11, 314;                            jmp   send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
send$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
send$2F1_β:
                                                                              jmp   n596_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
send$2F1_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx726_50
                        mov              qword ptr [rsp + 3552], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3552];         jmp   rax
.Lx726_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 3816]
                        add              rsp, 3840;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
send$2F1_ω:
                        mov              rcx, qword ptr [rsp + 3824]
                        add              rsp, 3840;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_0$2F0:
                        sub              rsp, 464
                        mov              qword ptr [rsp + 440], rcx
                        mov              qword ptr [rsp + 448], rdx
                        mov              qword ptr [rsp + 456], rsp
                        mov              rdi, rsp
                        mov              esi, 400
                        mov              edx, 432
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
pj_dir_0$2F0_α_body:
                        lea              rax, [rip + n737_suspend_β]
                        mov              qword ptr [rsp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n727_call_builtin_prolog_α:
                        mov              r11, 315
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx739_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx739_101
.Lx739_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx739_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx739_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx739_101
.Lx739_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx739_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n728_lit_string_α
n727_call_builtin_prolog_β:
                        mov              r11, 315;                            jmp   pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n728_lit_string_α:      mov              r11, 316
                        mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 9
                        mov              rax, qword ptr [rip + .Lx740_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n729_lit_string_α
.Lx740_0:               .quad            .Lx740_0_s
.Lx740_0_s:             .string          "sendmoney"
#-----------------------------------------------------------------------------------------------------------------------
n729_lit_string_α:      mov              r11, 317
                        mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 1
                        mov              rax, qword ptr [rip + .Lx741_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n730_lit_string_α
.Lx741_0:               .quad            .Lx741_0_s
.Lx741_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n730_lit_string_α:      mov              r11, 318
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 1
                        mov              rax, qword ptr [rip + .Lx742_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n731_lit_string_α
.Lx742_0:               .quad            .Lx742_0_s
.Lx742_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n731_lit_string_α:      mov              r11, 319
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 9
                        mov              rax, qword ptr [rip + .Lx743_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n732_lit_integer_α
.Lx743_0:               .quad            .Lx743_0_s
.Lx743_0_s:             .string          "sendmoney"
#-----------------------------------------------------------------------------------------------------------------------
n732_lit_integer_α:     mov              r11, 320
                        mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx744_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n733_call_builtin_prolog_α
.Lx744_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n733_call_builtin_prolog_α:
                        mov              r11, 321
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 264], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 232], rax
                        lea              rdi, [rsp + 224]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    pj_dir_0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n734_lit_string_α
n733_call_builtin_prolog_β:
                        mov              r11, 321;                            jmp   pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n734_lit_string_α:      mov              r11, 322
                        mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 2
                        mov              rax, qword ptr [rip + .Lx746_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n735_call_builtin_prolog_α
.Lx746_0:               .quad            .Lx746_0_s
.Lx746_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n735_call_builtin_prolog_α:
                        mov              r11, 323
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 328], rax
                        lea              rdi, [rsp + 320]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    n738_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n736_call_proc_staged_α
n735_call_builtin_prolog_β:
                        mov              r11, 323;                            jmp   n738_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n736_call_proc_staged_α:
                        mov              r11, 324
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx749_20
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx749_21
.Lx749_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx749_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx749_22
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx749_23
.Lx749_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx749_23:              mov              rdi, qword ptr [rip + .Lx749_0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx749_1
                        mov              rdi, qword ptr [rip + .Lx749_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx749_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx749_3]
                        push             rcx
                        lea              rcx, [rip + .Lx749_3]
                        lea              rdx, [rip + .Lx749_4];               jmp   rax
.Lx749_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx749_2
.Lx749_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx749_2
.Lx749_1:               call             rt_faildescr@PLT
.Lx749_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx749_29
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
.Lx749_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n738_call_builtin_prolog_α
                                                                              jmp   n737_suspend_α
n736_call_proc_staged_β:
                        mov              r11, 324;                            jmp   n738_call_builtin_prolog_α
.Lx749_0:               .quad            .Lx749_0_s
.Lx749_0_s:             .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n737_suspend_α:         mov              r11, 325
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx751_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 400];          jmp   rax
.Lx751_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n737_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n737_suspend_β]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_0$2F0_γ
n737_suspend_β:         mov              r11, 325;                            jmp   n736_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n738_call_builtin_prolog_α:
                        mov              r11, 326
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pj_dir_0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   pj_dir_0$2F0_ω
n738_call_builtin_prolog_β:
                        mov              r11, 326;                            jmp   pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_β:
                                                                              jmp   n737_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx752_50
                        mov              qword ptr [rsp + 400], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 400];          jmp   rax
.Lx752_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 440]
                        add              rsp, 464;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_ω:
                        mov              rcx, qword ptr [rsp + 448]
                        add              rsp, 464;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_1$2F0:
                        sub              rsp, 288
                        mov              qword ptr [rsp + 264], rcx
                        mov              qword ptr [rsp + 272], rdx
                        mov              qword ptr [rsp + 280], rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 256
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
pj_dir_1$2F0_α_body:
                        lea              rax, [rip + n758_suspend_β]
                        mov              qword ptr [rsp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n753_call_builtin_prolog_α:
                        mov              r11, 327
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx760_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx760_101
.Lx760_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx760_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx760_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx760_101
.Lx760_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx760_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_1$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n754_lit_string_α
n753_call_builtin_prolog_β:
                        mov              r11, 327;                            jmp   pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n754_lit_string_α:      mov              r11, 328
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 7
                        mov              rax, qword ptr [rip + .Lx761_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n755_lit_string_α
.Lx761_0:               .quad            .Lx761_0_s
.Lx761_0_s:             .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n755_lit_string_α:      mov              r11, 329
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 10
                        mov              rax, qword ptr [rip + .Lx762_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n756_call_builtin_prolog_α
.Lx762_0:               .quad            .Lx762_0_s
.Lx762_0_s:             .string          "clp/bounds"
#-----------------------------------------------------------------------------------------------------------------------
n756_call_builtin_prolog_α:
                        mov              r11, 330
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 168], rax
                        lea              rdi, [rsp + 160]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n759_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n757_call_proc_staged_α
n756_call_builtin_prolog_β:
                        mov              r11, 330;                            jmp   n759_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n757_call_proc_staged_α:
                        mov              r11, 331
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx765_20
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx765_21
.Lx765_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx765_21:              mov              rdi, qword ptr [rip + .Lx765_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx765_1
                        mov              rdi, qword ptr [rip + .Lx765_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx765_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx765_3]
                        push             rcx
                        lea              rcx, [rip + .Lx765_3]
                        lea              rdx, [rip + .Lx765_4];               jmp   rax
.Lx765_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx765_2
.Lx765_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx765_2
.Lx765_1:               call             rt_faildescr@PLT
.Lx765_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx765_29
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
.Lx765_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n759_call_builtin_prolog_α
                                                                              jmp   n758_suspend_α
n757_call_proc_staged_β:
                        mov              r11, 331;                            jmp   n759_call_builtin_prolog_α
.Lx765_0:               .quad            .Lx765_0_s
.Lx765_0_s:             .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n758_suspend_α:         mov              r11, 332
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx767_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx767_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n758_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n758_suspend_β]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_1$2F0_γ
n758_suspend_β:         mov              r11, 332;                            jmp   n757_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n759_call_builtin_prolog_α:
                        mov              r11, 333
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pj_dir_1$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   pj_dir_1$2F0_ω
n759_call_builtin_prolog_β:
                        mov              r11, 333;                            jmp   pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_β:
                                                                              jmp   n758_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx768_50
                        mov              qword ptr [rsp + 224], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx768_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 264]
                        add              rsp, 288;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_ω:
                        mov              rcx, qword ptr [rsp + 272]
                        add              rsp, 288;                            jmp   rcx
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              r12, qword ptr [0x70000000]
                        call             rt_gcheap_warmup@PLT
                        call             rt_plw_floor_bypass_on@PLT
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                        lea              rcx, [rip + .Lmain_zf_γ]
                        lea              rdx, [rip + .Lmain_zf_ω]
                                                                              jmp   main_α
.Lmain_zf_γ:            xor              edi, edi
                        call             exit@PLT
.Lmain_zf_ω:            mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 192
                        mov              qword ptr [rsp + 168], rcx
                        mov              qword ptr [rsp + 176], rdx
                        mov              qword ptr [rsp + 184], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 160
                        rep              stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n769_lit_string_α:      mov              r11, 334
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 7
                        mov              rax, qword ptr [rip + .Lx773_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n770_lit_string_α
.Lx773_0:               .quad            .Lx773_0_s
.Lx773_0_s:             .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n770_lit_string_α:      mov              r11, 335
                        mov              qword ptr [rsp + 48], 2              # result
                        mov              dword ptr [rsp + 52], 10
                        mov              rax, qword ptr [rip + .Lx774_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n771_call_builtin_prolog_α
.Lx774_0:               .quad            .Lx774_0_s
.Lx774_0_s:             .string          "clp/bounds"
#-----------------------------------------------------------------------------------------------------------------------
n771_call_builtin_prolog_α:
                        mov              r11, 336
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n772_call_proc_staged_α
n771_call_builtin_prolog_β:
                        mov              r11, 336;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n772_call_proc_staged_α:
                        mov              r11, 337
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx777_20
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx777_21
.Lx777_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx777_21:              mov              rdi, qword ptr [rip + .Lx777_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx777_1
                        mov              rdi, qword ptr [rip + .Lx777_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx777_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx777_3]
                        push             rcx
                        lea              rcx, [rip + .Lx777_3]
                        lea              rdx, [rip + .Lx777_4];               jmp   rax
.Lx777_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx777_2
.Lx777_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx777_2
.Lx777_1:               call             rt_faildescr@PLT
.Lx777_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx777_29
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
.Lx777_29:              mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_γ
n772_call_proc_staged_β:
                        mov              r11, 337;                            jmp   main_ω
.Lx777_0:               .quad            .Lx777_0_s
.Lx777_0_s:             .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 168]
                        add              rsp, 192;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 176]
                        add              rsp, 192;                            jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "sendmoney/0"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__sendmoney$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            2064
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          ",/2"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__$2C$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            4912
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "$call/1"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__$call$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            112
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "send/1"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__send$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            3792
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "pj_dir_0/0"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__pj_dir_0$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            416
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "pj_dir_1/0"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__pj_dir_1$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            240
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
