                        .intel_syntax    noprefix
                        .text
                        .file            1 "micsum.icn"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
FN__dofile:
                        sub              rsp, 3984
                        mov              qword ptr [rsp + 3976], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 3632
                        xor              eax, eax
                        mov              ecx, 128
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 9
                        call             rt_icn_zframe_args_install@PLT
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        .section         .rodata
.Licn_trace_nm0:        .string          "dofile"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm0]
                        mov              esi, 2
                        lea              rdx, [rbx + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ldofile_α_0_247:       mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
dofile_α_body:
                        .type            n1_line_mark_bx, @function
n1_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_line_mark_α:         mov              r11, 1
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 31
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_176_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n2_line_mark_α
.Lline_mark_α_176_0:    .quad            .Lline_mark_α_176_0_s
.Lline_mark_α_176_0_s:  .string          "micsum.icn"
                        .size            n1_line_mark_bx, .-n1_line_mark_bx
                        .type            n2_line_mark_bx, @function
n2_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_line_mark_α:         mov              r11, 2
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 32;             jmp   n3_make_list_α
                        .size            n2_line_mark_bx, .-n2_line_mark_bx
                        .type            n3_make_list_bx, @function
n3_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_make_list_α:         mov              r11, 3
                        lea              rdi, [rbp + 3600]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx;         jmp   n4_assign_α
                        .size            n3_make_list_bx, .-n3_make_list_bx
                        .type            n4_assign_bx, @function
n4_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:            mov              r11, 4
                        mov              rax, qword ptr [rbp + 3584]
                        mov              rdx, qword ptr [rbp + 3592]
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx;         jmp   n5_line_mark_α
                        .size            n4_assign_bx, .-n4_assign_bx
                        .type            n5_line_mark_bx, @function
n5_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_line_mark_α:         mov              r11, 5
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 33;             jmp   n6_make_list_α
                        .size            n5_line_mark_bx, .-n5_line_mark_bx
                        .type            n6_make_list_bx, @function
n6_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_make_list_α:         mov              r11, 6
                        lea              rdi, [rbp + 3568]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3552], rax
                        mov              qword ptr [rbp + 3560], rdx;         jmp   n7_assign_α
                        .size            n6_make_list_bx, .-n6_make_list_bx
                        .type            n7_assign_bx, @function
n7_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:            mov              r11, 7
                        mov              rax, qword ptr [rbp + 3552]
                        mov              rdx, qword ptr [rbp + 3560]
                        mov              qword ptr [rbp + 3648], rax
                        mov              qword ptr [rbp + 3656], rdx;         jmp   n8_line_mark_α
                        .size            n7_assign_bx, .-n7_assign_bx
                        .type            n8_line_mark_bx, @function
n8_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_line_mark_α:         mov              r11, 8
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 35;             jmp   n9_var_ref_α
                        .size            n8_line_mark_bx, .-n8_line_mark_bx
                        .type            n9_var_ref_bx, @function
n9_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              r11, 9
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx;         jmp   n10_deref_α
                        .size            n9_var_ref_bx, .-n9_var_ref_bx
                        .type            n10_deref_bx, @function
n10_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_deref_α:            mov              r11, 10
                        mov              rdi, qword ptr [rbp + 2496]
                        mov              rsi, qword ptr [rbp + 2504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n57_line_mark_α
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx;         jmp   n11_call_icon_α
                        .size            n10_deref_bx, .-n10_deref_bx
                        .type            n11_call_icon_bx, @function
n11_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_call_icon_α:        mov              r11, 11
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2472], rax
                        .section         .rodata
.Lcall_icon_α_rkfn193:  .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn193]
                        lea              rsi, [rbp + 2464]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262295
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        cmp              al, 104;                             je    n57_line_mark_α
                                                                              jmp   n12_assign_α
n11_call_icon_β:        mov              r11, 11;                             jmp   n57_line_mark_α
                        .size            n11_call_icon_bx, .-n11_call_icon_bx
                        .type            n12_assign_bx, @function
n12_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:           mov              r11, 12
                        mov              rax, qword ptr [rbp + 2448]
                        mov              rdx, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 3712], rax
                        mov              qword ptr [rbp + 3720], rdx;         jmp   n13_var_α
                        .size            n12_assign_bx, .-n12_assign_bx
                        .type            n13_var_bx, @function
n13_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:              mov              r11, 13
                        mov              rax, qword ptr [rbp + 3712]
                        mov              qword ptr [rbp + 3520], rax
                        mov              rax, qword ptr [rbp + 3720]
                        mov              qword ptr [rbp + 3528], rax;         jmp   n14_scan_enter_α
                        .size            n13_var_bx, .-n13_var_bx
                        .type            n14_scan_enter_bx, @function
n14_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_scan_enter_α:       mov              r11, 14
                        mov              qword ptr [rbp + 2544], r13
                        mov              qword ptr [rbp + 2552], r14
                        mov              qword ptr [rbp + 2560], r15
                        mov              rdi, qword ptr [rbp + 3520]
                        mov              rsi, qword ptr [rbp + 3528]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n9_var_ref_α
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n15_line_mark_α
                        .size            n14_scan_enter_bx, .-n14_scan_enter_bx
                        .type            n15_line_mark_bx, @function
n15_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_line_mark_α:        mov              r11, 15
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 36;             jmp   n16_lit_charset_α
                        .size            n15_line_mark_bx, .-n15_line_mark_bx
                        .type            n16_lit_charset_bx, @function
n16_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_charset_α:      mov              r11, 16
                        mov              qword ptr [rbp + 3472], 2            # result
                        mov              dword ptr [rbp + 3476], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_201_0]
                        mov              qword ptr [rbp + 3480], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_201_0]
                        mov              rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_register@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdx
                        pop              rax;                                 jmp   n17_scan_many_α
.Llit_charset_α_201_0:  .quad            .Llit_charset_α_201_0_s
.Llit_charset_α_201_0_s:
                        .string          " "
                        .size            n16_lit_charset_bx, .-n16_lit_charset_bx
                        .type            n17_scan_many_bx, @function
n17_scan_many_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_scan_many_α:        mov              r11, 17
                        lea              rdi, [rip + .Lscan_many_α_203_3]
                        mov              eax, r14d
.Lscan_many_α_203_0:    cmp              eax, r15d;                           jge   .Lscan_many_α_203_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_many_α_203_1
                        add              eax, 1;                              jmp   .Lscan_many_α_203_0
.Lscan_many_α_203_1:    cmp              eax, r14d;                           je    n19_line_mark_α
                        mov              qword ptr [rbp + 3456], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 3464], rcx;         jmp   n18_scan_tab_α
n17_scan_many_β:        mov              r11, 17;                             jmp   n19_line_mark_α
.Lscan_many_β_203_2:    .quad            .Lscan_many_β_203_2_s
.Lscan_many_β_203_2_s:  .string          " "
.Lscan_many_α_203_3:    .quad            4294967296
.Lscan_many_β_203_4:    .quad            0
.Lscan_many_β_203_5:    .quad            0
.Lscan_many_β_203_6:    .quad            0
                        .size            n17_scan_many_bx, .-n17_scan_many_bx
                        .type            n18_scan_tab_bx, @function
n18_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_scan_tab_α:         mov              r11, 18
                        mov              rdi, qword ptr [rbp + 3456]
                        mov              rsi, qword ptr [rbp + 3464]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             eax, eax;                            jz    n19_line_mark_α
                        mov              rdi, qword ptr [rbp + 3456]
                        mov              rsi, qword ptr [rbp + 3464]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        cmp              rax, 1;                              jge   .Lscan_tab_α_205_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_205_0:     cmp              rax, 1;                              jl    n19_line_mark_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n19_line_mark_α
                        mov              qword ptr [rbp + 3440], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx;         jmp   n19_line_mark_α
n18_scan_tab_β:         mov              r11, 18
                        mov              r14, qword ptr [rbp + 3440];         jmp   n19_line_mark_α
                        .size            n18_scan_tab_bx, .-n18_scan_tab_bx
                        .type            n19_line_mark_bx, @function
n19_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_line_mark_α:        mov              r11, 19
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 37;             jmp   n20_lit_charset_α
                        .size            n19_line_mark_bx, .-n19_line_mark_bx
                        .type            n20_lit_charset_bx, @function
n20_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_charset_α:      mov              r11, 20
                        mov              qword ptr [rbp + 3376], 2            # result
                        mov              dword ptr [rbp + 3380], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_208_0]
                        mov              qword ptr [rbp + 3384], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_208_0]
                        mov              rsi, 11
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_register@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdx
                        pop              rax;                                 jmp   n21_scan_many_α
.Llit_charset_α_208_0:  .quad            .Llit_charset_α_208_0_s
.Llit_charset_α_208_0_s:
                        .string          "-0123456789"
                        .size            n20_lit_charset_bx, .-n20_lit_charset_bx
                        .type            n21_scan_many_bx, @function
n21_scan_many_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_scan_many_α:        mov              r11, 21
                        lea              rdi, [rip + .Lscan_many_α_210_3]
                        mov              eax, r14d
.Lscan_many_α_210_0:    cmp              eax, r15d;                           jge   .Lscan_many_α_210_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_many_α_210_1
                        add              eax, 1;                              jmp   .Lscan_many_α_210_0
.Lscan_many_α_210_1:    cmp              eax, r14d;                           je    n25_line_mark_α
                        mov              qword ptr [rbp + 3360], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 3368], rcx;         jmp   n22_scan_tab_α
n21_scan_many_β:        mov              r11, 21;                             jmp   n25_line_mark_α
.Lscan_many_β_210_2:    .quad            .Lscan_many_β_210_2_s
.Lscan_many_β_210_2_s:  .string          "-0123456789"
.Lscan_many_α_210_3:    .quad            287984085547089920
.Lscan_many_β_210_4:    .quad            0
.Lscan_many_β_210_5:    .quad            0
.Lscan_many_β_210_6:    .quad            0
                        .size            n21_scan_many_bx, .-n21_scan_many_bx
                        .type            n22_scan_tab_bx, @function
n22_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_scan_tab_α:         mov              r11, 22
                        mov              rdi, qword ptr [rbp + 3360]
                        mov              rsi, qword ptr [rbp + 3368]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             eax, eax;                            jz    n25_line_mark_α
                        mov              rdi, qword ptr [rbp + 3360]
                        mov              rsi, qword ptr [rbp + 3368]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        cmp              rax, 1;                              jge   .Lscan_tab_α_212_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_212_0:     cmp              rax, 1;                              jl    n25_line_mark_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n25_line_mark_α
                        mov              qword ptr [rbp + 3344], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx;         jmp   n23_call_icon_α
n22_scan_tab_β:         mov              r11, 22
                        mov              r14, qword ptr [rbp + 3344];         jmp   n25_line_mark_α
                        .size            n22_scan_tab_bx, .-n22_scan_tab_bx
                        .type            n23_call_icon_bx, @function
n23_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_call_icon_α:        mov              r11, 23
                        mov              rax, qword ptr [rbp + 3328]
                        mov              qword ptr [rbp + 3296], rax
                        mov              rax, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 3304], rax
                        .section         .rodata
.Lcall_icon_α_rkfn214:  .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn214]
                        lea              rsi, [rbp + 3296]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458878
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx
                        cmp              al, 104;                             je    n22_scan_tab_β
                                                                              jmp   n24_assign_α
n23_call_icon_β:        mov              r11, 23;                             jmp   n22_scan_tab_β
                        .size            n23_call_icon_bx, .-n23_call_icon_bx
                        .type            n24_assign_bx, @function
n24_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:           mov              r11, 24
                        mov              rax, qword ptr [rbp + 3280]
                        mov              rdx, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx;         jmp   n25_line_mark_α
                        .size            n24_assign_bx, .-n24_assign_bx
                        .type            n25_line_mark_bx, @function
n25_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_line_mark_α:        mov              r11, 25
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 38;             jmp   n26_lit_charset_α
                        .size            n25_line_mark_bx, .-n25_line_mark_bx
                        .type            n26_lit_charset_bx, @function
n26_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_charset_α:      mov              r11, 26
                        mov              qword ptr [rbp + 3232], 2            # result
                        mov              dword ptr [rbp + 3236], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_218_0]
                        mov              qword ptr [rbp + 3240], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_218_0]
                        mov              rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_register@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdx
                        pop              rax;                                 jmp   n27_scan_many_α
.Llit_charset_α_218_0:  .quad            .Llit_charset_α_218_0_s
.Llit_charset_α_218_0_s:
                        .string          " "
                        .size            n26_lit_charset_bx, .-n26_lit_charset_bx
                        .type            n27_scan_many_bx, @function
n27_scan_many_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_scan_many_α:        mov              r11, 27
                        lea              rdi, [rip + .Lscan_many_α_220_3]
                        mov              eax, r14d
.Lscan_many_α_220_0:    cmp              eax, r15d;                           jge   .Lscan_many_α_220_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_many_α_220_1
                        add              eax, 1;                              jmp   .Lscan_many_α_220_0
.Lscan_many_α_220_1:    cmp              eax, r14d;                           je    n29_line_mark_α
                        mov              qword ptr [rbp + 3216], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 3224], rcx;         jmp   n28_scan_tab_α
n27_scan_many_β:        mov              r11, 27;                             jmp   n29_line_mark_α
.Lscan_many_β_220_2:    .quad            .Lscan_many_β_220_2_s
.Lscan_many_β_220_2_s:  .string          " "
.Lscan_many_α_220_3:    .quad            4294967296
.Lscan_many_β_220_4:    .quad            0
.Lscan_many_β_220_5:    .quad            0
.Lscan_many_β_220_6:    .quad            0
                        .size            n27_scan_many_bx, .-n27_scan_many_bx
                        .type            n28_scan_tab_bx, @function
n28_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_scan_tab_α:         mov              r11, 28
                        mov              rdi, qword ptr [rbp + 3216]
                        mov              rsi, qword ptr [rbp + 3224]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             eax, eax;                            jz    n29_line_mark_α
                        mov              rdi, qword ptr [rbp + 3216]
                        mov              rsi, qword ptr [rbp + 3224]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        cmp              rax, 1;                              jge   .Lscan_tab_α_222_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_222_0:     cmp              rax, 1;                              jl    n29_line_mark_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n29_line_mark_α
                        mov              qword ptr [rbp + 3200], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx;         jmp   n29_line_mark_α
n28_scan_tab_β:         mov              r11, 28
                        mov              r14, qword ptr [rbp + 3200];         jmp   n29_line_mark_α
                        .size            n28_scan_tab_bx, .-n28_scan_tab_bx
                        .type            n29_line_mark_bx, @function
n29_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_line_mark_α:        mov              r11, 29
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 39;             jmp   n30_lit_integer_α
                        .size            n29_line_mark_bx, .-n29_line_mark_bx
                        .type            n30_lit_integer_bx, @function
n30_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      mov              r11, 30
                        mov              qword ptr [rbp + 3152], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_225_0]
                        mov              qword ptr [rbp + 3160], rax;         jmp   n31_scan_tab_α
.Llit_integer_α_225_0:  .quad            0
                        .size            n30_lit_integer_bx, .-n30_lit_integer_bx
                        .type            n31_scan_tab_bx, @function
n31_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_scan_tab_α:         mov              r11, 31
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_tab_α_227_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_227_0:     cmp              rax, 1;                              jl    n33_line_mark_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n33_line_mark_α
                        mov              qword ptr [rbp + 3136], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx;         jmp   n32_assign_α
n31_scan_tab_β:         mov              r11, 31
                        mov              r14, qword ptr [rbp + 3136];         jmp   n33_line_mark_α
                        .size            n31_scan_tab_bx, .-n31_scan_tab_bx
                        .type            n32_assign_bx, @function
n32_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:           mov              r11, 32
                        mov              rax, qword ptr [rbp + 3120]
                        mov              rdx, qword ptr [rbp + 3128]
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx;         jmp   n33_line_mark_α
                        .size            n32_assign_bx, .-n32_assign_bx
                        .type            n33_line_mark_bx, @function
n33_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_line_mark_α:        mov              r11, 33
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 40;             jmp   n34_disjunction_α
                        .size            n33_line_mark_bx, .-n33_line_mark_bx
                        .type            n34_disjunction_bx, @function
n34_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_disjunction_α:      mov              r11, 34
                        mov              qword ptr [rbp + 2624], 0
                        mov              qword ptr [rbp + 2632], 0
                        mov              dword ptr [rbp + 2640], 0;           jmp   n51_var_α
.Ldisjunction_γ_34_as:  mov              r11, 34
                        mov              eax, dword ptr [rbp + 2640]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_232_0
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2632], rax;         jmp   n35_conjunction_α
.Ldisjunction_α_232_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_232_1
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2632], rax;         jmp   n35_conjunction_α
.Ldisjunction_α_232_1:                                                        jmp   n35_conjunction_α
n34_disjunction_β:      mov              r11, 34
                        mov              eax, dword ptr [rbp + 2640]
                        cmp              eax, 0;                              je    n56_scan_α
                                                                              jmp   n37_disjunction_β
.Ldisjunction_γ_34_af:  mov              r11, 34
.Ldisjunction_ω_34_af:  mov              r11, 34
                        add              dword ptr [rbp + 2640], 1
                        mov              eax, dword ptr [rbp + 2640]
                        cmp              eax, 1;                              je    n37_disjunction_α
                                                                              jmp   n56_scan_α
                        .size            n34_disjunction_bx, .-n34_disjunction_bx
                        .type            n35_conjunction_bx, @function
n35_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_conjunction_α:      mov              r11, 35
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2616], rax;         jmp   n36_scan_α
n35_conjunction_β:      mov              r11, 35;                             jmp   n56_scan_α
                        .size            n35_conjunction_bx, .-n35_conjunction_bx
                        .type            n36_scan_bx, @function
n36_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_scan_α:             mov              r11, 36
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2584], rax
                        mov              rdi, qword ptr [rbp + 2544]
                        mov              rsi, qword ptr [rbp + 2552]
                        mov              rdx, qword ptr [rbp + 2560]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 2544]
                        mov              r14, qword ptr [rbp + 2552]
                        mov              r15, qword ptr [rbp + 2560];         jmp   n9_var_ref_α
n36_scan_β:             mov              r11, 36
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_reenter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax;                            jmp   n34_disjunction_β
                                                                              jmp   n9_var_ref_α
                        .size            n36_scan_bx, .-n36_scan_bx
                        .type            n37_disjunction_bx, @function
n37_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_disjunction_α:      mov              r11, 37
                        mov              qword ptr [rbp + 2752], 0
                        mov              qword ptr [rbp + 2760], 0
                        mov              dword ptr [rbp + 2768], 0;           jmp   n43_var_α
.Ldisjunction_γ_37_as:  mov              r11, 37
                        mov              eax, dword ptr [rbp + 2768]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_237_0
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2760], rax;         jmp   .Ldisjunction_γ_34_as
.Ldisjunction_α_237_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_237_1
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2760], rax;         jmp   .Ldisjunction_γ_34_as
.Ldisjunction_α_237_1:                                                        jmp   .Ldisjunction_γ_34_as
n37_disjunction_β:      mov              r11, 37
                        mov              eax, dword ptr [rbp + 2768]
                        cmp              eax, 0;                              je    n56_scan_α
                                                                              jmp   n56_scan_α
.Ldisjunction_γ_37_af:  mov              r11, 37
.Ldisjunction_ω_37_af:  mov              r11, 37
                        add              dword ptr [rbp + 2768], 1
                        mov              eax, dword ptr [rbp + 2768]
                        cmp              eax, 1;                              je    n38_var_ref_α
                                                                              jmp   n56_scan_α
                        .size            n37_disjunction_bx, .-n37_disjunction_bx
                        .type            n38_var_ref_bx, @function
n38_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:          mov              r11, 38
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3648]
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx;         jmp   n39_var_ref_α
n38_var_ref_β:          mov              r11, 38;                             jmp   n56_scan_α
                        .size            n38_var_ref_bx, .-n38_var_ref_bx
                        .type            n39_var_ref_bx, @function
n39_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:          mov              r11, 39
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3728]
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx;         jmp   n40_deref_α
                        .size            n39_var_ref_bx, .-n39_var_ref_bx
                        .type            n40_deref_bx, @function
n40_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_deref_α:            mov              r11, 40
                        mov              rdi, qword ptr [rbp + 3040]
                        mov              rsi, qword ptr [rbp + 3048]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n56_scan_α
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx;         jmp   n41_deref_α
                        .size            n40_deref_bx, .-n40_deref_bx
                        .type            n41_deref_bx, @function
n41_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_deref_α:            mov              r11, 41
                        mov              rdi, qword ptr [rbp + 3056]
                        mov              rsi, qword ptr [rbp + 3064]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n56_scan_α
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx;         jmp   n42_call_icon_α
                        .size            n41_deref_bx, .-n41_deref_bx
                        .type            n42_call_icon_bx, @function
n42_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_call_icon_α:        mov              r11, 42
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3016], rax
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 3000], rax
                        .section         .rodata
.Lcall_icon_α_rkfn245:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn245]
                        lea              rsi, [rbp + 2992]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                        cmp              al, 104;                             je    n56_scan_α
                                                                              jmp   .Ldisjunction_γ_37_as
n42_call_icon_β:        mov              r11, 42;                             jmp   n56_scan_α
                        .size            n42_call_icon_bx, .-n42_call_icon_bx
                        .type            n43_var_bx, @function
n43_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:              mov              r11, 43
                        mov              rax, qword ptr [rbp + 3744]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 3752]
                        mov              qword ptr [rbp + 2936], rax;         jmp   n44_lit_string_α
n43_var_β:              mov              r11, 43;                             jmp   .Ldisjunction_ω_37_af
                        .size            n43_var_bx, .-n43_var_bx
                        .type            n44_lit_string_bx, @function
n44_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:       mov              r11, 44
                        mov              qword ptr [rbp + 2944], 2            # result
                        mov              dword ptr [rbp + 2948], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_248_0]
                        mov              qword ptr [rbp + 2952], rax;         jmp   n45_binop_test_α
.Llit_string_α_248_0:   .quad            .Llit_string_α_248_0_s
.Llit_string_α_248_0_s: .string          "nothing"
                        .size            n44_lit_string_bx, .-n44_lit_string_bx
                        .type            n45_binop_test_bx, @function
n45_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_binop_test_α:       mov              r11, 45
                        mov              rdi, qword ptr [rbp + 3744]
                        mov              rsi, qword ptr [rbp + 3752]
                        mov              rdx, qword ptr [rbp + 2944]
                        mov              rcx, qword ptr [rbp + 2952]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    .Ldisjunction_ω_37_af
                        mov              rdi, qword ptr [rbp + 2944]
                        mov              rsi, qword ptr [rbp + 2952]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n46_var_ref_α
                        .size            n45_binop_test_bx, .-n45_binop_test_bx
                        .type            n46_var_ref_bx, @function
n46_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:          mov              r11, 46
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3680]
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx;         jmp   n47_var_ref_α
                        .size            n46_var_ref_bx, .-n46_var_ref_bx
                        .type            n47_var_ref_bx, @function
n47_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:          mov              r11, 47
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3728]
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx;         jmp   n48_deref_α
                        .size            n47_var_ref_bx, .-n47_var_ref_bx
                        .type            n48_deref_bx, @function
n48_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_deref_α:            mov              r11, 48
                        mov              rdi, qword ptr [rbp + 2848]
                        mov              rsi, qword ptr [rbp + 2856]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n56_scan_α
                        mov              qword ptr [rbp + 2880], rax
                        mov              qword ptr [rbp + 2888], rdx;         jmp   n49_deref_α
                        .size            n48_deref_bx, .-n48_deref_bx
                        .type            n49_deref_bx, @function
n49_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_deref_α:            mov              r11, 49
                        mov              rdi, qword ptr [rbp + 2864]
                        mov              rsi, qword ptr [rbp + 2872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n56_scan_α
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx;         jmp   n50_call_icon_α
                        .size            n49_deref_bx, .-n49_deref_bx
                        .type            n50_call_icon_bx, @function
n50_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_call_icon_α:        mov              r11, 50
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 2824], rax
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 2808], rax
                        .section         .rodata
.Lcall_icon_α_rkfn257:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn257]
                        lea              rsi, [rbp + 2800]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                        cmp              al, 104;                             je    n56_scan_α
                                                                              jmp   .Ldisjunction_γ_37_as
n50_call_icon_β:        mov              r11, 50;                             jmp   n56_scan_α
                        .size            n50_call_icon_bx, .-n50_call_icon_bx
                        .type            n51_var_bx, @function
n51_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:              mov              r11, 51
                        mov              rax, qword ptr [rbp + 3744]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 3752]
                        mov              qword ptr [rbp + 2712], rax;         jmp   n52_lit_string_α
n51_var_β:              mov              r11, 51;                             jmp   .Ldisjunction_ω_34_af
                        .size            n51_var_bx, .-n51_var_bx
                        .type            n52_lit_string_bx, @function
n52_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:       mov              r11, 52
                        mov              qword ptr [rbp + 2720], 2            # result
                        mov              dword ptr [rbp + 2724], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_260_0]
                        mov              qword ptr [rbp + 2728], rax;         jmp   n53_binop_test_α
.Llit_string_α_260_0:   .quad            .Llit_string_α_260_0_s
.Llit_string_α_260_0_s: .string          "overhead"
                        .size            n52_lit_string_bx, .-n52_lit_string_bx
                        .type            n53_binop_test_bx, @function
n53_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_binop_test_α:       mov              r11, 53
                        mov              rdi, qword ptr [rbp + 3744]
                        mov              rsi, qword ptr [rbp + 3752]
                        mov              rdx, qword ptr [rbp + 2720]
                        mov              rcx, qword ptr [rbp + 2728]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    .Ldisjunction_ω_34_af
                        mov              rdi, qword ptr [rbp + 2720]
                        mov              rsi, qword ptr [rbp + 2728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n54_var_α
                        .size            n53_binop_test_bx, .-n53_binop_test_bx
                        .type            n54_var_bx, @function
n54_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:              mov              r11, 54
                        mov              rax, qword ptr [rbp + 3728]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 3736]
                        mov              qword ptr [rbp + 2680], rax;         jmp   n55_assign_α
                        .size            n54_var_bx, .-n54_var_bx
                        .type            n55_assign_bx, @function
n55_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:           mov              r11, 55
                        mov              rax, qword ptr [rbp + 2672]
                        mov              rdx, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx;         jmp   .Ldisjunction_γ_34_as
n55_assign_β:           mov              r11, 55;                             jmp   n56_scan_α
                        .size            n55_assign_bx, .-n55_assign_bx
                        .type            n56_scan_bx, @function
n56_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_scan_α:             mov              r11, 56
                        mov              rdi, qword ptr [rbp + 2544]
                        mov              rsi, qword ptr [rbp + 2552]
                        mov              rdx, qword ptr [rbp + 2560]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 2544]
                        mov              r14, qword ptr [rbp + 2552]
                        mov              r15, qword ptr [rbp + 2560];         jmp   n9_var_ref_α
n56_scan_β:             mov              r11, 56;                             jmp   n9_var_ref_α
                        .size            n56_scan_bx, .-n56_scan_bx
                        .type            n57_line_mark_bx, @function
n57_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_line_mark_α:        mov              r11, 57
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 49;             jmp   n58_var_α
                        .size            n57_line_mark_bx, .-n57_line_mark_bx
                        .type            n58_var_bx, @function
n58_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:              mov              r11, 58
                        mov              rax, qword ptr [rbp + 3648]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 3656]
                        mov              qword ptr [rbp + 2424], rax;         jmp   n59_unop_α
                        .size            n58_var_bx, .-n58_var_bx
                        .type            n59_unop_bx, @function
n59_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_unop_α:             mov              r11, 59
                        mov              rdi, qword ptr [rbp + 3648]
                        mov              rsi, qword ptr [rbp + 3656]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx;         jmp   n60_call_icon_α
                        .size            n59_unop_bx, .-n59_unop_bx
                        .type            n60_call_icon_bx, @function
n60_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_call_icon_α:        mov              r11, 60
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2376], rax
                        .section         .rodata
.Lcall_icon_α_rkfn273:  .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn273]
                        lea              rsi, [rbp + 2368]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        cmp              al, 104;                             je    n61_line_mark_α
                                                                              jmp   n61_line_mark_α
n60_call_icon_β:        mov              r11, 60;                             jmp   n61_line_mark_α
                        .size            n60_call_icon_bx, .-n60_call_icon_bx
                        .type            n61_line_mark_bx, @function
n61_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_line_mark_α:        mov              r11, 61
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 52;             jmp   n62_var_ref_α
                        .size            n61_line_mark_bx, .-n61_line_mark_bx
                        .type            n62_var_ref_bx, @function
n62_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:          mov              r11, 62
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3696]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx;         jmp   n63_lit_integer_α
                        .size            n62_var_ref_bx, .-n62_var_ref_bx
                        .type            n63_lit_integer_bx, @function
n63_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_integer_α:      mov              r11, 63
                        mov              qword ptr [rbp + 2304], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_278_0]
                        mov              qword ptr [rbp + 2312], rax;         jmp   n64_deref_α
.Llit_integer_α_278_0:  .quad            7
                        .size            n63_lit_integer_bx, .-n63_lit_integer_bx
                        .type            n64_deref_bx, @function
n64_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_deref_α:            mov              r11, 64
                        mov              rdi, qword ptr [rbp + 2288]
                        mov              rsi, qword ptr [rbp + 2296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n67_line_mark_α
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx;         jmp   n65_call_icon_α
                        .size            n64_deref_bx, .-n64_deref_bx
                        .type            n65_call_icon_bx, @function
n65_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_call_icon_α:        mov              r11, 65
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2264], rax
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2248], rax
                        .section         .rodata
.Lcall_icon_α_rkfn281:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn281]
                        lea              rsi, [rbp + 2240]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                        cmp              al, 104;                             je    n67_line_mark_α
                                                                              jmp   n66_call_icon_α
n65_call_icon_β:        mov              r11, 65;                             jmp   n67_line_mark_α
                        .size            n65_call_icon_bx, .-n65_call_icon_bx
                        .type            n66_call_icon_bx, @function
n66_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_call_icon_α:        mov              r11, 66
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2200], rax
                        .section         .rodata
.Lcall_icon_α_rkfn283:  .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn283]
                        lea              rsi, [rbp + 2192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                        cmp              al, 104;                             je    n67_line_mark_α
                                                                              jmp   n67_line_mark_α
n66_call_icon_β:        mov              r11, 66;                             jmp   n67_line_mark_α
                        .size            n66_call_icon_bx, .-n66_call_icon_bx
                        .type            n67_line_mark_bx, @function
n67_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_line_mark_α:        mov              r11, 67
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 55;             jmp   n68_lit_integer_α
                        .size            n67_line_mark_bx, .-n67_line_mark_bx
                        .type            n68_lit_integer_bx, @function
n68_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_integer_α:      mov              r11, 68
                        mov              qword ptr [rbp + 2144], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_286_0]
                        mov              qword ptr [rbp + 2152], rax;         jmp   n69_assign_α
.Llit_integer_α_286_0:  .quad            0
                        .size            n68_lit_integer_bx, .-n68_lit_integer_bx
                        .type            n69_assign_bx, @function
n69_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_assign_α:           mov              r11, 69
                        mov              rax, qword ptr [rbp + 2144]
                        mov              rdx, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 3632], rax
                        mov              qword ptr [rbp + 3640], rdx;         jmp   n70_line_mark_α
                        .size            n69_assign_bx, .-n69_assign_bx
                        .type            n70_line_mark_bx, @function
n70_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_line_mark_α:        mov              r11, 70
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 56;             jmp   n71_var_α
                        .size            n70_line_mark_bx, .-n70_line_mark_bx
                        .type            n71_var_bx, @function
n71_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:              mov              r11, 71
                        mov              rax, qword ptr [rbp + 3632]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 3640]
                        mov              qword ptr [rbp + 2024], rax;         jmp   n72_var_α
                        .size            n71_var_bx, .-n71_var_bx
                        .type            n72_var_bx, @function
n72_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_var_α:              mov              r11, 72
                        mov              rax, qword ptr [rbp + 3680]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 2104], rax;         jmp   n73_iterate_α
                        .size            n72_var_bx, .-n72_var_bx
                        .type            n73_iterate_bx, @function
n73_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_iterate_α:          mov              r11, 73
                        mov              qword ptr [rbp + 2080], 0
.Literate_α_295_0:      mov              rdi, qword ptr [rbp + 2096]
                        mov              rsi, qword ptr [rbp + 2104]
                        mov              rdx, qword ptr [rbp + 2080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              al, 104;                             je    n81_line_mark_α
                                                                              jmp   n74_lit_integer_α
n73_iterate_β:          mov              r11, 73
                        inc              qword ptr [rbp + 2080];              jmp   .Literate_α_295_0
                        .size            n73_iterate_bx, .-n73_iterate_bx
                        .type            n74_lit_integer_bx, @function
n74_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_integer_α:      mov              r11, 74
                        mov              qword ptr [rbp + 2112], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_296_0]
                        mov              qword ptr [rbp + 2120], rax;         jmp   n75_coerce_numeric_α
.Llit_integer_α_296_0:  .quad            2
                        .size            n74_lit_integer_bx, .-n74_lit_integer_bx
                        .type            n75_coerce_numeric_bx, @function
n75_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_coerce_numeric_α:   mov              r11, 75
                        mov              eax, dword ptr [rbp + 2064]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_298_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_298_0
                        mov              eax, dword ptr [rbp + 2112]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_298_0
.Lcoerce_numeric_α_298_1:
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2056], rax;         jmp   n76_binop_α
.Lcoerce_numeric_α_298_0:
                        lea              rdi, [rbp + 2064]
                        lea              rsi, [rbp + 2112]
                        lea              rdx, [rbp + 2048]
                        mov              rcx, 81621155942
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 2048]
                        cmp              al, 104;                             je    n81_line_mark_α
                                                                              jmp   n76_binop_α
                        .size            n75_coerce_numeric_bx, .-n75_coerce_numeric_bx
                        .type            n76_binop_bx, @function
n76_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_binop_α:            mov              r11, 76
                        mov              rdi, qword ptr [rbp + 2048]
                        mov              rsi, qword ptr [rbp + 2056]
                        mov              rdx, qword ptr [rbp + 2112]
                        mov              rcx, qword ptr [rbp + 2120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n81_line_mark_α
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx;         jmp   n77_coerce_numeric_α
                        .size            n76_binop_bx, .-n76_binop_bx
                        .type            n77_coerce_numeric_bx, @function
n77_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_coerce_numeric_α:   mov              r11, 77
                        mov              eax, dword ptr [rbp + 3632]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_301_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_301_0
                        mov              eax, dword ptr [rbp + 2032]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_301_0
.Lcoerce_numeric_α_301_1:
                        mov              rax, qword ptr [rbp + 3632]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 3640]
                        mov              qword ptr [rbp + 2008], rax;         jmp   n78_coerce_numeric_α
.Lcoerce_numeric_α_301_0:
                        lea              rdi, [rbp + 3632]
                        lea              rsi, [rbp + 2032]
                        lea              rdx, [rbp + 2000]
                        mov              rcx, 4311744614
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 2000]
                        cmp              al, 104;                             je    n81_line_mark_α
                                                                              jmp   n78_coerce_numeric_α
                        .size            n77_coerce_numeric_bx, .-n77_coerce_numeric_bx
                        .type            n78_coerce_numeric_bx, @function
n78_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_coerce_numeric_α:   mov              r11, 78
                        mov              eax, dword ptr [rbp + 2032]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_303_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_303_0
                        mov              eax, dword ptr [rbp + 3632]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_303_0
.Lcoerce_numeric_α_303_1:
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1992], rax;         jmp   n79_binop_α
.Lcoerce_numeric_α_303_0:
                        lea              rdi, [rbp + 2032]
                        lea              rsi, [rbp + 3632]
                        lea              rdx, [rbp + 1984]
                        mov              rcx, 281479288455270
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 1984]
                        cmp              al, 104;                             je    n81_line_mark_α
                                                                              jmp   n79_binop_α
                        .size            n78_coerce_numeric_bx, .-n78_coerce_numeric_bx
                        .type            n79_binop_bx, @function
n79_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_binop_α:            mov              r11, 79
                        mov              eax, dword ptr [rbp + 2000]
                        mov              ecx, dword ptr [rbp + 1984]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_304_2
                        mov              rax, qword ptr [rbp + 2008]
                        mov              rdx, qword ptr [rbp + 1992]
                        add              rax, rdx;                            jo    .Lbinop_α_304_0
                        mov              qword ptr [rbp + 1968], 3
                        mov              qword ptr [rbp + 1976], rax;         jmp   .Lbinop_α_304_7
.Lbinop_α_304_2:        and              edx, 1;                              jz    .Lbinop_α_304_0
                        mov              rsi, qword ptr [rbp + 2008]
                        mov              rdi, qword ptr [rbp + 1992]
                        cmp              al, 5;                               je    .Lbinop_α_304_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_304_4
.Lbinop_α_304_3:        movq             xmm0, rsi
.Lbinop_α_304_4:        cmp              cl, 5;                               je    .Lbinop_α_304_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_304_6
.Lbinop_α_304_5:        movq             xmm1, rdi
.Lbinop_α_304_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_304_0
                        mov              qword ptr [rbp + 1968], 5
                        mov              qword ptr [rbp + 1976], rax
.Lbinop_α_304_7:                                                              jmp   n80_assign_α
.Lbinop_α_304_0:        mov              rdi, qword ptr [rbp + 2000]
                        mov              rsi, qword ptr [rbp + 2008]
                        mov              rdx, qword ptr [rbp + 1984]
                        mov              rcx, qword ptr [rbp + 1992]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n81_line_mark_α
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx;         jmp   n80_assign_α
                        .size            n79_binop_bx, .-n79_binop_bx
                        .type            n80_assign_bx, @function
n80_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_assign_α:           mov              r11, 80
                        mov              rax, qword ptr [rbp + 1968]
                        mov              rdx, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 3632], rax
                        mov              qword ptr [rbp + 3640], rdx;         jmp   n73_iterate_β
                        .size            n80_assign_bx, .-n80_assign_bx
                        .type            n81_line_mark_bx, @function
n81_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_line_mark_α:        mov              r11, 81
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 57;             jmp   n82_var_α
                        .size            n81_line_mark_bx, .-n81_line_mark_bx
                        .type            n82_var_bx, @function
n82_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:              mov              r11, 82
                        mov              rax, qword ptr [rbp + 3632]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 3640]
                        mov              qword ptr [rbp + 1896], rax;         jmp   n83_var_α
                        .size            n82_var_bx, .-n82_var_bx
                        .type            n83_var_bx, @function
n83_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:              mov              r11, 83
                        mov              rax, qword ptr [rbp + 3680]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 1928], rax;         jmp   n84_unop_α
                        .size            n83_var_bx, .-n83_var_bx
                        .type            n84_unop_bx, @function
n84_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_unop_α:             mov              r11, 84
                        mov              rdi, qword ptr [rbp + 3680]
                        mov              rsi, qword ptr [rbp + 3688]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx;         jmp   n85_coerce_numeric_α
                        .size            n84_unop_bx, .-n84_unop_bx
                        .type            n85_coerce_numeric_bx, @function
n85_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_coerce_numeric_α:   mov              r11, 85
                        mov              eax, dword ptr [rbp + 3632]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_314_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_314_0
                        mov              eax, dword ptr [rbp + 1904]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_314_0
.Lcoerce_numeric_α_314_1:
                        mov              rax, qword ptr [rbp + 3632]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 3640]
                        mov              qword ptr [rbp + 1880], rax;         jmp   n86_coerce_numeric_α
.Lcoerce_numeric_α_314_0:
                        lea              rdi, [rbp + 3632]
                        lea              rsi, [rbp + 1904]
                        lea              rdx, [rbp + 1872]
                        mov              rcx, 17196646502
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 1872]
                        cmp              al, 104;                             je    n94_line_mark_α
                                                                              jmp   n86_coerce_numeric_α
                        .size            n85_coerce_numeric_bx, .-n85_coerce_numeric_bx
                        .type            n86_coerce_numeric_bx, @function
n86_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_coerce_numeric_α:   mov              r11, 86
                        mov              eax, dword ptr [rbp + 1904]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_316_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_316_0
                        mov              eax, dword ptr [rbp + 3632]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_316_0
.Lcoerce_numeric_α_316_1:
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1864], rax;         jmp   n87_binop_α
.Lcoerce_numeric_α_316_0:
                        lea              rdi, [rbp + 1904]
                        lea              rsi, [rbp + 3632]
                        lea              rdx, [rbp + 1856]
                        mov              rcx, 281492173357158
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 1856]
                        cmp              al, 104;                             je    n94_line_mark_α
                                                                              jmp   n87_binop_α
                        .size            n86_coerce_numeric_bx, .-n86_coerce_numeric_bx
                        .type            n87_binop_bx, @function
n87_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_binop_α:            mov              r11, 87
                        mov              rdi, qword ptr [rbp + 1872]
                        mov              rsi, qword ptr [rbp + 1880]
                        mov              rdx, qword ptr [rbp + 1856]
                        mov              rcx, qword ptr [rbp + 1864]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n94_line_mark_α
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx;         jmp   n88_call_icon_α
                        .size            n87_binop_bx, .-n87_binop_bx
                        .type            n88_call_icon_bx, @function
n88_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_call_icon_α:        mov              r11, 88
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1816], rax
                        .section         .rodata
.Lcall_icon_α_rkfn319:  .string          "sqrt"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn319]
                        lea              rsi, [rbp + 1808]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262307
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                        cmp              al, 104;                             je    n94_line_mark_α
                                                                              jmp   n89_lit_real_α
n88_call_icon_β:        mov              r11, 88;                             jmp   n94_line_mark_α
                        .size            n88_call_icon_bx, .-n88_call_icon_bx
                        .type            n89_lit_real_bx, @function
n89_lit_real_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_real_α:         mov              r11, 89
                        mov              qword ptr [rbp + 1936], 5            # result
                        mov              rax, qword ptr [rip + .Llit_real_α_320_0]
                        mov              qword ptr [rbp + 1944], rax;         jmp   n90_coerce_numeric_α
.Llit_real_α_320_0:     .quad            4602678819172646912
                        .size            n89_lit_real_bx, .-n89_lit_real_bx
                        .type            n90_coerce_numeric_bx, @function
n90_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_coerce_numeric_α:   mov              r11, 90
                        mov              eax, dword ptr [rbp + 1792]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_322_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_322_0
                        mov              eax, dword ptr [rbp + 1936]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_322_0
.Lcoerce_numeric_α_322_1:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1784], rax;         jmp   n91_binop_α
.Lcoerce_numeric_α_322_0:
                        lea              rdi, [rbp + 1792]
                        lea              rsi, [rbp + 1936]
                        lea              rdx, [rbp + 1776]
                        mov              rcx, 4311744614
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 1776]
                        cmp              al, 104;                             je    n94_line_mark_α
                                                                              jmp   n91_binop_α
                        .size            n90_coerce_numeric_bx, .-n90_coerce_numeric_bx
                        .type            n91_binop_bx, @function
n91_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_binop_α:            mov              r11, 91
                        mov              eax, dword ptr [rbp + 1776]
                        mov              ecx, dword ptr [rbp + 1936]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_323_2
                        mov              rax, qword ptr [rbp + 1784]
                        mov              rdx, qword ptr [rbp + 1944]
                        add              rax, rdx;                            jo    .Lbinop_α_323_0
                        mov              qword ptr [rbp + 1760], 3
                        mov              qword ptr [rbp + 1768], rax;         jmp   .Lbinop_α_323_7
.Lbinop_α_323_2:        and              edx, 1;                              jz    .Lbinop_α_323_0
                        mov              rsi, qword ptr [rbp + 1784]
                        mov              rdi, qword ptr [rbp + 1944]
                        cmp              al, 5;                               je    .Lbinop_α_323_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_323_4
.Lbinop_α_323_3:        movq             xmm0, rsi
.Lbinop_α_323_4:        cmp              cl, 5;                               je    .Lbinop_α_323_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_323_6
.Lbinop_α_323_5:        movq             xmm1, rdi
.Lbinop_α_323_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_323_0
                        mov              qword ptr [rbp + 1760], 5
                        mov              qword ptr [rbp + 1768], rax
.Lbinop_α_323_7:                                                              jmp   n92_call_icon_α
.Lbinop_α_323_0:        mov              rdi, qword ptr [rbp + 1776]
                        mov              rsi, qword ptr [rbp + 1784]
                        mov              rdx, qword ptr [rbp + 1936]
                        mov              rcx, qword ptr [rbp + 1944]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n94_line_mark_α
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx;         jmp   n92_call_icon_α
                        .size            n91_binop_bx, .-n91_binop_bx
                        .type            n92_call_icon_bx, @function
n92_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_call_icon_α:        mov              r11, 92
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1736], rax
                        .section         .rodata
.Lcall_icon_α_rkfn325:  .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn325]
                        lea              rsi, [rbp + 1728]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458878
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              al, 104;                             je    n94_line_mark_α
                                                                              jmp   n93_assign_α
n92_call_icon_β:        mov              r11, 92;                             jmp   n94_line_mark_α
                        .size            n92_call_icon_bx, .-n92_call_icon_bx
                        .type            n93_assign_bx, @function
n93_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_assign_α:           mov              r11, 93
                        mov              rax, qword ptr [rbp + 1712]
                        mov              rdx, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 3632], rax
                        mov              qword ptr [rbp + 3640], rdx;         jmp   n94_line_mark_α
                        .size            n93_assign_bx, .-n93_assign_bx
                        .type            n94_line_mark_bx, @function
n94_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_line_mark_α:        mov              r11, 94
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 58;             jmp   n95_var_ref_α
                        .size            n94_line_mark_bx, .-n94_line_mark_bx
                        .type            n95_var_ref_bx, @function
n95_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_var_ref_α:          mov              r11, 95
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3632]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx;         jmp   n96_lit_integer_α
                        .size            n95_var_ref_bx, .-n95_var_ref_bx
                        .type            n96_lit_integer_bx, @function
n96_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:      mov              r11, 96
                        mov              qword ptr [rbp + 1664], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_331_0]
                        mov              qword ptr [rbp + 1672], rax;         jmp   n97_deref_α
.Llit_integer_α_331_0:  .quad            7
                        .size            n96_lit_integer_bx, .-n96_lit_integer_bx
                        .type            n97_deref_bx, @function
n97_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_deref_α:            mov              r11, 97
                        mov              rdi, qword ptr [rbp + 1648]
                        mov              rsi, qword ptr [rbp + 1656]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00001_line_mark_α
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx;         jmp   n98_call_icon_α
                        .size            n97_deref_bx, .-n97_deref_bx
                        .type            n98_call_icon_bx, @function
n98_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_call_icon_α:        mov              r11, 98
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1624], rax
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1608], rax
                        .section         .rodata
.Lcall_icon_α_rkfn334:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn334]
                        lea              rsi, [rbp + 1600]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              al, 104;                             je    n00001_line_mark_α
                                                                              jmp   n99_call_icon_α
n98_call_icon_β:        mov              r11, 98;                             jmp   n00001_line_mark_α
                        .size            n98_call_icon_bx, .-n98_call_icon_bx
                        .type            n99_call_icon_bx, @function
n99_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_call_icon_α:        mov              r11, 99
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1560], rax
                        .section         .rodata
.Lcall_icon_α_rkfn336:  .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn336]
                        lea              rsi, [rbp + 1552]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              al, 104;                             je    n00001_line_mark_α
                                                                              jmp   n00001_line_mark_α
n99_call_icon_β:        mov              r11, 99;                             jmp   n00001_line_mark_α
                        .size            n99_call_icon_bx, .-n99_call_icon_bx
                        .type            n00001_line_mark_bx, @function
n00001_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00001_line_mark_α:       mov              r11, 100
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 61;             jmp   n00002_var_ref_α
                        .size            n00001_line_mark_bx, .-n00001_line_mark_bx
                        .type            n00002_var_ref_bx, @function
n00002_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00002_var_ref_α:         mov              r11, 101
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3648]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx;         jmp   n00003_deref_α
                        .size            n00002_var_ref_bx, .-n00002_var_ref_bx
                        .type            n00003_deref_bx, @function
n00003_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00003_deref_α:           mov              r11, 102
                        mov              rdi, qword ptr [rbp + 1488]
                        mov              rsi, qword ptr [rbp + 1496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00004_line_mark_α
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx;         jmp   n00005_call_icon_α
                        .size            n00003_deref_bx, .-n00003_deref_bx
                        .type            n00005_call_icon_bx, @function
n00005_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00005_call_icon_α:       mov              r11, 103
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1464], rax
                        .section         .rodata
.Lcall_icon_α_rkfn343:  .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn343]
                        lea              rsi, [rbp + 1456]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              al, 104;                             je    n00004_line_mark_α
                                                                              jmp   n00006_assign_α
n00005_call_icon_β:       mov              r11, 103;                            jmp   n00004_line_mark_α
                        .size            n00005_call_icon_bx, .-n00005_call_icon_bx
                        .type            n00006_assign_bx, @function
n00006_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00006_assign_α:          mov              r11, 104
                        mov              rax, qword ptr [rbp + 1440]
                        mov              rdx, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 3648], rax
                        mov              qword ptr [rbp + 3656], rdx;         jmp   n00004_line_mark_α
                        .size            n00006_assign_bx, .-n00006_assign_bx
                        .type            n00004_line_mark_bx, @function
n00004_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00004_line_mark_α:       mov              r11, 105
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 62;             jmp   n00007_var_ref_α
                        .size            n00004_line_mark_bx, .-n00004_line_mark_bx
                        .type            n00007_var_ref_bx, @function
n00007_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00007_var_ref_α:         mov              r11, 106
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3648]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx;         jmp   n00008_var_α
                        .size            n00007_var_ref_bx, .-n00007_var_ref_bx
                        .type            n00008_var_bx, @function
n00008_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00008_var_α:             mov              r11, 107
                        mov              rax, qword ptr [rbp + 3648]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 3656]
                        mov              qword ptr [rbp + 1352], rax;         jmp   n00009_unop_α
                        .size            n00008_var_bx, .-n00008_var_bx
                        .type            n00009_unop_bx, @function
n00009_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00009_unop_α:            mov              r11, 108
                        mov              rdi, qword ptr [rbp + 3648]
                        mov              rsi, qword ptr [rbp + 3656]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx;         jmp   n00010_lit_integer_α
                        .size            n00009_unop_bx, .-n00009_unop_bx
                        .type            n00010_lit_integer_bx, @function
n00010_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00010_lit_integer_α:     mov              r11, 109
                        mov              qword ptr [rbp + 1360], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_352_0]
                        mov              qword ptr [rbp + 1368], rax;         jmp   n00011_coerce_numeric_α
.Llit_integer_α_352_0:  .quad            2
                        .size            n00010_lit_integer_bx, .-n00010_lit_integer_bx
                        .type            n00011_coerce_numeric_bx, @function
n00011_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00011_coerce_numeric_α:  mov              r11, 110
                        mov              eax, dword ptr [rbp + 1328]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_354_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_354_0
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_354_0
.Lcoerce_numeric_α_354_1:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1320], rax;         jmp   n00012_binop_α
.Lcoerce_numeric_α_354_0:
                        lea              rdi, [rbp + 1328]
                        lea              rsi, [rbp + 1360]
                        lea              rdx, [rbp + 1312]
                        mov              rcx, 17196646502
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 1312]
                        cmp              al, 104;                             je    n00013_line_mark_α
                                                                              jmp   n00012_binop_α
                        .size            n00011_coerce_numeric_bx, .-n00011_coerce_numeric_bx
                        .type            n00012_binop_bx, @function
n00012_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00012_binop_α:           mov              r11, 111
                        mov              rdi, qword ptr [rbp + 1312]
                        mov              rsi, qword ptr [rbp + 1320]
                        mov              rdx, qword ptr [rbp + 1360]
                        mov              rcx, qword ptr [rbp + 1368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00013_line_mark_α
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx;         jmp   n00014_lit_integer_α
                        .size            n00012_binop_bx, .-n00012_binop_bx
                        .type            n00014_lit_integer_bx, @function
n00014_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00014_lit_integer_α:     mov              r11, 112
                        mov              qword ptr [rbp + 1376], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_356_0]
                        mov              qword ptr [rbp + 1384], rax;         jmp   n00015_coerce_numeric_α
.Llit_integer_α_356_0:  .quad            1
                        .size            n00014_lit_integer_bx, .-n00014_lit_integer_bx
                        .type            n00015_coerce_numeric_bx, @function
n00015_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00015_coerce_numeric_α:  mov              r11, 113
                        mov              eax, dword ptr [rbp + 1296]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_358_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_358_0
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_358_0
.Lcoerce_numeric_α_358_1:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1288], rax;         jmp   n00016_binop_α
.Lcoerce_numeric_α_358_0:
                        lea              rdi, [rbp + 1296]
                        lea              rsi, [rbp + 1376]
                        lea              rdx, [rbp + 1280]
                        mov              rcx, 4311744614
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              al, 104;                             je    n00013_line_mark_α
                                                                              jmp   n00016_binop_α
                        .size            n00015_coerce_numeric_bx, .-n00015_coerce_numeric_bx
                        .type            n00016_binop_bx, @function
n00016_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00016_binop_α:           mov              r11, 114
                        mov              eax, dword ptr [rbp + 1280]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_359_2
                        mov              rax, qword ptr [rbp + 1288]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_359_0
                        mov              qword ptr [rbp + 1264], 3
                        mov              qword ptr [rbp + 1272], rax;         jmp   .Lbinop_α_359_7
.Lbinop_α_359_2:        and              edx, 1;                              jz    .Lbinop_α_359_0
                        mov              rsi, qword ptr [rbp + 1288]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_359_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_359_4
.Lbinop_α_359_3:        movq             xmm0, rsi
.Lbinop_α_359_4:        cmp              cl, 5;                               je    .Lbinop_α_359_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_359_6
.Lbinop_α_359_5:        movq             xmm1, rdi
.Lbinop_α_359_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_359_0
                        mov              qword ptr [rbp + 1264], 5
                        mov              qword ptr [rbp + 1272], rax
.Lbinop_α_359_7:                                                              jmp   n00017_subscript_α
.Lbinop_α_359_0:        mov              rdi, qword ptr [rbp + 1280]
                        mov              rsi, qword ptr [rbp + 1288]
                        mov              rdx, qword ptr [rbp + 1376]
                        mov              rcx, qword ptr [rbp + 1384]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00013_line_mark_α
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx;         jmp   n00017_subscript_α
                        .size            n00016_binop_bx, .-n00016_binop_bx
                        .type            n00017_subscript_bx, @function
n00017_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00017_subscript_α:       mov              r11, 115
                        mov              rdi, qword ptr [rbp + 1248]
                        mov              rsi, qword ptr [rbp + 1256]
                        mov              rdx, qword ptr [rbp + 1264]
                        mov              rcx, qword ptr [rbp + 1272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00013_line_mark_α
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx;         jmp   n00018_deref_α
                        .size            n00017_subscript_bx, .-n00017_subscript_bx
                        .type            n00018_deref_bx, @function
n00018_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00018_deref_α:           mov              r11, 116
                        mov              rdi, qword ptr [rbp + 1392]
                        mov              rsi, qword ptr [rbp + 1400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00013_line_mark_α
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx;         jmp   n00019_assign_α
                        .size            n00018_deref_bx, .-n00018_deref_bx
                        .type            n00019_assign_bx, @function
n00019_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00019_assign_α:          mov              r11, 117
                        mov              rax, qword ptr [rbp + 1408]
                        mov              rdx, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 3632], rax
                        mov              qword ptr [rbp + 3640], rdx;         jmp   n00013_line_mark_α
                        .size            n00019_assign_bx, .-n00019_assign_bx
                        .type            n00013_line_mark_bx, @function
n00013_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00013_line_mark_α:       mov              r11, 118
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 63;             jmp   n00020_var_ref_α
                        .size            n00013_line_mark_bx, .-n00013_line_mark_bx
                        .type            n00020_var_ref_bx, @function
n00020_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00020_var_ref_α:         mov              r11, 119
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3632]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx;         jmp   n00021_lit_integer_α
                        .size            n00020_var_ref_bx, .-n00020_var_ref_bx
                        .type            n00021_lit_integer_bx, @function
n00021_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00021_lit_integer_α:     mov              r11, 120
                        mov              qword ptr [rbp + 1200], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_367_0]
                        mov              qword ptr [rbp + 1208], rax;         jmp   n00022_deref_α
.Llit_integer_α_367_0:  .quad            7
                        .size            n00021_lit_integer_bx, .-n00021_lit_integer_bx
                        .type            n00022_deref_bx, @function
n00022_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00022_deref_α:           mov              r11, 121
                        mov              rdi, qword ptr [rbp + 1184]
                        mov              rsi, qword ptr [rbp + 1192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00023_line_mark_α
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx;         jmp   n00024_call_icon_α
                        .size            n00022_deref_bx, .-n00022_deref_bx
                        .type            n00024_call_icon_bx, @function
n00024_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00024_call_icon_α:       mov              r11, 122
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1144], rax
                        .section         .rodata
.Lcall_icon_α_rkfn370:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn370]
                        lea              rsi, [rbp + 1136]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              al, 104;                             je    n00023_line_mark_α
                                                                              jmp   n00025_call_icon_α
n00024_call_icon_β:       mov              r11, 122;                            jmp   n00023_line_mark_α
                        .size            n00024_call_icon_bx, .-n00024_call_icon_bx
                        .type            n00025_call_icon_bx, @function
n00025_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00025_call_icon_α:       mov              r11, 123
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1096], rax
                        .section         .rodata
.Lcall_icon_α_rkfn372:  .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn372]
                        lea              rsi, [rbp + 1088]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              al, 104;                             je    n00023_line_mark_α
                                                                              jmp   n00023_line_mark_α
n00025_call_icon_β:       mov              r11, 123;                            jmp   n00023_line_mark_α
                        .size            n00025_call_icon_bx, .-n00025_call_icon_bx
                        .type            n00023_line_mark_bx, @function
n00023_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00023_line_mark_α:       mov              r11, 124
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 66;             jmp   n00026_lit_real_α
                        .size            n00023_line_mark_bx, .-n00023_line_mark_bx
                        .type            n00026_lit_real_bx, @function
n00026_lit_real_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00026_lit_real_α:        mov              r11, 125
                        mov              qword ptr [rbp + 1040], 5            # result
                        mov              rax, qword ptr [rip + .Llit_real_α_375_0]
                        mov              qword ptr [rbp + 1048], rax;         jmp   n00027_assign_α
.Llit_real_α_375_0:     .quad            0
                        .size            n00026_lit_real_bx, .-n00026_lit_real_bx
                        .type            n00027_assign_bx, @function
n00027_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00027_assign_α:          mov              r11, 126
                        mov              rax, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 3632], rax
                        mov              qword ptr [rbp + 3640], rdx;         jmp   n00028_line_mark_α
                        .size            n00027_assign_bx, .-n00027_assign_bx
                        .type            n00028_line_mark_bx, @function
n00028_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00028_line_mark_α:       mov              r11, 127
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 67;             jmp   n00029_var_α
                        .size            n00028_line_mark_bx, .-n00028_line_mark_bx
                        .type            n00029_var_bx, @function
n00029_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00029_var_α:             mov              r11, 128
                        mov              rax, qword ptr [rbp + 3648]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 3656]
                        mov              qword ptr [rbp + 728], rax;          jmp   n00030_iterate_α
                        .size            n00029_var_bx, .-n00029_var_bx
                        .type            n00030_iterate_bx, @function
n00030_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00030_iterate_α:         mov              r11, 129
                        mov              qword ptr [rbp + 704], 0
.Literate_α_382_0:      mov              rdi, qword ptr [rbp + 720]
                        mov              rsi, qword ptr [rbp + 728]
                        mov              rdx, qword ptr [rbp + 704]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              al, 104;                             je    n00031_line_mark_α
                                                                              jmp   n00032_assign_α
n00030_iterate_β:         mov              r11, 129
                        inc              qword ptr [rbp + 704];               jmp   .Literate_α_382_0
                        .size            n00030_iterate_bx, .-n00030_iterate_bx
                        .type            n00032_assign_bx, @function
n00032_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00032_assign_α:          mov              r11, 130
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx;         jmp   n00033_bound_α
                        .size            n00032_assign_bx, .-n00032_assign_bx
                        .type            n00033_bound_bx, @function
n00033_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00033_bound_α:           mov              r11, 131
                        mov              qword ptr [rbp + 736], rsp;          jmp   n00034_var_α
                        .size            n00033_bound_bx, .-n00033_bound_bx
                        .type            n00034_var_bx, @function
n00034_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00034_var_α:             mov              r11, 132
                        mov              rax, qword ptr [rbp + 3632]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 3640]
                        mov              qword ptr [rbp + 840], rax;          jmp   n00035_disjunction_α
                        .size            n00034_var_bx, .-n00034_var_bx
                        .type            n00035_disjunction_bx, @function
n00035_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00035_disjunction_α:     mov              r11, 133
                        mov              qword ptr [rbp + 848], 0
                        mov              qword ptr [rbp + 856], 0
                        mov              dword ptr [rbp + 864], 0;            jmp   n00036_var_α
.Ldisjunction_γ_133_as: mov              r11, 133
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_389_0
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax;          jmp   n00037_coerce_numeric_α
.Ldisjunction_α_389_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_389_1
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 856], rax;          jmp   n00037_coerce_numeric_α
.Ldisjunction_α_389_1:                                                        jmp   n00037_coerce_numeric_α
n00035_disjunction_β:     mov              r11, 133
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 0;                              je    n00038_unmark_α
                                                                              jmp   n00038_unmark_α
.Ldisjunction_γ_133_af: mov              r11, 133
.Ldisjunction_ω_133_af: mov              r11, 133
                        add              dword ptr [rbp + 864], 1
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 1;                              je    n00039_var_ref_α
                                                                              jmp   n00038_unmark_α
                        .size            n00035_disjunction_bx, .-n00035_disjunction_bx
                        .type            n00037_coerce_numeric_bx, @function
n00037_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00037_coerce_numeric_α:  mov              r11, 134
                        mov              eax, dword ptr [rbp + 3632]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_391_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_391_0
                        mov              eax, dword ptr [rbp + 848]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_391_0
.Lcoerce_numeric_α_391_1:
                        mov              rax, qword ptr [rbp + 3632]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 3640]
                        mov              qword ptr [rbp + 824], rax;          jmp   n00040_coerce_numeric_α
.Lcoerce_numeric_α_391_0:
                        lea              rdi, [rbp + 3632]
                        lea              rsi, [rbp + 848]
                        lea              rdx, [rbp + 816]
                        mov              rcx, 4311744614
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 816]
                        cmp              al, 104;                             je    n00038_unmark_α
                                                                              jmp   n00040_coerce_numeric_α
                        .size            n00037_coerce_numeric_bx, .-n00037_coerce_numeric_bx
                        .type            n00040_coerce_numeric_bx, @function
n00040_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00040_coerce_numeric_α:  mov              r11, 135
                        mov              eax, dword ptr [rbp + 848]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_393_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_393_0
                        mov              eax, dword ptr [rbp + 3632]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_393_0
.Lcoerce_numeric_α_393_1:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 808], rax;          jmp   n00041_binop_α
.Lcoerce_numeric_α_393_0:
                        lea              rdi, [rbp + 848]
                        lea              rsi, [rbp + 3632]
                        lea              rdx, [rbp + 800]
                        mov              rcx, 281479288455270
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 800]
                        cmp              al, 104;                             je    n00038_unmark_α
                                                                              jmp   n00041_binop_α
                        .size            n00040_coerce_numeric_bx, .-n00040_coerce_numeric_bx
                        .type            n00041_binop_bx, @function
n00041_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00041_binop_α:           mov              r11, 136
                        mov              eax, dword ptr [rbp + 816]
                        mov              ecx, dword ptr [rbp + 800]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_394_2
                        mov              rax, qword ptr [rbp + 824]
                        mov              rdx, qword ptr [rbp + 808]
                        add              rax, rdx;                            jo    .Lbinop_α_394_0
                        mov              qword ptr [rbp + 784], 3
                        mov              qword ptr [rbp + 792], rax;          jmp   .Lbinop_α_394_7
.Lbinop_α_394_2:        and              edx, 1;                              jz    .Lbinop_α_394_0
                        mov              rsi, qword ptr [rbp + 824]
                        mov              rdi, qword ptr [rbp + 808]
                        cmp              al, 5;                               je    .Lbinop_α_394_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_394_4
.Lbinop_α_394_3:        movq             xmm0, rsi
.Lbinop_α_394_4:        cmp              cl, 5;                               je    .Lbinop_α_394_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_394_6
.Lbinop_α_394_5:        movq             xmm1, rdi
.Lbinop_α_394_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_394_0
                        mov              qword ptr [rbp + 784], 5
                        mov              qword ptr [rbp + 792], rax
.Lbinop_α_394_7:                                                              jmp   n00042_assign_α
.Lbinop_α_394_0:        mov              rdi, qword ptr [rbp + 816]
                        mov              rsi, qword ptr [rbp + 824]
                        mov              rdx, qword ptr [rbp + 800]
                        mov              rcx, qword ptr [rbp + 808]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00038_unmark_α
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n00042_assign_α
                        .size            n00041_binop_bx, .-n00041_binop_bx
                        .type            n00042_assign_bx, @function
n00042_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00042_assign_α:          mov              r11, 137
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 3632], rax
                        mov              qword ptr [rbp + 3640], rdx;         jmp   n00038_unmark_α
                        .size            n00042_assign_bx, .-n00042_assign_bx
                        .type            n00039_var_ref_bx, @function
n00039_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00039_var_ref_α:         mov              r11, 138
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3664]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx;         jmp   n00043_deref_α
n00039_var_ref_β:         mov              r11, 138;                            jmp   n00038_unmark_α
                        .size            n00039_var_ref_bx, .-n00039_var_ref_bx
                        .type            n00043_deref_bx, @function
n00043_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00043_deref_α:           mov              r11, 139
                        mov              rdi, qword ptr [rbp + 992]
                        mov              rsi, qword ptr [rbp + 1000]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00038_unmark_α
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx;         jmp   n00044_call_icon_α
                        .size            n00043_deref_bx, .-n00043_deref_bx
                        .type            n00044_call_icon_bx, @function
n00044_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00044_call_icon_α:       mov              r11, 140
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 968], rax
                        .section         .rodata
.Lcall_icon_α_rkfn400:  .string          "log"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn400]
                        lea              rsi, [rbp + 960]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196741
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              al, 104;                             je    n00038_unmark_α
                                                                              jmp   .Ldisjunction_γ_133_as
n00044_call_icon_β:       mov              r11, 140;                            jmp   n00038_unmark_α
                        .size            n00044_call_icon_bx, .-n00044_call_icon_bx
                        .type            n00036_var_bx, @function
n00036_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00036_var_α:             mov              r11, 141
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 920], rax;          jmp   n00045_lit_integer_α
n00036_var_β:             mov              r11, 141;                            jmp   .Ldisjunction_ω_133_af
                        .size            n00036_var_bx, .-n00036_var_bx
                        .type            n00045_lit_integer_bx, @function
n00045_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00045_lit_integer_α:     mov              r11, 142
                        mov              qword ptr [rbp + 928], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_403_0]
                        mov              qword ptr [rbp + 936], rax;          jmp   n00046_binop_test_α
.Llit_integer_α_403_0:  .quad            0
                        .size            n00045_lit_integer_bx, .-n00045_lit_integer_bx
                        .type            n00046_binop_test_bx, @function
n00046_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00046_binop_test_α:      mov              r11, 143
                        mov              eax, dword ptr [rbp + 3664]
                        cmp              al, 112;                             je    .Lbinop_test_α_404_0
                        mov              eax, dword ptr [rbp + 928]
                        cmp              al, 112;                             je    .Lbinop_test_α_404_0
                        mov              eax, dword ptr [rbp + 3664]
                        cmp              al, 3;                               jne   .Lbinop_test_α_404_2
                        mov              eax, dword ptr [rbp + 928]
                        cmp              al, 3;                               jne   .Lbinop_test_α_404_2
.Lbinop_test_α_404_1:   mov              rax, qword ptr [rbp + 3672]
                        mov              rcx, qword ptr [rbp + 936]
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_133_af
                        mov              rcx, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 896], rcx
                        mov              rcx, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 904], rcx;          jmp   n00047_lit_integer_α
.Lbinop_test_α_404_0:   mov              rdi, qword ptr [rbp + 3664]
                        mov              rsi, qword ptr [rbp + 3672]
                        mov              rdx, qword ptr [rbp + 928]
                        mov              rcx, qword ptr [rbp + 936]
                        mov              r8d, 6
                        lea              r9, [rbp + 896]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lbinop_test_α_404_2
                        cmp              eax, 1;                              je    .Ldisjunction_ω_133_af
                                                                              jmp   n00047_lit_integer_α
.Lbinop_test_α_404_2:   mov              rdi, qword ptr [rbp + 3664]
                        mov              rsi, qword ptr [rbp + 3672]
                        mov              rdx, qword ptr [rbp + 928]
                        mov              rcx, qword ptr [rbp + 936]
                        mov              r8d, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    .Ldisjunction_ω_133_af
                        mov              rdi, qword ptr [rbp + 3664]
                        mov              rsi, qword ptr [rbp + 3672]
                        mov              rdx, qword ptr [rbp + 928]
                        mov              rcx, qword ptr [rbp + 936]
                        lea              r8, [rbp + 896]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_val_coerce@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00047_lit_integer_α
                        .size            n00046_binop_test_bx, .-n00046_binop_test_bx
                        .type            n00047_lit_integer_bx, @function
n00047_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00047_lit_integer_α:     mov              r11, 144
                        mov              qword ptr [rbp + 880], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_405_0]
                        mov              qword ptr [rbp + 888], rax;          jmp   .Ldisjunction_γ_133_as
n00047_lit_integer_β:     mov              r11, 144;                            jmp   n00038_unmark_α
.Llit_integer_α_405_0:  .quad            0
                        .size            n00047_lit_integer_bx, .-n00047_lit_integer_bx
                        .type            n00038_unmark_bx, @function
n00038_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00038_unmark_α:          mov              r11, 145
                        mov              rsp, qword ptr [rbp + 736];          jmp   n00030_iterate_β
                        .size            n00038_unmark_bx, .-n00038_unmark_bx
                        .type            n00031_line_mark_bx, @function
n00031_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00031_line_mark_α:       mov              r11, 146
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 69;             jmp   n00048_kw_icon_α
                        .size            n00031_line_mark_bx, .-n00031_line_mark_bx
                        .type            n00048_kw_icon_bx, @function
n00048_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00048_kw_icon_α:         mov              r11, 147
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_410_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00049_line_mark_α
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx;          jmp   n00050_var_α
n00048_kw_icon_β:         mov              r11, 147;                            jmp   n00049_line_mark_α
.Lkw_icon_α_410_0:      .quad            .Lkw_icon_α_410_0_s
.Lkw_icon_α_410_0_s:    .string          "&e"
                        .size            n00048_kw_icon_bx, .-n00048_kw_icon_bx
                        .type            n00050_var_bx, @function
n00050_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00050_var_α:             mov              r11, 148
                        mov              rax, qword ptr [rbp + 3632]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 3640]
                        mov              qword ptr [rbp + 616], rax;          jmp   n00051_var_α
                        .size            n00050_var_bx, .-n00050_var_bx
                        .type            n00051_var_bx, @function
n00051_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00051_var_α:             mov              r11, 149
                        mov              rax, qword ptr [rbp + 3648]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 3656]
                        mov              qword ptr [rbp + 648], rax;          jmp   n00052_unop_α
                        .size            n00051_var_bx, .-n00051_var_bx
                        .type            n00052_unop_bx, @function
n00052_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00052_unop_α:            mov              r11, 150
                        mov              rdi, qword ptr [rbp + 3648]
                        mov              rsi, qword ptr [rbp + 3656]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n00053_coerce_numeric_α
                        .size            n00052_unop_bx, .-n00052_unop_bx
                        .type            n00053_coerce_numeric_bx, @function
n00053_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00053_coerce_numeric_α:  mov              r11, 151
                        mov              eax, dword ptr [rbp + 3632]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_417_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_417_0
                        mov              eax, dword ptr [rbp + 624]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_417_0
.Lcoerce_numeric_α_417_1:
                        mov              rax, qword ptr [rbp + 3632]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 3640]
                        mov              qword ptr [rbp + 600], rax;          jmp   n00054_coerce_numeric_α
.Lcoerce_numeric_α_417_0:
                        lea              rdi, [rbp + 3632]
                        lea              rsi, [rbp + 624]
                        lea              rdx, [rbp + 592]
                        mov              rcx, 17196646502
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 592]
                        cmp              al, 104;                             je    n00049_line_mark_α
                                                                              jmp   n00054_coerce_numeric_α
                        .size            n00053_coerce_numeric_bx, .-n00053_coerce_numeric_bx
                        .type            n00054_coerce_numeric_bx, @function
n00054_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00054_coerce_numeric_α:  mov              r11, 152
                        mov              eax, dword ptr [rbp + 624]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_419_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_419_0
                        mov              eax, dword ptr [rbp + 3632]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_419_0
.Lcoerce_numeric_α_419_1:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 584], rax;          jmp   n00055_binop_α
.Lcoerce_numeric_α_419_0:
                        lea              rdi, [rbp + 624]
                        lea              rsi, [rbp + 3632]
                        lea              rdx, [rbp + 576]
                        mov              rcx, 281492173357158
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 576]
                        cmp              al, 104;                             je    n00049_line_mark_α
                                                                              jmp   n00055_binop_α
                        .size            n00054_coerce_numeric_bx, .-n00054_coerce_numeric_bx
                        .type            n00055_binop_bx, @function
n00055_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00055_binop_α:           mov              r11, 153
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        mov              rdx, qword ptr [rbp + 576]
                        mov              rcx, qword ptr [rbp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00049_line_mark_α
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx;          jmp   n00056_coerce_numeric_α
                        .size            n00055_binop_bx, .-n00055_binop_bx
                        .type            n00056_coerce_numeric_bx, @function
n00056_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00056_coerce_numeric_α:  mov              r11, 154
                        mov              eax, dword ptr [rbp + 528]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_422_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_422_0
                        mov              eax, dword ptr [rbp + 560]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_422_0
.Lcoerce_numeric_α_422_1:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 520], rax;          jmp   n00057_coerce_numeric_α
.Lcoerce_numeric_α_422_0:
                        lea              rdi, [rbp + 528]
                        lea              rsi, [rbp + 560]
                        lea              rdx, [rbp + 512]
                        mov              rcx, 81621155942
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 512]
                        cmp              al, 104;                             je    n00049_line_mark_α
                                                                              jmp   n00057_coerce_numeric_α
                        .size            n00056_coerce_numeric_bx, .-n00056_coerce_numeric_bx
                        .type            n00057_coerce_numeric_bx, @function
n00057_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00057_coerce_numeric_α:  mov              r11, 155
                        mov              eax, dword ptr [rbp + 560]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_424_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_424_0
                        mov              eax, dword ptr [rbp + 528]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_424_0
.Lcoerce_numeric_α_424_1:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 504], rax;          jmp   n00058_binop_α
.Lcoerce_numeric_α_424_0:
                        lea              rdi, [rbp + 560]
                        lea              rsi, [rbp + 528]
                        lea              rdx, [rbp + 496]
                        mov              rcx, 281556631421030
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 496]
                        cmp              al, 104;                             je    n00049_line_mark_α
                                                                              jmp   n00058_binop_α
                        .size            n00057_coerce_numeric_bx, .-n00057_coerce_numeric_bx
                        .type            n00058_binop_bx, @function
n00058_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00058_binop_α:           mov              r11, 156
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00049_line_mark_α
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n00059_lit_real_α
                        .size            n00058_binop_bx, .-n00058_binop_bx
                        .type            n00059_lit_real_bx, @function
n00059_lit_real_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00059_lit_real_α:        mov              r11, 157
                        mov              qword ptr [rbp + 656], 5             # result
                        mov              rax, qword ptr [rip + .Llit_real_α_426_0]
                        mov              qword ptr [rbp + 664], rax;          jmp   n00060_coerce_numeric_α
.Llit_real_α_426_0:     .quad            4602678819172646912
                        .size            n00059_lit_real_bx, .-n00059_lit_real_bx
                        .type            n00060_coerce_numeric_bx, @function
n00060_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00060_coerce_numeric_α:  mov              r11, 158
                        mov              eax, dword ptr [rbp + 480]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_428_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_428_0
                        mov              eax, dword ptr [rbp + 656]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_428_0
.Lcoerce_numeric_α_428_1:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 472], rax;          jmp   n00061_binop_α
.Lcoerce_numeric_α_428_0:
                        lea              rdi, [rbp + 480]
                        lea              rsi, [rbp + 656]
                        lea              rdx, [rbp + 464]
                        mov              rcx, 4311744614
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 464]
                        cmp              al, 104;                             je    n00049_line_mark_α
                                                                              jmp   n00061_binop_α
                        .size            n00060_coerce_numeric_bx, .-n00060_coerce_numeric_bx
                        .type            n00061_binop_bx, @function
n00061_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00061_binop_α:           mov              r11, 159
                        mov              eax, dword ptr [rbp + 464]
                        mov              ecx, dword ptr [rbp + 656]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_429_2
                        mov              rax, qword ptr [rbp + 472]
                        mov              rdx, qword ptr [rbp + 664]
                        add              rax, rdx;                            jo    .Lbinop_α_429_0
                        mov              qword ptr [rbp + 448], 3
                        mov              qword ptr [rbp + 456], rax;          jmp   .Lbinop_α_429_7
.Lbinop_α_429_2:        and              edx, 1;                              jz    .Lbinop_α_429_0
                        mov              rsi, qword ptr [rbp + 472]
                        mov              rdi, qword ptr [rbp + 664]
                        cmp              al, 5;                               je    .Lbinop_α_429_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_429_4
.Lbinop_α_429_3:        movq             xmm0, rsi
.Lbinop_α_429_4:        cmp              cl, 5;                               je    .Lbinop_α_429_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_429_6
.Lbinop_α_429_5:        movq             xmm1, rdi
.Lbinop_α_429_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_429_0
                        mov              qword ptr [rbp + 448], 5
                        mov              qword ptr [rbp + 456], rax
.Lbinop_α_429_7:                                                              jmp   n00062_call_icon_α
.Lbinop_α_429_0:        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        mov              rdx, qword ptr [rbp + 656]
                        mov              rcx, qword ptr [rbp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00049_line_mark_α
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n00062_call_icon_α
                        .size            n00061_binop_bx, .-n00061_binop_bx
                        .type            n00062_call_icon_bx, @function
n00062_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00062_call_icon_α:       mov              r11, 160
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lcall_icon_α_rkfn431:  .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn431]
                        lea              rsi, [rbp + 416]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458878
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              al, 104;                             je    n00049_line_mark_α
                                                                              jmp   n00063_assign_α
n00062_call_icon_β:       mov              r11, 160;                            jmp   n00049_line_mark_α
                        .size            n00062_call_icon_bx, .-n00062_call_icon_bx
                        .type            n00063_assign_bx, @function
n00063_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00063_assign_α:          mov              r11, 161
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 3632], rax
                        mov              qword ptr [rbp + 3640], rdx;         jmp   n00049_line_mark_α
                        .size            n00063_assign_bx, .-n00063_assign_bx
                        .type            n00049_line_mark_bx, @function
n00049_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00049_line_mark_α:       mov              r11, 162
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 70;             jmp   n00064_var_ref_α
                        .size            n00049_line_mark_bx, .-n00049_line_mark_bx
                        .type            n00064_var_ref_bx, @function
n00064_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00064_var_ref_α:         mov              r11, 163
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3632]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n00065_lit_integer_α
                        .size            n00064_var_ref_bx, .-n00064_var_ref_bx
                        .type            n00065_lit_integer_bx, @function
n00065_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00065_lit_integer_α:     mov              r11, 164
                        mov              qword ptr [rbp + 336], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_437_0]
                        mov              qword ptr [rbp + 344], rax;          jmp   n00066_deref_α
.Llit_integer_α_437_0:  .quad            7
                        .size            n00065_lit_integer_bx, .-n00065_lit_integer_bx
                        .type            n00066_deref_bx, @function
n00066_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00066_deref_α:           mov              r11, 165
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00067_line_mark_α
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n00068_call_icon_α
                        .size            n00066_deref_bx, .-n00066_deref_bx
                        .type            n00068_call_icon_bx, @function
n00068_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00068_call_icon_α:       mov              r11, 166
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lcall_icon_α_rkfn440:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn440]
                        lea              rsi, [rbp + 272]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              al, 104;                             je    n00067_line_mark_α
                                                                              jmp   n00069_call_icon_α
n00068_call_icon_β:       mov              r11, 166;                            jmp   n00067_line_mark_α
                        .size            n00068_call_icon_bx, .-n00068_call_icon_bx
                        .type            n00069_call_icon_bx, @function
n00069_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00069_call_icon_α:       mov              r11, 167
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lcall_icon_α_rkfn442:  .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn442]
                        lea              rsi, [rbp + 224]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              al, 104;                             je    n00067_line_mark_α
                                                                              jmp   n00067_line_mark_α
n00069_call_icon_β:       mov              r11, 167;                            jmp   n00067_line_mark_α
                        .size            n00069_call_icon_bx, .-n00069_call_icon_bx
                        .type            n00067_line_mark_bx, @function
n00067_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00067_line_mark_α:       mov              r11, 168
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 73;             jmp   n00070_lit_string_α
                        .size            n00067_line_mark_bx, .-n00067_line_mark_bx
                        .type            n00070_lit_string_bx, @function
n00070_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00070_lit_string_α:      mov              r11, 169
                        mov              qword ptr [rbp + 128], 2             # result
                        mov              dword ptr [rbp + 132], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_445_0]
                        mov              qword ptr [rbp + 136], rax;          jmp   n00071_var_ref_α
.Llit_string_α_445_0:   .quad            .Llit_string_α_445_0_s
.Llit_string_α_445_0_s: .string          "   "
                        .size            n00070_lit_string_bx, .-n00070_lit_string_bx
                        .type            n00071_var_ref_bx, @function
n00071_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00071_var_ref_α:         mov              r11, 170
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx;          jmp   n00072_deref_α
                        .size            n00071_var_ref_bx, .-n00071_var_ref_bx
                        .type            n00072_deref_bx, @function
n00072_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00072_deref_α:           mov              r11, 171
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00073_line_mark_α
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n00074_call_icon_α
                        .size            n00072_deref_bx, .-n00072_deref_bx
                        .type            n00074_call_icon_bx, @function
n00074_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00074_call_icon_α:       mov              r11, 172
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        .section         .rodata
.Lcall_icon_α_rkfn450:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn450]
                        lea              rsi, [rbp + 80]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    n00073_line_mark_α
                                                                              jmp   n00073_line_mark_α
n00074_call_icon_β:       mov              r11, 172;                            jmp   n00073_line_mark_α
                        .size            n00074_call_icon_bx, .-n00074_call_icon_bx
                        .type            n00073_line_mark_bx, @function
n00073_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00073_line_mark_α:       mov              r11, 173
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 74;             jmp   n00075_return_α
                        .size            n00073_line_mark_bx, .-n00073_line_mark_bx
                        .type            n00075_return_bx, @function
n00075_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00075_return_α:          mov              r11, 174
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              rax, qword ptr [rbp + 0]
                        mov              rdx, qword ptr [rbp + 8];            jmp   dofile_γ
                        .size            n00075_return_bx, .-n00075_return_bx
#-----------------------------------------------------------------------------------------------------------------------
dofile_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
dofile_β:
                                                                              jmp   dofile_ω
#-----------------------------------------------------------------------------------------------------------------------
dofile_γ:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Ldofile_α_453_248
                        .section         .rodata
.Licn_trace_nm454:      .string          "dofile"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm454]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ldofile_α_453_248:     mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
                        mov              rdi, rax
                        mov              rsi, rdx
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
                        lea              rsp, [rbp + 3984]
                        mov              rbp, qword ptr [rbp + 3976];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
dofile_ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Ldofile_α_453_249
                        .section         .rodata
.Licn_trace_nm455:      .string          "dofile"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm455]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ldofile_α_453_249:     mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
                        lea              rsp, [rbp + 3984]
                        mov              rbp, qword ptr [rbp + 3976];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
dofile_dcα:
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
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Ldofile_α_456_3]
                        push             rcx
                        lea              rcx, [rip + .Ldofile_α_456_2]
                        push             rcx;                                 jmp   FN__dofile
.Ldofile_α_456_2:       add              rsp, 24
                        pop              r12;                                 jmp   r12
.Ldofile_α_456_3:       add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
                        .globl           main
main:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
                        call             rt_main_args_bind@PLT
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                        lea              rax, [rip + .Llevel_zero_return]
                        push             rax
                        push             rax
                                                                              jmp   main_α
.Llevel_zero_return:    call             rt_kw_return_level_zero@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 1072
                        mov              qword ptr [rsp + 1064], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 912
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        .section         .rodata
.Licn_trace_nm457:      .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm457]
                        mov              esi, 1
                        lea              rdx, [rbx + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_456_247:       mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
main_α_body:
                        .type            n00076_line_mark_bx, @function
n00076_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00076_line_mark_α:       mov              r11, 175
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 19
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_495_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00077_line_mark_α
.Lline_mark_α_495_0:    .quad            .Lline_mark_α_495_0_s
.Lline_mark_α_495_0_s:  .string          "micsum.icn"
                        .size            n00076_line_mark_bx, .-n00076_line_mark_bx
                        .type            n00077_line_mark_bx, @function
n00077_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00077_line_mark_α:       mov              r11, 176
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 21;             jmp   n00078_lit_string_α
                        .size            n00077_line_mark_bx, .-n00077_line_mark_bx
                        .type            n00078_lit_string_bx, @function
n00078_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00078_lit_string_α:      mov              r11, 177
                        mov              qword ptr [rbp + 848], 2             # result
                        mov              dword ptr [rbp + 852], 42
                        mov              rax, qword ptr [rip + .Llit_string_α_498_0]
                        mov              qword ptr [rbp + 856], rax;          jmp   n00079_call_icon_α
.Llit_string_α_498_0:   .quad            .Llit_string_α_498_0_s
.Llit_string_α_498_0_s: .string          "  N ovhead rmserr median  gmean   filename"
                        .size            n00078_lit_string_bx, .-n00078_lit_string_bx
                        .type            n00079_call_icon_bx, @function
n00079_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00079_call_icon_α:       mov              r11, 178
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 824], rax
                        .section         .rodata
.Lcall_icon_α_rkfn500:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn500]
                        lea              rsi, [rbp + 816]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              al, 104;                             je    n00080_line_mark_α
                                                                              jmp   n00080_line_mark_α
n00079_call_icon_β:       mov              r11, 178;                            jmp   n00080_line_mark_α
                        .size            n00079_call_icon_bx, .-n00079_call_icon_bx
                        .type            n00080_line_mark_bx, @function
n00080_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00080_line_mark_α:       mov              r11, 179
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 22;             jmp   n00081_disjunction_α
                        .size            n00080_line_mark_bx, .-n00080_line_mark_bx
                        .type            n00081_disjunction_bx, @function
n00081_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00081_disjunction_α:     mov              r11, 180
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0;             jmp   n00082_var_α
.Ldisjunction_γ_463_as: mov              r11, 180
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_504_0
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax;           jmp   main_ω
.Ldisjunction_α_504_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_504_1
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 40], rax;           jmp   main_ω
.Ldisjunction_α_504_1:                                                        jmp   main_ω
n00081_disjunction_β:     mov              r11, 180
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0;                              je    main_ω
                                                                              jmp   n00083_goto_β
.Ldisjunction_γ_463_af: mov              r11, 180
.Ldisjunction_ω_463_af: mov              r11, 180
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 1;                              je    n00084_var_ref_α
                                                                              jmp   main_ω
                        .size            n00081_disjunction_bx, .-n00081_disjunction_bx
                        .type            n00085_var_bx, @function
n00085_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00085_var_α:             mov              r11, 181
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 264], rax;          jmp   .Ldisjunction_γ_463_as
n00085_var_β:             mov              r11, 181;                            jmp   main_ω
                        .size            n00085_var_bx, .-n00085_var_bx
                        .type            n00084_var_ref_bx, @function
n00084_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00084_var_ref_α:         mov              r11, 182
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n00086_deref_α
n00084_var_ref_β:         mov              r11, 182;                            jmp   main_ω
                        .size            n00084_var_ref_bx, .-n00084_var_ref_bx
                        .type            n00086_deref_bx, @function
n00086_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00086_deref_α:           mov              r11, 183
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    main_ω
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n00087_call_icon_α
                        .size            n00086_deref_bx, .-n00086_deref_bx
                        .type            n00087_call_icon_bx, @function
n00087_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00087_call_icon_α:       mov              r11, 184
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lcall_icon_α_rkfn511:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn511]
                        lea              rsi, [rbp + 304]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196728
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n00088_assign_α
n00087_call_icon_β:       mov              r11, 184;                            jmp   main_ω
                        .size            n00087_call_icon_bx, .-n00087_call_icon_bx
                        .type            n00088_assign_bx, @function
n00088_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00088_assign_α:          mov              r11, 185
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n00089_line_mark_α
                        .size            n00088_assign_bx, .-n00088_assign_bx
                        .type            n00089_line_mark_bx, @function
n00089_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00089_line_mark_α:       mov              r11, 186
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 25;             jmp   n00090_disjunction_α
                        .size            n00089_line_mark_bx, .-n00089_line_mark_bx
                        .type            n00090_disjunction_bx, @function
n00090_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00090_disjunction_α:     mov              r11, 187
                        mov              qword ptr [rbp + 528], 0
                        mov              qword ptr [rbp + 536], 0
                        mov              dword ptr [rbp + 544], 0;            jmp   n00091_var_ref_α
.Ldisjunction_γ_470_as: mov              r11, 187
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_516_0
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax;          jmp   n00092_assign_α
.Ldisjunction_α_516_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_516_1
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 536], rax;          jmp   n00092_assign_α
.Ldisjunction_α_516_1:                                                        jmp   n00092_assign_α
n00090_disjunction_β:     mov              r11, 187
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_470_af
                                                                              jmp   .Ldisjunction_ω_470_af
.Ldisjunction_γ_470_af: mov              r11, 187
.Ldisjunction_ω_470_af: mov              r11, 187
                        add              dword ptr [rbp + 544], 1
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 1;                              je    n00093_lit_string_α
                                                                              jmp   n00094_line_mark_α
                        .size            n00090_disjunction_bx, .-n00090_disjunction_bx
                        .type            n00092_assign_bx, @function
n00092_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00092_assign_α:          mov              r11, 188
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx;          jmp   n00094_line_mark_α
                        .size            n00092_assign_bx, .-n00092_assign_bx
                        .type            n00094_line_mark_bx, @function
n00094_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00094_line_mark_α:       mov              r11, 189
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 26;             jmp   n00095_var_ref_α
                        .size            n00094_line_mark_bx, .-n00094_line_mark_bx
                        .type            n00095_var_ref_bx, @function
n00095_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00095_var_ref_α:         mov              r11, 190
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n00096_var_ref_α
                        .size            n00095_var_ref_bx, .-n00095_var_ref_bx
                        .type            n00096_var_ref_bx, @function
n00096_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00096_var_ref_α:         mov              r11, 191
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx;          jmp   n00097_deref_α
                        .size            n00096_var_ref_bx, .-n00096_var_ref_bx
                        .type            n00097_deref_bx, @function
n00097_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00097_deref_α:           mov              r11, 192
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00084_var_ref_α
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n00098_deref_α
                        .size            n00097_deref_bx, .-n00097_deref_bx
                        .type            n00098_deref_bx, @function
n00098_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00098_deref_α:           mov              r11, 193
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00084_var_ref_α
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n00099_call_proc_staged_α
                        .size            n00098_deref_bx, .-n00098_deref_bx
                        .type            n00099_call_proc_staged_bx, @function
n00099_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00099_call_proc_staged_α:
                        mov              r11, 194
                        lea              rsi, [rbp + 480]
                        lea              rdx, [rbp + 496]
                        call             dofile_dcα;                          jmp   .Lcall_proc_staged_α_527_2
.Lcall_proc_staged_α_527_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_527_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
.Lcall_proc_staged_α_527_29:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              al, 104;                             je    n00084_var_ref_α
                                                                              jmp   n00100_conjunction_α
n00099_call_proc_staged_β:
                        mov              r11, 194;                            jmp   n00084_var_ref_α
.Lcall_proc_staged_β_527_0:
                        .quad            .Lcall_proc_staged_β_527_0_s
.Lcall_proc_staged_β_527_0_s:
                        .string          "dofile"
                        .size            n00099_call_proc_staged_bx, .-n00099_call_proc_staged_bx
                        .type            n00100_conjunction_bx, @function
n00100_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00100_conjunction_α:     mov              r11, 195
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 376], rax;          jmp   n00084_var_ref_α
n00100_conjunction_β:     mov              r11, 195;                            jmp   n00084_var_ref_α
                        .size            n00100_conjunction_bx, .-n00100_conjunction_bx
                        .type            n00083_goto_bx, @function
n00083_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00083_goto_α:            mov              r11, 196;                            jmp   n00084_var_ref_α
n00083_goto_β:            mov              r11, 196;                            jmp   n00084_var_ref_α
                        .size            n00083_goto_bx, .-n00083_goto_bx
                        .type            n00093_lit_string_bx, @function
n00093_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00093_lit_string_α:      mov              r11, 197
                        mov              qword ptr [rbp + 704], 2             # result
                        mov              dword ptr [rbp + 708], 12
                        mov              rax, qword ptr [rip + .Llit_string_α_530_0]
                        mov              qword ptr [rbp + 712], rax;          jmp   n00101_var_ref_α
n00093_lit_string_β:      mov              r11, 197;                            jmp   .Ldisjunction_ω_470_af
.Llit_string_α_530_0:   .quad            .Llit_string_α_530_0_s
.Llit_string_α_530_0_s: .string          "cannot open "
                        .size            n00093_lit_string_bx, .-n00093_lit_string_bx
                        .type            n00101_var_ref_bx, @function
n00101_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00101_var_ref_α:         mov              r11, 198
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx;          jmp   n00102_deref_α
                        .size            n00101_var_ref_bx, .-n00101_var_ref_bx
                        .type            n00102_deref_bx, @function
n00102_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00102_deref_α:           mov              r11, 199
                        mov              rdi, qword ptr [rbp + 736]
                        mov              rsi, qword ptr [rbp + 744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_470_af
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx;          jmp   n00103_call_icon_α
                        .size            n00102_deref_bx, .-n00102_deref_bx
                        .type            n00103_call_icon_bx, @function
n00103_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00103_call_icon_α:       mov              r11, 200
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 664], rax
                        .section         .rodata
.Lcall_icon_α_rkfn535:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn535]
                        lea              rsi, [rbp + 656]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_470_af
                                                                              jmp   .Ldisjunction_γ_470_as
n00103_call_icon_β:       mov              r11, 200;                            jmp   .Ldisjunction_ω_470_af
                        .size            n00103_call_icon_bx, .-n00103_call_icon_bx
                        .type            n00091_var_ref_bx, @function
n00091_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00091_var_ref_α:         mov              r11, 201
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx;          jmp   n00104_deref_α
n00091_var_ref_β:         mov              r11, 201;                            jmp   .Ldisjunction_ω_470_af
                        .size            n00091_var_ref_bx, .-n00091_var_ref_bx
                        .type            n00104_deref_bx, @function
n00104_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00104_deref_α:           mov              r11, 202
                        mov              rdi, qword ptr [rbp + 608]
                        mov              rsi, qword ptr [rbp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_470_af
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n00105_call_icon_α
                        .size            n00104_deref_bx, .-n00104_deref_bx
                        .type            n00105_call_icon_bx, @function
n00105_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00105_call_icon_α:       mov              r11, 203
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 584], rax
                        .section         .rodata
.Lcall_icon_α_rkfn540:  .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn540]
                        lea              rsi, [rbp + 576]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262287
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_470_af
                                                                              jmp   .Ldisjunction_γ_470_as
n00105_call_icon_β:       mov              r11, 203;                            jmp   .Ldisjunction_ω_470_af
                        .size            n00105_call_icon_bx, .-n00105_call_icon_bx
                        .type            n00082_var_bx, @function
n00082_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00082_var_α:             mov              r11, 204
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 232], rax;          jmp   n00106_unop_α
n00082_var_β:             mov              r11, 204;                            jmp   .Ldisjunction_ω_463_af
                        .size            n00082_var_bx, .-n00082_var_bx
                        .type            n00106_unop_bx, @function
n00106_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00106_unop_α:            mov              r11, 205
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n00107_lit_integer_α
                        .size            n00106_unop_bx, .-n00106_unop_bx
                        .type            n00107_lit_integer_bx, @function
n00107_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00107_lit_integer_α:     mov              r11, 206
                        mov              qword ptr [rbp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_544_0]
                        mov              qword ptr [rbp + 248], rax;          jmp   n00108_binop_test_α
.Llit_integer_α_544_0:  .quad            0
                        .size            n00107_lit_integer_bx, .-n00107_lit_integer_bx
                        .type            n00108_binop_test_bx, @function
n00108_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00108_binop_test_α:      mov              r11, 207
                        mov              eax, dword ptr [rbp + 208]
                        cmp              al, 112;                             je    .Lbinop_test_α_545_0
                        mov              eax, dword ptr [rbp + 240]
                        cmp              al, 112;                             je    .Lbinop_test_α_545_0
                        mov              eax, dword ptr [rbp + 208]
                        cmp              al, 3;                               jne   .Lbinop_test_α_545_2
                        mov              eax, dword ptr [rbp + 240]
                        cmp              al, 3;                               jne   .Lbinop_test_α_545_2
.Lbinop_test_α_545_1:   mov              rax, qword ptr [rbp + 216]
                        mov              rcx, qword ptr [rbp + 248]
                        cmp              rax, rcx;                            jne   .Ldisjunction_ω_463_af
                        mov              rcx, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rcx
                        mov              rcx, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rcx;          jmp   n00109_kw_icon_α
.Lbinop_test_α_545_0:   mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        mov              r8d, 9
                        lea              r9, [rbp + 192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lbinop_test_α_545_2
                        cmp              eax, 1;                              je    .Ldisjunction_ω_463_af
                                                                              jmp   n00109_kw_icon_α
.Lbinop_test_α_545_2:   mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    .Ldisjunction_ω_463_af
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        lea              r8, [rbp + 192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_val_coerce@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00109_kw_icon_α
                        .size            n00108_binop_test_bx, .-n00108_binop_test_bx
                        .type            n00109_kw_icon_bx, @function
n00109_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00109_kw_icon_α:         mov              r11, 208
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_546_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    main_ω
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n00110_lit_string_α
n00109_kw_icon_β:         mov              r11, 208;                            jmp   main_ω
.Lkw_icon_α_546_0:      .quad            .Lkw_icon_α_546_0_s
.Lkw_icon_α_546_0_s:    .string          "&input"
                        .size            n00109_kw_icon_bx, .-n00109_kw_icon_bx
                        .type            n00110_lit_string_bx, @function
n00110_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00110_lit_string_α:      mov              r11, 209
                        mov              qword ptr [rbp + 160], 2             # result
                        mov              dword ptr [rbp + 164], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_547_0]
                        mov              qword ptr [rbp + 168], rax;          jmp   n00111_call_proc_staged_α
.Llit_string_α_547_0:   .quad            .Llit_string_α_547_0_s
.Llit_string_α_547_0_s: .string          "stdin"
                        .size            n00110_lit_string_bx, .-n00110_lit_string_bx
                        .type            n00111_call_proc_staged_bx, @function
n00111_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00111_call_proc_staged_α:
                        mov              r11, 210
                        lea              rsi, [rbp + 128]
                        lea              rdx, [rbp + 160]
                        call             dofile_dcα;                          jmp   .Lcall_proc_staged_α_549_2
.Lcall_proc_staged_α_549_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_549_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
.Lcall_proc_staged_α_549_29:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   .Ldisjunction_γ_463_as
n00111_call_proc_staged_β:
                        mov              r11, 210;                            jmp   main_ω
.Lcall_proc_staged_β_549_0:
                        .quad            .Lcall_proc_staged_β_549_0_s
.Lcall_proc_staged_β_549_0_s:
                        .string          "dofile"
                        .size            n00111_call_proc_staged_bx, .-n00111_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Lmain_α_549_248
                        .section         .rodata
.Licn_trace_nm550:      .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm550]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_549_248:       mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Lmain_α_549_249
                        .section         .rodata
.Licn_trace_nm551:      .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm551]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_549_249:       mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "dofile"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__dofile
                        .quad            dofile_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            3760
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
