                        .intel_syntax    noprefix
                        .text
                        .file            1 "micsum.icn"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
FN__dofile:
                        sub              rsp, 4384
                        mov              qword ptr [rsp + 4376], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 4032
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
                        mov              rcx, qword ptr [rip + .Lline_mark_α_201_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n2_line_mark_α
.Lline_mark_α_201_0:    .quad            .Lline_mark_α_201_0_s
.Lline_mark_α_201_0_s:  .string          "micsum.icn"
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
                        lea              rdi, [rbp + 4000]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3984], rax
                        mov              qword ptr [rbp + 3992], rdx;         jmp   n4_assign_α
                        .size            n3_make_list_bx, .-n3_make_list_bx
                        .type            n4_assign_bx, @function
n4_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:            mov              r11, 4
                        mov              rax, qword ptr [rbp + 3984]
                        mov              rdx, qword ptr [rbp + 3992]
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx;         jmp   n5_line_mark_α
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
                        lea              rdi, [rbp + 3968]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx;         jmp   n7_assign_α
                        .size            n6_make_list_bx, .-n6_make_list_bx
                        .type            n7_assign_bx, @function
n7_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:            mov              r11, 7
                        mov              rax, qword ptr [rbp + 3952]
                        mov              rdx, qword ptr [rbp + 3960]
                        mov              qword ptr [rbp + 4048], rax
                        mov              qword ptr [rbp + 4056], rdx;         jmp   n8_line_mark_α
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
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx;         jmp   n10_deref_α
                        .size            n9_var_ref_bx, .-n9_var_ref_bx
                        .type            n10_deref_bx, @function
n10_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_deref_α:            mov              r11, 10
                        mov              rdi, qword ptr [rbp + 2752]
                        mov              rsi, qword ptr [rbp + 2760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n67_line_mark_α
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx;         jmp   n11_line_mark_α
                        .size            n10_deref_bx, .-n10_deref_bx
                        .type            n11_line_mark_bx, @function
n11_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_line_mark_α:        mov              r11, 11
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 35;             jmp   n12_call_icon_α
                        .size            n11_line_mark_bx, .-n11_line_mark_bx
                        .type            n12_call_icon_bx, @function
n12_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_call_icon_α:        mov              r11, 12
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2712], rax
                        .section         .rodata
.Lcall_icon_α_rkfn220:  .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn220]
                        lea              rsi, [rbp + 2704]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262295
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        cmp              al, 104;                             je    n67_line_mark_α
                                                                              jmp   n13_assign_α
n12_call_icon_β:        mov              r11, 12;                             jmp   n67_line_mark_α
                        .size            n12_call_icon_bx, .-n12_call_icon_bx
                        .type            n13_assign_bx, @function
n13_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:           mov              r11, 13
                        mov              rax, qword ptr [rbp + 2688]
                        mov              rdx, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 4112], rax
                        mov              qword ptr [rbp + 4120], rdx;         jmp   n14_var_α
                        .size            n13_assign_bx, .-n13_assign_bx
                        .type            n14_var_bx, @function
n14_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:              mov              r11, 14
                        mov              rax, qword ptr [rbp + 4112]
                        mov              qword ptr [rbp + 3920], rax
                        mov              rax, qword ptr [rbp + 4120]
                        mov              qword ptr [rbp + 3928], rax;         jmp   n15_scan_enter_α
                        .size            n14_var_bx, .-n14_var_bx
                        .type            n15_scan_enter_bx, @function
n15_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_scan_enter_α:       mov              r11, 15
                        mov              qword ptr [rbp + 2800], r13
                        mov              qword ptr [rbp + 2808], r14
                        mov              qword ptr [rbp + 2816], r15
                        mov              rdi, qword ptr [rbp + 3920]
                        mov              rsi, qword ptr [rbp + 3928]
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
                        mov              r14, 0;                              jmp   n16_line_mark_α
                        .size            n15_scan_enter_bx, .-n15_scan_enter_bx
                        .type            n16_line_mark_bx, @function
n16_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_line_mark_α:        mov              r11, 16
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 36;             jmp   n17_lit_charset_α
                        .size            n16_line_mark_bx, .-n16_line_mark_bx
                        .type            n17_lit_charset_bx, @function
n17_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_charset_α:      mov              r11, 17
                        mov              qword ptr [rbp + 3872], 2            # result
                        mov              dword ptr [rbp + 3876], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_228_0]
                        mov              qword ptr [rbp + 3880], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_228_0]
                        mov              rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_register@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdx
                        pop              rax;                                 jmp   n18_line_mark_α
.Llit_charset_α_228_0:  .quad            .Llit_charset_α_228_0_s
.Llit_charset_α_228_0_s:
                        .string          " "
                        .size            n17_lit_charset_bx, .-n17_lit_charset_bx
                        .type            n18_line_mark_bx, @function
n18_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_line_mark_α:        mov              r11, 18
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 36;             jmp   n19_scan_many_α
                        .size            n18_line_mark_bx, .-n18_line_mark_bx
                        .type            n19_scan_many_bx, @function
n19_scan_many_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_scan_many_α:        mov              r11, 19
                        lea              rdi, [rip + .Lscan_many_α_232_3]
                        mov              eax, r14d
.Lscan_many_α_232_0:    cmp              eax, r15d;                           jge   .Lscan_many_α_232_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_many_α_232_1
                        add              eax, 1;                              jmp   .Lscan_many_α_232_0
.Lscan_many_α_232_1:    cmp              eax, r14d;                           je    n22_line_mark_α
                        mov              qword ptr [rbp + 3840], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 3848], rcx;         jmp   n20_line_mark_α
n19_scan_many_β:        mov              r11, 19;                             jmp   n22_line_mark_α
.Lscan_many_β_232_2:    .quad            .Lscan_many_β_232_2_s
.Lscan_many_β_232_2_s:  .string          " "
.Lscan_many_α_232_3:    .quad            4294967296
.Lscan_many_β_232_4:    .quad            0
.Lscan_many_β_232_5:    .quad            0
.Lscan_many_β_232_6:    .quad            0
                        .size            n19_scan_many_bx, .-n19_scan_many_bx
                        .type            n20_line_mark_bx, @function
n20_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_line_mark_α:        mov              r11, 20
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 36;             jmp   n21_scan_tab_α
                        .size            n20_line_mark_bx, .-n20_line_mark_bx
                        .type            n21_scan_tab_bx, @function
n21_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_scan_tab_α:         mov              r11, 21
                        mov              rdi, qword ptr [rbp + 3840]
                        mov              rsi, qword ptr [rbp + 3848]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             eax, eax;                            jz    n22_line_mark_α
                        mov              rdi, qword ptr [rbp + 3840]
                        mov              rsi, qword ptr [rbp + 3848]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        cmp              rax, 1;                              jge   .Lscan_tab_α_236_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_236_0:     cmp              rax, 1;                              jl    n22_line_mark_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n22_line_mark_α
                        mov              qword ptr [rbp + 3808], r14
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
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx;         jmp   n22_line_mark_α
n21_scan_tab_β:         mov              r11, 21
                        mov              r14, qword ptr [rbp + 3808];         jmp   n22_line_mark_α
                        .size            n21_scan_tab_bx, .-n21_scan_tab_bx
                        .type            n22_line_mark_bx, @function
n22_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_line_mark_α:        mov              r11, 22
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 37;             jmp   n23_lit_charset_α
                        .size            n22_line_mark_bx, .-n22_line_mark_bx
                        .type            n23_lit_charset_bx, @function
n23_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_charset_α:      mov              r11, 23
                        mov              qword ptr [rbp + 3744], 2            # result
                        mov              dword ptr [rbp + 3748], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_239_0]
                        mov              qword ptr [rbp + 3752], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_239_0]
                        mov              rsi, 11
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_register@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdx
                        pop              rax;                                 jmp   n24_line_mark_α
.Llit_charset_α_239_0:  .quad            .Llit_charset_α_239_0_s
.Llit_charset_α_239_0_s:
                        .string          "-0123456789"
                        .size            n23_lit_charset_bx, .-n23_lit_charset_bx
                        .type            n24_line_mark_bx, @function
n24_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_line_mark_α:        mov              r11, 24
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 37;             jmp   n25_scan_many_α
                        .size            n24_line_mark_bx, .-n24_line_mark_bx
                        .type            n25_scan_many_bx, @function
n25_scan_many_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_scan_many_α:        mov              r11, 25
                        lea              rdi, [rip + .Lscan_many_α_243_3]
                        mov              eax, r14d
.Lscan_many_α_243_0:    cmp              eax, r15d;                           jge   .Lscan_many_α_243_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_many_α_243_1
                        add              eax, 1;                              jmp   .Lscan_many_α_243_0
.Lscan_many_α_243_1:    cmp              eax, r14d;                           je    n31_line_mark_α
                        mov              qword ptr [rbp + 3712], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 3720], rcx;         jmp   n26_line_mark_α
n25_scan_many_β:        mov              r11, 25;                             jmp   n31_line_mark_α
.Lscan_many_β_243_2:    .quad            .Lscan_many_β_243_2_s
.Lscan_many_β_243_2_s:  .string          "-0123456789"
.Lscan_many_α_243_3:    .quad            287984085547089920
.Lscan_many_β_243_4:    .quad            0
.Lscan_many_β_243_5:    .quad            0
.Lscan_many_β_243_6:    .quad            0
                        .size            n25_scan_many_bx, .-n25_scan_many_bx
                        .type            n26_line_mark_bx, @function
n26_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_line_mark_α:        mov              r11, 26
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 37;             jmp   n27_scan_tab_α
                        .size            n26_line_mark_bx, .-n26_line_mark_bx
                        .type            n27_scan_tab_bx, @function
n27_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_scan_tab_α:         mov              r11, 27
                        mov              rdi, qword ptr [rbp + 3712]
                        mov              rsi, qword ptr [rbp + 3720]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             eax, eax;                            jz    n31_line_mark_α
                        mov              rdi, qword ptr [rbp + 3712]
                        mov              rsi, qword ptr [rbp + 3720]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        cmp              rax, 1;                              jge   .Lscan_tab_α_247_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_247_0:     cmp              rax, 1;                              jl    n31_line_mark_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n31_line_mark_α
                        mov              qword ptr [rbp + 3680], r14
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
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx;         jmp   n28_line_mark_α
n27_scan_tab_β:         mov              r11, 27
                        mov              r14, qword ptr [rbp + 3680];         jmp   n31_line_mark_α
                        .size            n27_scan_tab_bx, .-n27_scan_tab_bx
                        .type            n28_line_mark_bx, @function
n28_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_line_mark_α:        mov              r11, 28
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 37;             jmp   n29_call_icon_α
                        .size            n28_line_mark_bx, .-n28_line_mark_bx
                        .type            n29_call_icon_bx, @function
n29_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_call_icon_α:        mov              r11, 29
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 3616], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 3624], rax
                        .section         .rodata
.Lcall_icon_α_rkfn251:  .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn251]
                        lea              rsi, [rbp + 3616]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458878
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                        cmp              al, 104;                             je    n27_scan_tab_β
                                                                              jmp   n30_assign_α
n29_call_icon_β:        mov              r11, 29;                             jmp   n27_scan_tab_β
                        .size            n29_call_icon_bx, .-n29_call_icon_bx
                        .type            n30_assign_bx, @function
n30_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_α:           mov              r11, 30
                        mov              rax, qword ptr [rbp + 3600]
                        mov              rdx, qword ptr [rbp + 3608]
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx;         jmp   n31_line_mark_α
                        .size            n30_assign_bx, .-n30_assign_bx
                        .type            n31_line_mark_bx, @function
n31_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_line_mark_α:        mov              r11, 31
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 38;             jmp   n32_lit_charset_α
                        .size            n31_line_mark_bx, .-n31_line_mark_bx
                        .type            n32_lit_charset_bx, @function
n32_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_charset_α:      mov              r11, 32
                        mov              qword ptr [rbp + 3552], 2            # result
                        mov              dword ptr [rbp + 3556], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_255_0]
                        mov              qword ptr [rbp + 3560], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_255_0]
                        mov              rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_register@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdx
                        pop              rax;                                 jmp   n33_line_mark_α
.Llit_charset_α_255_0:  .quad            .Llit_charset_α_255_0_s
.Llit_charset_α_255_0_s:
                        .string          " "
                        .size            n32_lit_charset_bx, .-n32_lit_charset_bx
                        .type            n33_line_mark_bx, @function
n33_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_line_mark_α:        mov              r11, 33
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 38;             jmp   n34_scan_many_α
                        .size            n33_line_mark_bx, .-n33_line_mark_bx
                        .type            n34_scan_many_bx, @function
n34_scan_many_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_scan_many_α:        mov              r11, 34
                        lea              rdi, [rip + .Lscan_many_α_259_3]
                        mov              eax, r14d
.Lscan_many_α_259_0:    cmp              eax, r15d;                           jge   .Lscan_many_α_259_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        bt               dword ptr [rdi], esi;                jnc   .Lscan_many_α_259_1
                        add              eax, 1;                              jmp   .Lscan_many_α_259_0
.Lscan_many_α_259_1:    cmp              eax, r14d;                           je    n37_line_mark_α
                        mov              qword ptr [rbp + 3520], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 3528], rcx;         jmp   n35_line_mark_α
n34_scan_many_β:        mov              r11, 34;                             jmp   n37_line_mark_α
.Lscan_many_β_259_2:    .quad            .Lscan_many_β_259_2_s
.Lscan_many_β_259_2_s:  .string          " "
.Lscan_many_α_259_3:    .quad            4294967296
.Lscan_many_β_259_4:    .quad            0
.Lscan_many_β_259_5:    .quad            0
.Lscan_many_β_259_6:    .quad            0
                        .size            n34_scan_many_bx, .-n34_scan_many_bx
                        .type            n35_line_mark_bx, @function
n35_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_line_mark_α:        mov              r11, 35
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 38;             jmp   n36_scan_tab_α
                        .size            n35_line_mark_bx, .-n35_line_mark_bx
                        .type            n36_scan_tab_bx, @function
n36_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_scan_tab_α:         mov              r11, 36
                        mov              rdi, qword ptr [rbp + 3520]
                        mov              rsi, qword ptr [rbp + 3528]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             eax, eax;                            jz    n37_line_mark_α
                        mov              rdi, qword ptr [rbp + 3520]
                        mov              rsi, qword ptr [rbp + 3528]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        cmp              rax, 1;                              jge   .Lscan_tab_α_263_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_263_0:     cmp              rax, 1;                              jl    n37_line_mark_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n37_line_mark_α
                        mov              qword ptr [rbp + 3488], r14
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
                        mov              qword ptr [rbp + 3472], rax
                        mov              qword ptr [rbp + 3480], rdx;         jmp   n37_line_mark_α
n36_scan_tab_β:         mov              r11, 36
                        mov              r14, qword ptr [rbp + 3488];         jmp   n37_line_mark_α
                        .size            n36_scan_tab_bx, .-n36_scan_tab_bx
                        .type            n37_line_mark_bx, @function
n37_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_line_mark_α:        mov              r11, 37
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 39;             jmp   n38_lit_integer_α
                        .size            n37_line_mark_bx, .-n37_line_mark_bx
                        .type            n38_lit_integer_bx, @function
n38_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:      mov              r11, 38
                        mov              qword ptr [rbp + 3440], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_266_0]
                        mov              qword ptr [rbp + 3448], rax;         jmp   n39_line_mark_α
.Llit_integer_α_266_0:  .quad            0
                        .size            n38_lit_integer_bx, .-n38_lit_integer_bx
                        .type            n39_line_mark_bx, @function
n39_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_line_mark_α:        mov              r11, 39
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 39;             jmp   n40_scan_tab_α
                        .size            n39_line_mark_bx, .-n39_line_mark_bx
                        .type            n40_scan_tab_bx, @function
n40_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_scan_tab_α:         mov              r11, 40
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_tab_α_270_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_270_0:     cmp              rax, 1;                              jl    n42_disjunction_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n42_disjunction_α
                        mov              qword ptr [rbp + 3408], r14
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
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx;         jmp   n41_assign_α
n40_scan_tab_β:         mov              r11, 40
                        mov              r14, qword ptr [rbp + 3408];         jmp   n42_disjunction_α
                        .size            n40_scan_tab_bx, .-n40_scan_tab_bx
                        .type            n41_assign_bx, @function
n41_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_α:           mov              r11, 41
                        mov              rax, qword ptr [rbp + 3392]
                        mov              rdx, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx;         jmp   n42_disjunction_α
                        .size            n41_assign_bx, .-n41_assign_bx
                        .type            n42_disjunction_bx, @function
n42_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_disjunction_α:      mov              r11, 42
                        mov              qword ptr [rbp + 2880], 0
                        mov              qword ptr [rbp + 2888], 0
                        mov              dword ptr [rbp + 2896], 0;           jmp   n61_var_α
.Ldisjunction_γ_42_as:  mov              r11, 42
                        mov              eax, dword ptr [rbp + 2896]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_273_0
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2888], rax;         jmp   n43_conjunction_α
.Ldisjunction_α_273_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_273_1
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 2888], rax;         jmp   n43_conjunction_α
.Ldisjunction_α_273_1:                                                        jmp   n43_conjunction_α
n42_disjunction_β:      mov              r11, 42
                        mov              eax, dword ptr [rbp + 2896]
                        cmp              eax, 0;                              je    n66_scan_α
                                                                              jmp   n45_disjunction_β
.Ldisjunction_γ_42_af:  mov              r11, 42
.Ldisjunction_ω_42_af:  mov              r11, 42
                        add              dword ptr [rbp + 2896], 1
                        mov              eax, dword ptr [rbp + 2896]
                        cmp              eax, 1;                              je    n45_disjunction_α
                                                                              jmp   n66_scan_α
                        .size            n42_disjunction_bx, .-n42_disjunction_bx
                        .type            n43_conjunction_bx, @function
n43_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_conjunction_α:      mov              r11, 43
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 2872], rax;         jmp   n44_scan_α
n43_conjunction_β:      mov              r11, 43;                             jmp   n66_scan_α
                        .size            n43_conjunction_bx, .-n43_conjunction_bx
                        .type            n44_scan_bx, @function
n44_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_scan_α:             mov              r11, 44
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 2840], rax
                        mov              rdi, qword ptr [rbp + 2800]
                        mov              rsi, qword ptr [rbp + 2808]
                        mov              rdx, qword ptr [rbp + 2816]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 2800]
                        mov              r14, qword ptr [rbp + 2808]
                        mov              r15, qword ptr [rbp + 2816];         jmp   n9_var_ref_α
n44_scan_β:             mov              r11, 44
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
                        mov              r14, rax;                            jmp   n42_disjunction_β
                                                                              jmp   n9_var_ref_α
                        .size            n44_scan_bx, .-n44_scan_bx
                        .type            n45_disjunction_bx, @function
n45_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_disjunction_α:      mov              r11, 45
                        mov              qword ptr [rbp + 3008], 0
                        mov              qword ptr [rbp + 3016], 0
                        mov              dword ptr [rbp + 3024], 0;           jmp   n52_var_α
.Ldisjunction_γ_45_as:  mov              r11, 45
                        mov              eax, dword ptr [rbp + 3024]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_278_0
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 3016], rax;         jmp   .Ldisjunction_γ_42_as
.Ldisjunction_α_278_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_278_1
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 3016], rax;         jmp   .Ldisjunction_γ_42_as
.Ldisjunction_α_278_1:                                                        jmp   .Ldisjunction_γ_42_as
n45_disjunction_β:      mov              r11, 45
                        mov              eax, dword ptr [rbp + 3024]
                        cmp              eax, 0;                              je    n66_scan_α
                                                                              jmp   n66_scan_α
.Ldisjunction_γ_45_af:  mov              r11, 45
.Ldisjunction_ω_45_af:  mov              r11, 45
                        add              dword ptr [rbp + 3024], 1
                        mov              eax, dword ptr [rbp + 3024]
                        cmp              eax, 1;                              je    n46_var_ref_α
                                                                              jmp   n66_scan_α
                        .size            n45_disjunction_bx, .-n45_disjunction_bx
                        .type            n46_var_ref_bx, @function
n46_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:          mov              r11, 46
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4048]
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx;         jmp   n47_var_ref_α
n46_var_ref_β:          mov              r11, 46;                             jmp   n66_scan_α
                        .size            n46_var_ref_bx, .-n46_var_ref_bx
                        .type            n47_var_ref_bx, @function
n47_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:          mov              r11, 47
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4128]
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx;         jmp   n48_deref_α
                        .size            n47_var_ref_bx, .-n47_var_ref_bx
                        .type            n48_deref_bx, @function
n48_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_deref_α:            mov              r11, 48
                        mov              rdi, qword ptr [rbp + 3328]
                        mov              rsi, qword ptr [rbp + 3336]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n66_scan_α
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx;         jmp   n49_deref_α
                        .size            n48_deref_bx, .-n48_deref_bx
                        .type            n49_deref_bx, @function
n49_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_deref_α:            mov              r11, 49
                        mov              rdi, qword ptr [rbp + 3344]
                        mov              rsi, qword ptr [rbp + 3352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n66_scan_α
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx;         jmp   n50_line_mark_α
                        .size            n49_deref_bx, .-n49_deref_bx
                        .type            n50_line_mark_bx, @function
n50_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_line_mark_α:        mov              r11, 50
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 45;             jmp   n51_call_icon_α
                        .size            n50_line_mark_bx, .-n50_line_mark_bx
                        .type            n51_call_icon_bx, @function
n51_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_call_icon_α:        mov              r11, 51
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3280], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3288], rax
                        mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 3272], rax
                        .section         .rodata
.Lcall_icon_α_rkfn288:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn288]
                        lea              rsi, [rbp + 3264]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                        cmp              al, 104;                             je    n66_scan_α
                                                                              jmp   .Ldisjunction_γ_45_as
n51_call_icon_β:        mov              r11, 51;                             jmp   n66_scan_α
                        .size            n51_call_icon_bx, .-n51_call_icon_bx
                        .type            n52_var_bx, @function
n52_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:              mov              r11, 52
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 3200], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 3208], rax;         jmp   n53_lit_string_α
n52_var_β:              mov              r11, 52;                             jmp   .Ldisjunction_ω_45_af
                        .size            n52_var_bx, .-n52_var_bx
                        .type            n53_lit_string_bx, @function
n53_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:       mov              r11, 53
                        mov              qword ptr [rbp + 3216], 2            # result
                        mov              dword ptr [rbp + 3220], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_291_0]
                        mov              qword ptr [rbp + 3224], rax;         jmp   n54_binop_test_α
.Llit_string_α_291_0:   .quad            .Llit_string_α_291_0_s
.Llit_string_α_291_0_s: .string          "nothing"
                        .size            n53_lit_string_bx, .-n53_lit_string_bx
                        .type            n54_binop_test_bx, @function
n54_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_binop_test_α:       mov              r11, 54
                        mov              rdi, qword ptr [rbp + 4144]
                        mov              rsi, qword ptr [rbp + 4152]
                        mov              rdx, qword ptr [rbp + 3216]
                        mov              rcx, qword ptr [rbp + 3224]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    .Ldisjunction_ω_45_af
                        mov              rdi, qword ptr [rbp + 3216]
                        mov              rsi, qword ptr [rbp + 3224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n55_var_ref_α
                        .size            n54_binop_test_bx, .-n54_binop_test_bx
                        .type            n55_var_ref_bx, @function
n55_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:          mov              r11, 55
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4080]
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx;         jmp   n56_var_ref_α
                        .size            n55_var_ref_bx, .-n55_var_ref_bx
                        .type            n56_var_ref_bx, @function
n56_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:          mov              r11, 56
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4128]
                        mov              qword ptr [rbp + 3136], rax
                        mov              qword ptr [rbp + 3144], rdx;         jmp   n57_deref_α
                        .size            n56_var_ref_bx, .-n56_var_ref_bx
                        .type            n57_deref_bx, @function
n57_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_deref_α:            mov              r11, 57
                        mov              rdi, qword ptr [rbp + 3120]
                        mov              rsi, qword ptr [rbp + 3128]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n66_scan_α
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx;         jmp   n58_deref_α
                        .size            n57_deref_bx, .-n57_deref_bx
                        .type            n58_deref_bx, @function
n58_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_deref_α:            mov              r11, 58
                        mov              rdi, qword ptr [rbp + 3136]
                        mov              rsi, qword ptr [rbp + 3144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n66_scan_α
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx;         jmp   n59_line_mark_α
                        .size            n58_deref_bx, .-n58_deref_bx
                        .type            n59_line_mark_bx, @function
n59_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_line_mark_α:        mov              r11, 59
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 43;             jmp   n60_call_icon_α
                        .size            n59_line_mark_bx, .-n59_line_mark_bx
                        .type            n60_call_icon_bx, @function
n60_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_call_icon_α:        mov              r11, 60
                        mov              rax, qword ptr [rbp + 3168]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 3080], rax
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 3064], rax
                        .section         .rodata
.Lcall_icon_α_rkfn302:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn302]
                        lea              rsi, [rbp + 3056]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                        cmp              al, 104;                             je    n66_scan_α
                                                                              jmp   .Ldisjunction_γ_45_as
n60_call_icon_β:        mov              r11, 60;                             jmp   n66_scan_α
                        .size            n60_call_icon_bx, .-n60_call_icon_bx
                        .type            n61_var_bx, @function
n61_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:              mov              r11, 61
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 2968], rax;         jmp   n62_lit_string_α
n61_var_β:              mov              r11, 61;                             jmp   .Ldisjunction_ω_42_af
                        .size            n61_var_bx, .-n61_var_bx
                        .type            n62_lit_string_bx, @function
n62_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:       mov              r11, 62
                        mov              qword ptr [rbp + 2976], 2            # result
                        mov              dword ptr [rbp + 2980], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_305_0]
                        mov              qword ptr [rbp + 2984], rax;         jmp   n63_binop_test_α
.Llit_string_α_305_0:   .quad            .Llit_string_α_305_0_s
.Llit_string_α_305_0_s: .string          "overhead"
                        .size            n62_lit_string_bx, .-n62_lit_string_bx
                        .type            n63_binop_test_bx, @function
n63_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_binop_test_α:       mov              r11, 63
                        mov              rdi, qword ptr [rbp + 4144]
                        mov              rsi, qword ptr [rbp + 4152]
                        mov              rdx, qword ptr [rbp + 2976]
                        mov              rcx, qword ptr [rbp + 2984]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    .Ldisjunction_ω_42_af
                        mov              rdi, qword ptr [rbp + 2976]
                        mov              rsi, qword ptr [rbp + 2984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n64_var_α
                        .size            n63_binop_test_bx, .-n63_binop_test_bx
                        .type            n64_var_bx, @function
n64_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_var_α:              mov              r11, 64
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 2936], rax;         jmp   n65_assign_α
                        .size            n64_var_bx, .-n64_var_bx
                        .type            n65_assign_bx, @function
n65_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_assign_α:           mov              r11, 65
                        mov              rax, qword ptr [rbp + 2928]
                        mov              rdx, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 4096], rax
                        mov              qword ptr [rbp + 4104], rdx
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx;         jmp   .Ldisjunction_γ_42_as
n65_assign_β:           mov              r11, 65;                             jmp   n66_scan_α
                        .size            n65_assign_bx, .-n65_assign_bx
                        .type            n66_scan_bx, @function
n66_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_scan_α:             mov              r11, 66
                        mov              rdi, qword ptr [rbp + 2800]
                        mov              rsi, qword ptr [rbp + 2808]
                        mov              rdx, qword ptr [rbp + 2816]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 2800]
                        mov              r14, qword ptr [rbp + 2808]
                        mov              r15, qword ptr [rbp + 2816];         jmp   n9_var_ref_α
n66_scan_β:             mov              r11, 66;                             jmp   n9_var_ref_α
                        .size            n66_scan_bx, .-n66_scan_bx
                        .type            n67_line_mark_bx, @function
n67_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_line_mark_α:        mov              r11, 67
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 49;             jmp   n68_var_α
                        .size            n67_line_mark_bx, .-n67_line_mark_bx
                        .type            n68_var_bx, @function
n68_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:              mov              r11, 68
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 2664], rax;         jmp   n69_unop_α
                        .size            n68_var_bx, .-n68_var_bx
                        .type            n69_unop_bx, @function
n69_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_unop_α:             mov              r11, 69
                        mov              rdi, qword ptr [rbp + 4048]
                        mov              rsi, qword ptr [rbp + 4056]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx;         jmp   n70_line_mark_α
                        .size            n69_unop_bx, .-n69_unop_bx
                        .type            n70_line_mark_bx, @function
n70_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_line_mark_α:        mov              r11, 70
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 49;             jmp   n71_call_icon_α
                        .size            n70_line_mark_bx, .-n70_line_mark_bx
                        .type            n71_call_icon_bx, @function
n71_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_call_icon_α:        mov              r11, 71
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2600], rax
                        .section         .rodata
.Lcall_icon_α_rkfn320:  .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn320]
                        lea              rsi, [rbp + 2592]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                        cmp              al, 104;                             je    n72_line_mark_α
                                                                              jmp   n72_line_mark_α
n71_call_icon_β:        mov              r11, 71;                             jmp   n72_line_mark_α
                        .size            n71_call_icon_bx, .-n71_call_icon_bx
                        .type            n72_line_mark_bx, @function
n72_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_line_mark_α:        mov              r11, 72
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 52;             jmp   n73_var_ref_α
                        .size            n72_line_mark_bx, .-n72_line_mark_bx
                        .type            n73_var_ref_bx, @function
n73_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_var_ref_α:          mov              r11, 73
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4096]
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx;         jmp   n74_lit_integer_α
                        .size            n73_var_ref_bx, .-n73_var_ref_bx
                        .type            n74_lit_integer_bx, @function
n74_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_integer_α:      mov              r11, 74
                        mov              qword ptr [rbp + 2528], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_325_0]
                        mov              qword ptr [rbp + 2536], rax;         jmp   n75_deref_α
.Llit_integer_α_325_0:  .quad            7
                        .size            n74_lit_integer_bx, .-n74_lit_integer_bx
                        .type            n75_deref_bx, @function
n75_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_deref_α:            mov              r11, 75
                        mov              rdi, qword ptr [rbp + 2512]
                        mov              rsi, qword ptr [rbp + 2520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n80_line_mark_α
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx;         jmp   n76_line_mark_α
                        .size            n75_deref_bx, .-n75_deref_bx
                        .type            n76_line_mark_bx, @function
n76_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_line_mark_α:        mov              r11, 76
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 52;             jmp   n77_call_icon_α
                        .size            n76_line_mark_bx, .-n76_line_mark_bx
                        .type            n77_call_icon_bx, @function
n77_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_call_icon_α:        mov              r11, 77
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2472], rax
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2456], rax
                        .section         .rodata
.Lcall_icon_α_rkfn330:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn330]
                        lea              rsi, [rbp + 2448]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        cmp              al, 104;                             je    n80_line_mark_α
                                                                              jmp   n78_line_mark_α
n77_call_icon_β:        mov              r11, 77;                             jmp   n80_line_mark_α
                        .size            n77_call_icon_bx, .-n77_call_icon_bx
                        .type            n78_line_mark_bx, @function
n78_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_line_mark_α:        mov              r11, 78
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 52;             jmp   n79_call_icon_α
                        .size            n78_line_mark_bx, .-n78_line_mark_bx
                        .type            n79_call_icon_bx, @function
n79_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_call_icon_α:        mov              r11, 79
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2392], rax
                        .section         .rodata
.Lcall_icon_α_rkfn334:  .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn334]
                        lea              rsi, [rbp + 2384]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                        cmp              al, 104;                             je    n80_line_mark_α
                                                                              jmp   n80_line_mark_α
n79_call_icon_β:        mov              r11, 79;                             jmp   n80_line_mark_α
                        .size            n79_call_icon_bx, .-n79_call_icon_bx
                        .type            n80_line_mark_bx, @function
n80_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_line_mark_α:        mov              r11, 80
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 55;             jmp   n81_lit_integer_α
                        .size            n80_line_mark_bx, .-n80_line_mark_bx
                        .type            n81_lit_integer_bx, @function
n81_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_integer_α:      mov              r11, 81
                        mov              qword ptr [rbp + 2336], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_337_0]
                        mov              qword ptr [rbp + 2344], rax;         jmp   n82_assign_α
.Llit_integer_α_337_0:  .quad            0
                        .size            n81_lit_integer_bx, .-n81_lit_integer_bx
                        .type            n82_assign_bx, @function
n82_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_assign_α:           mov              r11, 82
                        mov              rax, qword ptr [rbp + 2336]
                        mov              rdx, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx;         jmp   n83_line_mark_α
                        .size            n82_assign_bx, .-n82_assign_bx
                        .type            n83_line_mark_bx, @function
n83_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_line_mark_α:        mov              r11, 83
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 56;             jmp   n84_var_α
                        .size            n83_line_mark_bx, .-n83_line_mark_bx
                        .type            n84_var_bx, @function
n84_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:              mov              r11, 84
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 2216], rax;         jmp   n85_var_α
                        .size            n84_var_bx, .-n84_var_bx
                        .type            n85_var_bx, @function
n85_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_var_α:              mov              r11, 85
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 2296], rax;         jmp   n86_iterate_α
                        .size            n85_var_bx, .-n85_var_bx
                        .type            n86_iterate_bx, @function
n86_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_iterate_α:          mov              r11, 86
                        mov              qword ptr [rbp + 2272], 0
.Literate_α_346_0:      mov              rdi, qword ptr [rbp + 2288]
                        mov              rsi, qword ptr [rbp + 2296]
                        mov              rdx, qword ptr [rbp + 2272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                        cmp              al, 104;                             je    n94_line_mark_α
                                                                              jmp   n87_lit_integer_α
n86_iterate_β:          mov              r11, 86
                        inc              qword ptr [rbp + 2272];              jmp   .Literate_α_346_0
                        .size            n86_iterate_bx, .-n86_iterate_bx
                        .type            n87_lit_integer_bx, @function
n87_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_integer_α:      mov              r11, 87
                        mov              qword ptr [rbp + 2304], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_347_0]
                        mov              qword ptr [rbp + 2312], rax;         jmp   n88_coerce_numeric_α
.Llit_integer_α_347_0:  .quad            2
                        .size            n87_lit_integer_bx, .-n87_lit_integer_bx
                        .type            n88_coerce_numeric_bx, @function
n88_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_coerce_numeric_α:   mov              r11, 88
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_349_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_349_0
                        mov              eax, dword ptr [rbp + 2304]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_349_0
.Lcoerce_numeric_α_349_1:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2248], rax;         jmp   n89_binop_α
.Lcoerce_numeric_α_349_0:
                        lea              rdi, [rbp + 2256]
                        lea              rsi, [rbp + 2304]
                        lea              rdx, [rbp + 2240]
                        mov              rcx, 81621155942
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 2240]
                        cmp              al, 104;                             je    n94_line_mark_α
                                                                              jmp   n89_binop_α
                        .size            n88_coerce_numeric_bx, .-n88_coerce_numeric_bx
                        .type            n89_binop_bx, @function
n89_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_binop_α:            mov              r11, 89
                        mov              rdi, qword ptr [rbp + 2240]
                        mov              rsi, qword ptr [rbp + 2248]
                        mov              rdx, qword ptr [rbp + 2304]
                        mov              rcx, qword ptr [rbp + 2312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n94_line_mark_α
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx;         jmp   n90_coerce_numeric_α
                        .size            n89_binop_bx, .-n89_binop_bx
                        .type            n90_coerce_numeric_bx, @function
n90_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_coerce_numeric_α:   mov              r11, 90
                        mov              eax, dword ptr [rbp + 4032]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_352_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_352_0
                        mov              eax, dword ptr [rbp + 2224]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_352_0
.Lcoerce_numeric_α_352_1:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 2200], rax;         jmp   n91_coerce_numeric_α
.Lcoerce_numeric_α_352_0:
                        lea              rdi, [rbp + 4032]
                        lea              rsi, [rbp + 2224]
                        lea              rdx, [rbp + 2192]
                        mov              rcx, 4311744614
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 2192]
                        cmp              al, 104;                             je    n94_line_mark_α
                                                                              jmp   n91_coerce_numeric_α
                        .size            n90_coerce_numeric_bx, .-n90_coerce_numeric_bx
                        .type            n91_coerce_numeric_bx, @function
n91_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_coerce_numeric_α:   mov              r11, 91
                        mov              eax, dword ptr [rbp + 2224]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_354_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_354_0
                        mov              eax, dword ptr [rbp + 4032]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_354_0
.Lcoerce_numeric_α_354_1:
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2184], rax;         jmp   n92_binop_α
.Lcoerce_numeric_α_354_0:
                        lea              rdi, [rbp + 2224]
                        lea              rsi, [rbp + 4032]
                        lea              rdx, [rbp + 2176]
                        mov              rcx, 281479288455270
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 2176]
                        cmp              al, 104;                             je    n94_line_mark_α
                                                                              jmp   n92_binop_α
                        .size            n91_coerce_numeric_bx, .-n91_coerce_numeric_bx
                        .type            n92_binop_bx, @function
n92_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_binop_α:            mov              r11, 92
                        mov              eax, dword ptr [rbp + 2192]
                        mov              ecx, dword ptr [rbp + 2176]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_355_2
                        mov              rax, qword ptr [rbp + 2200]
                        mov              rdx, qword ptr [rbp + 2184]
                        add              rax, rdx;                            jo    .Lbinop_α_355_0
                        mov              qword ptr [rbp + 2160], 3
                        mov              qword ptr [rbp + 2168], rax;         jmp   .Lbinop_α_355_7
.Lbinop_α_355_2:        and              edx, 1;                              jz    .Lbinop_α_355_0
                        mov              rsi, qword ptr [rbp + 2200]
                        mov              rdi, qword ptr [rbp + 2184]
                        cmp              al, 5;                               je    .Lbinop_α_355_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_355_4
.Lbinop_α_355_3:        movq             xmm0, rsi
.Lbinop_α_355_4:        cmp              cl, 5;                               je    .Lbinop_α_355_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_355_6
.Lbinop_α_355_5:        movq             xmm1, rdi
.Lbinop_α_355_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_355_0
                        mov              qword ptr [rbp + 2160], 5
                        mov              qword ptr [rbp + 2168], rax
.Lbinop_α_355_7:                                                              jmp   n93_assign_α
.Lbinop_α_355_0:        mov              rdi, qword ptr [rbp + 2192]
                        mov              rsi, qword ptr [rbp + 2200]
                        mov              rdx, qword ptr [rbp + 2176]
                        mov              rcx, qword ptr [rbp + 2184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n94_line_mark_α
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx;         jmp   n93_assign_α
                        .size            n92_binop_bx, .-n92_binop_bx
                        .type            n93_assign_bx, @function
n93_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_assign_α:           mov              r11, 93
                        mov              rax, qword ptr [rbp + 2160]
                        mov              rdx, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx;         jmp   n86_iterate_β
                        .size            n93_assign_bx, .-n93_assign_bx
                        .type            n94_line_mark_bx, @function
n94_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_line_mark_α:        mov              r11, 94
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 57;             jmp   n95_var_α
                        .size            n94_line_mark_bx, .-n94_line_mark_bx
                        .type            n95_var_bx, @function
n95_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:              mov              r11, 95
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 2088], rax;         jmp   n96_var_α
                        .size            n95_var_bx, .-n95_var_bx
                        .type            n96_var_bx, @function
n96_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_var_α:              mov              r11, 96
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 2120], rax;         jmp   n97_unop_α
                        .size            n96_var_bx, .-n96_var_bx
                        .type            n97_unop_bx, @function
n97_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_unop_α:             mov              r11, 97
                        mov              rdi, qword ptr [rbp + 4080]
                        mov              rsi, qword ptr [rbp + 4088]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx;         jmp   n98_coerce_numeric_α
                        .size            n97_unop_bx, .-n97_unop_bx
                        .type            n98_coerce_numeric_bx, @function
n98_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_coerce_numeric_α:   mov              r11, 98
                        mov              eax, dword ptr [rbp + 4032]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_365_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_365_0
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_365_0
.Lcoerce_numeric_α_365_1:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 2072], rax;         jmp   n99_coerce_numeric_α
.Lcoerce_numeric_α_365_0:
                        lea              rdi, [rbp + 4032]
                        lea              rsi, [rbp + 2096]
                        lea              rdx, [rbp + 2064]
                        mov              rcx, 17196646502
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 2064]
                        cmp              al, 104;                             je    n00001_line_mark_α
                                                                              jmp   n99_coerce_numeric_α
                        .size            n98_coerce_numeric_bx, .-n98_coerce_numeric_bx
                        .type            n99_coerce_numeric_bx, @function
n99_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_coerce_numeric_α:   mov              r11, 99
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_367_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_367_0
                        mov              eax, dword ptr [rbp + 4032]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_367_0
.Lcoerce_numeric_α_367_1:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2056], rax;         jmp   n00002_binop_α
.Lcoerce_numeric_α_367_0:
                        lea              rdi, [rbp + 2096]
                        lea              rsi, [rbp + 4032]
                        lea              rdx, [rbp + 2048]
                        mov              rcx, 281492173357158
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 2048]
                        cmp              al, 104;                             je    n00001_line_mark_α
                                                                              jmp   n00002_binop_α
                        .size            n99_coerce_numeric_bx, .-n99_coerce_numeric_bx
                        .type            n00002_binop_bx, @function
n00002_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00002_binop_α:           mov              r11, 100
                        mov              rdi, qword ptr [rbp + 2064]
                        mov              rsi, qword ptr [rbp + 2072]
                        mov              rdx, qword ptr [rbp + 2048]
                        mov              rcx, qword ptr [rbp + 2056]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00001_line_mark_α
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx;         jmp   n00003_line_mark_α
                        .size            n00002_binop_bx, .-n00002_binop_bx
                        .type            n00003_line_mark_bx, @function
n00003_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00003_line_mark_α:       mov              r11, 101
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 57;             jmp   n00004_call_icon_α
                        .size            n00003_line_mark_bx, .-n00003_line_mark_bx
                        .type            n00004_call_icon_bx, @function
n00004_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00004_call_icon_α:       mov              r11, 102
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1992], rax
                        .section         .rodata
.Lcall_icon_α_rkfn372:  .string          "sqrt"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn372]
                        lea              rsi, [rbp + 1984]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262307
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              al, 104;                             je    n00001_line_mark_α
                                                                              jmp   n00005_lit_real_α
n00004_call_icon_β:       mov              r11, 102;                            jmp   n00001_line_mark_α
                        .size            n00004_call_icon_bx, .-n00004_call_icon_bx
                        .type            n00005_lit_real_bx, @function
n00005_lit_real_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00005_lit_real_α:        mov              r11, 103
                        mov              qword ptr [rbp + 2128], 5            # result
                        mov              rax, qword ptr [rip + .Llit_real_α_373_0]
                        mov              qword ptr [rbp + 2136], rax;         jmp   n00006_coerce_numeric_α
.Llit_real_α_373_0:     .quad            4602678819172646912
                        .size            n00005_lit_real_bx, .-n00005_lit_real_bx
                        .type            n00006_coerce_numeric_bx, @function
n00006_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00006_coerce_numeric_α:  mov              r11, 104
                        mov              eax, dword ptr [rbp + 1968]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_375_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_375_0
                        mov              eax, dword ptr [rbp + 2128]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_375_0
.Lcoerce_numeric_α_375_1:
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1960], rax;         jmp   n00007_binop_α
.Lcoerce_numeric_α_375_0:
                        lea              rdi, [rbp + 1968]
                        lea              rsi, [rbp + 2128]
                        lea              rdx, [rbp + 1952]
                        mov              rcx, 4311744614
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 1952]
                        cmp              al, 104;                             je    n00001_line_mark_α
                                                                              jmp   n00007_binop_α
                        .size            n00006_coerce_numeric_bx, .-n00006_coerce_numeric_bx
                        .type            n00007_binop_bx, @function
n00007_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00007_binop_α:           mov              r11, 105
                        mov              eax, dword ptr [rbp + 1952]
                        mov              ecx, dword ptr [rbp + 2128]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_376_2
                        mov              rax, qword ptr [rbp + 1960]
                        mov              rdx, qword ptr [rbp + 2136]
                        add              rax, rdx;                            jo    .Lbinop_α_376_0
                        mov              qword ptr [rbp + 1936], 3
                        mov              qword ptr [rbp + 1944], rax;         jmp   .Lbinop_α_376_7
.Lbinop_α_376_2:        and              edx, 1;                              jz    .Lbinop_α_376_0
                        mov              rsi, qword ptr [rbp + 1960]
                        mov              rdi, qword ptr [rbp + 2136]
                        cmp              al, 5;                               je    .Lbinop_α_376_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_376_4
.Lbinop_α_376_3:        movq             xmm0, rsi
.Lbinop_α_376_4:        cmp              cl, 5;                               je    .Lbinop_α_376_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_376_6
.Lbinop_α_376_5:        movq             xmm1, rdi
.Lbinop_α_376_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_376_0
                        mov              qword ptr [rbp + 1936], 5
                        mov              qword ptr [rbp + 1944], rax
.Lbinop_α_376_7:                                                              jmp   n00008_line_mark_α
.Lbinop_α_376_0:        mov              rdi, qword ptr [rbp + 1952]
                        mov              rsi, qword ptr [rbp + 1960]
                        mov              rdx, qword ptr [rbp + 2128]
                        mov              rcx, qword ptr [rbp + 2136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00001_line_mark_α
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n00008_line_mark_α
                        .size            n00007_binop_bx, .-n00007_binop_bx
                        .type            n00008_line_mark_bx, @function
n00008_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00008_line_mark_α:       mov              r11, 106
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 57;             jmp   n00009_call_icon_α
                        .size            n00008_line_mark_bx, .-n00008_line_mark_bx
                        .type            n00009_call_icon_bx, @function
n00009_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00009_call_icon_α:       mov              r11, 107
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1896], rax
                        .section         .rodata
.Lcall_icon_α_rkfn380:  .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn380]
                        lea              rsi, [rbp + 1888]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458878
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              al, 104;                             je    n00001_line_mark_α
                                                                              jmp   n00010_assign_α
n00009_call_icon_β:       mov              r11, 107;                            jmp   n00001_line_mark_α
                        .size            n00009_call_icon_bx, .-n00009_call_icon_bx
                        .type            n00010_assign_bx, @function
n00010_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00010_assign_α:          mov              r11, 108
                        mov              rax, qword ptr [rbp + 1872]
                        mov              rdx, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx;         jmp   n00001_line_mark_α
                        .size            n00010_assign_bx, .-n00010_assign_bx
                        .type            n00001_line_mark_bx, @function
n00001_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00001_line_mark_α:       mov              r11, 109
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 58;             jmp   n00011_var_ref_α
                        .size            n00001_line_mark_bx, .-n00001_line_mark_bx
                        .type            n00011_var_ref_bx, @function
n00011_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00011_var_ref_α:         mov              r11, 110
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4032]
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx;         jmp   n00012_lit_integer_α
                        .size            n00011_var_ref_bx, .-n00011_var_ref_bx
                        .type            n00012_lit_integer_bx, @function
n00012_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00012_lit_integer_α:     mov              r11, 111
                        mov              qword ptr [rbp + 1824], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_386_0]
                        mov              qword ptr [rbp + 1832], rax;         jmp   n00013_deref_α
.Llit_integer_α_386_0:  .quad            7
                        .size            n00012_lit_integer_bx, .-n00012_lit_integer_bx
                        .type            n00013_deref_bx, @function
n00013_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00013_deref_α:           mov              r11, 112
                        mov              rdi, qword ptr [rbp + 1808]
                        mov              rsi, qword ptr [rbp + 1816]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00014_line_mark_α
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx;         jmp   n00015_line_mark_α
                        .size            n00013_deref_bx, .-n00013_deref_bx
                        .type            n00015_line_mark_bx, @function
n00015_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00015_line_mark_α:       mov              r11, 113
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 58;             jmp   n00016_call_icon_α
                        .size            n00015_line_mark_bx, .-n00015_line_mark_bx
                        .type            n00016_call_icon_bx, @function
n00016_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00016_call_icon_α:       mov              r11, 114
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1768], rax
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1752], rax
                        .section         .rodata
.Lcall_icon_α_rkfn391:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn391]
                        lea              rsi, [rbp + 1744]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        cmp              al, 104;                             je    n00014_line_mark_α
                                                                              jmp   n00017_line_mark_α
n00016_call_icon_β:       mov              r11, 114;                            jmp   n00014_line_mark_α
                        .size            n00016_call_icon_bx, .-n00016_call_icon_bx
                        .type            n00017_line_mark_bx, @function
n00017_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00017_line_mark_α:       mov              r11, 115
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 58;             jmp   n00018_call_icon_α
                        .size            n00017_line_mark_bx, .-n00017_line_mark_bx
                        .type            n00018_call_icon_bx, @function
n00018_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00018_call_icon_α:       mov              r11, 116
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1688], rax
                        .section         .rodata
.Lcall_icon_α_rkfn395:  .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn395]
                        lea              rsi, [rbp + 1680]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              al, 104;                             je    n00014_line_mark_α
                                                                              jmp   n00014_line_mark_α
n00018_call_icon_β:       mov              r11, 116;                            jmp   n00014_line_mark_α
                        .size            n00018_call_icon_bx, .-n00018_call_icon_bx
                        .type            n00014_line_mark_bx, @function
n00014_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00014_line_mark_α:       mov              r11, 117
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 61;             jmp   n00019_var_ref_α
                        .size            n00014_line_mark_bx, .-n00014_line_mark_bx
                        .type            n00019_var_ref_bx, @function
n00019_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00019_var_ref_α:         mov              r11, 118
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4048]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx;         jmp   n00020_deref_α
                        .size            n00019_var_ref_bx, .-n00019_var_ref_bx
                        .type            n00020_deref_bx, @function
n00020_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00020_deref_α:           mov              r11, 119
                        mov              rdi, qword ptr [rbp + 1616]
                        mov              rsi, qword ptr [rbp + 1624]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00021_line_mark_α
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx;         jmp   n00022_line_mark_α
                        .size            n00020_deref_bx, .-n00020_deref_bx
                        .type            n00022_line_mark_bx, @function
n00022_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00022_line_mark_α:       mov              r11, 120
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 61;             jmp   n00023_call_icon_α
                        .size            n00022_line_mark_bx, .-n00022_line_mark_bx
                        .type            n00023_call_icon_bx, @function
n00023_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00023_call_icon_α:       mov              r11, 121
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1576], rax
                        .section         .rodata
.Lcall_icon_α_rkfn404:  .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn404]
                        lea              rsi, [rbp + 1568]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              al, 104;                             je    n00021_line_mark_α
                                                                              jmp   n00024_assign_α
n00023_call_icon_β:       mov              r11, 121;                            jmp   n00021_line_mark_α
                        .size            n00023_call_icon_bx, .-n00023_call_icon_bx
                        .type            n00024_assign_bx, @function
n00024_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00024_assign_α:          mov              r11, 122
                        mov              rax, qword ptr [rbp + 1552]
                        mov              rdx, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 4048], rax
                        mov              qword ptr [rbp + 4056], rdx;         jmp   n00021_line_mark_α
                        .size            n00024_assign_bx, .-n00024_assign_bx
                        .type            n00021_line_mark_bx, @function
n00021_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00021_line_mark_α:       mov              r11, 123
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 62;             jmp   n00025_var_ref_α
                        .size            n00021_line_mark_bx, .-n00021_line_mark_bx
                        .type            n00025_var_ref_bx, @function
n00025_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00025_var_ref_α:         mov              r11, 124
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4048]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx;         jmp   n00026_var_α
                        .size            n00025_var_ref_bx, .-n00025_var_ref_bx
                        .type            n00026_var_bx, @function
n00026_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00026_var_α:             mov              r11, 125
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 1464], rax;         jmp   n00027_unop_α
                        .size            n00026_var_bx, .-n00026_var_bx
                        .type            n00027_unop_bx, @function
n00027_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00027_unop_α:            mov              r11, 126
                        mov              rdi, qword ptr [rbp + 4048]
                        mov              rsi, qword ptr [rbp + 4056]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx;         jmp   n00028_lit_integer_α
                        .size            n00027_unop_bx, .-n00027_unop_bx
                        .type            n00028_lit_integer_bx, @function
n00028_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00028_lit_integer_α:     mov              r11, 127
                        mov              qword ptr [rbp + 1472], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_413_0]
                        mov              qword ptr [rbp + 1480], rax;         jmp   n00029_coerce_numeric_α
.Llit_integer_α_413_0:  .quad            2
                        .size            n00028_lit_integer_bx, .-n00028_lit_integer_bx
                        .type            n00029_coerce_numeric_bx, @function
n00029_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00029_coerce_numeric_α:  mov              r11, 128
                        mov              eax, dword ptr [rbp + 1440]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_415_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_415_0
                        mov              eax, dword ptr [rbp + 1472]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_415_0
.Lcoerce_numeric_α_415_1:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1432], rax;         jmp   n00030_binop_α
.Lcoerce_numeric_α_415_0:
                        lea              rdi, [rbp + 1440]
                        lea              rsi, [rbp + 1472]
                        lea              rdx, [rbp + 1424]
                        mov              rcx, 17196646502
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              al, 104;                             je    n00031_line_mark_α
                                                                              jmp   n00030_binop_α
                        .size            n00029_coerce_numeric_bx, .-n00029_coerce_numeric_bx
                        .type            n00030_binop_bx, @function
n00030_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00030_binop_α:           mov              r11, 129
                        mov              rdi, qword ptr [rbp + 1424]
                        mov              rsi, qword ptr [rbp + 1432]
                        mov              rdx, qword ptr [rbp + 1472]
                        mov              rcx, qword ptr [rbp + 1480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00031_line_mark_α
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx;         jmp   n00032_lit_integer_α
                        .size            n00030_binop_bx, .-n00030_binop_bx
                        .type            n00032_lit_integer_bx, @function
n00032_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00032_lit_integer_α:     mov              r11, 130
                        mov              qword ptr [rbp + 1488], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_417_0]
                        mov              qword ptr [rbp + 1496], rax;         jmp   n00033_coerce_numeric_α
.Llit_integer_α_417_0:  .quad            1
                        .size            n00032_lit_integer_bx, .-n00032_lit_integer_bx
                        .type            n00033_coerce_numeric_bx, @function
n00033_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00033_coerce_numeric_α:  mov              r11, 131
                        mov              eax, dword ptr [rbp + 1408]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_419_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_419_0
                        mov              eax, dword ptr [rbp + 1488]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_419_0
.Lcoerce_numeric_α_419_1:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1400], rax;         jmp   n00034_binop_α
.Lcoerce_numeric_α_419_0:
                        lea              rdi, [rbp + 1408]
                        lea              rsi, [rbp + 1488]
                        lea              rdx, [rbp + 1392]
                        mov              rcx, 4311744614
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              al, 104;                             je    n00031_line_mark_α
                                                                              jmp   n00034_binop_α
                        .size            n00033_coerce_numeric_bx, .-n00033_coerce_numeric_bx
                        .type            n00034_binop_bx, @function
n00034_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00034_binop_α:           mov              r11, 132
                        mov              eax, dword ptr [rbp + 1392]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_420_2
                        mov              rax, qword ptr [rbp + 1400]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_420_0
                        mov              qword ptr [rbp + 1376], 3
                        mov              qword ptr [rbp + 1384], rax;         jmp   .Lbinop_α_420_7
.Lbinop_α_420_2:        and              edx, 1;                              jz    .Lbinop_α_420_0
                        mov              rsi, qword ptr [rbp + 1400]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_420_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_420_4
.Lbinop_α_420_3:        movq             xmm0, rsi
.Lbinop_α_420_4:        cmp              cl, 5;                               je    .Lbinop_α_420_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_420_6
.Lbinop_α_420_5:        movq             xmm1, rdi
.Lbinop_α_420_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_420_0
                        mov              qword ptr [rbp + 1376], 5
                        mov              qword ptr [rbp + 1384], rax
.Lbinop_α_420_7:                                                              jmp   n00035_subscript_α
.Lbinop_α_420_0:        mov              rdi, qword ptr [rbp + 1392]
                        mov              rsi, qword ptr [rbp + 1400]
                        mov              rdx, qword ptr [rbp + 1488]
                        mov              rcx, qword ptr [rbp + 1496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00031_line_mark_α
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx;         jmp   n00035_subscript_α
                        .size            n00034_binop_bx, .-n00034_binop_bx
                        .type            n00035_subscript_bx, @function
n00035_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00035_subscript_α:       mov              r11, 133
                        mov              rdi, qword ptr [rbp + 1360]
                        mov              rsi, qword ptr [rbp + 1368]
                        mov              rdx, qword ptr [rbp + 1376]
                        mov              rcx, qword ptr [rbp + 1384]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00031_line_mark_α
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx;         jmp   n00036_deref_α
                        .size            n00035_subscript_bx, .-n00035_subscript_bx
                        .type            n00036_deref_bx, @function
n00036_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00036_deref_α:           mov              r11, 134
                        mov              rdi, qword ptr [rbp + 1504]
                        mov              rsi, qword ptr [rbp + 1512]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00031_line_mark_α
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx;         jmp   n00037_assign_α
                        .size            n00036_deref_bx, .-n00036_deref_bx
                        .type            n00037_assign_bx, @function
n00037_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00037_assign_α:          mov              r11, 135
                        mov              rax, qword ptr [rbp + 1520]
                        mov              rdx, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx;         jmp   n00031_line_mark_α
                        .size            n00037_assign_bx, .-n00037_assign_bx
                        .type            n00031_line_mark_bx, @function
n00031_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00031_line_mark_α:       mov              r11, 136
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 63;             jmp   n00038_var_ref_α
                        .size            n00031_line_mark_bx, .-n00031_line_mark_bx
                        .type            n00038_var_ref_bx, @function
n00038_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00038_var_ref_α:         mov              r11, 137
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4032]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx;         jmp   n00039_lit_integer_α
                        .size            n00038_var_ref_bx, .-n00038_var_ref_bx
                        .type            n00039_lit_integer_bx, @function
n00039_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00039_lit_integer_α:     mov              r11, 138
                        mov              qword ptr [rbp + 1312], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_428_0]
                        mov              qword ptr [rbp + 1320], rax;         jmp   n00040_deref_α
.Llit_integer_α_428_0:  .quad            7
                        .size            n00039_lit_integer_bx, .-n00039_lit_integer_bx
                        .type            n00040_deref_bx, @function
n00040_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00040_deref_α:           mov              r11, 139
                        mov              rdi, qword ptr [rbp + 1296]
                        mov              rsi, qword ptr [rbp + 1304]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00041_line_mark_α
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx;         jmp   n00042_line_mark_α
                        .size            n00040_deref_bx, .-n00040_deref_bx
                        .type            n00042_line_mark_bx, @function
n00042_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00042_line_mark_α:       mov              r11, 140
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 63;             jmp   n00043_call_icon_α
                        .size            n00042_line_mark_bx, .-n00042_line_mark_bx
                        .type            n00043_call_icon_bx, @function
n00043_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00043_call_icon_α:       mov              r11, 141
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1240], rax
                        .section         .rodata
.Lcall_icon_α_rkfn433:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn433]
                        lea              rsi, [rbp + 1232]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              al, 104;                             je    n00041_line_mark_α
                                                                              jmp   n00044_line_mark_α
n00043_call_icon_β:       mov              r11, 141;                            jmp   n00041_line_mark_α
                        .size            n00043_call_icon_bx, .-n00043_call_icon_bx
                        .type            n00044_line_mark_bx, @function
n00044_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00044_line_mark_α:       mov              r11, 142
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 63;             jmp   n00045_call_icon_α
                        .size            n00044_line_mark_bx, .-n00044_line_mark_bx
                        .type            n00045_call_icon_bx, @function
n00045_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00045_call_icon_α:       mov              r11, 143
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1176], rax
                        .section         .rodata
.Lcall_icon_α_rkfn437:  .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn437]
                        lea              rsi, [rbp + 1168]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              al, 104;                             je    n00041_line_mark_α
                                                                              jmp   n00041_line_mark_α
n00045_call_icon_β:       mov              r11, 143;                            jmp   n00041_line_mark_α
                        .size            n00045_call_icon_bx, .-n00045_call_icon_bx
                        .type            n00041_line_mark_bx, @function
n00041_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00041_line_mark_α:       mov              r11, 144
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 66;             jmp   n00046_lit_real_α
                        .size            n00041_line_mark_bx, .-n00041_line_mark_bx
                        .type            n00046_lit_real_bx, @function
n00046_lit_real_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00046_lit_real_α:        mov              r11, 145
                        mov              qword ptr [rbp + 1120], 5            # result
                        mov              rax, qword ptr [rip + .Llit_real_α_440_0]
                        mov              qword ptr [rbp + 1128], rax;         jmp   n00047_assign_α
.Llit_real_α_440_0:     .quad            0
                        .size            n00046_lit_real_bx, .-n00046_lit_real_bx
                        .type            n00047_assign_bx, @function
n00047_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00047_assign_α:          mov              r11, 146
                        mov              rax, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx;         jmp   n00048_line_mark_α
                        .size            n00047_assign_bx, .-n00047_assign_bx
                        .type            n00048_line_mark_bx, @function
n00048_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00048_line_mark_α:       mov              r11, 147
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 67;             jmp   n00049_var_α
                        .size            n00048_line_mark_bx, .-n00048_line_mark_bx
                        .type            n00049_var_bx, @function
n00049_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00049_var_α:             mov              r11, 148
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 792], rax;          jmp   n00050_iterate_α
                        .size            n00049_var_bx, .-n00049_var_bx
                        .type            n00050_iterate_bx, @function
n00050_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00050_iterate_α:         mov              r11, 149
                        mov              qword ptr [rbp + 768], 0
.Literate_α_447_0:      mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        mov              rdx, qword ptr [rbp + 768]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              al, 104;                             je    n00051_line_mark_α
                                                                              jmp   n00052_assign_α
n00050_iterate_β:         mov              r11, 149
                        inc              qword ptr [rbp + 768];               jmp   .Literate_α_447_0
                        .size            n00050_iterate_bx, .-n00050_iterate_bx
                        .type            n00052_assign_bx, @function
n00052_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00052_assign_α:          mov              r11, 150
                        mov              rax, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 4064], rax
                        mov              qword ptr [rbp + 4072], rdx;         jmp   n00053_bound_α
                        .size            n00052_assign_bx, .-n00052_assign_bx
                        .type            n00053_bound_bx, @function
n00053_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00053_bound_α:           mov              r11, 151
                        mov              qword ptr [rbp + 800], rsp;          jmp   n00054_var_α
                        .size            n00053_bound_bx, .-n00053_bound_bx
                        .type            n00054_var_bx, @function
n00054_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00054_var_α:             mov              r11, 152
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 904], rax;          jmp   n00055_disjunction_α
                        .size            n00054_var_bx, .-n00054_var_bx
                        .type            n00055_disjunction_bx, @function
n00055_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00055_disjunction_α:     mov              r11, 153
                        mov              qword ptr [rbp + 912], 0
                        mov              qword ptr [rbp + 920], 0
                        mov              dword ptr [rbp + 928], 0;            jmp   n00056_var_α
.Ldisjunction_γ_153_as: mov              r11, 153
                        mov              eax, dword ptr [rbp + 928]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_454_0
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax;          jmp   n00057_coerce_numeric_α
.Ldisjunction_α_454_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_454_1
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 920], rax;          jmp   n00057_coerce_numeric_α
.Ldisjunction_α_454_1:                                                        jmp   n00057_coerce_numeric_α
n00055_disjunction_β:     mov              r11, 153
                        mov              eax, dword ptr [rbp + 928]
                        cmp              eax, 0;                              je    n00058_unmark_α
                                                                              jmp   n00058_unmark_α
.Ldisjunction_γ_153_af: mov              r11, 153
.Ldisjunction_ω_153_af: mov              r11, 153
                        add              dword ptr [rbp + 928], 1
                        mov              eax, dword ptr [rbp + 928]
                        cmp              eax, 1;                              je    n00059_var_ref_α
                                                                              jmp   n00058_unmark_α
                        .size            n00055_disjunction_bx, .-n00055_disjunction_bx
                        .type            n00057_coerce_numeric_bx, @function
n00057_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00057_coerce_numeric_α:  mov              r11, 154
                        mov              eax, dword ptr [rbp + 4032]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_456_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_456_0
                        mov              eax, dword ptr [rbp + 912]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_456_0
.Lcoerce_numeric_α_456_1:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 888], rax;          jmp   n00060_coerce_numeric_α
.Lcoerce_numeric_α_456_0:
                        lea              rdi, [rbp + 4032]
                        lea              rsi, [rbp + 912]
                        lea              rdx, [rbp + 880]
                        mov              rcx, 4311744614
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 880]
                        cmp              al, 104;                             je    n00058_unmark_α
                                                                              jmp   n00060_coerce_numeric_α
                        .size            n00057_coerce_numeric_bx, .-n00057_coerce_numeric_bx
                        .type            n00060_coerce_numeric_bx, @function
n00060_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00060_coerce_numeric_α:  mov              r11, 155
                        mov              eax, dword ptr [rbp + 912]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_458_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_458_0
                        mov              eax, dword ptr [rbp + 4032]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_458_0
.Lcoerce_numeric_α_458_1:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 872], rax;          jmp   n00061_binop_α
.Lcoerce_numeric_α_458_0:
                        lea              rdi, [rbp + 912]
                        lea              rsi, [rbp + 4032]
                        lea              rdx, [rbp + 864]
                        mov              rcx, 281479288455270
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 864]
                        cmp              al, 104;                             je    n00058_unmark_α
                                                                              jmp   n00061_binop_α
                        .size            n00060_coerce_numeric_bx, .-n00060_coerce_numeric_bx
                        .type            n00061_binop_bx, @function
n00061_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00061_binop_α:           mov              r11, 156
                        mov              eax, dword ptr [rbp + 880]
                        mov              ecx, dword ptr [rbp + 864]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_459_2
                        mov              rax, qword ptr [rbp + 888]
                        mov              rdx, qword ptr [rbp + 872]
                        add              rax, rdx;                            jo    .Lbinop_α_459_0
                        mov              qword ptr [rbp + 848], 3
                        mov              qword ptr [rbp + 856], rax;          jmp   .Lbinop_α_459_7
.Lbinop_α_459_2:        and              edx, 1;                              jz    .Lbinop_α_459_0
                        mov              rsi, qword ptr [rbp + 888]
                        mov              rdi, qword ptr [rbp + 872]
                        cmp              al, 5;                               je    .Lbinop_α_459_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_459_4
.Lbinop_α_459_3:        movq             xmm0, rsi
.Lbinop_α_459_4:        cmp              cl, 5;                               je    .Lbinop_α_459_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_459_6
.Lbinop_α_459_5:        movq             xmm1, rdi
.Lbinop_α_459_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_459_0
                        mov              qword ptr [rbp + 848], 5
                        mov              qword ptr [rbp + 856], rax
.Lbinop_α_459_7:                                                              jmp   n00062_assign_α
.Lbinop_α_459_0:        mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        mov              rdx, qword ptr [rbp + 864]
                        mov              rcx, qword ptr [rbp + 872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00058_unmark_α
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx;          jmp   n00062_assign_α
                        .size            n00061_binop_bx, .-n00061_binop_bx
                        .type            n00062_assign_bx, @function
n00062_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00062_assign_α:          mov              r11, 157
                        mov              rax, qword ptr [rbp + 848]
                        mov              rdx, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx;         jmp   n00058_unmark_α
                        .size            n00062_assign_bx, .-n00062_assign_bx
                        .type            n00059_var_ref_bx, @function
n00059_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00059_var_ref_α:         mov              r11, 158
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4064]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx;         jmp   n00063_deref_α
n00059_var_ref_β:         mov              r11, 158;                            jmp   n00058_unmark_α
                        .size            n00059_var_ref_bx, .-n00059_var_ref_bx
                        .type            n00063_deref_bx, @function
n00063_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00063_deref_α:           mov              r11, 159
                        mov              rdi, qword ptr [rbp + 1072]
                        mov              rsi, qword ptr [rbp + 1080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00058_unmark_α
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx;         jmp   n00064_line_mark_α
                        .size            n00063_deref_bx, .-n00063_deref_bx
                        .type            n00064_line_mark_bx, @function
n00064_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00064_line_mark_α:       mov              r11, 160
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 68;             jmp   n00065_call_icon_α
                        .size            n00064_line_mark_bx, .-n00064_line_mark_bx
                        .type            n00065_call_icon_bx, @function
n00065_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00065_call_icon_α:       mov              r11, 161
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1032], rax
                        .section         .rodata
.Lcall_icon_α_rkfn467:  .string          "log"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn467]
                        lea              rsi, [rbp + 1024]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196741
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              al, 104;                             je    n00058_unmark_α
                                                                              jmp   .Ldisjunction_γ_153_as
n00065_call_icon_β:       mov              r11, 161;                            jmp   n00058_unmark_α
                        .size            n00065_call_icon_bx, .-n00065_call_icon_bx
                        .type            n00056_var_bx, @function
n00056_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00056_var_α:             mov              r11, 162
                        mov              rax, qword ptr [rbp + 4064]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 4072]
                        mov              qword ptr [rbp + 984], rax;          jmp   n00066_lit_integer_α
n00056_var_β:             mov              r11, 162;                            jmp   .Ldisjunction_ω_153_af
                        .size            n00056_var_bx, .-n00056_var_bx
                        .type            n00066_lit_integer_bx, @function
n00066_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00066_lit_integer_α:     mov              r11, 163
                        mov              qword ptr [rbp + 992], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_470_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n00067_binop_test_α
.Llit_integer_α_470_0:  .quad            0
                        .size            n00066_lit_integer_bx, .-n00066_lit_integer_bx
                        .type            n00067_binop_test_bx, @function
n00067_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00067_binop_test_α:      mov              r11, 164
                        mov              eax, dword ptr [rbp + 4064]
                        cmp              al, 112;                             je    .Lbinop_test_α_471_0
                        mov              eax, dword ptr [rbp + 992]
                        cmp              al, 112;                             je    .Lbinop_test_α_471_0
                        mov              eax, dword ptr [rbp + 4064]
                        cmp              al, 3;                               jne   .Lbinop_test_α_471_2
                        mov              eax, dword ptr [rbp + 992]
                        cmp              al, 3;                               jne   .Lbinop_test_α_471_2
.Lbinop_test_α_471_1:   mov              rax, qword ptr [rbp + 4072]
                        mov              rcx, qword ptr [rbp + 1000]
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_153_af
                        mov              rcx, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rcx
                        mov              rcx, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rcx;          jmp   n00068_lit_integer_α
.Lbinop_test_α_471_0:   mov              rdi, qword ptr [rbp + 4064]
                        mov              rsi, qword ptr [rbp + 4072]
                        mov              rdx, qword ptr [rbp + 992]
                        mov              rcx, qword ptr [rbp + 1000]
                        mov              r8d, 6
                        lea              r9, [rbp + 960]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lbinop_test_α_471_2
                        cmp              eax, 1;                              je    .Ldisjunction_ω_153_af
                                                                              jmp   n00068_lit_integer_α
.Lbinop_test_α_471_2:   mov              rdi, qword ptr [rbp + 4064]
                        mov              rsi, qword ptr [rbp + 4072]
                        mov              rdx, qword ptr [rbp + 992]
                        mov              rcx, qword ptr [rbp + 1000]
                        mov              r8d, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    .Ldisjunction_ω_153_af
                        mov              rdi, qword ptr [rbp + 4064]
                        mov              rsi, qword ptr [rbp + 4072]
                        mov              rdx, qword ptr [rbp + 992]
                        mov              rcx, qword ptr [rbp + 1000]
                        lea              r8, [rbp + 960]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_val_coerce@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00068_lit_integer_α
                        .size            n00067_binop_test_bx, .-n00067_binop_test_bx
                        .type            n00068_lit_integer_bx, @function
n00068_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00068_lit_integer_α:     mov              r11, 165
                        mov              qword ptr [rbp + 944], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_472_0]
                        mov              qword ptr [rbp + 952], rax;          jmp   .Ldisjunction_γ_153_as
n00068_lit_integer_β:     mov              r11, 165;                            jmp   n00058_unmark_α
.Llit_integer_α_472_0:  .quad            0
                        .size            n00068_lit_integer_bx, .-n00068_lit_integer_bx
                        .type            n00058_unmark_bx, @function
n00058_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00058_unmark_α:          mov              r11, 166
                        mov              rsp, qword ptr [rbp + 800];          jmp   n00050_iterate_β
                        .size            n00058_unmark_bx, .-n00058_unmark_bx
                        .type            n00051_line_mark_bx, @function
n00051_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00051_line_mark_α:       mov              r11, 167
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 69;             jmp   n00069_kw_icon_α
                        .size            n00051_line_mark_bx, .-n00051_line_mark_bx
                        .type            n00069_kw_icon_bx, @function
n00069_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00069_kw_icon_α:         mov              r11, 168
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_477_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00070_line_mark_α
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n00071_var_α
n00069_kw_icon_β:         mov              r11, 168;                            jmp   n00070_line_mark_α
.Lkw_icon_α_477_0:      .quad            .Lkw_icon_α_477_0_s
.Lkw_icon_α_477_0_s:    .string          "&e"
                        .size            n00069_kw_icon_bx, .-n00069_kw_icon_bx
                        .type            n00071_var_bx, @function
n00071_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00071_var_α:             mov              r11, 169
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 680], rax;          jmp   n00072_var_α
                        .size            n00071_var_bx, .-n00071_var_bx
                        .type            n00072_var_bx, @function
n00072_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00072_var_α:             mov              r11, 170
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 712], rax;          jmp   n00073_unop_α
                        .size            n00072_var_bx, .-n00072_var_bx
                        .type            n00073_unop_bx, @function
n00073_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00073_unop_α:            mov              r11, 171
                        mov              rdi, qword ptr [rbp + 4048]
                        mov              rsi, qword ptr [rbp + 4056]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx;          jmp   n00074_coerce_numeric_α
                        .size            n00073_unop_bx, .-n00073_unop_bx
                        .type            n00074_coerce_numeric_bx, @function
n00074_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00074_coerce_numeric_α:  mov              r11, 172
                        mov              eax, dword ptr [rbp + 4032]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_484_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_484_0
                        mov              eax, dword ptr [rbp + 688]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_484_0
.Lcoerce_numeric_α_484_1:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 664], rax;          jmp   n00075_coerce_numeric_α
.Lcoerce_numeric_α_484_0:
                        lea              rdi, [rbp + 4032]
                        lea              rsi, [rbp + 688]
                        lea              rdx, [rbp + 656]
                        mov              rcx, 17196646502
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 656]
                        cmp              al, 104;                             je    n00070_line_mark_α
                                                                              jmp   n00075_coerce_numeric_α
                        .size            n00074_coerce_numeric_bx, .-n00074_coerce_numeric_bx
                        .type            n00075_coerce_numeric_bx, @function
n00075_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00075_coerce_numeric_α:  mov              r11, 173
                        mov              eax, dword ptr [rbp + 688]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_486_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_486_0
                        mov              eax, dword ptr [rbp + 4032]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_486_0
.Lcoerce_numeric_α_486_1:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 648], rax;          jmp   n00076_binop_α
.Lcoerce_numeric_α_486_0:
                        lea              rdi, [rbp + 688]
                        lea              rsi, [rbp + 4032]
                        lea              rdx, [rbp + 640]
                        mov              rcx, 281492173357158
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 640]
                        cmp              al, 104;                             je    n00070_line_mark_α
                                                                              jmp   n00076_binop_α
                        .size            n00075_coerce_numeric_bx, .-n00075_coerce_numeric_bx
                        .type            n00076_binop_bx, @function
n00076_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00076_binop_α:           mov              r11, 174
                        mov              rdi, qword ptr [rbp + 656]
                        mov              rsi, qword ptr [rbp + 664]
                        mov              rdx, qword ptr [rbp + 640]
                        mov              rcx, qword ptr [rbp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00070_line_mark_α
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n00077_coerce_numeric_α
                        .size            n00076_binop_bx, .-n00076_binop_bx
                        .type            n00077_coerce_numeric_bx, @function
n00077_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00077_coerce_numeric_α:  mov              r11, 175
                        mov              eax, dword ptr [rbp + 592]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_489_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_489_0
                        mov              eax, dword ptr [rbp + 624]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_489_0
.Lcoerce_numeric_α_489_1:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 584], rax;          jmp   n00078_coerce_numeric_α
.Lcoerce_numeric_α_489_0:
                        lea              rdi, [rbp + 592]
                        lea              rsi, [rbp + 624]
                        lea              rdx, [rbp + 576]
                        mov              rcx, 81621155942
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 576]
                        cmp              al, 104;                             je    n00070_line_mark_α
                                                                              jmp   n00078_coerce_numeric_α
                        .size            n00077_coerce_numeric_bx, .-n00077_coerce_numeric_bx
                        .type            n00078_coerce_numeric_bx, @function
n00078_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00078_coerce_numeric_α:  mov              r11, 176
                        mov              eax, dword ptr [rbp + 624]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_491_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_491_0
                        mov              eax, dword ptr [rbp + 592]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_491_0
.Lcoerce_numeric_α_491_1:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 568], rax;          jmp   n00079_binop_α
.Lcoerce_numeric_α_491_0:
                        lea              rdi, [rbp + 624]
                        lea              rsi, [rbp + 592]
                        lea              rdx, [rbp + 560]
                        mov              rcx, 281556631421030
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 560]
                        cmp              al, 104;                             je    n00070_line_mark_α
                                                                              jmp   n00079_binop_α
                        .size            n00078_coerce_numeric_bx, .-n00078_coerce_numeric_bx
                        .type            n00079_binop_bx, @function
n00079_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00079_binop_α:           mov              r11, 177
                        mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        mov              rdx, qword ptr [rbp + 560]
                        mov              rcx, qword ptr [rbp + 568]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00070_line_mark_α
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n00080_lit_real_α
                        .size            n00079_binop_bx, .-n00079_binop_bx
                        .type            n00080_lit_real_bx, @function
n00080_lit_real_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00080_lit_real_α:        mov              r11, 178
                        mov              qword ptr [rbp + 720], 5             # result
                        mov              rax, qword ptr [rip + .Llit_real_α_493_0]
                        mov              qword ptr [rbp + 728], rax;          jmp   n00081_coerce_numeric_α
.Llit_real_α_493_0:     .quad            4602678819172646912
                        .size            n00080_lit_real_bx, .-n00080_lit_real_bx
                        .type            n00081_coerce_numeric_bx, @function
n00081_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00081_coerce_numeric_α:  mov              r11, 179
                        mov              eax, dword ptr [rbp + 544]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_495_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_495_0
                        mov              eax, dword ptr [rbp + 720]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_495_0
.Lcoerce_numeric_α_495_1:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 536], rax;          jmp   n00082_binop_α
.Lcoerce_numeric_α_495_0:
                        lea              rdi, [rbp + 544]
                        lea              rsi, [rbp + 720]
                        lea              rdx, [rbp + 528]
                        mov              rcx, 4311744614
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 528]
                        cmp              al, 104;                             je    n00070_line_mark_α
                                                                              jmp   n00082_binop_α
                        .size            n00081_coerce_numeric_bx, .-n00081_coerce_numeric_bx
                        .type            n00082_binop_bx, @function
n00082_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00082_binop_α:           mov              r11, 180
                        mov              eax, dword ptr [rbp + 528]
                        mov              ecx, dword ptr [rbp + 720]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_496_2
                        mov              rax, qword ptr [rbp + 536]
                        mov              rdx, qword ptr [rbp + 728]
                        add              rax, rdx;                            jo    .Lbinop_α_496_0
                        mov              qword ptr [rbp + 512], 3
                        mov              qword ptr [rbp + 520], rax;          jmp   .Lbinop_α_496_7
.Lbinop_α_496_2:        and              edx, 1;                              jz    .Lbinop_α_496_0
                        mov              rsi, qword ptr [rbp + 536]
                        mov              rdi, qword ptr [rbp + 728]
                        cmp              al, 5;                               je    .Lbinop_α_496_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_496_4
.Lbinop_α_496_3:        movq             xmm0, rsi
.Lbinop_α_496_4:        cmp              cl, 5;                               je    .Lbinop_α_496_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_496_6
.Lbinop_α_496_5:        movq             xmm1, rdi
.Lbinop_α_496_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_496_0
                        mov              qword ptr [rbp + 512], 5
                        mov              qword ptr [rbp + 520], rax
.Lbinop_α_496_7:                                                              jmp   n00083_line_mark_α
.Lbinop_α_496_0:        mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        mov              rdx, qword ptr [rbp + 720]
                        mov              rcx, qword ptr [rbp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00070_line_mark_α
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx;          jmp   n00083_line_mark_α
                        .size            n00082_binop_bx, .-n00082_binop_bx
                        .type            n00083_line_mark_bx, @function
n00083_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00083_line_mark_α:       mov              r11, 181
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 69;             jmp   n00084_call_icon_α
                        .size            n00083_line_mark_bx, .-n00083_line_mark_bx
                        .type            n00084_call_icon_bx, @function
n00084_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00084_call_icon_α:       mov              r11, 182
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 472], rax
                        .section         .rodata
.Lcall_icon_α_rkfn500:  .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn500]
                        lea              rsi, [rbp + 464]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458878
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              al, 104;                             je    n00070_line_mark_α
                                                                              jmp   n00085_assign_α
n00084_call_icon_β:       mov              r11, 182;                            jmp   n00070_line_mark_α
                        .size            n00084_call_icon_bx, .-n00084_call_icon_bx
                        .type            n00085_assign_bx, @function
n00085_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00085_assign_α:          mov              r11, 183
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx;         jmp   n00070_line_mark_α
                        .size            n00085_assign_bx, .-n00085_assign_bx
                        .type            n00070_line_mark_bx, @function
n00070_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00070_line_mark_α:       mov              r11, 184
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 70;             jmp   n00086_var_ref_α
                        .size            n00070_line_mark_bx, .-n00070_line_mark_bx
                        .type            n00086_var_ref_bx, @function
n00086_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00086_var_ref_α:         mov              r11, 185
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4032]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n00087_lit_integer_α
                        .size            n00086_var_ref_bx, .-n00086_var_ref_bx
                        .type            n00087_lit_integer_bx, @function
n00087_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00087_lit_integer_α:     mov              r11, 186
                        mov              qword ptr [rbp + 384], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_506_0]
                        mov              qword ptr [rbp + 392], rax;          jmp   n00088_deref_α
.Llit_integer_α_506_0:  .quad            7
                        .size            n00087_lit_integer_bx, .-n00087_lit_integer_bx
                        .type            n00088_deref_bx, @function
n00088_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00088_deref_α:           mov              r11, 187
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00089_line_mark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n00090_line_mark_α
                        .size            n00088_deref_bx, .-n00088_deref_bx
                        .type            n00090_line_mark_bx, @function
n00090_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00090_line_mark_α:       mov              r11, 188
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 70;             jmp   n00091_call_icon_α
                        .size            n00090_line_mark_bx, .-n00090_line_mark_bx
                        .type            n00091_call_icon_bx, @function
n00091_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00091_call_icon_α:       mov              r11, 189
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lcall_icon_α_rkfn511:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn511]
                        lea              rsi, [rbp + 304]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              al, 104;                             je    n00089_line_mark_α
                                                                              jmp   n00092_line_mark_α
n00091_call_icon_β:       mov              r11, 189;                            jmp   n00089_line_mark_α
                        .size            n00091_call_icon_bx, .-n00091_call_icon_bx
                        .type            n00092_line_mark_bx, @function
n00092_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00092_line_mark_α:       mov              r11, 190
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 70;             jmp   n00093_call_icon_α
                        .size            n00092_line_mark_bx, .-n00092_line_mark_bx
                        .type            n00093_call_icon_bx, @function
n00093_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00093_call_icon_α:       mov              r11, 191
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lcall_icon_α_rkfn515:  .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn515]
                        lea              rsi, [rbp + 240]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              al, 104;                             je    n00089_line_mark_α
                                                                              jmp   n00089_line_mark_α
n00093_call_icon_β:       mov              r11, 191;                            jmp   n00089_line_mark_α
                        .size            n00093_call_icon_bx, .-n00093_call_icon_bx
                        .type            n00089_line_mark_bx, @function
n00089_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00089_line_mark_α:       mov              r11, 192
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 73;             jmp   n00094_lit_string_α
                        .size            n00089_line_mark_bx, .-n00089_line_mark_bx
                        .type            n00094_lit_string_bx, @function
n00094_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00094_lit_string_α:      mov              r11, 193
                        mov              qword ptr [rbp + 144], 2             # result
                        mov              dword ptr [rbp + 148], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_518_0]
                        mov              qword ptr [rbp + 152], rax;          jmp   n00095_var_ref_α
.Llit_string_α_518_0:   .quad            .Llit_string_α_518_0_s
.Llit_string_α_518_0_s: .string          "   "
                        .size            n00094_lit_string_bx, .-n00094_lit_string_bx
                        .type            n00095_var_ref_bx, @function
n00095_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00095_var_ref_α:         mov              r11, 194
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n00096_deref_α
                        .size            n00095_var_ref_bx, .-n00095_var_ref_bx
                        .type            n00096_deref_bx, @function
n00096_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00096_deref_α:           mov              r11, 195
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00097_line_mark_α
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n00098_line_mark_α
                        .size            n00096_deref_bx, .-n00096_deref_bx
                        .type            n00098_line_mark_bx, @function
n00098_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00098_line_mark_α:       mov              r11, 196
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 73;             jmp   n00099_call_icon_α
                        .size            n00098_line_mark_bx, .-n00098_line_mark_bx
                        .type            n00099_call_icon_bx, @function
n00099_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00099_call_icon_α:       mov              r11, 197
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 88], rax
                        .section         .rodata
.Lcall_icon_α_rkfn525:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn525]
                        lea              rsi, [rbp + 80]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    n00097_line_mark_α
                                                                              jmp   n00097_line_mark_α
n00099_call_icon_β:       mov              r11, 197;                            jmp   n00097_line_mark_α
                        .size            n00099_call_icon_bx, .-n00099_call_icon_bx
                        .type            n00097_line_mark_bx, @function
n00097_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00097_line_mark_α:       mov              r11, 198
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 74;             jmp   n00100_return_α
                        .size            n00097_line_mark_bx, .-n00097_line_mark_bx
                        .type            n00100_return_bx, @function
n00100_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00100_return_α:          mov              r11, 199
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              rax, qword ptr [rbp + 0]
                        mov              rdx, qword ptr [rbp + 8];            jmp   dofile_γ
                        .size            n00100_return_bx, .-n00100_return_bx
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
                        cmp              rax, 0;                              je    .Ldofile_α_528_248
                        .section         .rodata
.Licn_trace_nm529:      .string          "dofile"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm529]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ldofile_α_528_248:     mov              rsp, rbx
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
                        lea              rsp, [rbp + 4384]
                        mov              rbp, qword ptr [rbp + 4376];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
dofile_ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Ldofile_α_528_249
                        .section         .rodata
.Licn_trace_nm530:      .string          "dofile"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm530]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ldofile_α_528_249:     mov              rsp, rbx
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
                        lea              rsp, [rbp + 4384]
                        mov              rbp, qword ptr [rbp + 4376];         jmp   qword ptr [rsp + 8]
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
                        lea              rcx, [rip + .Ldofile_α_531_3]
                        push             rcx
                        lea              rcx, [rip + .Ldofile_α_531_2]
                        push             rcx;                                 jmp   FN__dofile
.Ldofile_α_531_2:       add              rsp, 24
                        pop              r12;                                 jmp   r12
.Ldofile_α_531_3:       add              rsp, 24
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
                        mov              rdi, qword ptr [rdi]
                        call             rt_main_progname_stage@PLT
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
                        sub              rsp, 1200
                        mov              qword ptr [rsp + 1192], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 1040
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
.Licn_trace_nm532:      .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm532]
                        mov              esi, 1
                        lea              rdx, [rbx + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_531_247:       mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
main_α_body:
                        .type            n00101_line_mark_bx, @function
n00101_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00101_line_mark_α:       mov              r11, 200
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 19
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_578_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00102_line_mark_α
.Lline_mark_α_578_0:    .quad            .Lline_mark_α_578_0_s
.Lline_mark_α_578_0_s:  .string          "micsum.icn"
                        .size            n00101_line_mark_bx, .-n00101_line_mark_bx
                        .type            n00102_line_mark_bx, @function
n00102_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00102_line_mark_α:       mov              r11, 201
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 21;             jmp   n00103_lit_string_α
                        .size            n00102_line_mark_bx, .-n00102_line_mark_bx
                        .type            n00103_lit_string_bx, @function
n00103_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00103_lit_string_α:      mov              r11, 202
                        mov              qword ptr [rbp + 976], 2             # result
                        mov              dword ptr [rbp + 980], 42
                        mov              rax, qword ptr [rip + .Llit_string_α_581_0]
                        mov              qword ptr [rbp + 984], rax;          jmp   n00104_line_mark_α
.Llit_string_α_581_0:   .quad            .Llit_string_α_581_0_s
.Llit_string_α_581_0_s: .string          "  N ovhead rmserr median  gmean   filename"
                        .size            n00103_lit_string_bx, .-n00103_lit_string_bx
                        .type            n00104_line_mark_bx, @function
n00104_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00104_line_mark_α:       mov              r11, 203
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 21;             jmp   n00105_call_icon_α
                        .size            n00104_line_mark_bx, .-n00104_line_mark_bx
                        .type            n00105_call_icon_bx, @function
n00105_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00105_call_icon_α:       mov              r11, 204
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        .section         .rodata
.Lcall_icon_α_rkfn585:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn585]
                        lea              rsi, [rbp + 928]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              al, 104;                             je    n00106_line_mark_α
                                                                              jmp   n00106_line_mark_α
n00105_call_icon_β:       mov              r11, 204;                            jmp   n00106_line_mark_α
                        .size            n00105_call_icon_bx, .-n00105_call_icon_bx
                        .type            n00106_line_mark_bx, @function
n00106_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00106_line_mark_α:       mov              r11, 205
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 22;             jmp   n00107_disjunction_α
                        .size            n00106_line_mark_bx, .-n00106_line_mark_bx
                        .type            n00107_disjunction_bx, @function
n00107_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00107_disjunction_α:     mov              r11, 206
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0;             jmp   n00108_var_α
.Ldisjunction_γ_539_as: mov              r11, 206
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_589_0
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax;           jmp   main_ω
.Ldisjunction_α_589_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_589_1
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 40], rax;           jmp   main_ω
.Ldisjunction_α_589_1:                                                        jmp   main_ω
n00107_disjunction_β:     mov              r11, 206
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0;                              je    main_ω
                                                                              jmp   n00109_goto_β
.Ldisjunction_γ_539_af: mov              r11, 206
.Ldisjunction_ω_539_af: mov              r11, 206
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 1;                              je    n00110_var_ref_α
                                                                              jmp   main_ω
                        .size            n00107_disjunction_bx, .-n00107_disjunction_bx
                        .type            n00111_var_bx, @function
n00111_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00111_var_α:             mov              r11, 207
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 296], rax;          jmp   .Ldisjunction_γ_539_as
n00111_var_β:             mov              r11, 207;                            jmp   main_ω
                        .size            n00111_var_bx, .-n00111_var_bx
                        .type            n00110_var_ref_bx, @function
n00110_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00110_var_ref_α:         mov              r11, 208
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n00112_deref_α
n00110_var_ref_β:         mov              r11, 208;                            jmp   main_ω
                        .size            n00110_var_ref_bx, .-n00110_var_ref_bx
                        .type            n00112_deref_bx, @function
n00112_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00112_deref_α:           mov              r11, 209
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    main_ω
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n00113_line_mark_α
                        .size            n00112_deref_bx, .-n00112_deref_bx
                        .type            n00113_line_mark_bx, @function
n00113_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00113_line_mark_α:       mov              r11, 210
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 24;             jmp   n00114_call_icon_α
                        .size            n00113_line_mark_bx, .-n00113_line_mark_bx
                        .type            n00114_call_icon_bx, @function
n00114_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00114_call_icon_α:       mov              r11, 211
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lcall_icon_α_rkfn598:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn598]
                        lea              rsi, [rbp + 336]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196728
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n00115_assign_α
n00114_call_icon_β:       mov              r11, 211;                            jmp   main_ω
                        .size            n00114_call_icon_bx, .-n00114_call_icon_bx
                        .type            n00115_assign_bx, @function
n00115_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00115_assign_α:          mov              r11, 212
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx;         jmp   n00116_line_mark_α
                        .size            n00115_assign_bx, .-n00115_assign_bx
                        .type            n00116_line_mark_bx, @function
n00116_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00116_line_mark_α:       mov              r11, 213
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 25;             jmp   n00117_disjunction_α
                        .size            n00116_line_mark_bx, .-n00116_line_mark_bx
                        .type            n00117_disjunction_bx, @function
n00117_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00117_disjunction_α:     mov              r11, 214
                        mov              qword ptr [rbp + 608], 0
                        mov              qword ptr [rbp + 616], 0
                        mov              dword ptr [rbp + 624], 0;            jmp   n00118_var_ref_α
.Ldisjunction_γ_547_as: mov              r11, 214
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_603_0
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax;          jmp   n00119_assign_α
.Ldisjunction_α_603_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_603_1
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 616], rax;          jmp   n00119_assign_α
.Ldisjunction_α_603_1:                                                        jmp   n00119_assign_α
n00117_disjunction_β:     mov              r11, 214
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_547_af
                                                                              jmp   .Ldisjunction_ω_547_af
.Ldisjunction_γ_547_af: mov              r11, 214
.Ldisjunction_ω_547_af: mov              r11, 214
                        add              dword ptr [rbp + 624], 1
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 1;                              je    n00120_lit_string_α
                                                                              jmp   n00121_line_mark_α
                        .size            n00117_disjunction_bx, .-n00117_disjunction_bx
                        .type            n00119_assign_bx, @function
n00119_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00119_assign_α:          mov              r11, 215
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx;         jmp   n00121_line_mark_α
                        .size            n00119_assign_bx, .-n00119_assign_bx
                        .type            n00121_line_mark_bx, @function
n00121_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00121_line_mark_α:       mov              r11, 216
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 26;             jmp   n00122_var_ref_α
                        .size            n00121_line_mark_bx, .-n00121_line_mark_bx
                        .type            n00122_var_ref_bx, @function
n00122_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00122_var_ref_α:         mov              r11, 217
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1072]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx;          jmp   n00123_var_ref_α
                        .size            n00122_var_ref_bx, .-n00122_var_ref_bx
                        .type            n00123_var_ref_bx, @function
n00123_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00123_var_ref_α:         mov              r11, 218
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n00124_deref_α
                        .size            n00123_var_ref_bx, .-n00123_var_ref_bx
                        .type            n00124_deref_bx, @function
n00124_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00124_deref_α:           mov              r11, 219
                        mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00110_var_ref_α
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx;          jmp   n00125_deref_α
                        .size            n00124_deref_bx, .-n00124_deref_bx
                        .type            n00125_deref_bx, @function
n00125_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00125_deref_α:           mov              r11, 220
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00110_var_ref_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n00126_line_mark_α
                        .size            n00125_deref_bx, .-n00125_deref_bx
                        .type            n00126_line_mark_bx, @function
n00126_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00126_line_mark_α:       mov              r11, 221
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 26;             jmp   n00127_call_proc_staged_α
                        .size            n00126_line_mark_bx, .-n00126_line_mark_bx
                        .type            n00127_call_proc_staged_bx, @function
n00127_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00127_call_proc_staged_α:
                        mov              r11, 222
                        lea              rsi, [rbp + 560]
                        lea              rdx, [rbp + 576]
                        call             dofile_dcα;                          jmp   .Lcall_proc_staged_α_616_2
.Lcall_proc_staged_α_616_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_616_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
.Lcall_proc_staged_α_616_29:
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              al, 104;                             je    n00110_var_ref_α
                                                                              jmp   n00128_deref_α
n00127_call_proc_staged_β:
                        mov              r11, 222;                            jmp   n00110_var_ref_α
.Lcall_proc_staged_β_616_0:
                        .quad            .Lcall_proc_staged_β_616_0_s
.Lcall_proc_staged_β_616_0_s:
                        .string          "dofile"
                        .size            n00127_call_proc_staged_bx, .-n00127_call_proc_staged_bx
                        .type            n00128_deref_bx, @function
n00128_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00128_deref_α:           mov              r11, 223
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00110_var_ref_α
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n00129_conjunction_α
                        .size            n00128_deref_bx, .-n00128_deref_bx
                        .type            n00129_conjunction_bx, @function
n00129_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00129_conjunction_α:     mov              r11, 224
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 424], rax;          jmp   n00110_var_ref_α
n00129_conjunction_β:     mov              r11, 224;                            jmp   n00110_var_ref_α
                        .size            n00129_conjunction_bx, .-n00129_conjunction_bx
                        .type            n00109_goto_bx, @function
n00109_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00109_goto_α:            mov              r11, 225;                            jmp   n00110_var_ref_α
n00109_goto_β:            mov              r11, 225;                            jmp   n00110_var_ref_α
                        .size            n00109_goto_bx, .-n00109_goto_bx
                        .type            n00120_lit_string_bx, @function
n00120_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00120_lit_string_α:      mov              r11, 226
                        mov              qword ptr [rbp + 816], 2             # result
                        mov              dword ptr [rbp + 820], 12
                        mov              rax, qword ptr [rip + .Llit_string_α_620_0]
                        mov              qword ptr [rbp + 824], rax;          jmp   n00130_var_ref_α
n00120_lit_string_β:      mov              r11, 226;                            jmp   .Ldisjunction_ω_547_af
.Llit_string_α_620_0:   .quad            .Llit_string_α_620_0_s
.Llit_string_α_620_0_s: .string          "cannot open "
                        .size            n00120_lit_string_bx, .-n00120_lit_string_bx
                        .type            n00130_var_ref_bx, @function
n00130_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00130_var_ref_α:         mov              r11, 227
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx;          jmp   n00131_deref_α
                        .size            n00130_var_ref_bx, .-n00130_var_ref_bx
                        .type            n00131_deref_bx, @function
n00131_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00131_deref_α:           mov              r11, 228
                        mov              rdi, qword ptr [rbp + 848]
                        mov              rsi, qword ptr [rbp + 856]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_547_af
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx;          jmp   n00132_line_mark_α
                        .size            n00131_deref_bx, .-n00131_deref_bx
                        .type            n00132_line_mark_bx, @function
n00132_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00132_line_mark_α:       mov              r11, 229
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 25;             jmp   n00133_call_icon_α
                        .size            n00132_line_mark_bx, .-n00132_line_mark_bx
                        .type            n00133_call_icon_bx, @function
n00133_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00133_call_icon_α:       mov              r11, 230
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lcall_icon_α_rkfn627:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn627]
                        lea              rsi, [rbp + 752]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_547_af
                                                                              jmp   .Ldisjunction_γ_547_as
n00133_call_icon_β:       mov              r11, 230;                            jmp   .Ldisjunction_ω_547_af
                        .size            n00133_call_icon_bx, .-n00133_call_icon_bx
                        .type            n00118_var_ref_bx, @function
n00118_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00118_var_ref_α:         mov              r11, 231
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n00134_deref_α
n00118_var_ref_β:         mov              r11, 231;                            jmp   .Ldisjunction_ω_547_af
                        .size            n00118_var_ref_bx, .-n00118_var_ref_bx
                        .type            n00134_deref_bx, @function
n00134_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00134_deref_α:           mov              r11, 232
                        mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_547_af
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx;          jmp   n00135_line_mark_α
                        .size            n00134_deref_bx, .-n00134_deref_bx
                        .type            n00135_line_mark_bx, @function
n00135_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00135_line_mark_α:       mov              r11, 233
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 25;             jmp   n00136_call_icon_α
                        .size            n00135_line_mark_bx, .-n00135_line_mark_bx
                        .type            n00136_call_icon_bx, @function
n00136_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00136_call_icon_α:       mov              r11, 234
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 664], rax
                        .section         .rodata
.Lcall_icon_α_rkfn634:  .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn634]
                        lea              rsi, [rbp + 656]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262287
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_547_af
                                                                              jmp   .Ldisjunction_γ_547_as
n00136_call_icon_β:       mov              r11, 234;                            jmp   .Ldisjunction_ω_547_af
                        .size            n00136_call_icon_bx, .-n00136_call_icon_bx
                        .type            n00108_var_bx, @function
n00108_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00108_var_α:             mov              r11, 235
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 264], rax;          jmp   n00137_unop_α
n00108_var_β:             mov              r11, 235;                            jmp   .Ldisjunction_ω_539_af
                        .size            n00108_var_bx, .-n00108_var_bx
                        .type            n00137_unop_bx, @function
n00137_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00137_unop_α:            mov              r11, 236
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n00138_lit_integer_α
                        .size            n00137_unop_bx, .-n00137_unop_bx
                        .type            n00138_lit_integer_bx, @function
n00138_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00138_lit_integer_α:     mov              r11, 237
                        mov              qword ptr [rbp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_638_0]
                        mov              qword ptr [rbp + 280], rax;          jmp   n00139_binop_test_α
.Llit_integer_α_638_0:  .quad            0
                        .size            n00138_lit_integer_bx, .-n00138_lit_integer_bx
                        .type            n00139_binop_test_bx, @function
n00139_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00139_binop_test_α:      mov              r11, 238
                        mov              eax, dword ptr [rbp + 240]
                        cmp              al, 112;                             je    .Lbinop_test_α_639_0
                        mov              eax, dword ptr [rbp + 272]
                        cmp              al, 112;                             je    .Lbinop_test_α_639_0
                        mov              eax, dword ptr [rbp + 240]
                        cmp              al, 3;                               jne   .Lbinop_test_α_639_2
                        mov              eax, dword ptr [rbp + 272]
                        cmp              al, 3;                               jne   .Lbinop_test_α_639_2
.Lbinop_test_α_639_1:   mov              rax, qword ptr [rbp + 248]
                        mov              rcx, qword ptr [rbp + 280]
                        cmp              rax, rcx;                            jne   .Ldisjunction_ω_539_af
                        mov              rcx, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rcx
                        mov              rcx, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rcx;          jmp   n00140_kw_icon_α
.Lbinop_test_α_639_0:   mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        mov              r8d, 9
                        lea              r9, [rbp + 224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lbinop_test_α_639_2
                        cmp              eax, 1;                              je    .Ldisjunction_ω_539_af
                                                                              jmp   n00140_kw_icon_α
.Lbinop_test_α_639_2:   mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    .Ldisjunction_ω_539_af
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        lea              r8, [rbp + 224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_val_coerce@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00140_kw_icon_α
                        .size            n00139_binop_test_bx, .-n00139_binop_test_bx
                        .type            n00140_kw_icon_bx, @function
n00140_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00140_kw_icon_α:         mov              r11, 239
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_640_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    main_ω
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx;          jmp   n00141_lit_string_α
n00140_kw_icon_β:         mov              r11, 239;                            jmp   main_ω
.Lkw_icon_α_640_0:      .quad            .Lkw_icon_α_640_0_s
.Lkw_icon_α_640_0_s:    .string          "&input"
                        .size            n00140_kw_icon_bx, .-n00140_kw_icon_bx
                        .type            n00141_lit_string_bx, @function
n00141_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00141_lit_string_α:      mov              r11, 240
                        mov              qword ptr [rbp + 192], 2             # result
                        mov              dword ptr [rbp + 196], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_641_0]
                        mov              qword ptr [rbp + 200], rax;          jmp   n00142_line_mark_α
.Llit_string_α_641_0:   .quad            .Llit_string_α_641_0_s
.Llit_string_α_641_0_s: .string          "stdin"
                        .size            n00141_lit_string_bx, .-n00141_lit_string_bx
                        .type            n00142_line_mark_bx, @function
n00142_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00142_line_mark_α:       mov              r11, 241
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 23;             jmp   n00143_call_proc_staged_α
                        .size            n00142_line_mark_bx, .-n00142_line_mark_bx
                        .type            n00143_call_proc_staged_bx, @function
n00143_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00143_call_proc_staged_α:
                        mov              r11, 242
                        lea              rsi, [rbp + 160]
                        lea              rdx, [rbp + 192]
                        call             dofile_dcα;                          jmp   .Lcall_proc_staged_α_645_2
.Lcall_proc_staged_α_645_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_645_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
.Lcall_proc_staged_α_645_29:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n00144_deref_α
n00143_call_proc_staged_β:
                        mov              r11, 242;                            jmp   main_ω
.Lcall_proc_staged_β_645_0:
                        .quad            .Lcall_proc_staged_β_645_0_s
.Lcall_proc_staged_β_645_0_s:
                        .string          "dofile"
                        .size            n00143_call_proc_staged_bx, .-n00143_call_proc_staged_bx
                        .type            n00144_deref_bx, @function
n00144_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00144_deref_α:           mov              r11, 243
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    main_ω
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx;           jmp   .Ldisjunction_γ_539_as
n00144_deref_β:           mov              r11, 243;                            jmp   main_ω
                        .size            n00144_deref_bx, .-n00144_deref_bx
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
                        cmp              rax, 0;                              je    .Lmain_α_646_248
                        .section         .rodata
.Licn_trace_nm647:      .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm647]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_646_248:       mov              rsp, rbx
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
                        cmp              rax, 0;                              je    .Lmain_α_646_249
                        .section         .rodata
.Licn_trace_nm648:      .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_646_249:       mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_ign0:         .string          "main"
.Lstartup_ign1:         .string          "dofile"
.Lstartup_ign2:         .string          "get"
.Lstartup_ign3:         .string          "open"
.Lstartup_ign4:         .string          "stop"
.Lstartup_ign5:         .string          "write"
.Lstartup_ign6:         .string          "writes"
.Lstartup_ign7:         .string          "right"
.Lstartup_ign8:         .string          "integer"
.Lstartup_ign9:         .string          "log"
.Lstartup_ign10:        .string          "sort"
.Lstartup_ign11:        .string          "sqrt"
.Lstartup_ign12:        .string          "read"
.Lstartup_ign13:        .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_ign0]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign1]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign2]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign3]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign4]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign5]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign6]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign7]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign8]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign9]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign10]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign11]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign12]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign13]
                        call             rt_icn_global_note@PLT
                        .section         .rodata
.Lstartup_rootnm:       .string          "main"
.Lstartup_ipp00145_0:    .string          "args"
                        .align           8
.Lstartup_ipnames9000:
                        .quad            .Lstartup_ipp00145_0
                        .quad            0
.Lstartup_iln00145_0:    .string          "a"
.Lstartup_iln00145_1:    .string          "f"
.Lstartup_iln00145_2:    .string          "&input"
                        .align           8
.Lstartup_ilnames9000:
                        .quad            .Lstartup_iln00145_0
                        .quad            .Lstartup_iln00145_1
                        .quad            .Lstartup_iln00145_2
                        .quad            0
                        .align           4
.Lstartup_iloffs9000:
                        .long            1056
                        .long            1072
                        .long            -1
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_rootnm]
                        lea              rsi, [rip + .Lstartup_ipnames9000]
                        mov              edx, 1
                        call             rt_proc_set_loc_params@PLT
                        lea              rdi, [rip + .Lstartup_rootnm]
                        lea              rsi, [rip + .Lstartup_ilnames9000]
                        mov              edx, 3
                        call             rt_proc_set_locals@PLT
                        lea              rdi, [rip + .Lstartup_rootnm]
                        lea              rsi, [rip + .Lstartup_iloffs9000]
                        mov              edx, 3
                        call             rt_proc_set_local_offs@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "dofile"
.Lstartup_ipp0_0:       .string          "f"
.Lstartup_ipp0_1:       .string          "name"
                        .align           8
.Lstartup_ipnames0:
                        .quad            .Lstartup_ipp0_0
                        .quad            .Lstartup_ipp0_1
                        .quad            0
.Lstartup_iln0_0:       .string          "line"
.Lstartup_iln0_1:       .string          "label"
.Lstartup_iln0_2:       .string          "overhead"
.Lstartup_iln0_3:       .string          "nothings"
.Lstartup_iln0_4:       .string          "others"
.Lstartup_iln0_5:       .string          "n"
.Lstartup_iln0_6:       .string          "t"
.Lstartup_iln0_7:       .string          "v"
.Lstartup_iln0_8:       .string          "&e"
                        .align           8
.Lstartup_ilnames0:
                        .quad            .Lstartup_iln0_0
                        .quad            .Lstartup_iln0_1
                        .quad            .Lstartup_iln0_2
                        .quad            .Lstartup_iln0_3
                        .quad            .Lstartup_iln0_4
                        .quad            .Lstartup_iln0_5
                        .quad            .Lstartup_iln0_6
                        .quad            .Lstartup_iln0_7
                        .quad            .Lstartup_iln0_8
                        .quad            0
                        .align           4
.Lstartup_iloffs0:
                        .long            4112
                        .long            4144
                        .long            4096
                        .long            4080
                        .long            4048
                        .long            4128
                        .long            4032
                        .long            4064
                        .long            -1
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__dofile
                        .quad            dofile_dcα
                        .quad            0
                        .quad            .Lstartup_ipnames0
                        .long            2
                        .long            0
                        .long            4160
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + .Lstartup_ipnames0]
                        mov              edx, 2
                        call             rt_proc_set_loc_params@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + .Lstartup_ilnames0]
                        mov              edx, 9
                        call             rt_proc_set_locals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + .Lstartup_iloffs0]
                        mov              edx, 9
                        call             rt_proc_set_local_offs@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
