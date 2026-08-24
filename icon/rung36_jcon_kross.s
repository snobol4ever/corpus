                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__cross:
                        sub              rsp, 704
                        mov              rdi, rsp
                        add              rdi, 560
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
cross_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:               mov              r11, 1
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 136], rax;          jmp   n1_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:               mov              r11, 2
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 152], rax;          jmp   n2_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_gen_α:  mov              r11, 3
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 88], rax
                        mov              qword ptr [rsp + 112], 0
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx24_60:               .section         .rodata
.Lbynamegenfn3:         .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn3]
                        lea              rsi, [rsp + 80]
                        mov              edx, 2
                        lea              rcx, [rsp + 112]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    cross_ω
                                                                              jmp   n3_assign_α
n2_call_builtin_gen_β:  mov              r11, 3;                              jmp   .Lx24_60
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:            mov              r11, 4
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n4_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n4_bound_α:             mov              r11, 5
                        mov              qword ptr [rsp + 160], rsp;          jmp   n5_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              r11, 6
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:               mov              r11, 7
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 296], rax;          jmp   n7_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n7_subscript_α:         mov              r11, 8
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
                        cmp              al, 104;                             je    n19_unmark_α
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n8_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n8_deref_α:             mov              r11, 9
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
                        cmp              al, 104;                             je    n19_unmark_α
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n9_var_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:               mov              r11, 10
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 344], rax;          jmp   n10_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_gen_α: mov              r11, 11
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 232], rax
                        mov              qword ptr [rsp + 256], 0
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx36_60:               .section         .rodata
.Lbynamegenfn11:        .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn11]
                        lea              rsi, [rsp + 224]
                        mov              edx, 2
                        lea              rcx, [rsp + 256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n19_unmark_α
                                                                              jmp   n11_assign_α
n10_call_builtin_gen_β: mov              r11, 11;                             jmp   .Lx36_60
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:           mov              r11, 12
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n12_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n12_bound_α:            mov              r11, 13
                        mov              qword ptr [rsp + 352], rsp;          jmp   n13_var_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:              mov              r11, 14
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 504], rax;          jmp   n14_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:              mov              r11, 15
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 520], rax;          jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:              mov              r11, 16
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax;          jmp   n16_var_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:              mov              r11, 17
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax;          jmp   n17_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n17_call_proc_staged_α: mov              r11, 18
                        lea              rsi, [rsp + 496]
                        lea              rdx, [rsp + 512]
                        lea              rcx, [rsp + 528]
                        lea              r8, [rsp + 544]
                        call             xprint_dcα;                          jmp   .Lx49_2
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
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
.Lx49_29:               mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n18_unmark_α
                                                                              jmp   n18_unmark_α
n17_call_proc_staged_β: mov              r11, 18;                             jmp   n18_unmark_α
.Lx49_0:                .quad            .Lx49_0_s
.Lx49_0_s:              .string          "xprint"
#-----------------------------------------------------------------------------------------------------------------------
n18_unmark_α:           mov              r11, 19
                        mov              rsp, qword ptr [rsp + 352];          jmp   n10_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n19_unmark_α:           mov              r11, 20
                        mov              rsp, qword ptr [rsp + 160];          jmp   n2_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
cross_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
cross_β:
                                                                              jmp   cross_ω
#-----------------------------------------------------------------------------------------------------------------------
cross_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 704;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
cross_ω:
                        add              rsp, 704;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
cross_dcα:
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
                        lea              rcx, [rip + .Lx54_3]
                        push             rcx
                        lea              rcx, [rip + .Lx54_2]
                        push             rcx;                                 jmp   FN__cross
.Lx54_2:                add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx54_3:                add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__xprint:
                        sub              rsp, 880
                        mov              rdi, rsp
                        mov              esi, 4
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
xprint_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n55_call_builtin_icon_α:
                        mov              r11, 21
                        .section         .rodata
.Lrkfn84:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn84]
                        lea              rsi, [rsp + 752]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    n56_var_ref_α
                                                                              jmp   n56_var_ref_α
n55_call_builtin_icon_β:
                        mov              r11, 21;                             jmp   n56_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:          mov              r11, 22
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n57_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:      mov              r11, 23
                        mov              qword ptr [rsp + 608], 3             # result
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n58_var_α
.Lx87_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:              mov              r11, 24
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 664], rax;          jmp   n59_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_integer_α:      mov              r11, 25
                        mov              qword ptr [rsp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n60_coerce_numeric_α
.Lx90_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n60_coerce_numeric_α:   mov              r11, 26
                        mov              eax, dword ptr [rsp + 64]
                        cmp              al, 5;                               je    .Lx92_1
                        cmp              al, 3;                               jne   .Lx92_0
                        mov              eax, dword ptr [rsp + 672]
                        cmp              al, 3;                               jne   .Lx92_0
.Lx92_1:                mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 648], rax;          jmp   n61_binop_α
.Lx92_0:                lea              rdi, [rsp + 64]
                        lea              rsi, [rsp + 672]
                        lea              rdx, [rsp + 640]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n61_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n61_binop_α:            mov              r11, 27
                        mov              eax, dword ptr [rsp + 640]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx93_2
                        mov              rax, qword ptr [rsp + 648]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 624], 3
                        mov              qword ptr [rsp + 632], rax;          jmp   .Lx93_7
.Lx93_2:                and              edx, 1;                              jz    .Lx93_0
                        mov              rsi, qword ptr [rsp + 648]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx93_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx93_4
.Lx93_3:                movq             xmm0, rsi
.Lx93_4:                cmp              cl, 5;                               je    .Lx93_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx93_6
.Lx93_5:                movq             xmm1, rdi
.Lx93_6:                subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 624], 5
                        mov              qword ptr [rsp + 632], rax
.Lx93_7:                                                                      jmp   n62_to_α
.Lx93_0:                mov              rdi, qword ptr [rsp + 640]
                        mov              rsi, qword ptr [rsp + 648]
                        mov              rdx, qword ptr [rsp + 672]
                        mov              rcx, qword ptr [rsp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n68_var_α
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n62_to_α
#-----------------------------------------------------------------------------------------------------------------------
n62_to_α:               mov              r11, 28
                        mov              rdi, qword ptr [rsp + 608]
                        mov              rsi, qword ptr [rsp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 608], 3
                        mov              qword ptr [rsp + 616], rax
                        mov              rdi, qword ptr [rsp + 624]
                        mov              rsi, qword ptr [rsp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 624], 3
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 592], rax
.Lx95_0:                mov              rax, qword ptr [rsp + 592]
                        mov              rcx, qword ptr [rsp + 632]
                        cmp              rax, rcx;                            jg    n68_var_α
                        mov              qword ptr [rsp + 576], 3
                        mov              qword ptr [rsp + 584], rax;          jmp   n63_subscript_α
n62_to_β:               mov              r11, 28
                        inc              qword ptr [rsp + 592];               jmp   .Lx95_0
#-----------------------------------------------------------------------------------------------------------------------
n63_subscript_α:        mov              r11, 29
                        mov              rdi, qword ptr [rsp + 560]
                        mov              rsi, qword ptr [rsp + 568]
                        mov              rdx, qword ptr [rsp + 576]
                        mov              rcx, qword ptr [rsp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n62_to_β
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n64_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n64_deref_α:            mov              r11, 30
                        mov              rdi, qword ptr [rsp + 688]
                        mov              rsi, qword ptr [rsp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n62_to_β
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n65_var_α
#-----------------------------------------------------------------------------------------------------------------------
n65_var_α:              mov              r11, 31
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 728], rax;          jmp   n66_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n66_call_builtin_icon_α:
                        mov              r11, 32
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 520], rax
                        .section         .rodata
.Lrkfn101:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn101]
                        lea              rsi, [rsp + 512]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n62_to_β
                                                                              jmp   n67_call_builtin_icon_α
n66_call_builtin_icon_β:
                        mov              r11, 32;                             jmp   n62_to_β
#-----------------------------------------------------------------------------------------------------------------------
n67_call_builtin_icon_α:
                        mov              r11, 33
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 472], rax
                        .section         .rodata
.Lrkfn103:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn103]
                        lea              rsi, [rsp + 464]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n62_to_β
                                                                              jmp   n62_to_β
n67_call_builtin_icon_β:
                        mov              r11, 33;                             jmp   n62_to_β
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:              mov              r11, 34
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 440], rax;          jmp   n69_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n69_call_builtin_icon_α:
                        mov              r11, 35
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 408], rax
                        .section         .rodata
.Lrkfn107:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn107]
                        lea              rsi, [rsp + 400]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n70_var_ref_α
                                                                              jmp   n70_var_ref_α
n69_call_builtin_icon_β:
                        mov              r11, 35;                             jmp   n70_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:          mov              r11, 36
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n71_var_α
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:              mov              r11, 37
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 280], rax;          jmp   n72_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_integer_α:      mov              r11, 38
                        mov              qword ptr [rsp + 288], 3             # result
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n73_coerce_numeric_α
.Lx112_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n73_coerce_numeric_α:   mov              r11, 39
                        mov              eax, dword ptr [rsp + 64]
                        cmp              al, 5;                               je    .Lx114_1
                        cmp              al, 3;                               jne   .Lx114_0
                        mov              eax, dword ptr [rsp + 288]
                        cmp              al, 3;                               jne   .Lx114_0
.Lx114_1:               mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 264], rax;          jmp   n74_binop_α
.Lx114_0:               lea              rdi, [rsp + 64]
                        lea              rsi, [rsp + 288]
                        lea              rdx, [rsp + 256]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n74_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n74_binop_α:            mov              r11, 40
                        mov              eax, dword ptr [rsp + 256]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx115_2
                        mov              rax, qword ptr [rsp + 264]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 240], 3
                        mov              qword ptr [rsp + 248], rax;          jmp   .Lx115_7
.Lx115_2:               and              edx, 1;                              jz    .Lx115_0
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx115_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx115_4
.Lx115_3:               movq             xmm0, rsi
.Lx115_4:               cmp              cl, 5;                               je    .Lx115_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx115_6
.Lx115_5:               movq             xmm1, rdi
.Lx115_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 240], 5
                        mov              qword ptr [rsp + 248], rax
.Lx115_7:                                                                     jmp   n75_var_α
.Lx115_0:               mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 288]
                        mov              rcx, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    xprint_ω
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n75_var_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_α:              mov              r11, 41
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 328], rax;          jmp   n76_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n76_unop_α:             mov              r11, 42
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n77_to_α
#-----------------------------------------------------------------------------------------------------------------------
n77_to_α:               mov              r11, 43
                        mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 240], 3
                        mov              qword ptr [rsp + 248], rax
                        mov              rdi, qword ptr [rsp + 304]
                        mov              rsi, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 304], 3
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 224], rax
.Lx120_0:               mov              rax, qword ptr [rsp + 224]
                        mov              rcx, qword ptr [rsp + 312]
                        cmp              rax, rcx;                            jg    xprint_ω
                        mov              qword ptr [rsp + 208], 3
                        mov              qword ptr [rsp + 216], rax;          jmp   n78_subscript_α
n77_to_β:               mov              r11, 43
                        inc              qword ptr [rsp + 224];               jmp   .Lx120_0
#-----------------------------------------------------------------------------------------------------------------------
n78_subscript_α:        mov              r11, 44
                        mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdx, qword ptr [rsp + 208]
                        mov              rcx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n77_to_β
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n79_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n79_deref_α:            mov              r11, 45
                        mov              rdi, qword ptr [rsp + 336]
                        mov              rsi, qword ptr [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n77_to_β
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n80_var_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_α:              mov              r11, 46
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 376], rax;          jmp   n81_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n81_call_builtin_icon_α:
                        mov              r11, 47
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lrkfn126:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn126]
                        lea              rsi, [rsp + 144]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n77_to_β
                                                                              jmp   n82_call_builtin_icon_α
n81_call_builtin_icon_β:
                        mov              r11, 47;                             jmp   n77_to_β
#-----------------------------------------------------------------------------------------------------------------------
n82_call_builtin_icon_α:
                        mov              r11, 48
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn128:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn128]
                        lea              rsi, [rsp + 96]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n77_to_β
                                                                              jmp   n77_to_β
n82_call_builtin_icon_β:
                        mov              r11, 48;                             jmp   n77_to_β
#-----------------------------------------------------------------------------------------------------------------------
xprint_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
xprint_β:
                                                                              jmp   xprint_ω
#-----------------------------------------------------------------------------------------------------------------------
xprint_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 880;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
xprint_ω:
                        add              rsp, 880;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
xprint_dcα:
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
                        lea              rcx, [rip + .Lx129_3]
                        push             rcx
                        lea              rcx, [rip + .Lx129_2]
                        push             rcx;                                 jmp   FN__xprint
.Lx129_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx129_3:               add              rsp, 24
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
                        sub              rsp, 544
                        mov              rdi, rsp
                        add              rdi, 432
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n130_call_builtin_icon_α:
                        mov              r11, 49
                        .section         .rodata
.Lrkfn151:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn151]
                        lea              rsi, [rsp + 32]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262295
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n131_assign_α
n130_call_builtin_icon_β:
                        mov              r11, 49;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n131_assign_α:          mov              r11, 50
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n132_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n132_call_builtin_icon_α:
                        mov              r11, 51
                        .section         .rodata
.Lrkfn154:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn154]
                        lea              rsi, [rsp + 416]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n133_lit_charset_α
                                                                              jmp   n133_lit_charset_α
n132_call_builtin_icon_β:
                        mov              r11, 51;                             jmp   n133_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_charset_α:     mov              r11, 52
                        mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], -1
                        mov              rax, qword ptr [rip + .Lx155_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n134_var_α
.Lx155_0:               .quad            .Lx155_0_s
.Lx155_0_s:             .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n134_var_α:             mov              r11, 53
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 392], rax;          jmp   n135_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n135_call_builtin_gen_α:
                        mov              r11, 54
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 328], rax
                        mov              qword ptr [rsp + 352], 0
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx158_60:              .section         .rodata
.Lbynamegenfn54:        .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn54]
                        lea              rsi, [rsp + 320]
                        mov              edx, 2
                        lea              rcx, [rsp + 352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    n137_var_α
                                                                              jmp   n136_assign_α
n135_call_builtin_gen_β:
                        mov              r11, 54;                             jmp   .Lx158_60
#-----------------------------------------------------------------------------------------------------------------------
n136_assign_α:          mov              r11, 55
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n137_var_α
#-----------------------------------------------------------------------------------------------------------------------
n137_var_α:             mov              r11, 56
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 152], rax;          jmp   n138_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_integer_α:     mov              r11, 57
                        mov              qword ptr [rsp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n139_var_α
.Lx162_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:             mov              r11, 58
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 184], rax;          jmp   n140_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n140_subscript_α:       mov              r11, 59
                        mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdx, qword ptr [rsp + 160]
                        mov              rcx, qword ptr [rsp + 168]
                        mov              r8, qword ptr [rsp + 176]
                        mov              r9, qword ptr [rsp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n130_call_builtin_icon_α
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n141_var_α
#-----------------------------------------------------------------------------------------------------------------------
n141_var_α:             mov              r11, 60
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 216], rax;          jmp   n142_var_α
#-----------------------------------------------------------------------------------------------------------------------
n142_var_α:             mov              r11, 61
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 264], rax;          jmp   n143_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_integer_α:     mov              r11, 62
                        mov              qword ptr [rsp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n144_coerce_numeric_α
.Lx170_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n144_coerce_numeric_α:  mov              r11, 63
                        mov              eax, dword ptr [rsp + 448]
                        cmp              al, 5;                               je    .Lx172_1
                        cmp              al, 3;                               jne   .Lx172_0
                        mov              eax, dword ptr [rsp + 272]
                        cmp              al, 3;                               jne   .Lx172_0
.Lx172_1:               mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 248], rax;          jmp   n145_binop_α
.Lx172_0:               lea              rdi, [rsp + 448]
                        lea              rsi, [rsp + 272]
                        lea              rdx, [rsp + 240]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n145_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n145_binop_α:           mov              r11, 64
                        mov              eax, dword ptr [rsp + 240]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx173_2
                        mov              rax, qword ptr [rsp + 248]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 224], 3
                        mov              qword ptr [rsp + 232], rax;          jmp   .Lx173_7
.Lx173_2:               and              edx, 1;                              jz    .Lx173_0
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx173_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx173_4
.Lx173_3:               movq             xmm0, rsi
.Lx173_4:               cmp              cl, 5;                               je    .Lx173_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx173_6
.Lx173_5:               movq             xmm1, rdi
.Lx173_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 224], 5
                        mov              qword ptr [rsp + 232], rax
.Lx173_7:                                                                     jmp   n146_lit_integer_α
.Lx173_0:               mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              rcx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n130_call_builtin_icon_α
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n146_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_integer_α:     mov              r11, 65
                        mov              qword ptr [rsp + 288], 3             # result
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n147_subscript_α
.Lx174_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n147_subscript_α:       mov              r11, 66
                        mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdx, qword ptr [rsp + 224]
                        mov              rcx, qword ptr [rsp + 232]
                        mov              r8, qword ptr [rsp + 288]
                        mov              r9, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n130_call_builtin_icon_α
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n148_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n148_call_proc_staged_α:
                        mov              r11, 67
                        lea              rsi, [rsp + 128]
                        lea              rdx, [rsp + 192]
                        call             cross_dcα;                           jmp   .Lx177_2
.Lx177_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx177_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
.Lx177_29:              mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    n130_call_builtin_icon_α
                                                                              jmp   n149_conjunction_α
n148_call_proc_staged_β:
                        mov              r11, 67;                             jmp   n130_call_builtin_icon_α
.Lx177_0:               .quad            .Lx177_0_s
.Lx177_0_s:             .string          "cross"
#-----------------------------------------------------------------------------------------------------------------------
n149_conjunction_α:     mov              r11, 68
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 56], rax;           jmp   n130_call_builtin_icon_α
n149_conjunction_β:     mov              r11, 68;                             jmp   n130_call_builtin_icon_α
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
.Lstartup_pname0:       .string          "cross"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__cross
                        .quad            cross_dcα
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
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "xprint"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__xprint
                        .quad            xprint_dcα
                        .quad            0
                        .quad            0
                        .long            4
                        .long            0
                        .long            768
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
