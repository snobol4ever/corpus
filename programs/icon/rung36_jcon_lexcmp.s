                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__wr:
                        sub              rsp, 352
                        mov              qword ptr [rsp + 328], rcx
                        mov              qword ptr [rsp + 336], rdx
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
wr_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:       mov              r11, 1
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              dword ptr [rsp + 160], 0;            jmp   n6_var_α
n0_disjunction_as:      mov              r11, 1
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 0;                              jne   .Lx10_0
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax;          jmp   n1_lit_integer_α
.Lx10_0:                cmp              eax, 1;                              jne   .Lx10_1
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 152], rax;          jmp   n1_lit_integer_α
.Lx10_1:                                                                      jmp   n1_lit_integer_α
n0_disjunction_β:       mov              r11, 1
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 0;                              je    n0_disjunction_af
                                                                              jmp   n0_disjunction_af
n0_disjunction_af:      mov              r11, 1
                        add              dword ptr [rsp + 160], 1
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 1;                              je    n5_lit_string_α
                                                                              jmp   n4_return_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       mov              r11, 2
                        mov              qword ptr [rsp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Lx11_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n2_call_builtin_icon_α
.Lx11_0:                .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_icon_α: mov              r11, 3
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn13:               .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn13]
                        lea              rsi, [rsp + 96]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n0_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n3_call_builtin_icon_α
n2_call_builtin_icon_β: mov              r11, 3;                              jmp   n0_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_icon_α: mov              r11, 4
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn15:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn15]
                        lea              rsi, [rsp + 48]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    n0_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n4_return_α
n3_call_builtin_icon_β: mov              r11, 4;                              jmp   n0_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n4_return_α:            mov              r11, 5
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   wr_γ
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              r11, 6
                        mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 3
                        mov              rax, qword ptr [rip + .Lx17_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n0_disjunction_as
n5_lit_string_β:        mov              r11, 6;                              jmp   n0_disjunction_af
.Lx17_0:                .quad            .Lx17_0_s
.Lx17_0_s:              .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:               mov              r11, 7
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 248], rax;          jmp   n7_unop_test_α
n6_var_β:               mov              r11, 7;                              jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n7_unop_test_α:         mov              r11, 8
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 104;                             je    n0_disjunction_af
                        cmp              eax, 0;                              je    n0_disjunction_af
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 232], rax;          jmp   n8_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_icon_α: mov              r11, 9
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn22:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn22]
                        lea              rsi, [rsp + 192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n0_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n0_disjunction_as
n8_call_builtin_icon_β: mov              r11, 9;                              jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
wr_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
wr_β:
                                                                              jmp   wr_ω
#-----------------------------------------------------------------------------------------------------------------------
wr_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 328]
                        add              rsp, 352;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
wr_ω:
                        mov              rcx, qword ptr [rsp + 336]
                        add              rsp, 352;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
wr_dcα:
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
                        lea              rcx, [rip + .Lx23_2]
                        lea              rdx, [rip + .Lx23_3];                jmp   FN__wr
.Lx23_2:                pop              r12
                        pop              r12;                                 jmp   r12
.Lx23_3:                pop              r12
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
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 1664
                        mov              qword ptr [rsp + 1640], rcx
                        mov              qword ptr [rsp + 1648], rdx
                        mov              rdi, rsp
                        add              rdi, 1552
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:       mov              r11, 10
                        mov              qword ptr [rsp + 1536], 2            # result
                        mov              dword ptr [rsp + 1540], 48
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n25_call_builtin_icon_α
.Lx87_0:                .quad            .Lx87_0_s
.Lx87_0_s:              .string          "    s1    s2    <<   <<=    ==   ~==   >>=    >>"
#-----------------------------------------------------------------------------------------------------------------------
n25_call_builtin_icon_α:
                        mov              r11, 11
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1512], rax
                        .section         .rodata
.Lrkfn89:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn89]
                        lea              rsi, [rsp + 1504]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx
                        cmp              al, 104;                             je    n26_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n26_disjunction_α
n25_call_builtin_icon_β:
                        mov              r11, 11;                             jmp   n26_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n26_disjunction_α:      mov              r11, 12
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              dword ptr [rsp + 176], 0;            jmp   n86_lit_string_α
n26_disjunction_as:     mov              r11, 12
                        mov              eax, dword ptr [rsp + 176]
                        cmp              eax, 0;                              jne   .Lx91_0
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax;          jmp   n27_assign_α
.Lx91_0:                cmp              eax, 1;                              jne   .Lx91_1
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 168], rax;          jmp   n27_assign_α
.Lx91_1:                cmp              eax, 2;                              jne   .Lx91_2
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 168], rax;          jmp   n27_assign_α
.Lx91_2:                cmp              eax, 3;                              jne   .Lx91_3
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 168], rax;          jmp   n27_assign_α
.Lx91_3:                cmp              eax, 4;                              jne   .Lx91_4
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 168], rax;          jmp   n27_assign_α
.Lx91_4:                cmp              eax, 5;                              jne   .Lx91_5
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 168], rax;          jmp   n27_assign_α
.Lx91_5:                cmp              eax, 6;                              jne   .Lx91_6
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 168], rax;          jmp   n27_assign_α
.Lx91_6:                                                                      jmp   n27_assign_α
n26_disjunction_β:      mov              r11, 12
                        mov              eax, dword ptr [rsp + 176]
                        cmp              eax, 0;                              je    n26_disjunction_af
                        cmp              eax, 1;                              je    n26_disjunction_af
                        cmp              eax, 2;                              je    n26_disjunction_af
                        cmp              eax, 3;                              je    n26_disjunction_af
                        cmp              eax, 4;                              je    n26_disjunction_af
                        cmp              eax, 5;                              je    n26_disjunction_af
                                                                              jmp   n26_disjunction_af
n26_disjunction_af:     mov              r11, 12
                        add              dword ptr [rsp + 176], 1
                        mov              eax, dword ptr [rsp + 176]
                        cmp              eax, 1;                              je    n85_lit_string_α
                        cmp              eax, 2;                              je    n84_lit_string_α
                        cmp              eax, 3;                              je    n83_lit_charset_α
                        cmp              eax, 4;                              je    n82_lit_string_α
                        cmp              eax, 5;                              je    n81_lit_integer_α
                        cmp              eax, 6;                              je    n80_lit_charset_α
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:           mov              r11, 13
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx;         jmp   n28_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n28_disjunction_α:      mov              r11, 14
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              dword ptr [rsp + 48], 0;             jmp   n79_lit_string_α
n28_disjunction_as:     mov              r11, 14
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              jne   .Lx94_0
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax;           jmp   n29_assign_α
.Lx94_0:                cmp              eax, 1;                              jne   .Lx94_1
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax;           jmp   n29_assign_α
.Lx94_1:                cmp              eax, 2;                              jne   .Lx94_2
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 40], rax;           jmp   n29_assign_α
.Lx94_2:                cmp              eax, 3;                              jne   .Lx94_3
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 40], rax;           jmp   n29_assign_α
.Lx94_3:                cmp              eax, 4;                              jne   .Lx94_4
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 40], rax;           jmp   n29_assign_α
.Lx94_4:                                                                      jmp   n29_assign_α
n28_disjunction_β:      mov              r11, 14
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              je    n28_disjunction_af
                        cmp              eax, 1;                              je    n28_disjunction_af
                        cmp              eax, 2;                              je    n28_disjunction_af
                        cmp              eax, 3;                              je    n28_disjunction_af
                                                                              jmp   n28_disjunction_af
n28_disjunction_af:     mov              r11, 14
                        add              dword ptr [rsp + 48], 1
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 1;                              je    n78_lit_string_α
                        cmp              eax, 2;                              je    n77_lit_string_α
                        cmp              eax, 3;                              je    n76_lit_charset_α
                        cmp              eax, 4;                              je    n75_lit_charset_α
                                                                              jmp   n26_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n29_assign_α:           mov              r11, 15
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx;           jmp   n30_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n30_conjunction_α:      mov              r11, 16
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   n31_bound_α
n30_conjunction_β:      mov              r11, 16;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n31_bound_α:            mov              r11, 17
                        mov              qword ptr [rsp + 304], rsp;          jmp   n32_var_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:              mov              r11, 18
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n33_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n33_call_proc_staged_α: mov              r11, 19
                        lea              rsi, [rsp + 1472]
                        call             wr_dcα;                              jmp   .Lx102_2
.Lx102_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx102_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1424]
                        mov              rdx, qword ptr [rsp + 1432]
.Lx102_29:              mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                        cmp              al, 104;                             je    n34_var_α
                                                                              jmp   n34_var_α
n33_call_proc_staged_β: mov              r11, 19;                             jmp   n34_var_α
.Lx102_0:               .quad            .Lx102_0_s
.Lx102_0_s:             .string          "wr"
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:              mov              r11, 20
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n35_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n35_call_proc_staged_α: mov              r11, 21
                        lea              rsi, [rsp + 1408]
                        call             wr_dcα;                              jmp   .Lx106_2
.Lx106_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx106_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1360]
                        mov              rdx, qword ptr [rsp + 1368]
.Lx106_29:              mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                        cmp              al, 104;                             je    n36_disjunction_α
                                                                              jmp   n36_disjunction_α
n35_call_proc_staged_β: mov              r11, 21;                             jmp   n36_disjunction_α
.Lx106_0:               .quad            .Lx106_0_s
.Lx106_0_s:             .string          "wr"
#-----------------------------------------------------------------------------------------------------------------------
n36_disjunction_α:      mov              r11, 22
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              dword ptr [rsp + 1264], 0;           jmp   n72_var_α
n36_disjunction_as:     mov              r11, 22
                        mov              eax, dword ptr [rsp + 1264]
                        cmp              eax, 0;                              jne   .Lx108_0
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n37_call_proc_staged_α
.Lx108_0:               cmp              eax, 1;                              jne   .Lx108_1
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n37_call_proc_staged_α
.Lx108_1:                                                                     jmp   n37_call_proc_staged_α
n36_disjunction_β:      mov              r11, 22
                        mov              eax, dword ptr [rsp + 1264]
                        cmp              eax, 0;                              je    n36_disjunction_af
                                                                              jmp   n36_disjunction_af
n36_disjunction_af:     mov              r11, 22
                        add              dword ptr [rsp + 1264], 1
                        mov              eax, dword ptr [rsp + 1264]
                        cmp              eax, 1;                              je    n71_keyword_icon_α
                                                                              jmp   n38_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n37_call_proc_staged_α: mov              r11, 23
                        lea              rsi, [rsp + 1248]
                        call             wr_dcα;                              jmp   .Lx110_2
.Lx110_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx110_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1200]
                        mov              rdx, qword ptr [rsp + 1208]
.Lx110_29:              mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        cmp              al, 104;                             je    n36_disjunction_β
                                                                              jmp   n38_disjunction_α
n37_call_proc_staged_β: mov              r11, 23;                             jmp   n36_disjunction_β
.Lx110_0:               .quad            .Lx110_0_s
.Lx110_0_s:             .string          "wr"
#-----------------------------------------------------------------------------------------------------------------------
n38_disjunction_α:      mov              r11, 24
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              dword ptr [rsp + 1104], 0;           jmp   n68_var_α
n38_disjunction_as:     mov              r11, 24
                        mov              eax, dword ptr [rsp + 1104]
                        cmp              eax, 0;                              jne   .Lx112_0
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n39_call_proc_staged_α
.Lx112_0:               cmp              eax, 1;                              jne   .Lx112_1
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n39_call_proc_staged_α
.Lx112_1:                                                                     jmp   n39_call_proc_staged_α
n38_disjunction_β:      mov              r11, 24
                        mov              eax, dword ptr [rsp + 1104]
                        cmp              eax, 0;                              je    n38_disjunction_af
                                                                              jmp   n38_disjunction_af
n38_disjunction_af:     mov              r11, 24
                        add              dword ptr [rsp + 1104], 1
                        mov              eax, dword ptr [rsp + 1104]
                        cmp              eax, 1;                              je    n67_keyword_icon_α
                                                                              jmp   n40_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n39_call_proc_staged_α: mov              r11, 25
                        lea              rsi, [rsp + 1088]
                        call             wr_dcα;                              jmp   .Lx114_2
.Lx114_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx114_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1040]
                        mov              rdx, qword ptr [rsp + 1048]
.Lx114_29:              mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              al, 104;                             je    n38_disjunction_β
                                                                              jmp   n40_disjunction_α
n39_call_proc_staged_β: mov              r11, 25;                             jmp   n38_disjunction_β
.Lx114_0:               .quad            .Lx114_0_s
.Lx114_0_s:             .string          "wr"
#-----------------------------------------------------------------------------------------------------------------------
n40_disjunction_α:      mov              r11, 26
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              dword ptr [rsp + 944], 0;            jmp   n64_var_α
n40_disjunction_as:     mov              r11, 26
                        mov              eax, dword ptr [rsp + 944]
                        cmp              eax, 0;                              jne   .Lx116_0
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 936], rax;          jmp   n41_call_proc_staged_α
.Lx116_0:               cmp              eax, 1;                              jne   .Lx116_1
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 936], rax;          jmp   n41_call_proc_staged_α
.Lx116_1:                                                                     jmp   n41_call_proc_staged_α
n40_disjunction_β:      mov              r11, 26
                        mov              eax, dword ptr [rsp + 944]
                        cmp              eax, 0;                              je    n40_disjunction_af
                                                                              jmp   n40_disjunction_af
n40_disjunction_af:     mov              r11, 26
                        add              dword ptr [rsp + 944], 1
                        mov              eax, dword ptr [rsp + 944]
                        cmp              eax, 1;                              je    n63_keyword_icon_α
                                                                              jmp   n42_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n41_call_proc_staged_α: mov              r11, 27
                        lea              rsi, [rsp + 928]
                        call             wr_dcα;                              jmp   .Lx118_2
.Lx118_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx118_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 880]
                        mov              rdx, qword ptr [rsp + 888]
.Lx118_29:              mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              al, 104;                             je    n40_disjunction_β
                                                                              jmp   n42_disjunction_α
n41_call_proc_staged_β: mov              r11, 27;                             jmp   n40_disjunction_β
.Lx118_0:               .quad            .Lx118_0_s
.Lx118_0_s:             .string          "wr"
#-----------------------------------------------------------------------------------------------------------------------
n42_disjunction_α:      mov              r11, 28
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              dword ptr [rsp + 784], 0;            jmp   n60_var_α
n42_disjunction_as:     mov              r11, 28
                        mov              eax, dword ptr [rsp + 784]
                        cmp              eax, 0;                              jne   .Lx120_0
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 776], rax;          jmp   n43_call_proc_staged_α
.Lx120_0:               cmp              eax, 1;                              jne   .Lx120_1
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 776], rax;          jmp   n43_call_proc_staged_α
.Lx120_1:                                                                     jmp   n43_call_proc_staged_α
n42_disjunction_β:      mov              r11, 28
                        mov              eax, dword ptr [rsp + 784]
                        cmp              eax, 0;                              je    n42_disjunction_af
                                                                              jmp   n42_disjunction_af
n42_disjunction_af:     mov              r11, 28
                        add              dword ptr [rsp + 784], 1
                        mov              eax, dword ptr [rsp + 784]
                        cmp              eax, 1;                              je    n59_keyword_icon_α
                                                                              jmp   n44_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n43_call_proc_staged_α: mov              r11, 29
                        lea              rsi, [rsp + 768]
                        call             wr_dcα;                              jmp   .Lx122_2
.Lx122_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx122_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 720]
                        mov              rdx, qword ptr [rsp + 728]
.Lx122_29:              mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              al, 104;                             je    n42_disjunction_β
                                                                              jmp   n44_disjunction_α
n43_call_proc_staged_β: mov              r11, 29;                             jmp   n42_disjunction_β
.Lx122_0:               .quad            .Lx122_0_s
.Lx122_0_s:             .string          "wr"
#-----------------------------------------------------------------------------------------------------------------------
n44_disjunction_α:      mov              r11, 30
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              dword ptr [rsp + 624], 0;            jmp   n56_var_α
n44_disjunction_as:     mov              r11, 30
                        mov              eax, dword ptr [rsp + 624]
                        cmp              eax, 0;                              jne   .Lx124_0
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 616], rax;          jmp   n45_call_proc_staged_α
.Lx124_0:               cmp              eax, 1;                              jne   .Lx124_1
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 616], rax;          jmp   n45_call_proc_staged_α
.Lx124_1:                                                                     jmp   n45_call_proc_staged_α
n44_disjunction_β:      mov              r11, 30
                        mov              eax, dword ptr [rsp + 624]
                        cmp              eax, 0;                              je    n44_disjunction_af
                                                                              jmp   n44_disjunction_af
n44_disjunction_af:     mov              r11, 30
                        add              dword ptr [rsp + 624], 1
                        mov              eax, dword ptr [rsp + 624]
                        cmp              eax, 1;                              je    n55_keyword_icon_α
                                                                              jmp   n46_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n45_call_proc_staged_α: mov              r11, 31
                        lea              rsi, [rsp + 608]
                        call             wr_dcα;                              jmp   .Lx126_2
.Lx126_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx126_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
.Lx126_29:              mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n44_disjunction_β
                                                                              jmp   n46_disjunction_α
n45_call_proc_staged_β: mov              r11, 31;                             jmp   n44_disjunction_β
.Lx126_0:               .quad            .Lx126_0_s
.Lx126_0_s:             .string          "wr"
#-----------------------------------------------------------------------------------------------------------------------
n46_disjunction_α:      mov              r11, 32
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              dword ptr [rsp + 464], 0;            jmp   n52_var_α
n46_disjunction_as:     mov              r11, 32
                        mov              eax, dword ptr [rsp + 464]
                        cmp              eax, 0;                              jne   .Lx128_0
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax;          jmp   n47_call_proc_staged_α
.Lx128_0:               cmp              eax, 1;                              jne   .Lx128_1
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 456], rax;          jmp   n47_call_proc_staged_α
.Lx128_1:                                                                     jmp   n47_call_proc_staged_α
n46_disjunction_β:      mov              r11, 32
                        mov              eax, dword ptr [rsp + 464]
                        cmp              eax, 0;                              je    n46_disjunction_af
                                                                              jmp   n46_disjunction_af
n46_disjunction_af:     mov              r11, 32
                        add              dword ptr [rsp + 464], 1
                        mov              eax, dword ptr [rsp + 464]
                        cmp              eax, 1;                              je    n51_keyword_icon_α
                                                                              jmp   n48_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n47_call_proc_staged_α: mov              r11, 33
                        lea              rsi, [rsp + 448]
                        call             wr_dcα;                              jmp   .Lx130_2
.Lx130_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx130_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
.Lx130_29:              mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n46_disjunction_β
                                                                              jmp   n48_call_builtin_icon_α
n47_call_proc_staged_β: mov              r11, 33;                             jmp   n46_disjunction_β
.Lx130_0:               .quad            .Lx130_0_s
.Lx130_0_s:             .string          "wr"
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_icon_α:
                        mov              r11, 34
                        .section         .rodata
.Lrkfn132:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn132]
                        lea              rsi, [rsp + 384]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n50_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n49_conjunction_α
n48_call_builtin_icon_β:
                        mov              r11, 34;                             jmp   n50_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n49_conjunction_α:      mov              r11, 35
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 360], rax;          jmp   n50_unmark_α
n49_conjunction_β:      mov              r11, 35;                             jmp   n50_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n50_unmark_α:           mov              r11, 36
                        mov              rsp, qword ptr [rsp + 304];          jmp   n28_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n51_keyword_icon_α:     mov              r11, 37
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0;            jmp   n46_disjunction_as
n51_keyword_icon_β:     mov              r11, 37;                             jmp   n46_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:              mov              r11, 38
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 504], rax;          jmp   n53_var_α
n52_var_β:              mov              r11, 38;                             jmp   n46_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:              mov              r11, 39
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 520], rax;          jmp   n54_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n54_binop_test_α:       mov              r11, 40
                        mov              rdi, qword ptr [rsp + 1568]
                        mov              rsi, qword ptr [rsp + 1576]
                        mov              rdx, qword ptr [rsp + 1552]
                        mov              rcx, qword ptr [rsp + 1560]
                        mov              r8d, 14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n46_disjunction_af
                        mov              rdi, qword ptr [rsp + 1552]
                        mov              rsi, qword ptr [rsp + 1560]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n46_disjunction_as
n54_binop_test_β:       mov              r11, 40;                             jmp   n46_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n55_keyword_icon_α:     mov              r11, 41
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0;            jmp   n44_disjunction_as
n55_keyword_icon_β:     mov              r11, 41;                             jmp   n44_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:              mov              r11, 42
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 664], rax;          jmp   n57_var_α
n56_var_β:              mov              r11, 42;                             jmp   n44_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:              mov              r11, 43
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 680], rax;          jmp   n58_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n58_binop_test_α:       mov              r11, 44
                        mov              rdi, qword ptr [rsp + 1568]
                        mov              rsi, qword ptr [rsp + 1576]
                        mov              rdx, qword ptr [rsp + 1552]
                        mov              rcx, qword ptr [rsp + 1560]
                        mov              r8d, 15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n44_disjunction_af
                        mov              rdi, qword ptr [rsp + 1552]
                        mov              rsi, qword ptr [rsp + 1560]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n44_disjunction_as
n58_binop_test_β:       mov              r11, 44;                             jmp   n44_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n59_keyword_icon_α:     mov              r11, 45
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0;            jmp   n42_disjunction_as
n59_keyword_icon_β:     mov              r11, 45;                             jmp   n42_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:              mov              r11, 46
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 824], rax;          jmp   n61_var_α
n60_var_β:              mov              r11, 46;                             jmp   n42_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:              mov              r11, 47
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 840], rax;          jmp   n62_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n62_binop_test_α:       mov              r11, 48
                        mov              rdi, qword ptr [rsp + 1568]
                        mov              rsi, qword ptr [rsp + 1576]
                        mov              rdx, qword ptr [rsp + 1552]
                        mov              rcx, qword ptr [rsp + 1560]
                        mov              r8d, 17
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n42_disjunction_af
                        mov              rdi, qword ptr [rsp + 1552]
                        mov              rsi, qword ptr [rsp + 1560]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n42_disjunction_as
n62_binop_test_β:       mov              r11, 48;                             jmp   n42_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n63_keyword_icon_α:     mov              r11, 49
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0;           jmp   n40_disjunction_as
n63_keyword_icon_β:     mov              r11, 49;                             jmp   n40_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n64_var_α:              mov              r11, 50
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 984], rax;          jmp   n65_var_α
n64_var_β:              mov              r11, 50;                             jmp   n40_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n65_var_α:              mov              r11, 51
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n66_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n66_binop_test_α:       mov              r11, 52
                        mov              rdi, qword ptr [rsp + 1568]
                        mov              rsi, qword ptr [rsp + 1576]
                        mov              rdx, qword ptr [rsp + 1552]
                        mov              rcx, qword ptr [rsp + 1560]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n40_disjunction_af
                        mov              rdi, qword ptr [rsp + 1552]
                        mov              rsi, qword ptr [rsp + 1560]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n40_disjunction_as
n66_binop_test_β:       mov              r11, 52;                             jmp   n40_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n67_keyword_icon_α:     mov              r11, 53
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0;           jmp   n38_disjunction_as
n67_keyword_icon_β:     mov              r11, 53;                             jmp   n38_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:              mov              r11, 54
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n69_var_α
n68_var_β:              mov              r11, 54;                             jmp   n38_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:              mov              r11, 55
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n70_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n70_binop_test_α:       mov              r11, 56
                        mov              rdi, qword ptr [rsp + 1568]
                        mov              rsi, qword ptr [rsp + 1576]
                        mov              rdx, qword ptr [rsp + 1552]
                        mov              rcx, qword ptr [rsp + 1560]
                        mov              r8d, 13
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n38_disjunction_af
                        mov              rdi, qword ptr [rsp + 1552]
                        mov              rsi, qword ptr [rsp + 1560]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n38_disjunction_as
n70_binop_test_β:       mov              r11, 56;                             jmp   n38_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n71_keyword_icon_α:     mov              r11, 57
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0;           jmp   n36_disjunction_as
n71_keyword_icon_β:     mov              r11, 57;                             jmp   n36_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n72_var_α:              mov              r11, 58
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n73_var_α
n72_var_β:              mov              r11, 58;                             jmp   n36_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:              mov              r11, 59
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n74_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n74_binop_test_α:       mov              r11, 60
                        mov              rdi, qword ptr [rsp + 1568]
                        mov              rsi, qword ptr [rsp + 1576]
                        mov              rdx, qword ptr [rsp + 1552]
                        mov              rcx, qword ptr [rsp + 1560]
                        mov              r8d, 12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n36_disjunction_af
                        mov              rdi, qword ptr [rsp + 1552]
                        mov              rsi, qword ptr [rsp + 1560]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n36_disjunction_as
n74_binop_test_β:       mov              r11, 60;                             jmp   n36_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_charset_α:      mov              r11, 61
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], -1
                        mov              rax, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n28_disjunction_as
n75_lit_charset_β:      mov              r11, 61;                             jmp   n28_disjunction_af
.Lx172_0:               .quad            .Lx172_0_s
.Lx172_0_s:             .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_charset_α:      mov              r11, 62
                        mov              qword ptr [rsp + 112], 2             # result
                        mov              dword ptr [rsp + 116], -1
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n28_disjunction_as
n76_lit_charset_β:      mov              r11, 62;                             jmp   n28_disjunction_af
.Lx173_0:               .quad            .Lx173_0_s
.Lx173_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:       mov              r11, 63
                        mov              qword ptr [rsp + 96], 2              # result
                        mov              dword ptr [rsp + 100], 1
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rsp + 104], rax;          jmp   n28_disjunction_as
n77_lit_string_β:       mov              r11, 63;                             jmp   n28_disjunction_af
.Lx174_0:               .quad            .Lx174_0_s
.Lx174_0_s:             .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:       mov              r11, 64
                        mov              qword ptr [rsp + 80], 2              # result
                        mov              dword ptr [rsp + 84], 1
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rsp + 88], rax;           jmp   n28_disjunction_as
n78_lit_string_β:       mov              r11, 64;                             jmp   n28_disjunction_af
.Lx175_0:               .quad            .Lx175_0_s
.Lx175_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:       mov              r11, 65
                        mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 0
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n28_disjunction_as
n79_lit_string_β:       mov              r11, 65;                             jmp   n28_disjunction_af
.Lx176_0:               .quad            .Lx176_0_s
.Lx176_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_charset_α:      mov              r11, 66
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], -1
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n26_disjunction_as
n80_lit_charset_β:      mov              r11, 66;                             jmp   n26_disjunction_af
.Lx177_0:               .quad            .Lx177_0_s
.Lx177_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_integer_α:      mov              r11, 67
                        mov              qword ptr [rsp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n26_disjunction_as
n81_lit_integer_β:      mov              r11, 67;                             jmp   n26_disjunction_af
.Lx178_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:       mov              r11, 68
                        mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 1
                        mov              rax, qword ptr [rip + .Lx179_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n26_disjunction_as
n82_lit_string_β:       mov              r11, 68;                             jmp   n26_disjunction_af
.Lx179_0:               .quad            .Lx179_0_s
.Lx179_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_charset_α:      mov              r11, 69
                        mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], -1
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n26_disjunction_as
n83_lit_charset_β:      mov              r11, 69;                             jmp   n26_disjunction_af
.Lx180_0:               .quad            .Lx180_0_s
.Lx180_0_s:             .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:       mov              r11, 70
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 1
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n26_disjunction_as
n84_lit_string_β:       mov              r11, 70;                             jmp   n26_disjunction_af
.Lx181_0:               .quad            .Lx181_0_s
.Lx181_0_s:             .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:       mov              r11, 71
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 1
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n26_disjunction_as
n85_lit_string_β:       mov              r11, 71;                             jmp   n26_disjunction_af
.Lx182_0:               .quad            .Lx182_0_s
.Lx182_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:       mov              r11, 72
                        mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 0
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n26_disjunction_as
n86_lit_string_β:       mov              r11, 72;                             jmp   n26_disjunction_af
.Lx183_0:               .quad            .Lx183_0_s
.Lx183_0_s:             .string          ""
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
.Lstartup_pname0:       .string          "wr"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__wr
                        .quad            wr_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            288
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
