                        .intel_syntax    noprefix
                        .text
                        .file            1 "/home/claude_coo/corpus/benchmarks/icon/micsum.icn"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
FN__dofile:
                        sub              rsp, 3600
                        mov              qword ptr [rsp + 3592], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 3248
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
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Ldofile_α_0_247
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
                        .type            n1_make_list_bx, @function
n1_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_make_list_α:         mov              r11, 1
                        lea              rdi, [rbp + 3248]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx;         jmp   n2_assign_α
                        .size            n1_make_list_bx, .-n1_make_list_bx
                        .type            n2_assign_bx, @function
n2_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:            mov              r11, 2
                        mov              rax, qword ptr [rbp + 3232]
                        mov              rdx, qword ptr [rbp + 3240]
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx;         jmp   n3_make_list_α
                        .size            n2_assign_bx, .-n2_assign_bx
                        .type            n3_make_list_bx, @function
n3_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_make_list_α:         mov              r11, 3
                        lea              rdi, [rbp + 3232]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx;         jmp   n4_assign_α
                        .size            n3_make_list_bx, .-n3_make_list_bx
                        .type            n4_assign_bx, @function
n4_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:            mov              r11, 4
                        mov              rax, qword ptr [rbp + 3216]
                        mov              rdx, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx;         jmp   n5_var_ref_α
                        .size            n4_assign_bx, .-n4_assign_bx
                        .type            n5_var_ref_bx, @function
n5_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              r11, 5
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx;         jmp   n6_deref_α
                        .size            n5_var_ref_bx, .-n5_var_ref_bx
                        .type            n6_deref_bx, @function
n6_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_deref_α:             mov              r11, 6
                        mov              rdi, qword ptr [rbp + 2256]
                        mov              rsi, qword ptr [rbp + 2264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n48_var_α
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx;         jmp   n7_call_icon_α
                        .size            n6_deref_bx, .-n6_deref_bx
                        .type            n7_call_icon_bx, @function
n7_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_call_icon_α:         mov              r11, 7
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2232], rax
                        .section         .rodata
.Lcall_icon_α_rkfn161:  .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn161]
                        lea              rsi, [rbp + 2224]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262295
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                        cmp              al, 104;                             je    n48_var_α
                                                                              jmp   n8_assign_α
n7_call_icon_β:         mov              r11, 7;                              jmp   n48_var_α
                        .size            n7_call_icon_bx, .-n7_call_icon_bx
                        .type            n8_assign_bx, @function
n8_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:            mov              r11, 8
                        mov              rax, qword ptr [rbp + 2208]
                        mov              rdx, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx;         jmp   n9_var_α
                        .size            n8_assign_bx, .-n8_assign_bx
                        .type            n9_var_bx, @function
n9_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:               mov              r11, 9
                        mov              rax, qword ptr [rbp + 3328]
                        mov              qword ptr [rbp + 3200], rax
                        mov              rax, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 3208], rax;         jmp   n10_scan_enter_α
                        .size            n9_var_bx, .-n9_var_bx
                        .type            n10_scan_enter_bx, @function
n10_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_scan_enter_α:       mov              r11, 10
                        mov              qword ptr [rbp + 2304], r13
                        mov              qword ptr [rbp + 2312], r14
                        mov              qword ptr [rbp + 2320], r15
                        mov              rdi, qword ptr [rbp + 3200]
                        mov              rsi, qword ptr [rbp + 3208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n11_lit_charset_α
                        .size            n10_scan_enter_bx, .-n10_scan_enter_bx
                        .type            n11_lit_charset_bx, @function
n11_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_charset_α:      mov              r11, 11
                        mov              qword ptr [rbp + 3168], 2            # result
                        mov              dword ptr [rbp + 3172], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_167_0]
                        mov              qword ptr [rbp + 3176], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_167_0]
                        mov              rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_register@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdx
                        pop              rax;                                 jmp   n12_scan_many_α
.Llit_charset_α_167_0:  .quad            .Llit_charset_α_167_0_s
.Llit_charset_α_167_0_s:
                        .string          " "
                        .size            n11_lit_charset_bx, .-n11_lit_charset_bx
                        .type            n12_scan_many_bx, @function
n12_scan_many_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_scan_many_α:        mov              r11, 12
                        mov              eax, r14d
.Lscan_many_α_169_0:    cmp              eax, r15d;                           jge   .Lscan_many_α_169_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lscan_many_α_169_2]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_member@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lscan_many_α_169_1
                        add              eax, 1;                              jmp   .Lscan_many_α_169_0
.Lscan_many_α_169_1:    cmp              eax, r14d;                           je    n14_lit_charset_α
                        mov              qword ptr [rbp + 3152], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 3160], rcx;         jmp   n13_scan_tab_α
n12_scan_many_β:        mov              r11, 12;                             jmp   n14_lit_charset_α
.Lscan_many_α_169_2:    .quad            .Lscan_many_α_169_2_s
.Lscan_many_α_169_2_s:  .string          " "
                        .size            n12_scan_many_bx, .-n12_scan_many_bx
                        .type            n13_scan_tab_bx, @function
n13_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_scan_tab_α:         mov              r11, 13
                        mov              rdi, qword ptr [rbp + 3152]
                        mov              rsi, qword ptr [rbp + 3160]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        cmp              rax, 1;                              jge   .Lscan_tab_α_171_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_171_0:     cmp              rax, 1;                              jl    n14_lit_charset_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n14_lit_charset_α
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
                        mov              qword ptr [rbp + 3128], rdx;         jmp   n14_lit_charset_α
n13_scan_tab_β:         mov              r11, 13
                        mov              r14, qword ptr [rbp + 3136];         jmp   n14_lit_charset_α
                        .size            n13_scan_tab_bx, .-n13_scan_tab_bx
                        .type            n14_lit_charset_bx, @function
n14_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_charset_α:      mov              r11, 14
                        mov              qword ptr [rbp + 3088], 2            # result
                        mov              dword ptr [rbp + 3092], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_172_0]
                        mov              qword ptr [rbp + 3096], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_172_0]
                        mov              rsi, 11
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_register@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdx
                        pop              rax;                                 jmp   n15_scan_many_α
.Llit_charset_α_172_0:  .quad            .Llit_charset_α_172_0_s
.Llit_charset_α_172_0_s:
                        .string          "-0123456789"
                        .size            n14_lit_charset_bx, .-n14_lit_charset_bx
                        .type            n15_scan_many_bx, @function
n15_scan_many_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_scan_many_α:        mov              r11, 15
                        mov              eax, r14d
.Lscan_many_α_174_0:    cmp              eax, r15d;                           jge   .Lscan_many_α_174_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lscan_many_α_174_2]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_member@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lscan_many_α_174_1
                        add              eax, 1;                              jmp   .Lscan_many_α_174_0
.Lscan_many_α_174_1:    cmp              eax, r14d;                           je    n19_lit_charset_α
                        mov              qword ptr [rbp + 3072], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 3080], rcx;         jmp   n16_scan_tab_α
n15_scan_many_β:        mov              r11, 15;                             jmp   n19_lit_charset_α
.Lscan_many_α_174_2:    .quad            .Lscan_many_α_174_2_s
.Lscan_many_α_174_2_s:  .string          "-0123456789"
                        .size            n15_scan_many_bx, .-n15_scan_many_bx
                        .type            n16_scan_tab_bx, @function
n16_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_scan_tab_α:         mov              r11, 16
                        mov              rdi, qword ptr [rbp + 3072]
                        mov              rsi, qword ptr [rbp + 3080]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        cmp              rax, 1;                              jge   .Lscan_tab_α_176_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_176_0:     cmp              rax, 1;                              jl    n19_lit_charset_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n19_lit_charset_α
                        mov              qword ptr [rbp + 3056], r14
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
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx;         jmp   n17_call_icon_α
n16_scan_tab_β:         mov              r11, 16
                        mov              r14, qword ptr [rbp + 3056];         jmp   n19_lit_charset_α
                        .size            n16_scan_tab_bx, .-n16_scan_tab_bx
                        .type            n17_call_icon_bx, @function
n17_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_call_icon_α:        mov              r11, 17
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 3016], rax
                        .section         .rodata
.Lcall_icon_α_rkfn178:  .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn178]
                        lea              rsi, [rbp + 3008]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458878
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        cmp              al, 104;                             je    n16_scan_tab_β
                                                                              jmp   n18_assign_α
n17_call_icon_β:        mov              r11, 17;                             jmp   n16_scan_tab_β
                        .size            n17_call_icon_bx, .-n17_call_icon_bx
                        .type            n18_assign_bx, @function
n18_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:           mov              r11, 18
                        mov              rax, qword ptr [rbp + 2992]
                        mov              rdx, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx;         jmp   n19_lit_charset_α
                        .size            n18_assign_bx, .-n18_assign_bx
                        .type            n19_lit_charset_bx, @function
n19_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_charset_α:      mov              r11, 19
                        mov              qword ptr [rbp + 2960], 2            # result
                        mov              dword ptr [rbp + 2964], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_180_0]
                        mov              qword ptr [rbp + 2968], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_180_0]
                        mov              rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_register@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdx
                        pop              rax;                                 jmp   n20_scan_many_α
.Llit_charset_α_180_0:  .quad            .Llit_charset_α_180_0_s
.Llit_charset_α_180_0_s:
                        .string          " "
                        .size            n19_lit_charset_bx, .-n19_lit_charset_bx
                        .type            n20_scan_many_bx, @function
n20_scan_many_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_scan_many_α:        mov              r11, 20
                        mov              eax, r14d
.Lscan_many_α_182_0:    cmp              eax, r15d;                           jge   .Lscan_many_α_182_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lscan_many_α_182_2]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_member@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lscan_many_α_182_1
                        add              eax, 1;                              jmp   .Lscan_many_α_182_0
.Lscan_many_α_182_1:    cmp              eax, r14d;                           je    n22_lit_integer_α
                        mov              qword ptr [rbp + 2944], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 2952], rcx;         jmp   n21_scan_tab_α
n20_scan_many_β:        mov              r11, 20;                             jmp   n22_lit_integer_α
.Lscan_many_α_182_2:    .quad            .Lscan_many_α_182_2_s
.Lscan_many_α_182_2_s:  .string          " "
                        .size            n20_scan_many_bx, .-n20_scan_many_bx
                        .type            n21_scan_tab_bx, @function
n21_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_scan_tab_α:         mov              r11, 21
                        mov              rdi, qword ptr [rbp + 2944]
                        mov              rsi, qword ptr [rbp + 2952]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        cmp              rax, 1;                              jge   .Lscan_tab_α_184_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_184_0:     cmp              rax, 1;                              jl    n22_lit_integer_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n22_lit_integer_α
                        mov              qword ptr [rbp + 2928], r14
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
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx;         jmp   n22_lit_integer_α
n21_scan_tab_β:         mov              r11, 21
                        mov              r14, qword ptr [rbp + 2928];         jmp   n22_lit_integer_α
                        .size            n21_scan_tab_bx, .-n21_scan_tab_bx
                        .type            n22_lit_integer_bx, @function
n22_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:      mov              r11, 22
                        mov              qword ptr [rbp + 2896], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_185_0]
                        mov              qword ptr [rbp + 2904], rax;         jmp   n23_scan_tab_α
.Llit_integer_α_185_0:  .quad            0
                        .size            n22_lit_integer_bx, .-n22_lit_integer_bx
                        .type            n23_scan_tab_bx, @function
n23_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_scan_tab_α:         mov              r11, 23
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_tab_α_187_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_187_0:     cmp              rax, 1;                              jl    n25_disjunction_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n25_disjunction_α
                        mov              qword ptr [rbp + 2880], r14
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
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx;         jmp   n24_assign_α
n23_scan_tab_β:         mov              r11, 23
                        mov              r14, qword ptr [rbp + 2880];         jmp   n25_disjunction_α
                        .size            n23_scan_tab_bx, .-n23_scan_tab_bx
                        .type            n24_assign_bx, @function
n24_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:           mov              r11, 24
                        mov              rax, qword ptr [rbp + 2864]
                        mov              rdx, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx;         jmp   n25_disjunction_α
                        .size            n24_assign_bx, .-n24_assign_bx
                        .type            n25_disjunction_bx, @function
n25_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_disjunction_α:      mov              r11, 25
                        mov              qword ptr [rbp + 2384], 0
                        mov              qword ptr [rbp + 2392], 0
                        mov              dword ptr [rbp + 2400], 0;           jmp   n42_var_α
.Ldisjunction_γ_25_as:  mov              r11, 25
                        mov              eax, dword ptr [rbp + 2400]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_190_0
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2392], rax;         jmp   n26_conjunction_α
.Ldisjunction_α_190_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_190_1
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2392], rax;         jmp   n26_conjunction_α
.Ldisjunction_α_190_1:                                                        jmp   n26_conjunction_α
n25_disjunction_β:      mov              r11, 25
                        mov              eax, dword ptr [rbp + 2400]
                        cmp              eax, 0;                              je    n47_scan_α
                                                                              jmp   n28_disjunction_β
.Ldisjunction_γ_25_af:  mov              r11, 25
.Ldisjunction_ω_25_af:  mov              r11, 25
                        add              dword ptr [rbp + 2400], 1
                        mov              eax, dword ptr [rbp + 2400]
                        cmp              eax, 1;                              je    n28_disjunction_α
                                                                              jmp   n47_scan_α
                        .size            n25_disjunction_bx, .-n25_disjunction_bx
                        .type            n26_conjunction_bx, @function
n26_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_conjunction_α:      mov              r11, 26
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2376], rax;         jmp   n27_scan_α
n26_conjunction_β:      mov              r11, 26;                             jmp   n47_scan_α
                        .size            n26_conjunction_bx, .-n26_conjunction_bx
                        .type            n27_scan_bx, @function
n27_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_scan_α:             mov              r11, 27
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2344], rax
                        mov              rdi, qword ptr [rbp + 2304]
                        mov              rsi, qword ptr [rbp + 2312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 2304]
                        mov              r14, qword ptr [rbp + 2312]
                        mov              r15, qword ptr [rbp + 2320];         jmp   n5_var_ref_α
n27_scan_β:             mov              r11, 27
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
                        mov              r14, rax;                            jmp   n25_disjunction_β
                                                                              jmp   n5_var_ref_α
                        .size            n27_scan_bx, .-n27_scan_bx
                        .type            n28_disjunction_bx, @function
n28_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_disjunction_α:      mov              r11, 28
                        mov              qword ptr [rbp + 2512], 0
                        mov              qword ptr [rbp + 2520], 0
                        mov              dword ptr [rbp + 2528], 0;           jmp   n34_var_α
.Ldisjunction_γ_28_as:  mov              r11, 28
                        mov              eax, dword ptr [rbp + 2528]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_195_0
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2520], rax;         jmp   .Ldisjunction_γ_25_as
.Ldisjunction_α_195_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_195_1
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2520], rax;         jmp   .Ldisjunction_γ_25_as
.Ldisjunction_α_195_1:                                                        jmp   .Ldisjunction_γ_25_as
n28_disjunction_β:      mov              r11, 28
                        mov              eax, dword ptr [rbp + 2528]
                        cmp              eax, 0;                              je    n47_scan_α
                                                                              jmp   n47_scan_α
.Ldisjunction_γ_28_af:  mov              r11, 28
.Ldisjunction_ω_28_af:  mov              r11, 28
                        add              dword ptr [rbp + 2528], 1
                        mov              eax, dword ptr [rbp + 2528]
                        cmp              eax, 1;                              je    n29_var_ref_α
                                                                              jmp   n47_scan_α
                        .size            n28_disjunction_bx, .-n28_disjunction_bx
                        .type            n29_var_ref_bx, @function
n29_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:          mov              r11, 29
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3264]
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx;         jmp   n30_var_ref_α
n29_var_ref_β:          mov              r11, 29;                             jmp   n47_scan_α
                        .size            n29_var_ref_bx, .-n29_var_ref_bx
                        .type            n30_var_ref_bx, @function
n30_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3344]
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx;         jmp   n31_deref_α
                        .size            n30_var_ref_bx, .-n30_var_ref_bx
                        .type            n31_deref_bx, @function
n31_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_deref_α:            mov              r11, 31
                        mov              rdi, qword ptr [rbp + 2800]
                        mov              rsi, qword ptr [rbp + 2808]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n47_scan_α
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx;         jmp   n32_deref_α
                        .size            n31_deref_bx, .-n31_deref_bx
                        .type            n32_deref_bx, @function
n32_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_deref_α:            mov              r11, 32
                        mov              rdi, qword ptr [rbp + 2816]
                        mov              rsi, qword ptr [rbp + 2824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n47_scan_α
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx;         jmp   n33_call_icon_α
                        .size            n32_deref_bx, .-n32_deref_bx
                        .type            n33_call_icon_bx, @function
n33_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_call_icon_α:        mov              r11, 33
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2776], rax
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 2760], rax
                        .section         .rodata
.Lcall_icon_α_rkfn203:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn203]
                        lea              rsi, [rbp + 2752]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                        cmp              al, 104;                             je    n47_scan_α
                                                                              jmp   .Ldisjunction_γ_28_as
n33_call_icon_β:        mov              r11, 33;                             jmp   n47_scan_α
                        .size            n33_call_icon_bx, .-n33_call_icon_bx
                        .type            n34_var_bx, @function
n34_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:              mov              r11, 34
                        mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 2696], rax;         jmp   n35_lit_string_α
n34_var_β:              mov              r11, 34;                             jmp   .Ldisjunction_ω_28_af
                        .size            n34_var_bx, .-n34_var_bx
                        .type            n35_lit_string_bx, @function
n35_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:       mov              r11, 35
                        mov              qword ptr [rbp + 2704], 2            # result
                        mov              dword ptr [rbp + 2708], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_206_0]
                        mov              qword ptr [rbp + 2712], rax;         jmp   n36_binop_test_α
.Llit_string_α_206_0:   .quad            .Llit_string_α_206_0_s
.Llit_string_α_206_0_s: .string          "nothing"
                        .size            n35_lit_string_bx, .-n35_lit_string_bx
                        .type            n36_binop_test_bx, @function
n36_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_binop_test_α:       mov              r11, 36
                        mov              rdi, qword ptr [rbp + 3360]
                        mov              rsi, qword ptr [rbp + 3368]
                        mov              rdx, qword ptr [rbp + 2704]
                        mov              rcx, qword ptr [rbp + 2712]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    .Ldisjunction_ω_28_af
                        mov              rdi, qword ptr [rbp + 2704]
                        mov              rsi, qword ptr [rbp + 2712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n37_var_ref_α
                        .size            n36_binop_test_bx, .-n36_binop_test_bx
                        .type            n37_var_ref_bx, @function
n37_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_var_ref_α:          mov              r11, 37
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3296]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx;         jmp   n38_var_ref_α
                        .size            n37_var_ref_bx, .-n37_var_ref_bx
                        .type            n38_var_ref_bx, @function
n38_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:          mov              r11, 38
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3344]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx;         jmp   n39_deref_α
                        .size            n38_var_ref_bx, .-n38_var_ref_bx
                        .type            n39_deref_bx, @function
n39_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_deref_α:            mov              r11, 39
                        mov              rdi, qword ptr [rbp + 2608]
                        mov              rsi, qword ptr [rbp + 2616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n47_scan_α
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx;         jmp   n40_deref_α
                        .size            n39_deref_bx, .-n39_deref_bx
                        .type            n40_deref_bx, @function
n40_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_deref_α:            mov              r11, 40
                        mov              rdi, qword ptr [rbp + 2624]
                        mov              rsi, qword ptr [rbp + 2632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n47_scan_α
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx;         jmp   n41_call_icon_α
                        .size            n40_deref_bx, .-n40_deref_bx
                        .type            n41_call_icon_bx, @function
n41_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_call_icon_α:        mov              r11, 41
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2584], rax
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2568], rax
                        .section         .rodata
.Lcall_icon_α_rkfn215:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn215]
                        lea              rsi, [rbp + 2560]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        cmp              al, 104;                             je    n47_scan_α
                                                                              jmp   .Ldisjunction_γ_28_as
n41_call_icon_β:        mov              r11, 41;                             jmp   n47_scan_α
                        .size            n41_call_icon_bx, .-n41_call_icon_bx
                        .type            n42_var_bx, @function
n42_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:              mov              r11, 42
                        mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 2472], rax;         jmp   n43_lit_string_α
n42_var_β:              mov              r11, 42;                             jmp   .Ldisjunction_ω_25_af
                        .size            n42_var_bx, .-n42_var_bx
                        .type            n43_lit_string_bx, @function
n43_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:       mov              r11, 43
                        mov              qword ptr [rbp + 2480], 2            # result
                        mov              dword ptr [rbp + 2484], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_218_0]
                        mov              qword ptr [rbp + 2488], rax;         jmp   n44_binop_test_α
.Llit_string_α_218_0:   .quad            .Llit_string_α_218_0_s
.Llit_string_α_218_0_s: .string          "overhead"
                        .size            n43_lit_string_bx, .-n43_lit_string_bx
                        .type            n44_binop_test_bx, @function
n44_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_binop_test_α:       mov              r11, 44
                        mov              rdi, qword ptr [rbp + 3360]
                        mov              rsi, qword ptr [rbp + 3368]
                        mov              rdx, qword ptr [rbp + 2480]
                        mov              rcx, qword ptr [rbp + 2488]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    .Ldisjunction_ω_25_af
                        mov              rdi, qword ptr [rbp + 2480]
                        mov              rsi, qword ptr [rbp + 2488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n45_var_α
                        .size            n44_binop_test_bx, .-n44_binop_test_bx
                        .type            n45_var_bx, @function
n45_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:              mov              r11, 45
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 2440], rax;         jmp   n46_assign_α
                        .size            n45_var_bx, .-n45_var_bx
                        .type            n46_assign_bx, @function
n46_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:           mov              r11, 46
                        mov              rax, qword ptr [rbp + 2432]
                        mov              rdx, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 3312], rax
                        mov              qword ptr [rbp + 3320], rdx
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx;         jmp   .Ldisjunction_γ_25_as
n46_assign_β:           mov              r11, 46;                             jmp   n47_scan_α
                        .size            n46_assign_bx, .-n46_assign_bx
                        .type            n47_scan_bx, @function
n47_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_scan_α:             mov              r11, 47
                        mov              rdi, qword ptr [rbp + 2304]
                        mov              rsi, qword ptr [rbp + 2312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 2304]
                        mov              r14, qword ptr [rbp + 2312]
                        mov              r15, qword ptr [rbp + 2320];         jmp   n5_var_ref_α
n47_scan_β:             mov              r11, 47;                             jmp   n5_var_ref_α
                        .size            n47_scan_bx, .-n47_scan_bx
                        .type            n48_var_bx, @function
n48_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_var_α:              mov              r11, 48
                        mov              rax, qword ptr [rbp + 3264]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 3272]
                        mov              qword ptr [rbp + 2200], rax;         jmp   n49_unop_α
                        .size            n48_var_bx, .-n48_var_bx
                        .type            n49_unop_bx, @function
n49_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_unop_α:             mov              r11, 49
                        mov              rdi, qword ptr [rbp + 3264]
                        mov              rsi, qword ptr [rbp + 3272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx;         jmp   n50_call_icon_α
                        .size            n49_unop_bx, .-n49_unop_bx
                        .type            n50_call_icon_bx, @function
n50_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_call_icon_α:        mov              r11, 50
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2152], rax
                        .section         .rodata
.Lcall_icon_α_rkfn229:  .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn229]
                        lea              rsi, [rbp + 2144]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        cmp              al, 104;                             je    n51_var_ref_α
                                                                              jmp   n51_var_ref_α
n50_call_icon_β:        mov              r11, 50;                             jmp   n51_var_ref_α
                        .size            n50_call_icon_bx, .-n50_call_icon_bx
                        .type            n51_var_ref_bx, @function
n51_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_var_ref_α:          mov              r11, 51
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3312]
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx;         jmp   n52_lit_integer_α
                        .size            n51_var_ref_bx, .-n51_var_ref_bx
                        .type            n52_lit_integer_bx, @function
n52_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:      mov              r11, 52
                        mov              qword ptr [rbp + 2096], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_232_0]
                        mov              qword ptr [rbp + 2104], rax;         jmp   n53_deref_α
.Llit_integer_α_232_0:  .quad            7
                        .size            n52_lit_integer_bx, .-n52_lit_integer_bx
                        .type            n53_deref_bx, @function
n53_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_deref_α:            mov              r11, 53
                        mov              rdi, qword ptr [rbp + 2080]
                        mov              rsi, qword ptr [rbp + 2088]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n56_lit_integer_α
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx;         jmp   n54_call_icon_α
                        .size            n53_deref_bx, .-n53_deref_bx
                        .type            n54_call_icon_bx, @function
n54_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_call_icon_α:        mov              r11, 54
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2056], rax
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2040], rax
                        .section         .rodata
.Lcall_icon_α_rkfn235:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn235]
                        lea              rsi, [rbp + 2032]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        cmp              al, 104;                             je    n56_lit_integer_α
                                                                              jmp   n55_call_icon_α
n54_call_icon_β:        mov              r11, 54;                             jmp   n56_lit_integer_α
                        .size            n54_call_icon_bx, .-n54_call_icon_bx
                        .type            n55_call_icon_bx, @function
n55_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_call_icon_α:        mov              r11, 55
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1992], rax
                        .section         .rodata
.Lcall_icon_α_rkfn237:  .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn237]
                        lea              rsi, [rbp + 1984]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              al, 104;                             je    n56_lit_integer_α
                                                                              jmp   n56_lit_integer_α
n55_call_icon_β:        mov              r11, 55;                             jmp   n56_lit_integer_α
                        .size            n55_call_icon_bx, .-n55_call_icon_bx
                        .type            n56_lit_integer_bx, @function
n56_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_integer_α:      mov              r11, 56
                        mov              qword ptr [rbp + 1952], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_238_0]
                        mov              qword ptr [rbp + 1960], rax;         jmp   n57_assign_α
.Llit_integer_α_238_0:  .quad            0
                        .size            n56_lit_integer_bx, .-n56_lit_integer_bx
                        .type            n57_assign_bx, @function
n57_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_assign_α:           mov              r11, 57
                        mov              rax, qword ptr [rbp + 1952]
                        mov              rdx, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx;         jmp   n58_var_α
                        .size            n57_assign_bx, .-n57_assign_bx
                        .type            n58_var_bx, @function
n58_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:              mov              r11, 58
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 1848], rax;         jmp   n59_var_α
                        .size            n58_var_bx, .-n58_var_bx
                        .type            n59_var_bx, @function
n59_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:              mov              r11, 59
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 1928], rax;         jmp   n60_iterate_α
                        .size            n59_var_bx, .-n59_var_bx
                        .type            n60_iterate_bx, @function
n60_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_iterate_α:          mov              r11, 60
                        mov              qword ptr [rbp + 1904], 0
.Literate_α_245_0:      mov              rdi, qword ptr [rbp + 1920]
                        mov              rsi, qword ptr [rbp + 1928]
                        mov              rdx, qword ptr [rbp + 1904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              al, 104;                             je    n68_var_α
                                                                              jmp   n61_lit_integer_α
n60_iterate_β:          mov              r11, 60
                        inc              qword ptr [rbp + 1904];              jmp   .Literate_α_245_0
                        .size            n60_iterate_bx, .-n60_iterate_bx
                        .type            n61_lit_integer_bx, @function
n61_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_integer_α:      mov              r11, 61
                        mov              qword ptr [rbp + 1936], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_246_0]
                        mov              qword ptr [rbp + 1944], rax;         jmp   n62_coerce_numeric_α
.Llit_integer_α_246_0:  .quad            2
                        .size            n61_lit_integer_bx, .-n61_lit_integer_bx
                        .type            n62_coerce_numeric_bx, @function
n62_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_coerce_numeric_α:   mov              r11, 62
                        mov              eax, dword ptr [rbp + 1888]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_248_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_248_0
                        mov              eax, dword ptr [rbp + 1936]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_248_0
.Lcoerce_numeric_α_248_1:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1880], rax;         jmp   n63_binop_α
.Lcoerce_numeric_α_248_0:
                        lea              rdi, [rbp + 1888]
                        lea              rsi, [rbp + 1936]
                        lea              rdx, [rbp + 1872]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 1872]
                        cmp              al, 104;                             je    n68_var_α
                                                                              jmp   n63_binop_α
                        .size            n62_coerce_numeric_bx, .-n62_coerce_numeric_bx
                        .type            n63_binop_bx, @function
n63_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_binop_α:            mov              r11, 63
                        mov              rdi, qword ptr [rbp + 1872]
                        mov              rsi, qword ptr [rbp + 1880]
                        mov              rdx, qword ptr [rbp + 1936]
                        mov              rcx, qword ptr [rbp + 1944]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n68_var_α
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx;         jmp   n64_coerce_numeric_α
                        .size            n63_binop_bx, .-n63_binop_bx
                        .type            n64_coerce_numeric_bx, @function
n64_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_coerce_numeric_α:   mov              r11, 64
                        mov              eax, dword ptr [rbp + 3248]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_251_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_251_0
                        mov              eax, dword ptr [rbp + 1856]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_251_0
.Lcoerce_numeric_α_251_1:
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 1832], rax;         jmp   n65_coerce_numeric_α
.Lcoerce_numeric_α_251_0:
                        lea              rdi, [rbp + 3248]
                        lea              rsi, [rbp + 1856]
                        lea              rdx, [rbp + 1824]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 1824]
                        cmp              al, 104;                             je    n68_var_α
                                                                              jmp   n65_coerce_numeric_α
                        .size            n64_coerce_numeric_bx, .-n64_coerce_numeric_bx
                        .type            n65_coerce_numeric_bx, @function
n65_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_coerce_numeric_α:   mov              r11, 65
                        mov              eax, dword ptr [rbp + 1856]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_253_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_253_0
                        mov              eax, dword ptr [rbp + 3248]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_253_0
.Lcoerce_numeric_α_253_1:
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1816], rax;         jmp   n66_binop_α
.Lcoerce_numeric_α_253_0:
                        lea              rdi, [rbp + 1856]
                        lea              rsi, [rbp + 3248]
                        lea              rdx, [rbp + 1808]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              al, 104;                             je    n68_var_α
                                                                              jmp   n66_binop_α
                        .size            n65_coerce_numeric_bx, .-n65_coerce_numeric_bx
                        .type            n66_binop_bx, @function
n66_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_binop_α:            mov              r11, 66
                        mov              eax, dword ptr [rbp + 1824]
                        mov              ecx, dword ptr [rbp + 1808]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_254_2
                        mov              rax, qword ptr [rbp + 1832]
                        mov              rdx, qword ptr [rbp + 1816]
                        add              rax, rdx;                            jo    .Lbinop_α_254_0
                        mov              qword ptr [rbp + 1792], 3
                        mov              qword ptr [rbp + 1800], rax;         jmp   .Lbinop_α_254_7
.Lbinop_α_254_2:        and              edx, 1;                              jz    .Lbinop_α_254_0
                        mov              rsi, qword ptr [rbp + 1832]
                        mov              rdi, qword ptr [rbp + 1816]
                        cmp              al, 5;                               je    .Lbinop_α_254_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_254_4
.Lbinop_α_254_3:        movq             xmm0, rsi
.Lbinop_α_254_4:        cmp              cl, 5;                               je    .Lbinop_α_254_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_254_6
.Lbinop_α_254_5:        movq             xmm1, rdi
.Lbinop_α_254_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_254_0
                        mov              qword ptr [rbp + 1792], 5
                        mov              qword ptr [rbp + 1800], rax
.Lbinop_α_254_7:                                                              jmp   n67_assign_α
.Lbinop_α_254_0:        mov              rdi, qword ptr [rbp + 1824]
                        mov              rsi, qword ptr [rbp + 1832]
                        mov              rdx, qword ptr [rbp + 1808]
                        mov              rcx, qword ptr [rbp + 1816]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n68_var_α
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx;         jmp   n67_assign_α
                        .size            n66_binop_bx, .-n66_binop_bx
                        .type            n67_assign_bx, @function
n67_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:           mov              r11, 67
                        mov              rax, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx;         jmp   n60_iterate_β
                        .size            n67_assign_bx, .-n67_assign_bx
                        .type            n68_var_bx, @function
n68_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:              mov              r11, 68
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 1736], rax;         jmp   n69_var_α
                        .size            n68_var_bx, .-n68_var_bx
                        .type            n69_var_bx, @function
n69_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:              mov              r11, 69
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 1768], rax;         jmp   n70_unop_α
                        .size            n69_var_bx, .-n69_var_bx
                        .type            n70_unop_bx, @function
n70_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_unop_α:             mov              r11, 70
                        mov              rdi, qword ptr [rbp + 3296]
                        mov              rsi, qword ptr [rbp + 3304]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx;         jmp   n71_coerce_numeric_α
                        .size            n70_unop_bx, .-n70_unop_bx
                        .type            n71_coerce_numeric_bx, @function
n71_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_coerce_numeric_α:   mov              r11, 71
                        mov              eax, dword ptr [rbp + 3248]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_262_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_262_0
                        mov              eax, dword ptr [rbp + 1744]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_262_0
.Lcoerce_numeric_α_262_1:
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 1720], rax;         jmp   n72_coerce_numeric_α
.Lcoerce_numeric_α_262_0:
                        lea              rdi, [rbp + 3248]
                        lea              rsi, [rbp + 1744]
                        lea              rdx, [rbp + 1712]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 1712]
                        cmp              al, 104;                             je    n80_var_ref_α
                                                                              jmp   n72_coerce_numeric_α
                        .size            n71_coerce_numeric_bx, .-n71_coerce_numeric_bx
                        .type            n72_coerce_numeric_bx, @function
n72_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_coerce_numeric_α:   mov              r11, 72
                        mov              eax, dword ptr [rbp + 1744]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_264_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_264_0
                        mov              eax, dword ptr [rbp + 3248]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_264_0
.Lcoerce_numeric_α_264_1:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1704], rax;         jmp   n73_binop_α
.Lcoerce_numeric_α_264_0:
                        lea              rdi, [rbp + 1744]
                        lea              rsi, [rbp + 3248]
                        lea              rdx, [rbp + 1696]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 1696]
                        cmp              al, 104;                             je    n80_var_ref_α
                                                                              jmp   n73_binop_α
                        .size            n72_coerce_numeric_bx, .-n72_coerce_numeric_bx
                        .type            n73_binop_bx, @function
n73_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_binop_α:            mov              r11, 73
                        mov              rdi, qword ptr [rbp + 1712]
                        mov              rsi, qword ptr [rbp + 1720]
                        mov              rdx, qword ptr [rbp + 1696]
                        mov              rcx, qword ptr [rbp + 1704]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n80_var_ref_α
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx;         jmp   n74_call_icon_α
                        .size            n73_binop_bx, .-n73_binop_bx
                        .type            n74_call_icon_bx, @function
n74_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_call_icon_α:        mov              r11, 74
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1656], rax
                        .section         .rodata
.Lcall_icon_α_rkfn267:  .string          "sqrt"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn267]
                        lea              rsi, [rbp + 1648]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262307
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              al, 104;                             je    n80_var_ref_α
                                                                              jmp   n75_lit_real_α
n74_call_icon_β:        mov              r11, 74;                             jmp   n80_var_ref_α
                        .size            n74_call_icon_bx, .-n74_call_icon_bx
                        .type            n75_lit_real_bx, @function
n75_lit_real_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_real_α:         mov              r11, 75
                        mov              qword ptr [rbp + 1776], 5            # result
                        mov              rax, qword ptr [rip + .Llit_real_α_268_0]
                        mov              qword ptr [rbp + 1784], rax;         jmp   n76_coerce_numeric_α
.Llit_real_α_268_0:     .quad            4602678819172646912
                        .size            n75_lit_real_bx, .-n75_lit_real_bx
                        .type            n76_coerce_numeric_bx, @function
n76_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_coerce_numeric_α:   mov              r11, 76
                        mov              eax, dword ptr [rbp + 1632]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_270_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_270_0
                        mov              eax, dword ptr [rbp + 1776]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_270_0
.Lcoerce_numeric_α_270_1:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1624], rax;         jmp   n77_binop_α
.Lcoerce_numeric_α_270_0:
                        lea              rdi, [rbp + 1632]
                        lea              rsi, [rbp + 1776]
                        lea              rdx, [rbp + 1616]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 1616]
                        cmp              al, 104;                             je    n80_var_ref_α
                                                                              jmp   n77_binop_α
                        .size            n76_coerce_numeric_bx, .-n76_coerce_numeric_bx
                        .type            n77_binop_bx, @function
n77_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_binop_α:            mov              r11, 77
                        mov              eax, dword ptr [rbp + 1616]
                        mov              ecx, dword ptr [rbp + 1776]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_271_2
                        mov              rax, qword ptr [rbp + 1624]
                        mov              rdx, qword ptr [rbp + 1784]
                        add              rax, rdx;                            jo    .Lbinop_α_271_0
                        mov              qword ptr [rbp + 1600], 3
                        mov              qword ptr [rbp + 1608], rax;         jmp   .Lbinop_α_271_7
.Lbinop_α_271_2:        and              edx, 1;                              jz    .Lbinop_α_271_0
                        mov              rsi, qword ptr [rbp + 1624]
                        mov              rdi, qword ptr [rbp + 1784]
                        cmp              al, 5;                               je    .Lbinop_α_271_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_271_4
.Lbinop_α_271_3:        movq             xmm0, rsi
.Lbinop_α_271_4:        cmp              cl, 5;                               je    .Lbinop_α_271_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_271_6
.Lbinop_α_271_5:        movq             xmm1, rdi
.Lbinop_α_271_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_271_0
                        mov              qword ptr [rbp + 1600], 5
                        mov              qword ptr [rbp + 1608], rax
.Lbinop_α_271_7:                                                              jmp   n78_call_icon_α
.Lbinop_α_271_0:        mov              rdi, qword ptr [rbp + 1616]
                        mov              rsi, qword ptr [rbp + 1624]
                        mov              rdx, qword ptr [rbp + 1776]
                        mov              rcx, qword ptr [rbp + 1784]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n80_var_ref_α
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx;         jmp   n78_call_icon_α
                        .size            n77_binop_bx, .-n77_binop_bx
                        .type            n78_call_icon_bx, @function
n78_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_call_icon_α:        mov              r11, 78
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1576], rax
                        .section         .rodata
.Lcall_icon_α_rkfn273:  .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn273]
                        lea              rsi, [rbp + 1568]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458878
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              al, 104;                             je    n80_var_ref_α
                                                                              jmp   n79_assign_α
n78_call_icon_β:        mov              r11, 78;                             jmp   n80_var_ref_α
                        .size            n78_call_icon_bx, .-n78_call_icon_bx
                        .type            n79_assign_bx, @function
n79_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:           mov              r11, 79
                        mov              rax, qword ptr [rbp + 1552]
                        mov              rdx, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx;         jmp   n80_var_ref_α
                        .size            n79_assign_bx, .-n79_assign_bx
                        .type            n80_var_ref_bx, @function
n80_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:          mov              r11, 80
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3248]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx;         jmp   n81_lit_integer_α
                        .size            n80_var_ref_bx, .-n80_var_ref_bx
                        .type            n81_lit_integer_bx, @function
n81_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_integer_α:      mov              r11, 81
                        mov              qword ptr [rbp + 1520], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_277_0]
                        mov              qword ptr [rbp + 1528], rax;         jmp   n82_deref_α
.Llit_integer_α_277_0:  .quad            7
                        .size            n81_lit_integer_bx, .-n81_lit_integer_bx
                        .type            n82_deref_bx, @function
n82_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_deref_α:            mov              r11, 82
                        mov              rdi, qword ptr [rbp + 1504]
                        mov              rsi, qword ptr [rbp + 1512]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n85_var_ref_α
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx;         jmp   n83_call_icon_α
                        .size            n82_deref_bx, .-n82_deref_bx
                        .type            n83_call_icon_bx, @function
n83_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_call_icon_α:        mov              r11, 83
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1480], rax
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1464], rax
                        .section         .rodata
.Lcall_icon_α_rkfn280:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn280]
                        lea              rsi, [rbp + 1456]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              al, 104;                             je    n85_var_ref_α
                                                                              jmp   n84_call_icon_α
n83_call_icon_β:        mov              r11, 83;                             jmp   n85_var_ref_α
                        .size            n83_call_icon_bx, .-n83_call_icon_bx
                        .type            n84_call_icon_bx, @function
n84_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_call_icon_α:        mov              r11, 84
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1416], rax
                        .section         .rodata
.Lcall_icon_α_rkfn282:  .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn282]
                        lea              rsi, [rbp + 1408]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              al, 104;                             je    n85_var_ref_α
                                                                              jmp   n85_var_ref_α
n84_call_icon_β:        mov              r11, 84;                             jmp   n85_var_ref_α
                        .size            n84_call_icon_bx, .-n84_call_icon_bx
                        .type            n85_var_ref_bx, @function
n85_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_var_ref_α:          mov              r11, 85
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3264]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx;         jmp   n86_deref_α
                        .size            n85_var_ref_bx, .-n85_var_ref_bx
                        .type            n86_deref_bx, @function
n86_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_deref_α:            mov              r11, 86
                        mov              rdi, qword ptr [rbp + 1360]
                        mov              rsi, qword ptr [rbp + 1368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n89_var_ref_α
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx;         jmp   n87_call_icon_α
                        .size            n86_deref_bx, .-n86_deref_bx
                        .type            n87_call_icon_bx, @function
n87_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_call_icon_α:        mov              r11, 87
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1336], rax
                        .section         .rodata
.Lcall_icon_α_rkfn287:  .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn287]
                        lea              rsi, [rbp + 1328]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              al, 104;                             je    n89_var_ref_α
                                                                              jmp   n88_assign_α
n87_call_icon_β:        mov              r11, 87;                             jmp   n89_var_ref_α
                        .size            n87_call_icon_bx, .-n87_call_icon_bx
                        .type            n88_assign_bx, @function
n88_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_assign_α:           mov              r11, 88
                        mov              rax, qword ptr [rbp + 1312]
                        mov              rdx, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx;         jmp   n89_var_ref_α
                        .size            n88_assign_bx, .-n88_assign_bx
                        .type            n89_var_ref_bx, @function
n89_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:          mov              r11, 89
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3264]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx;         jmp   n90_var_α
                        .size            n89_var_ref_bx, .-n89_var_ref_bx
                        .type            n90_var_bx, @function
n90_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:              mov              r11, 90
                        mov              rax, qword ptr [rbp + 3264]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 3272]
                        mov              qword ptr [rbp + 1240], rax;         jmp   n91_unop_α
                        .size            n90_var_bx, .-n90_var_bx
                        .type            n91_unop_bx, @function
n91_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_unop_α:             mov              r11, 91
                        mov              rdi, qword ptr [rbp + 3264]
                        mov              rsi, qword ptr [rbp + 3272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx;         jmp   n92_lit_integer_α
                        .size            n91_unop_bx, .-n91_unop_bx
                        .type            n92_lit_integer_bx, @function
n92_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_integer_α:      mov              r11, 92
                        mov              qword ptr [rbp + 1248], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_294_0]
                        mov              qword ptr [rbp + 1256], rax;         jmp   n93_coerce_numeric_α
.Llit_integer_α_294_0:  .quad            2
                        .size            n92_lit_integer_bx, .-n92_lit_integer_bx
                        .type            n93_coerce_numeric_bx, @function
n93_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_coerce_numeric_α:   mov              r11, 93
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_296_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_296_0
                        mov              eax, dword ptr [rbp + 1248]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_296_0
.Lcoerce_numeric_α_296_1:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1208], rax;         jmp   n94_binop_α
.Lcoerce_numeric_α_296_0:
                        lea              rdi, [rbp + 1216]
                        lea              rsi, [rbp + 1248]
                        lea              rdx, [rbp + 1200]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 1200]
                        cmp              al, 104;                             je    n00001_var_ref_α
                                                                              jmp   n94_binop_α
                        .size            n93_coerce_numeric_bx, .-n93_coerce_numeric_bx
                        .type            n94_binop_bx, @function
n94_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_binop_α:            mov              r11, 94
                        mov              rdi, qword ptr [rbp + 1200]
                        mov              rsi, qword ptr [rbp + 1208]
                        mov              rdx, qword ptr [rbp + 1248]
                        mov              rcx, qword ptr [rbp + 1256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00001_var_ref_α
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx;         jmp   n95_lit_integer_α
                        .size            n94_binop_bx, .-n94_binop_bx
                        .type            n95_lit_integer_bx, @function
n95_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:      mov              r11, 95
                        mov              qword ptr [rbp + 1264], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_298_0]
                        mov              qword ptr [rbp + 1272], rax;         jmp   n96_coerce_numeric_α
.Llit_integer_α_298_0:  .quad            1
                        .size            n95_lit_integer_bx, .-n95_lit_integer_bx
                        .type            n96_coerce_numeric_bx, @function
n96_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_coerce_numeric_α:   mov              r11, 96
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_300_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_300_0
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_300_0
.Lcoerce_numeric_α_300_1:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1176], rax;         jmp   n97_binop_α
.Lcoerce_numeric_α_300_0:
                        lea              rdi, [rbp + 1184]
                        lea              rsi, [rbp + 1264]
                        lea              rdx, [rbp + 1168]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 1168]
                        cmp              al, 104;                             je    n00001_var_ref_α
                                                                              jmp   n97_binop_α
                        .size            n96_coerce_numeric_bx, .-n96_coerce_numeric_bx
                        .type            n97_binop_bx, @function
n97_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_binop_α:            mov              r11, 97
                        mov              eax, dword ptr [rbp + 1168]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_301_2
                        mov              rax, qword ptr [rbp + 1176]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_301_0
                        mov              qword ptr [rbp + 1152], 3
                        mov              qword ptr [rbp + 1160], rax;         jmp   .Lbinop_α_301_7
.Lbinop_α_301_2:        and              edx, 1;                              jz    .Lbinop_α_301_0
                        mov              rsi, qword ptr [rbp + 1176]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_301_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_301_4
.Lbinop_α_301_3:        movq             xmm0, rsi
.Lbinop_α_301_4:        cmp              cl, 5;                               je    .Lbinop_α_301_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_301_6
.Lbinop_α_301_5:        movq             xmm1, rdi
.Lbinop_α_301_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_301_0
                        mov              qword ptr [rbp + 1152], 5
                        mov              qword ptr [rbp + 1160], rax
.Lbinop_α_301_7:                                                              jmp   n98_subscript_α
.Lbinop_α_301_0:        mov              rdi, qword ptr [rbp + 1168]
                        mov              rsi, qword ptr [rbp + 1176]
                        mov              rdx, qword ptr [rbp + 1264]
                        mov              rcx, qword ptr [rbp + 1272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00001_var_ref_α
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx;         jmp   n98_subscript_α
                        .size            n97_binop_bx, .-n97_binop_bx
                        .type            n98_subscript_bx, @function
n98_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_subscript_α:        mov              r11, 98
                        mov              rdi, qword ptr [rbp + 1136]
                        mov              rsi, qword ptr [rbp + 1144]
                        mov              rdx, qword ptr [rbp + 1152]
                        mov              rcx, qword ptr [rbp + 1160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00001_var_ref_α
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx;         jmp   n99_deref_α
                        .size            n98_subscript_bx, .-n98_subscript_bx
                        .type            n99_deref_bx, @function
n99_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_deref_α:            mov              r11, 99
                        mov              rdi, qword ptr [rbp + 1280]
                        mov              rsi, qword ptr [rbp + 1288]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00001_var_ref_α
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx;         jmp   n00002_assign_α
                        .size            n99_deref_bx, .-n99_deref_bx
                        .type            n00002_assign_bx, @function
n00002_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00002_assign_α:          mov              r11, 100
                        mov              rax, qword ptr [rbp + 1296]
                        mov              rdx, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx;         jmp   n00001_var_ref_α
                        .size            n00002_assign_bx, .-n00002_assign_bx
                        .type            n00001_var_ref_bx, @function
n00001_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00001_var_ref_α:         mov              r11, 101
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3248]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx;         jmp   n00003_lit_integer_α
                        .size            n00001_var_ref_bx, .-n00001_var_ref_bx
                        .type            n00003_lit_integer_bx, @function
n00003_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00003_lit_integer_α:     mov              r11, 102
                        mov              qword ptr [rbp + 1104], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_307_0]
                        mov              qword ptr [rbp + 1112], rax;         jmp   n00004_deref_α
.Llit_integer_α_307_0:  .quad            7
                        .size            n00003_lit_integer_bx, .-n00003_lit_integer_bx
                        .type            n00004_deref_bx, @function
n00004_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00004_deref_α:           mov              r11, 103
                        mov              rdi, qword ptr [rbp + 1088]
                        mov              rsi, qword ptr [rbp + 1096]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00005_lit_real_α
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx;         jmp   n00006_call_icon_α
                        .size            n00004_deref_bx, .-n00004_deref_bx
                        .type            n00006_call_icon_bx, @function
n00006_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00006_call_icon_α:       mov              r11, 104
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1048], rax
                        .section         .rodata
.Lcall_icon_α_rkfn310:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn310]
                        lea              rsi, [rbp + 1040]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              al, 104;                             je    n00005_lit_real_α
                                                                              jmp   n00007_call_icon_α
n00006_call_icon_β:       mov              r11, 104;                            jmp   n00005_lit_real_α
                        .size            n00006_call_icon_bx, .-n00006_call_icon_bx
                        .type            n00007_call_icon_bx, @function
n00007_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00007_call_icon_α:       mov              r11, 105
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lcall_icon_α_rkfn312:  .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn312]
                        lea              rsi, [rbp + 992]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              al, 104;                             je    n00005_lit_real_α
                                                                              jmp   n00005_lit_real_α
n00007_call_icon_β:       mov              r11, 105;                            jmp   n00005_lit_real_α
                        .size            n00007_call_icon_bx, .-n00007_call_icon_bx
                        .type            n00005_lit_real_bx, @function
n00005_lit_real_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00005_lit_real_α:        mov              r11, 106
                        mov              qword ptr [rbp + 960], 5             # result
                        mov              rax, qword ptr [rip + .Llit_real_α_313_0]
                        mov              qword ptr [rbp + 968], rax;          jmp   n00008_assign_α
.Llit_real_α_313_0:     .quad            0
                        .size            n00005_lit_real_bx, .-n00005_lit_real_bx
                        .type            n00008_assign_bx, @function
n00008_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00008_assign_α:          mov              r11, 107
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx;         jmp   n00009_var_α
                        .size            n00008_assign_bx, .-n00008_assign_bx
                        .type            n00009_var_bx, @function
n00009_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00009_var_α:             mov              r11, 108
                        mov              rax, qword ptr [rbp + 3264]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 3272]
                        mov              qword ptr [rbp + 664], rax;          jmp   n00010_iterate_α
                        .size            n00009_var_bx, .-n00009_var_bx
                        .type            n00010_iterate_bx, @function
n00010_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00010_iterate_α:         mov              r11, 109
                        mov              qword ptr [rbp + 640], 0
.Literate_α_318_0:      mov              rdi, qword ptr [rbp + 656]
                        mov              rsi, qword ptr [rbp + 664]
                        mov              rdx, qword ptr [rbp + 640]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              al, 104;                             je    n00011_kw_icon_α
                                                                              jmp   n00012_assign_α
n00010_iterate_β:         mov              r11, 109
                        inc              qword ptr [rbp + 640];               jmp   .Literate_α_318_0
                        .size            n00010_iterate_bx, .-n00010_iterate_bx
                        .type            n00012_assign_bx, @function
n00012_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00012_assign_α:          mov              r11, 110
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx;         jmp   n00013_bound_α
                        .size            n00012_assign_bx, .-n00012_assign_bx
                        .type            n00013_bound_bx, @function
n00013_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00013_bound_α:           mov              r11, 111
                        mov              qword ptr [rbp + 672], rsp;          jmp   n00014_var_α
                        .size            n00013_bound_bx, .-n00013_bound_bx
                        .type            n00014_var_bx, @function
n00014_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00014_var_α:             mov              r11, 112
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 776], rax;          jmp   n00015_disjunction_α
                        .size            n00014_var_bx, .-n00014_var_bx
                        .type            n00015_disjunction_bx, @function
n00015_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00015_disjunction_α:     mov              r11, 113
                        mov              qword ptr [rbp + 784], 0
                        mov              qword ptr [rbp + 792], 0
                        mov              dword ptr [rbp + 800], 0;            jmp   n00016_var_α
.Ldisjunction_γ_113_as: mov              r11, 113
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_325_0
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax;          jmp   n00017_coerce_numeric_α
.Ldisjunction_α_325_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_325_1
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 792], rax;          jmp   n00017_coerce_numeric_α
.Ldisjunction_α_325_1:                                                        jmp   n00017_coerce_numeric_α
n00015_disjunction_β:     mov              r11, 113
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 0;                              je    n00018_unmark_α
                                                                              jmp   n00018_unmark_α
.Ldisjunction_γ_113_af: mov              r11, 113
.Ldisjunction_ω_113_af: mov              r11, 113
                        add              dword ptr [rbp + 800], 1
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 1;                              je    n00019_var_ref_α
                                                                              jmp   n00018_unmark_α
                        .size            n00015_disjunction_bx, .-n00015_disjunction_bx
                        .type            n00017_coerce_numeric_bx, @function
n00017_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00017_coerce_numeric_α:  mov              r11, 114
                        mov              eax, dword ptr [rbp + 3248]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_327_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_327_0
                        mov              eax, dword ptr [rbp + 784]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_327_0
.Lcoerce_numeric_α_327_1:
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 760], rax;          jmp   n00020_coerce_numeric_α
.Lcoerce_numeric_α_327_0:
                        lea              rdi, [rbp + 3248]
                        lea              rsi, [rbp + 784]
                        lea              rdx, [rbp + 752]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 752]
                        cmp              al, 104;                             je    n00018_unmark_α
                                                                              jmp   n00020_coerce_numeric_α
                        .size            n00017_coerce_numeric_bx, .-n00017_coerce_numeric_bx
                        .type            n00020_coerce_numeric_bx, @function
n00020_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00020_coerce_numeric_α:  mov              r11, 115
                        mov              eax, dword ptr [rbp + 784]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_329_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_329_0
                        mov              eax, dword ptr [rbp + 3248]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_329_0
.Lcoerce_numeric_α_329_1:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 744], rax;          jmp   n00021_binop_α
.Lcoerce_numeric_α_329_0:
                        lea              rdi, [rbp + 784]
                        lea              rsi, [rbp + 3248]
                        lea              rdx, [rbp + 736]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 736]
                        cmp              al, 104;                             je    n00018_unmark_α
                                                                              jmp   n00021_binop_α
                        .size            n00020_coerce_numeric_bx, .-n00020_coerce_numeric_bx
                        .type            n00021_binop_bx, @function
n00021_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00021_binop_α:           mov              r11, 116
                        mov              eax, dword ptr [rbp + 752]
                        mov              ecx, dword ptr [rbp + 736]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_330_2
                        mov              rax, qword ptr [rbp + 760]
                        mov              rdx, qword ptr [rbp + 744]
                        add              rax, rdx;                            jo    .Lbinop_α_330_0
                        mov              qword ptr [rbp + 720], 3
                        mov              qword ptr [rbp + 728], rax;          jmp   .Lbinop_α_330_7
.Lbinop_α_330_2:        and              edx, 1;                              jz    .Lbinop_α_330_0
                        mov              rsi, qword ptr [rbp + 760]
                        mov              rdi, qword ptr [rbp + 744]
                        cmp              al, 5;                               je    .Lbinop_α_330_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_330_4
.Lbinop_α_330_3:        movq             xmm0, rsi
.Lbinop_α_330_4:        cmp              cl, 5;                               je    .Lbinop_α_330_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_330_6
.Lbinop_α_330_5:        movq             xmm1, rdi
.Lbinop_α_330_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_330_0
                        mov              qword ptr [rbp + 720], 5
                        mov              qword ptr [rbp + 728], rax
.Lbinop_α_330_7:                                                              jmp   n00022_assign_α
.Lbinop_α_330_0:        mov              rdi, qword ptr [rbp + 752]
                        mov              rsi, qword ptr [rbp + 760]
                        mov              rdx, qword ptr [rbp + 736]
                        mov              rcx, qword ptr [rbp + 744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00018_unmark_α
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx;          jmp   n00022_assign_α
                        .size            n00021_binop_bx, .-n00021_binop_bx
                        .type            n00022_assign_bx, @function
n00022_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00022_assign_α:          mov              r11, 117
                        mov              rax, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx;         jmp   n00018_unmark_α
                        .size            n00022_assign_bx, .-n00022_assign_bx
                        .type            n00019_var_ref_bx, @function
n00019_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00019_var_ref_α:         mov              r11, 118
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3280]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n00023_deref_α
n00019_var_ref_β:         mov              r11, 118;                            jmp   n00018_unmark_α
                        .size            n00019_var_ref_bx, .-n00019_var_ref_bx
                        .type            n00023_deref_bx, @function
n00023_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00023_deref_α:           mov              r11, 119
                        mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00018_unmark_α
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx;          jmp   n00024_call_icon_α
                        .size            n00023_deref_bx, .-n00023_deref_bx
                        .type            n00024_call_icon_bx, @function
n00024_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00024_call_icon_α:       mov              r11, 120
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                        .section         .rodata
.Lcall_icon_α_rkfn336:  .string          "log"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn336]
                        lea              rsi, [rbp + 896]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196741
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              al, 104;                             je    n00018_unmark_α
                                                                              jmp   .Ldisjunction_γ_113_as
n00024_call_icon_β:       mov              r11, 120;                            jmp   n00018_unmark_α
                        .size            n00024_call_icon_bx, .-n00024_call_icon_bx
                        .type            n00016_var_bx, @function
n00016_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00016_var_α:             mov              r11, 121
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 856], rax;          jmp   n00025_lit_integer_α
n00016_var_β:             mov              r11, 121;                            jmp   .Ldisjunction_ω_113_af
                        .size            n00016_var_bx, .-n00016_var_bx
                        .type            n00025_lit_integer_bx, @function
n00025_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00025_lit_integer_α:     mov              r11, 122
                        mov              qword ptr [rbp + 864], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_339_0]
                        mov              qword ptr [rbp + 872], rax;          jmp   n00026_binop_test_α
.Llit_integer_α_339_0:  .quad            0
                        .size            n00025_lit_integer_bx, .-n00025_lit_integer_bx
                        .type            n00026_binop_test_bx, @function
n00026_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00026_binop_test_α:      mov              r11, 123
                        mov              eax, dword ptr [rbp + 3280]
                        cmp              al, 112;                             je    .Lbinop_test_α_340_0
                        mov              eax, dword ptr [rbp + 864]
                        cmp              al, 112;                             je    .Lbinop_test_α_340_0
                        mov              eax, dword ptr [rbp + 3280]
                        cmp              al, 3;                               jne   .Lbinop_test_α_340_2
                        mov              eax, dword ptr [rbp + 864]
                        cmp              al, 3;                               jne   .Lbinop_test_α_340_2
.Lbinop_test_α_340_1:   mov              rax, qword ptr [rbp + 3288]
                        mov              rcx, qword ptr [rbp + 872]
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_113_af
                        mov              rcx, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rcx
                        mov              rcx, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rcx;          jmp   n00027_lit_integer_α
.Lbinop_test_α_340_0:   mov              rdi, qword ptr [rbp + 3280]
                        mov              rsi, qword ptr [rbp + 3288]
                        mov              rdx, qword ptr [rbp + 864]
                        mov              rcx, qword ptr [rbp + 872]
                        mov              r8d, 6
                        lea              r9, [rbp + 832]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lbinop_test_α_340_1
                        cmp              eax, 1;                              je    .Ldisjunction_ω_113_af
                                                                              jmp   n00027_lit_integer_α
.Lbinop_test_α_340_2:   mov              rdi, qword ptr [rbp + 3280]
                        mov              rsi, qword ptr [rbp + 3288]
                        mov              rdx, qword ptr [rbp + 864]
                        mov              rcx, qword ptr [rbp + 872]
                        mov              r8d, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    .Ldisjunction_ω_113_af
                        mov              rdi, qword ptr [rbp + 3280]
                        mov              rsi, qword ptr [rbp + 3288]
                        mov              rdx, qword ptr [rbp + 864]
                        mov              rcx, qword ptr [rbp + 872]
                        lea              r8, [rbp + 832]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_val_coerce@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00027_lit_integer_α
                        .size            n00026_binop_test_bx, .-n00026_binop_test_bx
                        .type            n00027_lit_integer_bx, @function
n00027_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00027_lit_integer_α:     mov              r11, 124
                        mov              qword ptr [rbp + 816], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_341_0]
                        mov              qword ptr [rbp + 824], rax;          jmp   .Ldisjunction_γ_113_as
n00027_lit_integer_β:     mov              r11, 124;                            jmp   n00018_unmark_α
.Llit_integer_α_341_0:  .quad            0
                        .size            n00027_lit_integer_bx, .-n00027_lit_integer_bx
                        .type            n00018_unmark_bx, @function
n00018_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00018_unmark_α:          mov              r11, 125
                        mov              rsp, qword ptr [rbp + 672];          jmp   n00010_iterate_β
                        .size            n00018_unmark_bx, .-n00018_unmark_bx
                        .type            n00011_kw_icon_bx, @function
n00011_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00011_kw_icon_α:         mov              r11, 126
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_344_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00028_var_ref_α
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n00029_var_α
n00011_kw_icon_β:         mov              r11, 126;                            jmp   n00028_var_ref_α
.Lkw_icon_α_344_0:      .quad            .Lkw_icon_α_344_0_s
.Lkw_icon_α_344_0_s:    .string          "&e"
                        .size            n00011_kw_icon_bx, .-n00011_kw_icon_bx
                        .type            n00029_var_bx, @function
n00029_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00029_var_α:             mov              r11, 127
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 568], rax;          jmp   n00030_var_α
                        .size            n00029_var_bx, .-n00029_var_bx
                        .type            n00030_var_bx, @function
n00030_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00030_var_α:             mov              r11, 128
                        mov              rax, qword ptr [rbp + 3264]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 3272]
                        mov              qword ptr [rbp + 600], rax;          jmp   n00031_unop_α
                        .size            n00030_var_bx, .-n00030_var_bx
                        .type            n00031_unop_bx, @function
n00031_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00031_unop_α:            mov              r11, 129
                        mov              rdi, qword ptr [rbp + 3264]
                        mov              rsi, qword ptr [rbp + 3272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n00032_coerce_numeric_α
                        .size            n00031_unop_bx, .-n00031_unop_bx
                        .type            n00032_coerce_numeric_bx, @function
n00032_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00032_coerce_numeric_α:  mov              r11, 130
                        mov              eax, dword ptr [rbp + 3248]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_351_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_351_0
                        mov              eax, dword ptr [rbp + 576]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_351_0
.Lcoerce_numeric_α_351_1:
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 552], rax;          jmp   n00033_coerce_numeric_α
.Lcoerce_numeric_α_351_0:
                        lea              rdi, [rbp + 3248]
                        lea              rsi, [rbp + 576]
                        lea              rdx, [rbp + 544]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 544]
                        cmp              al, 104;                             je    n00028_var_ref_α
                                                                              jmp   n00033_coerce_numeric_α
                        .size            n00032_coerce_numeric_bx, .-n00032_coerce_numeric_bx
                        .type            n00033_coerce_numeric_bx, @function
n00033_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00033_coerce_numeric_α:  mov              r11, 131
                        mov              eax, dword ptr [rbp + 576]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_353_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_353_0
                        mov              eax, dword ptr [rbp + 3248]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_353_0
.Lcoerce_numeric_α_353_1:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax;          jmp   n00034_binop_α
.Lcoerce_numeric_α_353_0:
                        lea              rdi, [rbp + 576]
                        lea              rsi, [rbp + 3248]
                        lea              rdx, [rbp + 528]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 528]
                        cmp              al, 104;                             je    n00028_var_ref_α
                                                                              jmp   n00034_binop_α
                        .size            n00033_coerce_numeric_bx, .-n00033_coerce_numeric_bx
                        .type            n00034_binop_bx, @function
n00034_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00034_binop_α:           mov              r11, 132
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 528]
                        mov              rcx, qword ptr [rbp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00028_var_ref_α
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx;          jmp   n00035_coerce_numeric_α
                        .size            n00034_binop_bx, .-n00034_binop_bx
                        .type            n00035_coerce_numeric_bx, @function
n00035_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00035_coerce_numeric_α:  mov              r11, 133
                        mov              eax, dword ptr [rbp + 480]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_356_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_356_0
                        mov              eax, dword ptr [rbp + 512]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_356_0
.Lcoerce_numeric_α_356_1:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 472], rax;          jmp   n00036_coerce_numeric_α
.Lcoerce_numeric_α_356_0:
                        lea              rdi, [rbp + 480]
                        lea              rsi, [rbp + 512]
                        lea              rdx, [rbp + 464]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 464]
                        cmp              al, 104;                             je    n00028_var_ref_α
                                                                              jmp   n00036_coerce_numeric_α
                        .size            n00035_coerce_numeric_bx, .-n00035_coerce_numeric_bx
                        .type            n00036_coerce_numeric_bx, @function
n00036_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00036_coerce_numeric_α:  mov              r11, 134
                        mov              eax, dword ptr [rbp + 512]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_358_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_358_0
                        mov              eax, dword ptr [rbp + 480]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_358_0
.Lcoerce_numeric_α_358_1:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 456], rax;          jmp   n00037_binop_α
.Lcoerce_numeric_α_358_0:
                        lea              rdi, [rbp + 512]
                        lea              rsi, [rbp + 480]
                        lea              rdx, [rbp + 448]
                        mov              rcx, 50331750
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 448]
                        cmp              al, 104;                             je    n00028_var_ref_α
                                                                              jmp   n00037_binop_α
                        .size            n00036_coerce_numeric_bx, .-n00036_coerce_numeric_bx
                        .type            n00037_binop_bx, @function
n00037_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00037_binop_α:           mov              r11, 135
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        mov              rdx, qword ptr [rbp + 448]
                        mov              rcx, qword ptr [rbp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00028_var_ref_α
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n00038_lit_real_α
                        .size            n00037_binop_bx, .-n00037_binop_bx
                        .type            n00038_lit_real_bx, @function
n00038_lit_real_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00038_lit_real_α:        mov              r11, 136
                        mov              qword ptr [rbp + 608], 5             # result
                        mov              rax, qword ptr [rip + .Llit_real_α_360_0]
                        mov              qword ptr [rbp + 616], rax;          jmp   n00039_coerce_numeric_α
.Llit_real_α_360_0:     .quad            4602678819172646912
                        .size            n00038_lit_real_bx, .-n00038_lit_real_bx
                        .type            n00039_coerce_numeric_bx, @function
n00039_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00039_coerce_numeric_α:  mov              r11, 137
                        mov              eax, dword ptr [rbp + 432]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_362_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_362_0
                        mov              eax, dword ptr [rbp + 608]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_362_0
.Lcoerce_numeric_α_362_1:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 424], rax;          jmp   n00040_binop_α
.Lcoerce_numeric_α_362_0:
                        lea              rdi, [rbp + 432]
                        lea              rsi, [rbp + 608]
                        lea              rdx, [rbp + 416]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 416]
                        cmp              al, 104;                             je    n00028_var_ref_α
                                                                              jmp   n00040_binop_α
                        .size            n00039_coerce_numeric_bx, .-n00039_coerce_numeric_bx
                        .type            n00040_binop_bx, @function
n00040_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00040_binop_α:           mov              r11, 138
                        mov              eax, dword ptr [rbp + 416]
                        mov              ecx, dword ptr [rbp + 608]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_363_2
                        mov              rax, qword ptr [rbp + 424]
                        mov              rdx, qword ptr [rbp + 616]
                        add              rax, rdx;                            jo    .Lbinop_α_363_0
                        mov              qword ptr [rbp + 400], 3
                        mov              qword ptr [rbp + 408], rax;          jmp   .Lbinop_α_363_7
.Lbinop_α_363_2:        and              edx, 1;                              jz    .Lbinop_α_363_0
                        mov              rsi, qword ptr [rbp + 424]
                        mov              rdi, qword ptr [rbp + 616]
                        cmp              al, 5;                               je    .Lbinop_α_363_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_363_4
.Lbinop_α_363_3:        movq             xmm0, rsi
.Lbinop_α_363_4:        cmp              cl, 5;                               je    .Lbinop_α_363_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_363_6
.Lbinop_α_363_5:        movq             xmm1, rdi
.Lbinop_α_363_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_363_0
                        mov              qword ptr [rbp + 400], 5
                        mov              qword ptr [rbp + 408], rax
.Lbinop_α_363_7:                                                              jmp   n00041_call_icon_α
.Lbinop_α_363_0:        mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        mov              rdx, qword ptr [rbp + 608]
                        mov              rcx, qword ptr [rbp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00028_var_ref_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n00041_call_icon_α
                        .size            n00040_binop_bx, .-n00040_binop_bx
                        .type            n00041_call_icon_bx, @function
n00041_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00041_call_icon_α:       mov              r11, 139
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lcall_icon_α_rkfn365:  .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn365]
                        lea              rsi, [rbp + 368]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458878
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    n00028_var_ref_α
                                                                              jmp   n00042_assign_α
n00041_call_icon_β:       mov              r11, 139;                            jmp   n00028_var_ref_α
                        .size            n00041_call_icon_bx, .-n00041_call_icon_bx
                        .type            n00042_assign_bx, @function
n00042_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00042_assign_α:          mov              r11, 140
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx;         jmp   n00028_var_ref_α
                        .size            n00042_assign_bx, .-n00042_assign_bx
                        .type            n00028_var_ref_bx, @function
n00028_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00028_var_ref_α:         mov              r11, 141
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3248]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n00043_lit_integer_α
                        .size            n00028_var_ref_bx, .-n00028_var_ref_bx
                        .type            n00043_lit_integer_bx, @function
n00043_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00043_lit_integer_α:     mov              r11, 142
                        mov              qword ptr [rbp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_369_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n00044_deref_α
.Llit_integer_α_369_0:  .quad            7
                        .size            n00043_lit_integer_bx, .-n00043_lit_integer_bx
                        .type            n00044_deref_bx, @function
n00044_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00044_deref_α:           mov              r11, 143
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00045_lit_string_α
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n00046_call_icon_α
                        .size            n00044_deref_bx, .-n00044_deref_bx
                        .type            n00046_call_icon_bx, @function
n00046_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00046_call_icon_α:       mov              r11, 144
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lcall_icon_α_rkfn372:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn372]
                        lea              rsi, [rbp + 240]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              al, 104;                             je    n00045_lit_string_α
                                                                              jmp   n00047_call_icon_α
n00046_call_icon_β:       mov              r11, 144;                            jmp   n00045_lit_string_α
                        .size            n00046_call_icon_bx, .-n00046_call_icon_bx
                        .type            n00047_call_icon_bx, @function
n00047_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00047_call_icon_α:       mov              r11, 145
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lcall_icon_α_rkfn374:  .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn374]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              al, 104;                             je    n00045_lit_string_α
                                                                              jmp   n00045_lit_string_α
n00047_call_icon_β:       mov              r11, 145;                            jmp   n00045_lit_string_α
                        .size            n00047_call_icon_bx, .-n00047_call_icon_bx
                        .type            n00045_lit_string_bx, @function
n00045_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00045_lit_string_α:      mov              r11, 146
                        mov              qword ptr [rbp + 112], 2             # result
                        mov              dword ptr [rbp + 116], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_375_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n00048_var_ref_α
.Llit_string_α_375_0:   .quad            .Llit_string_α_375_0_s
.Llit_string_α_375_0_s: .string          "   "
                        .size            n00045_lit_string_bx, .-n00045_lit_string_bx
                        .type            n00048_var_ref_bx, @function
n00048_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00048_var_ref_α:         mov              r11, 147
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n00049_deref_α
                        .size            n00048_var_ref_bx, .-n00048_var_ref_bx
                        .type            n00049_deref_bx, @function
n00049_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00049_deref_α:           mov              r11, 148
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00050_return_α
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx;          jmp   n00051_call_icon_α
                        .size            n00049_deref_bx, .-n00049_deref_bx
                        .type            n00051_call_icon_bx, @function
n00051_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00051_call_icon_α:       mov              r11, 149
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lcall_icon_α_rkfn380:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn380]
                        lea              rsi, [rbp + 64]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    n00050_return_α
                                                                              jmp   n00050_return_α
n00051_call_icon_β:       mov              r11, 149;                            jmp   n00050_return_α
                        .size            n00051_call_icon_bx, .-n00051_call_icon_bx
                        .type            n00050_return_bx, @function
n00050_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00050_return_α:          mov              r11, 150
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              rax, qword ptr [rbp + 0]
                        mov              rdx, qword ptr [rbp + 8];            jmp   dofile_γ
                        .size            n00050_return_bx, .-n00050_return_bx
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
                        cmp              rax, 0;                              je    .Ldofile_α_381_248
                        .section         .rodata
.Licn_trace_nm382:      .string          "dofile"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm382]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ldofile_α_381_248:     mov              rsp, rbx
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
                        lea              rsp, [rbp + 3600]
                        mov              rbp, qword ptr [rbp + 3592];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
dofile_ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Ldofile_α_381_249
                        .section         .rodata
.Licn_trace_nm383:      .string          "dofile"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm383]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ldofile_α_381_249:     mov              rsp, rbx
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
                        lea              rsp, [rbp + 3600]
                        mov              rbp, qword ptr [rbp + 3592];         jmp   qword ptr [rsp + 8]
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
                        lea              rcx, [rip + .Ldofile_α_384_3]
                        push             rcx
                        lea              rcx, [rip + .Ldofile_α_384_2]
                        push             rcx;                                 jmp   FN__dofile
.Ldofile_α_384_2:       add              rsp, 24
                        pop              r12;                                 jmp   r12
.Ldofile_α_384_3:       add              rsp, 24
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
                        mov              r12, qword ptr [0x70000000]
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
                        sub              rsp, 992
                        mov              qword ptr [rsp + 984], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 832
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
                        .type            n00052_lit_string_bx, @function
n00052_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00052_lit_string_α:      mov              r11, 151
                        mov              qword ptr [rbp + 800], 2             # result
                        mov              dword ptr [rbp + 804], 42
                        mov              rax, qword ptr [rip + .Llit_string_α_416_0]
                        mov              qword ptr [rbp + 808], rax;          jmp   n00053_call_icon_α
.Llit_string_α_416_0:   .quad            .Llit_string_α_416_0_s
.Llit_string_α_416_0_s: .string          "  N ovhead rmserr median  gmean   filename"
                        .size            n00052_lit_string_bx, .-n00052_lit_string_bx
                        .type            n00053_call_icon_bx, @function
n00053_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00053_call_icon_α:       mov              r11, 152
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        .section         .rodata
.Lcall_icon_α_rkfn418:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn418]
                        lea              rsi, [rbp + 768]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              al, 104;                             je    n00054_disjunction_α
                                                                              jmp   n00054_disjunction_α
n00053_call_icon_β:       mov              r11, 152;                            jmp   n00054_disjunction_α
                        .size            n00053_call_icon_bx, .-n00053_call_icon_bx
                        .type            n00054_disjunction_bx, @function
n00054_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00054_disjunction_α:     mov              r11, 153
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0;             jmp   n00055_var_α
.Ldisjunction_γ_387_as: mov              r11, 153
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_420_0
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax;           jmp   main_ω
.Ldisjunction_α_420_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_420_1
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 40], rax;           jmp   main_ω
.Ldisjunction_α_420_1:                                                        jmp   main_ω
n00054_disjunction_β:     mov              r11, 153
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0;                              je    main_ω
                                                                              jmp   n00056_goto_β
.Ldisjunction_γ_387_af: mov              r11, 153
.Ldisjunction_ω_387_af: mov              r11, 153
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 1;                              je    n00057_var_ref_α
                                                                              jmp   main_ω
                        .size            n00054_disjunction_bx, .-n00054_disjunction_bx
                        .type            n00058_var_bx, @function
n00058_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00058_var_α:             mov              r11, 154
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 264], rax;          jmp   .Ldisjunction_γ_387_as
n00058_var_β:             mov              r11, 154;                            jmp   main_ω
                        .size            n00058_var_bx, .-n00058_var_bx
                        .type            n00057_var_ref_bx, @function
n00057_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00057_var_ref_α:         mov              r11, 155
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n00059_deref_α
n00057_var_ref_β:         mov              r11, 155;                            jmp   main_ω
                        .size            n00057_var_ref_bx, .-n00057_var_ref_bx
                        .type            n00059_deref_bx, @function
n00059_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00059_deref_α:           mov              r11, 156
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
                        mov              qword ptr [rbp + 360], rdx;          jmp   n00060_call_icon_α
                        .size            n00059_deref_bx, .-n00059_deref_bx
                        .type            n00060_call_icon_bx, @function
n00060_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00060_call_icon_α:       mov              r11, 157
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lcall_icon_α_rkfn427:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn427]
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
                                                                              jmp   n00061_assign_α
n00060_call_icon_β:       mov              r11, 157;                            jmp   main_ω
                        .size            n00060_call_icon_bx, .-n00060_call_icon_bx
                        .type            n00061_assign_bx, @function
n00061_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00061_assign_α:          mov              r11, 158
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx;          jmp   n00062_disjunction_α
                        .size            n00061_assign_bx, .-n00061_assign_bx
                        .type            n00062_disjunction_bx, @function
n00062_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00062_disjunction_α:     mov              r11, 159
                        mov              qword ptr [rbp + 512], 0
                        mov              qword ptr [rbp + 520], 0
                        mov              dword ptr [rbp + 528], 0;            jmp   n00063_var_ref_α
.Ldisjunction_γ_393_as: mov              r11, 159
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_430_0
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax;          jmp   n00064_assign_α
.Ldisjunction_α_430_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_430_1
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 520], rax;          jmp   n00064_assign_α
.Ldisjunction_α_430_1:                                                        jmp   n00064_assign_α
n00062_disjunction_β:     mov              r11, 159
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_393_af
                                                                              jmp   .Ldisjunction_ω_393_af
.Ldisjunction_γ_393_af: mov              r11, 159
.Ldisjunction_ω_393_af: mov              r11, 159
                        add              dword ptr [rbp + 528], 1
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 1;                              je    n00065_lit_string_α
                                                                              jmp   n00066_var_ref_α
                        .size            n00062_disjunction_bx, .-n00062_disjunction_bx
                        .type            n00064_assign_bx, @function
n00064_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00064_assign_α:          mov              r11, 160
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx;          jmp   n00066_var_ref_α
                        .size            n00064_assign_bx, .-n00064_assign_bx
                        .type            n00066_var_ref_bx, @function
n00066_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00066_var_ref_α:         mov              r11, 161
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n00067_var_ref_α
                        .size            n00066_var_ref_bx, .-n00066_var_ref_bx
                        .type            n00067_var_ref_bx, @function
n00067_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00067_var_ref_α:         mov              r11, 162
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 848]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx;          jmp   n00068_deref_α
                        .size            n00067_var_ref_bx, .-n00067_var_ref_bx
                        .type            n00068_deref_bx, @function
n00068_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00068_deref_α:           mov              r11, 163
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00057_var_ref_α
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n00069_deref_α
                        .size            n00068_deref_bx, .-n00068_deref_bx
                        .type            n00069_deref_bx, @function
n00069_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00069_deref_α:           mov              r11, 164
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00057_var_ref_α
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n00070_call_proc_staged_α
                        .size            n00069_deref_bx, .-n00069_deref_bx
                        .type            n00070_call_proc_staged_bx, @function
n00070_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00070_call_proc_staged_α:
                        mov              r11, 165
                        lea              rsi, [rbp + 480]
                        lea              rdx, [rbp + 496]
                        call             dofile_dcα;                          jmp   .Lcall_proc_staged_α_439_2
.Lcall_proc_staged_α_439_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_439_29
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
.Lcall_proc_staged_α_439_29:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              al, 104;                             je    n00057_var_ref_α
                                                                              jmp   n00071_conjunction_α
n00070_call_proc_staged_β:
                        mov              r11, 165;                            jmp   n00057_var_ref_α
.Lcall_proc_staged_β_439_0:
                        .quad            .Lcall_proc_staged_β_439_0_s
.Lcall_proc_staged_β_439_0_s:
                        .string          "dofile"
                        .size            n00070_call_proc_staged_bx, .-n00070_call_proc_staged_bx
                        .type            n00071_conjunction_bx, @function
n00071_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00071_conjunction_α:     mov              r11, 166
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 376], rax;          jmp   n00057_var_ref_α
n00071_conjunction_β:     mov              r11, 166;                            jmp   n00057_var_ref_α
                        .size            n00071_conjunction_bx, .-n00071_conjunction_bx
                        .type            n00056_goto_bx, @function
n00056_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00056_goto_α:            mov              r11, 167;                            jmp   n00057_var_ref_α
n00056_goto_β:            mov              r11, 167;                            jmp   n00057_var_ref_α
                        .size            n00056_goto_bx, .-n00056_goto_bx
                        .type            n00065_lit_string_bx, @function
n00065_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00065_lit_string_α:      mov              r11, 168
                        mov              qword ptr [rbp + 688], 2             # result
                        mov              dword ptr [rbp + 692], 12
                        mov              rax, qword ptr [rip + .Llit_string_α_442_0]
                        mov              qword ptr [rbp + 696], rax;          jmp   n00072_var_ref_α
n00065_lit_string_β:      mov              r11, 168;                            jmp   .Ldisjunction_ω_393_af
.Llit_string_α_442_0:   .quad            .Llit_string_α_442_0_s
.Llit_string_α_442_0_s: .string          "cannot open "
                        .size            n00065_lit_string_bx, .-n00065_lit_string_bx
                        .type            n00072_var_ref_bx, @function
n00072_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00072_var_ref_α:         mov              r11, 169
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 848]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx;          jmp   n00073_deref_α
                        .size            n00072_var_ref_bx, .-n00072_var_ref_bx
                        .type            n00073_deref_bx, @function
n00073_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00073_deref_α:           mov              r11, 170
                        mov              rdi, qword ptr [rbp + 720]
                        mov              rsi, qword ptr [rbp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_393_af
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx;          jmp   n00074_call_icon_α
                        .size            n00073_deref_bx, .-n00073_deref_bx
                        .type            n00074_call_icon_bx, @function
n00074_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00074_call_icon_α:       mov              r11, 171
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 648], rax
                        .section         .rodata
.Lcall_icon_α_rkfn447:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn447]
                        lea              rsi, [rbp + 640]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_393_af
                                                                              jmp   .Ldisjunction_γ_393_as
n00074_call_icon_β:       mov              r11, 171;                            jmp   .Ldisjunction_ω_393_af
                        .size            n00074_call_icon_bx, .-n00074_call_icon_bx
                        .type            n00063_var_ref_bx, @function
n00063_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00063_var_ref_α:         mov              r11, 172
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 848]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n00075_deref_α
n00063_var_ref_β:         mov              r11, 172;                            jmp   .Ldisjunction_ω_393_af
                        .size            n00063_var_ref_bx, .-n00063_var_ref_bx
                        .type            n00075_deref_bx, @function
n00075_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00075_deref_α:           mov              r11, 173
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_393_af
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx;          jmp   n00076_call_icon_α
                        .size            n00075_deref_bx, .-n00075_deref_bx
                        .type            n00076_call_icon_bx, @function
n00076_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00076_call_icon_α:       mov              r11, 174
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lcall_icon_α_rkfn452:  .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn452]
                        lea              rsi, [rbp + 560]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262287
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_393_af
                                                                              jmp   .Ldisjunction_γ_393_as
n00076_call_icon_β:       mov              r11, 174;                            jmp   .Ldisjunction_ω_393_af
                        .size            n00076_call_icon_bx, .-n00076_call_icon_bx
                        .type            n00055_var_bx, @function
n00055_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00055_var_α:             mov              r11, 175
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 232], rax;          jmp   n00077_unop_α
n00055_var_β:             mov              r11, 175;                            jmp   .Ldisjunction_ω_387_af
                        .size            n00055_var_bx, .-n00055_var_bx
                        .type            n00077_unop_bx, @function
n00077_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00077_unop_α:            mov              r11, 176
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
                        mov              qword ptr [rbp + 216], rdx;          jmp   n00078_lit_integer_α
                        .size            n00077_unop_bx, .-n00077_unop_bx
                        .type            n00078_lit_integer_bx, @function
n00078_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00078_lit_integer_α:     mov              r11, 177
                        mov              qword ptr [rbp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_456_0]
                        mov              qword ptr [rbp + 248], rax;          jmp   n00079_binop_test_α
.Llit_integer_α_456_0:  .quad            0
                        .size            n00078_lit_integer_bx, .-n00078_lit_integer_bx
                        .type            n00079_binop_test_bx, @function
n00079_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00079_binop_test_α:      mov              r11, 178
                        mov              eax, dword ptr [rbp + 208]
                        cmp              al, 112;                             je    .Lbinop_test_α_457_0
                        mov              eax, dword ptr [rbp + 240]
                        cmp              al, 112;                             je    .Lbinop_test_α_457_0
                        mov              eax, dword ptr [rbp + 208]
                        cmp              al, 3;                               jne   .Lbinop_test_α_457_2
                        mov              eax, dword ptr [rbp + 240]
                        cmp              al, 3;                               jne   .Lbinop_test_α_457_2
.Lbinop_test_α_457_1:   mov              rax, qword ptr [rbp + 216]
                        mov              rcx, qword ptr [rbp + 248]
                        cmp              rax, rcx;                            jne   .Ldisjunction_ω_387_af
                        mov              rcx, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rcx
                        mov              rcx, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rcx;          jmp   n00080_kw_icon_α
.Lbinop_test_α_457_0:   mov              rdi, qword ptr [rbp + 208]
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
                        test             eax, eax;                            je    .Lbinop_test_α_457_1
                        cmp              eax, 1;                              je    .Ldisjunction_ω_387_af
                                                                              jmp   n00080_kw_icon_α
.Lbinop_test_α_457_2:   mov              rdi, qword ptr [rbp + 208]
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
                        test             eax, eax;                            jz    .Ldisjunction_ω_387_af
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00080_kw_icon_α
                        .size            n00079_binop_test_bx, .-n00079_binop_test_bx
                        .type            n00080_kw_icon_bx, @function
n00080_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00080_kw_icon_α:         mov              r11, 179
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_458_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    main_ω
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n00081_lit_string_α
n00080_kw_icon_β:         mov              r11, 179;                            jmp   main_ω
.Lkw_icon_α_458_0:      .quad            .Lkw_icon_α_458_0_s
.Lkw_icon_α_458_0_s:    .string          "&input"
                        .size            n00080_kw_icon_bx, .-n00080_kw_icon_bx
                        .type            n00081_lit_string_bx, @function
n00081_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00081_lit_string_α:      mov              r11, 180
                        mov              qword ptr [rbp + 160], 2             # result
                        mov              dword ptr [rbp + 164], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_459_0]
                        mov              qword ptr [rbp + 168], rax;          jmp   n00082_call_proc_staged_α
.Llit_string_α_459_0:   .quad            .Llit_string_α_459_0_s
.Llit_string_α_459_0_s: .string          "stdin"
                        .size            n00081_lit_string_bx, .-n00081_lit_string_bx
                        .type            n00082_call_proc_staged_bx, @function
n00082_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00082_call_proc_staged_α:
                        mov              r11, 181
                        lea              rsi, [rbp + 128]
                        lea              rdx, [rbp + 160]
                        call             dofile_dcα;                          jmp   .Lcall_proc_staged_α_461_2
.Lcall_proc_staged_α_461_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_461_29
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
.Lcall_proc_staged_α_461_29:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   .Ldisjunction_γ_387_as
n00082_call_proc_staged_β:
                        mov              r11, 181;                            jmp   main_ω
.Lcall_proc_staged_β_461_0:
                        .quad            .Lcall_proc_staged_β_461_0_s
.Lcall_proc_staged_β_461_0_s:
                        .string          "dofile"
                        .size            n00082_call_proc_staged_bx, .-n00082_call_proc_staged_bx
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
                        cmp              rax, 0;                              je    .Lmain_α_461_248
                        .section         .rodata
.Licn_trace_nm462:      .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm462]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_461_248:       mov              rsp, rbx
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
                        cmp              rax, 0;                              je    .Lmain_α_461_249
                        .section         .rodata
.Licn_trace_nm463:      .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm463]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_461_249:       mov              rsp, rbx
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
                        .long            3376
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
