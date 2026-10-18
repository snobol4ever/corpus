                        .intel_syntax    noprefix
                        .text
                        .file            1 "det.pl"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_$yall$2F3_0:
FN__$yall$2F3:
                        sub              rsp, 448
                        mov              qword ptr [rsp + 424], rcx
                        mov              qword ptr [rsp + 432], rdx
                        mov              qword ptr [rsp + 440], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 304
                        mov              edx, 416
                        call             rt_jmp_frame_lexprep2@PLT
.Lgcsite_$yall$2F3_0:   mov              rdi, rsp                             # base_p
                        mov              esi, 3                               # nparams
                        mov              edx, 0                               # nlocals
                        call             rt_icn_zframe_args_install@PLT
.Lgcsite_$yall$2F3_1:   mov              eax, 0                               # GCANCHOR .Lgcmap_$yall$2F3 qword ptr [rsp + 392]
$yall$2F3_α_body:
                        .type            n0_lit_integer_bx, @function
n0_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_20_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1_var_ref_α
.Llit_integer_α_20_0:   .quad            1
                        .size            n0_lit_integer_bx, .-n0_lit_integer_bx
                        .type            n1_var_ref_bx, @function
n1_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 48]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_var_ref_α
                        .size            n1_var_ref_bx, .-n1_var_ref_bx
                        .type            n2_var_ref_bx, @function
n2_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:           sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 80]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_call_pl_leaf_α
                        .size            n2_var_ref_bx, .-n2_var_ref_bx
                        .type            n3_call_pl_leaf_bx, @function
n3_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_call_pl_leaf_α:      sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              edi, 214
                        mov              esi, 32
                        call             qword ptr [rip + rt_gcheap_alloc@GOTPCREL]
.Lgcsite_$yall$2F3_4:   movabs           rcx, 4294967376
                        mov              qword ptr [rsp + 0], rcx             # the result cell is parked in argv[0] (the functor literal's cell, dead once its id is baked above) across the poll and the kid loop: the box's result slot may be one of the kids' argv cells
                        mov              qword ptr [rsp + 8], rax
                        push             rax                                  # gc_poll bb_call_pl_leaf.cpp:315
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$yall$2F3_3:   mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              r10, qword ptr [rsp + 8]
                        lea              r9, [rsp + 16]
                        mov              r11, 2
.Lcall_pl_leaf_α_25_100:
                        test             r11, r11;                            jz    .Lcall_pl_leaf_α_25_102
                        mov              rdi, r9
.Lcall_pl_leaf_α_25_103:
                        mov              eax, dword ptr [rdi + 0]             # deref: follow a name (slen 1: the cell; slen 2: the VCELL's cell) or a bound PLVAR to the cell that holds the value; eax = its tag word
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_25_104
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_25_106
                        mov              rsi, qword ptr [rdi + 8]
                        test             rsi, rsi;                            jz    .Lcall_pl_leaf_α_25_106
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_25_105
                        cmp              rsi, rdi;                            je    .Lcall_pl_leaf_α_25_106
                        mov              rdi, rsi;                            jmp   .Lcall_pl_leaf_α_25_103
.Lcall_pl_leaf_α_25_105:
                        cmp              ecx, 2;                              jne   .Lcall_pl_leaf_α_25_106
                        mov              rsi, qword ptr [rsi + 0]
                        test             rsi, rsi;                            jz    .Lcall_pl_leaf_α_25_106
                        mov              rdi, rsi;                            jmp   .Lcall_pl_leaf_α_25_103
.Lcall_pl_leaf_α_25_104:
                        mov              rsi, qword ptr [rdi + 8]
                        test             rsi, rsi;                            jz    .Lcall_pl_leaf_α_25_106
                        cmp              rsi, rdi;                            je    .Lcall_pl_leaf_α_25_106
                        mov              rdi, rsi;                            jmp   .Lcall_pl_leaf_α_25_103
.Lcall_pl_leaf_α_25_106:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_25_107
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_25_107
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_25_107
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_25_108
                        mov              rsi, qword ptr [rdi + 8]
                        cmp              rsi, rdi;                            je    .Lcall_pl_leaf_α_25_107
.Lcall_pl_leaf_α_25_108:
                        mov              rax, qword ptr [rdi + 0]
                        mov              rdx, qword ptr [rdi + 8]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx;            jmp   .Lcall_pl_leaf_α_25_101
.Lcall_pl_leaf_α_25_107:
                        cmp              rdi, rsp;                            ja    .Lcall_pl_leaf_α_25_113
                        mov              qword ptr [r10 + 0], 72
                        mov              qword ptr [r10 + 8], rdi;            jmp   .Lcall_pl_leaf_α_25_101
.Lcall_pl_leaf_α_25_113:
                        mov              qword ptr [r10 + 0], 72
                        mov              qword ptr [r10 + 8], r10
                        test             r13, r13;                            jz    .Lcall_pl_leaf_α_25_109
                        cmp              rdi, rsp;                            ja    .Lcall_pl_leaf_α_25_170
                        mov              rax, qword ptr [r13 + 0]             # a heap cell at or above B's HB (the pad of the sentinel just under B's mark) and below the frontier was made after B: not trailed
                        mov              rdx, qword ptr [rax + -32]
                        test             rdx, rdx;                            jne   .Lcall_pl_leaf_α_25_110
                        mov              rdx, qword ptr [rax + -24]
                        cmp              rdi, rdx;                            jb    .Lcall_pl_leaf_α_25_110
                        mov              rax, qword ptr [rip + g_hp_fr@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rdi, rax;                            jb    .Lcall_pl_leaf_α_25_109
                                                                              jmp   .Lcall_pl_leaf_α_25_110
.Lcall_pl_leaf_α_25_170:
                        mov              rax, qword ptr [r13 + 32]
                        shr              rax, 8
                        cmp              rdi, rax;                            jb    .Lcall_pl_leaf_α_25_109
.Lcall_pl_leaf_α_25_110:
                        mov              rax, r12                             # the push: {cell, 0, old} on the r12 trail, the arena's top word synced for the collector
                        and              rax, 536870911
                        cmp              rax, 536870880;                      jae   .Lcall_pl_leaf_α_25_111
                        mov              rax, qword ptr [rdi + 0]
                        mov              rdx, qword ptr [rdi + 8]
                        mov              qword ptr [r12 + 0], rdi
                        mov              qword ptr [r12 + 8], 0
                        mov              qword ptr [r12 + 16], rax
                        mov              qword ptr [r12 + 24], rdx
                        add              r12, 32
                        mov              rax, r12
                        and              rax, -536870912
                        mov              qword ptr [rax + 0], r12
.Lcall_pl_leaf_α_25_109:
                        mov              qword ptr [rdi + 0], 72
                        mov              qword ptr [rdi + 8], r10
.Lcall_pl_leaf_α_25_101:
                        add              r9, 16
                        add              r10, 16
                        sub              r11, 1;                              jmp   .Lcall_pl_leaf_α_25_100
.Lcall_pl_leaf_α_25_102:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8];            jmp   .Lcall_pl_leaf_α_25_249
.Lcall_pl_leaf_α_25_111:
                        mov              rdi, r12
                        call             rt_pl_tr_refuse@PLT
.Lgcsite_$yall$2F3_2:   mov              r9,  qword ptr [rip + rtccb+48]
.Lcall_pl_leaf_α_25_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_25_249:
                        add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_25_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   $yall$2F3_ω
.Lcall_pl_leaf_α_25_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n4_lit_integer_α
n3_call_pl_leaf_β:      add              rsp, 16
                        add              rsp, 48;                             jmp   $yall$2F3_ω
                        .size            n3_call_pl_leaf_bx, .-n3_call_pl_leaf_bx
                        .type            n4_lit_integer_bx, @function
n4_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_26_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n5_var_ref_α
.Llit_integer_α_26_0:   .quad            1
                        .size            n4_lit_integer_bx, .-n4_lit_integer_bx
                        .type            n5_var_ref_bx, @function
n5_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 464]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_var_ref_α
                        .size            n5_var_ref_bx, .-n5_var_ref_bx
                        .type            n6_var_ref_bx, @function
n6_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:           sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 464]
                        mov              qword ptr [rsp + 8], rax;            jmp   n7_call_pl_leaf_α
                        .size            n6_var_ref_bx, .-n6_var_ref_bx
                        .type            n7_call_pl_leaf_bx, @function
n7_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_call_pl_leaf_α:      sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              edi, 214
                        mov              esi, 32
                        call             qword ptr [rip + rt_gcheap_alloc@GOTPCREL]
.Lgcsite_$yall$2F3_7:   movabs           rcx, 4294967376
                        mov              qword ptr [rsp + 0], rcx             # the result cell is parked in argv[0] (the functor literal's cell, dead once its id is baked above) across the poll and the kid loop: the box's result slot may be one of the kids' argv cells
                        mov              qword ptr [rsp + 8], rax
                        push             rax                                  # gc_poll bb_call_pl_leaf.cpp:315
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$yall$2F3_6:   mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              r10, qword ptr [rsp + 8]
                        lea              r9, [rsp + 16]
                        mov              r11, 2
.Lcall_pl_leaf_α_31_100:
                        test             r11, r11;                            jz    .Lcall_pl_leaf_α_31_102
                        mov              rdi, r9
.Lcall_pl_leaf_α_31_103:
                        mov              eax, dword ptr [rdi + 0]             # deref: follow a name (slen 1: the cell; slen 2: the VCELL's cell) or a bound PLVAR to the cell that holds the value; eax = its tag word
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_31_104
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_31_106
                        mov              rsi, qword ptr [rdi + 8]
                        test             rsi, rsi;                            jz    .Lcall_pl_leaf_α_31_106
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_31_105
                        cmp              rsi, rdi;                            je    .Lcall_pl_leaf_α_31_106
                        mov              rdi, rsi;                            jmp   .Lcall_pl_leaf_α_31_103
.Lcall_pl_leaf_α_31_105:
                        cmp              ecx, 2;                              jne   .Lcall_pl_leaf_α_31_106
                        mov              rsi, qword ptr [rsi + 0]
                        test             rsi, rsi;                            jz    .Lcall_pl_leaf_α_31_106
                        mov              rdi, rsi;                            jmp   .Lcall_pl_leaf_α_31_103
.Lcall_pl_leaf_α_31_104:
                        mov              rsi, qword ptr [rdi + 8]
                        test             rsi, rsi;                            jz    .Lcall_pl_leaf_α_31_106
                        cmp              rsi, rdi;                            je    .Lcall_pl_leaf_α_31_106
                        mov              rdi, rsi;                            jmp   .Lcall_pl_leaf_α_31_103
.Lcall_pl_leaf_α_31_106:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_31_107
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_31_107
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_31_107
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_31_108
                        mov              rsi, qword ptr [rdi + 8]
                        cmp              rsi, rdi;                            je    .Lcall_pl_leaf_α_31_107
.Lcall_pl_leaf_α_31_108:
                        mov              rax, qword ptr [rdi + 0]
                        mov              rdx, qword ptr [rdi + 8]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx;            jmp   .Lcall_pl_leaf_α_31_101
.Lcall_pl_leaf_α_31_107:
                        cmp              rdi, rsp;                            ja    .Lcall_pl_leaf_α_31_113
                        mov              qword ptr [r10 + 0], 72
                        mov              qword ptr [r10 + 8], rdi;            jmp   .Lcall_pl_leaf_α_31_101
.Lcall_pl_leaf_α_31_113:
                        mov              qword ptr [r10 + 0], 72
                        mov              qword ptr [r10 + 8], r10
                        test             r13, r13;                            jz    .Lcall_pl_leaf_α_31_109
                        cmp              rdi, rsp;                            ja    .Lcall_pl_leaf_α_31_170
                        mov              rax, qword ptr [r13 + 0]             # a heap cell at or above B's HB (the pad of the sentinel just under B's mark) and below the frontier was made after B: not trailed
                        mov              rdx, qword ptr [rax + -32]
                        test             rdx, rdx;                            jne   .Lcall_pl_leaf_α_31_110
                        mov              rdx, qword ptr [rax + -24]
                        cmp              rdi, rdx;                            jb    .Lcall_pl_leaf_α_31_110
                        mov              rax, qword ptr [rip + g_hp_fr@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rdi, rax;                            jb    .Lcall_pl_leaf_α_31_109
                                                                              jmp   .Lcall_pl_leaf_α_31_110
.Lcall_pl_leaf_α_31_170:
                        mov              rax, qword ptr [r13 + 32]
                        shr              rax, 8
                        cmp              rdi, rax;                            jb    .Lcall_pl_leaf_α_31_109
.Lcall_pl_leaf_α_31_110:
                        mov              rax, r12                             # the push: {cell, 0, old} on the r12 trail, the arena's top word synced for the collector
                        and              rax, 536870911
                        cmp              rax, 536870880;                      jae   .Lcall_pl_leaf_α_31_111
                        mov              rax, qword ptr [rdi + 0]
                        mov              rdx, qword ptr [rdi + 8]
                        mov              qword ptr [r12 + 0], rdi
                        mov              qword ptr [r12 + 8], 0
                        mov              qword ptr [r12 + 16], rax
                        mov              qword ptr [r12 + 24], rdx
                        add              r12, 32
                        mov              rax, r12
                        and              rax, -536870912
                        mov              qword ptr [rax + 0], r12
.Lcall_pl_leaf_α_31_109:
                        mov              qword ptr [rdi + 0], 72
                        mov              qword ptr [rdi + 8], r10
.Lcall_pl_leaf_α_31_101:
                        add              r9, 16
                        add              r10, 16
                        sub              r11, 1;                              jmp   .Lcall_pl_leaf_α_31_100
.Lcall_pl_leaf_α_31_102:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8];            jmp   .Lcall_pl_leaf_α_31_249
.Lcall_pl_leaf_α_31_111:
                        mov              rdi, r12
                        call             rt_pl_tr_refuse@PLT
.Lgcsite_$yall$2F3_5:   mov              r9,  qword ptr [rip + rtccb+48]
.Lcall_pl_leaf_α_31_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_31_249:
                        add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_31_999
                        add              rsp, 16
                        add              rsp, 112;                            jmp   $yall$2F3_ω
.Lcall_pl_leaf_α_31_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n8_call_direct_α
n7_call_pl_leaf_β:      add              rsp, 16
                        add              rsp, 112;                            jmp   $yall$2F3_ω
                        .size            n7_call_pl_leaf_bx, .-n7_call_pl_leaf_bx
                        .type            n8_call_direct_bx, @function
n8_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_call_direct_α:       sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        call             qword ptr [rip + rt_pl_dop_copy_term@GOTPCREL]
.Lgcsite_$yall$2F3_8:   push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$yall$2F3_9:   mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_32_999
                        add              rsp, 16
                        add              rsp, 128;                            jmp   $yall$2F3_ω
.Lcall_direct_α_32_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n9_var_ref_α
n8_call_direct_β:       add              rsp, 16
                        add              rsp, 128;                            jmp   $yall$2F3_ω
                        .size            n8_call_direct_bx, .-n8_call_direct_bx
                        .type            n9_var_ref_bx, @function
n9_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 176]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_var_ref_α
                        .size            n9_var_ref_bx, .-n9_var_ref_bx
                        .type            n10_var_ref_bx, @function
n10_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 544]
                        mov              qword ptr [rsp + 8], rax;            jmp   n11_var_ref_α
                        .size            n10_var_ref_bx, .-n10_var_ref_bx
                        .type            n11_var_ref_bx, @function
n11_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 528]
                        mov              qword ptr [rsp + 8], rax;            jmp   n12_call_proc_staged_α
                        .size            n11_var_ref_bx, .-n11_var_ref_bx
                        .type            n12_call_proc_staged_bx, @function
n12_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_call_proc_staged_α: sub              rsp, 16
                        mov              qword ptr [rsp + 496], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_40_200
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              r8, qword ptr [rip + g_call_args@GOTPCREL]
                        mov              r8, qword ptr [r8 + 0]
                        test             r8, r8;                              je    .Lcall_proc_staged_α_40_200
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx
                        xor              r8d, r8d;                            jmp   .Lcall_proc_staged_α_40_201
.Lcall_proc_staged_α_40_200:
                        mov              edi, 0                               # idx
                        mov              rsi, qword ptr [rsp + 272]           # v
                        mov              rdx, qword ptr [rsp + 280]           # v
                        call             rt_arg_stage@PLT
.Lgcsite_$yall$2F3_22:  mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:131
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$yall$2F3_21:  mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lcall_proc_staged_α_40_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_40_202
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              r8, qword ptr [rip + g_call_args@GOTPCREL]
                        mov              r8, qword ptr [r8 + 0]
                        test             r8, r8;                              je    .Lcall_proc_staged_α_40_202
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx
                        xor              r8d, r8d;                            jmp   .Lcall_proc_staged_α_40_203
.Lcall_proc_staged_α_40_202:
                        mov              edi, 1                               # idx
                        mov              rsi, qword ptr [rsp + 288]           # v
                        mov              rdx, qword ptr [rsp + 296]           # v
                        call             rt_arg_stage@PLT
.Lgcsite_$yall$2F3_24:  mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:131
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$yall$2F3_23:  mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lcall_proc_staged_α_40_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_40_204
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              r8, qword ptr [rip + g_call_args@GOTPCREL]
                        mov              r8, qword ptr [r8 + 0]
                        test             r8, r8;                              je    .Lcall_proc_staged_α_40_204
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx
                        xor              r8d, r8d;                            jmp   .Lcall_proc_staged_α_40_205
.Lcall_proc_staged_α_40_204:
                        mov              edi, 2                               # idx
                        mov              rsi, qword ptr [rsp + 304]           # v
                        mov              rdx, qword ptr [rsp + 312]           # v
                        call             rt_arg_stage@PLT
.Lgcsite_$yall$2F3_26:  mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:131
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$yall$2F3_25:  mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lcall_proc_staged_α_40_205:
                        mov              edi, 61                              # idx
                        mov              esi, 3                               # nargs
                        call             rt_proc_call_open_det@PLT
.Lgcsite_$yall$2F3_20:  mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:1173
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$yall$2F3_19:  mov              r9,  qword ptr [rip + rtccb+48]
1:                      sub              rsp, 16                              # CFO-36 (cfo 2026-09-09): the landing words (N-2 word, landing cell) are pushed AFTER the prologue call, not before it -- in the generator regime they are an ODD count, so rt_proc_call_open_det ran at rsp 8-mod-16 and everything it reached did too (rt_trace_event_args -> image -> vsnprintf movaps: SIGSEGV on every traced generator call with an argument; Arizona coexpr and errors, rungs rung03). The entry layout the callee sees is byte-identical; only the prologue call moved above the words,
                        test             rax, rax;                            je    .Lcall_proc_staged_α_40_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_40_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_40_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_40_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_40_3:
                        mov              edx, 1
                        mov              qword ptr [rsp + 504], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 496]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_40_5
                        mov              qword ptr [rsp + 496], 1
                        call             rt_proc_call_epilogue_γ@PLT
.Lgcsite_$yall$2F3_18:  mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lcall_proc_staged_α_40_2
.Lcall_proc_staged_α_40_5:
                        call             qword ptr [rip + rt_gen_spine_pass_γ@GOTPCREL]
.Lgcsite_$yall$2F3_17:                                                        jmp   .Lcall_proc_staged_α_40_2
.Lcall_proc_staged_α_40_4:
                        mov              edi, 1
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 496]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_40_6
                        mov              qword ptr [rsp + 496], 1
                        call             rt_proc_call_epilogue_ω@PLT
.Lgcsite_$yall$2F3_16:  mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lcall_proc_staged_α_40_2
.Lcall_proc_staged_α_40_6:
                        call             qword ptr [rip + rt_gen_spine_pass_ω@GOTPCREL]
.Lgcsite_$yall$2F3_15:                                                        jmp   .Lcall_proc_staged_α_40_2
.Lcall_proc_staged_α_40_1:
                        call             rt_ab_undef_fn_fail@PLT
.Lgcsite_$yall$2F3_14:  mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:335
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$yall$2F3_13:  mov              r9,  qword ptr [rip + rtccb+48]
1:                      add              rsp, 16
                        add              rsp, 192;                            jmp   $yall$2F3_ω
.Lcall_proc_staged_α_40_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed): the fix-up is emitted here, rt_nret_fix_tiny is gone from the graph
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_40_29
                        cmp              eax, 40;                             je    .Lcall_proc_staged_α_40_25
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_nret_name@PLT
.Lgcsite_$yall$2F3_12:  mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        cmp              eax, 40;                             je    .Lcall_proc_staged_α_40_25
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0;              jmp   .Lcall_proc_staged_α_40_23
.Lcall_proc_staged_α_40_25:
                        mov              rcx, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              jne   .Lcall_proc_staged_α_40_24
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0
                        cmp              eax, 40;                             jne   .Lcall_proc_staged_α_40_23
                        mov              rdi, rax                             # d
                        mov              rsi, rdx                             # d
                        call             rt_deref@PLT
.Lgcsite_$yall$2F3_11:  mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488];          jmp   .Lcall_proc_staged_α_40_23
.Lcall_proc_staged_α_40_24:
.Lcall_proc_staged_α_40_23:
                        mov              rcx, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0
.Lcall_proc_staged_α_40_29:
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             jne   .Lcall_proc_staged_α_40_999
                        add              rsp, 16
                        add              rsp, 192;                            jmp   $yall$2F3_ω
.Lcall_proc_staged_α_40_999:
                                                                              jmp   n13_var_ref_α
n12_call_proc_staged_β: call             qword ptr [rip + rt_gen_spine_resume_enter@GOTPCREL]
.Lgcsite_$yall$2F3_10:  mov              rax, qword ptr [rsp + 504];          jmp   qword ptr [rax]
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_proc_staged_β_40_0: .quad .Lcall_proc_staged_β_40_0_s; .popsection
.Lcall_proc_staged_β_40_0_s:
                        .string          "$yall_free/3"
                        .size            n12_call_proc_staged_bx, .-n12_call_proc_staged_bx
                        .type            n13_var_ref_bx, @function
n13_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 560]
                        mov              qword ptr [rsp + 8], rax;            jmp   n14_var_ref_α
                        .size            n13_var_ref_bx, .-n13_var_ref_bx
                        .type            n14_var_ref_bx, @function
n14_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 288]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_var_ref_α
                        .size            n14_var_ref_bx, .-n14_var_ref_bx
                        .type            n15_var_ref_bx, @function
n15_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 608]
                        mov              qword ptr [rsp + 8], rax;            jmp   n16_var_ref_α
                        .size            n15_var_ref_bx, .-n15_var_ref_bx
                        .type            n16_var_ref_bx, @function
n16_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 592]
                        mov              qword ptr [rsp + 8], rax;            jmp   n17_call_proc_staged_α
                        .size            n16_var_ref_bx, .-n16_var_ref_bx
                        .type            n17_call_proc_staged_bx, @function
n17_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_call_proc_staged_α: sub              rsp, 16
                        mov              qword ptr [rsp + 544], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_50_200
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        mov              r8, qword ptr [rip + g_call_args@GOTPCREL]
                        mov              r8, qword ptr [r8 + 0]
                        test             r8, r8;                              je    .Lcall_proc_staged_α_50_200
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx
                        xor              r8d, r8d;                            jmp   .Lcall_proc_staged_α_50_201
.Lcall_proc_staged_α_50_200:
                        mov              edi, 0                               # idx
                        mov              rsi, qword ptr [rsp + 352]           # v
                        mov              rdx, qword ptr [rsp + 360]           # v
                        call             rt_arg_stage@PLT
.Lgcsite_$yall$2F3_39:  mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:131
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$yall$2F3_38:  mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lcall_proc_staged_α_50_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_50_202
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              r8, qword ptr [rip + g_call_args@GOTPCREL]
                        mov              r8, qword ptr [r8 + 0]
                        test             r8, r8;                              je    .Lcall_proc_staged_α_50_202
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx
                        xor              r8d, r8d;                            jmp   .Lcall_proc_staged_α_50_203
.Lcall_proc_staged_α_50_202:
                        mov              edi, 1                               # idx
                        mov              rsi, qword ptr [rsp + 368]           # v
                        mov              rdx, qword ptr [rsp + 376]           # v
                        call             rt_arg_stage@PLT
.Lgcsite_$yall$2F3_41:  mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:131
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$yall$2F3_40:  mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lcall_proc_staged_α_50_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_50_204
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              r8, qword ptr [rip + g_call_args@GOTPCREL]
                        mov              r8, qword ptr [r8 + 0]
                        test             r8, r8;                              je    .Lcall_proc_staged_α_50_204
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx
                        xor              r8d, r8d;                            jmp   .Lcall_proc_staged_α_50_205
.Lcall_proc_staged_α_50_204:
                        mov              edi, 2                               # idx
                        mov              rsi, qword ptr [rsp + 384]           # v
                        mov              rdx, qword ptr [rsp + 392]           # v
                        call             rt_arg_stage@PLT
.Lgcsite_$yall$2F3_43:  mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:131
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$yall$2F3_42:  mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lcall_proc_staged_α_50_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_50_206
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        mov              r8, qword ptr [rip + g_call_args@GOTPCREL]
                        mov              r8, qword ptr [r8 + 0]
                        test             r8, r8;                              je    .Lcall_proc_staged_α_50_206
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx
                        xor              r8d, r8d;                            jmp   .Lcall_proc_staged_α_50_207
.Lcall_proc_staged_α_50_206:
                        mov              edi, 3                               # idx
                        mov              rsi, qword ptr [rsp + 400]           # v
                        mov              rdx, qword ptr [rsp + 408]           # v
                        call             rt_arg_stage@PLT
.Lgcsite_$yall$2F3_45:  mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:131
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$yall$2F3_44:  mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lcall_proc_staged_α_50_207:
                        mov              edi, 25                              # idx
                        mov              esi, 4                               # nargs
                        call             rt_proc_call_open_det@PLT
.Lgcsite_$yall$2F3_37:  mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:1173
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$yall$2F3_36:  mov              r9,  qword ptr [rip + rtccb+48]
1:                      sub              rsp, 16                              # CFO-36 (cfo 2026-09-09): the landing words (N-2 word, landing cell) are pushed AFTER the prologue call, not before it -- in the generator regime they are an ODD count, so rt_proc_call_open_det ran at rsp 8-mod-16 and everything it reached did too (rt_trace_event_args -> image -> vsnprintf movaps: SIGSEGV on every traced generator call with an argument; Arizona coexpr and errors, rungs rung03). The entry layout the callee sees is byte-identical; only the prologue call moved above the words,
                        test             rax, rax;                            je    .Lcall_proc_staged_α_50_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_50_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_50_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_50_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_50_3:
                        mov              edx, 1
                        mov              qword ptr [rsp + 552], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 544]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_50_5
                        mov              qword ptr [rsp + 544], 1
                        call             rt_proc_call_epilogue_γ@PLT
.Lgcsite_$yall$2F3_35:  mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lcall_proc_staged_α_50_2
.Lcall_proc_staged_α_50_5:
                        call             qword ptr [rip + rt_gen_spine_pass_γ@GOTPCREL]
.Lgcsite_$yall$2F3_34:                                                        jmp   .Lcall_proc_staged_α_50_2
.Lcall_proc_staged_α_50_4:
                        mov              edi, 1
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 544]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_50_6
                        mov              qword ptr [rsp + 544], 1
                        call             rt_proc_call_epilogue_ω@PLT
.Lgcsite_$yall$2F3_33:  mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lcall_proc_staged_α_50_2
.Lcall_proc_staged_α_50_6:
                        call             qword ptr [rip + rt_gen_spine_pass_ω@GOTPCREL]
.Lgcsite_$yall$2F3_32:                                                        jmp   .Lcall_proc_staged_α_50_2
.Lcall_proc_staged_α_50_1:
                        call             rt_ab_undef_fn_fail@PLT
.Lgcsite_$yall$2F3_31:  mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:335
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$yall$2F3_30:  mov              r9,  qword ptr [rip + rtccb+48]
1:                      add              rsp, 16
                        add              rsp, 64;                             jmp   n12_call_proc_staged_β
.Lcall_proc_staged_α_50_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed): the fix-up is emitted here, rt_nret_fix_tiny is gone from the graph
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_50_29
                        cmp              eax, 40;                             je    .Lcall_proc_staged_α_50_25
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_nret_name@PLT
.Lgcsite_$yall$2F3_29:  mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
                        cmp              eax, 40;                             je    .Lcall_proc_staged_α_50_25
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0;              jmp   .Lcall_proc_staged_α_50_23
.Lcall_proc_staged_α_50_25:
                        mov              rcx, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              jne   .Lcall_proc_staged_α_50_24
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0
                        cmp              eax, 40;                             jne   .Lcall_proc_staged_α_50_23
                        mov              rdi, rax                             # d
                        mov              rsi, rdx                             # d
                        call             rt_deref@PLT
.Lgcsite_$yall$2F3_28:  mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536];          jmp   .Lcall_proc_staged_α_50_23
.Lcall_proc_staged_α_50_24:
.Lcall_proc_staged_α_50_23:
                        mov              rcx, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0
.Lcall_proc_staged_α_50_29:
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             jne   .Lcall_proc_staged_α_50_999
                        add              rsp, 16
                        add              rsp, 64;                             jmp   n12_call_proc_staged_β
.Lcall_proc_staged_α_50_999:
                                                                              jmp   n18_var_α
n17_call_proc_staged_β: call             qword ptr [rip + rt_gen_spine_resume_enter@GOTPCREL]
.Lgcsite_$yall$2F3_27:  mov              rax, qword ptr [rsp + 552];          jmp   qword ptr [rax]
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_proc_staged_β_50_0: .quad .Lcall_proc_staged_β_50_0_s; .popsection
.Lcall_proc_staged_β_50_0_s:
                        .string          "$yall_bind/4"
                        .size            n17_call_proc_staged_bx, .-n17_call_proc_staged_bx
                        .type            n18_var_bx, @function
n18_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n19_call_value_α
                        .size            n18_var_bx, .-n18_var_bx
                        .type            n19_call_value_bx, @function
n19_call_value_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_call_value_α:       sub              rsp, 16
                        mov              rax, qword ptr [rsp + 512]
                        test             rax, rax;                            je    .Lcall_value_α_54_22
                        lea              rdi, [rsp + 512]                     # hslot
                        call             rt_proc_drop_frame_h@PLT
.Lgcsite_$yall$2F3_56:  mov              r9,  qword ptr [rip + rtccb+48]
.Lcall_value_α_54_22:   mov              rdi, qword ptr [rsp + 544]
                        mov              rsi, qword ptr [rsp + 552]
                        lea              rdx, [rsp + 512]
                        mov              ecx, 0
                        lea              rdi, [rip + .S0]
                        call             rt_bomb@PLT
.Lgcsite_$yall$2F3_55:  ud2
                        push             rax                                  # gc_poll bb_call_value.cpp:105
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$yall$2F3_54:  mov              r9,  qword ptr [rip + rtccb+48]
1:                      test             rax, rax;                            je    .Lcall_value_α_54_7
                        lea              rcx, [rip + .Lcall_value_α_54_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_value_α_54_3]
                        push             rcx
                        lea              rcx, [rip + .Lcall_value_α_54_3]
                        lea              rdx, [rip + .Lcall_value_α_54_4];    jmp   rax
.Lcall_value_α_54_3:    mov              qword ptr [rsp + 520], rsp
                        mov              rax, qword ptr [rsp + 512]
                        mov              rdx, rax
                        shr              rdx, 16
                        and              edx, 1
                        and              eax, 255
                        cmp              rax, 2;                              je    .Lcall_value_α_54_23
                        test             rax, rax;                            jne   .Lcall_value_α_54_5
                        mov              qword ptr [rsp + 512], 1
.Lcall_value_α_54_23:   call             rt_proc_call_epilogue_γ@PLT
.Lgcsite_$yall$2F3_53:  mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lcall_value_α_54_2
.Lcall_value_α_54_5:    call             qword ptr [rip + rt_gen_spine_pass_γ@GOTPCREL]
.Lgcsite_$yall$2F3_52:                                                        jmp   .Lcall_value_α_54_2
.Lcall_value_α_54_4:    mov              qword ptr [rsp + 520], rsp
                        mov              rax, qword ptr [rsp + 512]
                        mov              rdi, rax
                        shr              rdi, 16
                        and              edi, 1
                        and              eax, 255
                        cmp              rax, 2;                              je    .Lcall_value_α_54_24
                        test             rax, rax;                            jne   .Lcall_value_α_54_6
                        mov              qword ptr [rsp + 512], 1
.Lcall_value_α_54_24:   call             rt_proc_call_epilogue_ω@PLT
.Lgcsite_$yall$2F3_51:  mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lcall_value_α_54_2
.Lcall_value_α_54_6:    call             qword ptr [rip + rt_gen_spine_pass_ω@GOTPCREL]
.Lgcsite_$yall$2F3_50:                                                        jmp   .Lcall_value_α_54_2
.Lcall_value_α_54_7:    mov              rdi, qword ptr [rsp + 544]
                        mov              rsi, qword ptr [rsp + 552]
                        lea              rdx, [rsp + 512]
                        mov              ecx, 0
                        lea              r8, [rsp + 512]
                        mov              eax, 104
                        xor              edx, edx
.Lcall_value_α_54_2:    mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             jne   .Lcall_value_α_54_997
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n17_call_proc_staged_β
.Lcall_value_α_54_997:  push             rax                                  # gc_poll bb_call_value.cpp:320
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$yall$2F3_49:  mov              r9,  qword ptr [rip + rtccb+48]
1:                      add              rsp, 320;                            jmp   $yall$2F3_γ
n19_call_value_β:       mov              rax, qword ptr [rsp + 512]
                        cmp              rax, 2;                              jne   .Lcall_value_β_54_998
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n17_call_proc_staged_β
.Lcall_value_β_54_998:  cmp              rax, 1;                              jne   .Lcall_value_β_54_8
                        call             qword ptr [rip + rt_gen_spine_resume_enter@GOTPCREL]
.Lgcsite_$yall$2F3_48:  mov              rax, qword ptr [rsp + 520];          jmp   qword ptr [rax]
.Lcall_value_β_54_8:    lea              rdi, [rsp + 512]                     # hslot
                        mov              esi, 0                               # n
                        call             rt_call_value_resume_h@PLT
.Lgcsite_$yall$2F3_47:  mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lcall_value_β_54_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n17_call_proc_staged_β
.Lcall_value_β_54_999:  mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        push             rax                                  # gc_poll bb_call_value.cpp:364
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$yall$2F3_46:  mov              r9,  qword ptr [rip + rtccb+48]
1:                      add              rsp, 320;                            jmp   $yall$2F3_γ
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n17_call_proc_staged_β
                        .size            n19_call_value_bx, .-n19_call_value_bx
#-----------------------------------------------------------------------------------------------------------------------
$yall$2F3_β:
                                                                              jmp   $yall$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
$yall$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 424]
                        lea              rsp, [rbp + 448]
                        mov              rbp, qword ptr [rbp + 440];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$yall$2F3_ω:
                        mov              rcx, qword ptr [rsp + 432]
                        lea              rsp, [rbp + 448]
                        mov              rbp, qword ptr [rbp + 440];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_$yall$2F3:
                        .quad            1925491805530
                        .quad            34359738416
                        .quad            .Lgcmap_$yall$2F3_s
                        .quad            384
                        .quad            11
                        .quad            228698418577408
                        .quad            8800387989712
                        .quad            8808977924312
                        .quad            35184372089056
                        .quad            8800387989760
                        .quad            8808977924360
                        .quad            17592186044688
                        .quad            8800387989792
                        .quad            17605070946600
                        .quad            8800387989816
                        .quad            70368744177984
.Lgcmap_$yall$2F3_s:    .string          "$yall/3"
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_$yall$2F3_0:  .quad            57
                        .quad            .Lgcmap_$yall$2F3
                        .quad            9223794253614809512
                        .quad            .Lgccode_$yall$2F3_0
                        .quad            .Lgcsite_$yall$2F3_0-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_1-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_4-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_3-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_2-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_7-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_6-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_5-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_8-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_9-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_22-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_21-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_24-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_23-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_26-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_25-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_20-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_19-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_18-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_17-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_16-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_15-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_14-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_13-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_12-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_11-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_10-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_39-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_38-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_41-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_40-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_43-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_42-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_45-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_44-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_37-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_36-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_35-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_34-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_33-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_32-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_31-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_30-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_29-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_28-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_27-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_56-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_55-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_54-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_53-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_52-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_51-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_50-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_49-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_48-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_47-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .quad            .Lgcsite_$yall$2F3_46-.Lgccode_$yall$2F3_0
                        .quad            65537
                        .popsection
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_$mod_cl$2F4_1:
FN__$mod_cl$2F4:
                        sub              rsp, 1840
                        mov              qword ptr [rsp + 1816], rcx
                        mov              qword ptr [rsp + 1824], rdx
                        mov              qword ptr [rsp + 1832], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1616
                        mov              edx, 1808
                        call             rt_jmp_frame_lexprep2@PLT
.Lgcsite_$mod_cl$2F4_0: mov              rdi, rsp                             # base_p
                        mov              esi, 4                               # nparams
                        mov              edx, 0                               # nlocals
                        call             rt_icn_zframe_args_install@PLT
.Lgcsite_$mod_cl$2F4_1: mov              eax, 0                               # GCANCHOR .Lgcmap_$mod_cl$2F4 qword ptr [rsp + 1784]
$mod_cl$2F4_α_body:
                        .type            n55_var_ref_bx, @function
n55_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 32]
                        mov              qword ptr [rsp + 8], rax;            jmp   n56_call_pl_leaf_α
                        .size            n55_var_ref_bx, .-n55_var_ref_bx
                        .type            n56_call_pl_leaf_bx, @function
n56_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_call_pl_leaf_α:     sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        lea              rdi, [rsp + 0]
.Lcall_pl_leaf_α_165_100:
                        mov              eax, dword ptr [rdi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_165_101
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_165_102
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_165_190
.Lcall_pl_leaf_α_165_101:
                        mov              rcx, qword ptr [rdi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_165_190
                        cmp              rcx, rdi;                            je    .Lcall_pl_leaf_α_165_130
                        mov              rdi, rcx;                            jmp   .Lcall_pl_leaf_α_165_100
.Lcall_pl_leaf_α_165_102:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_165_130
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_165_130
                        cmp              al, 176;                             je    .Lcall_pl_leaf_α_165_180
.Lcall_pl_leaf_α_165_130:
                                                                              jmp   .Lcall_pl_leaf_α_165_195
.Lcall_pl_leaf_α_165_180:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_pl_leaf_α_165_249
.Lcall_pl_leaf_α_165_195:
                                                                              jmp   .Lcall_pl_leaf_α_165_248
.Lcall_pl_leaf_α_165_190:
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        .section         .rodata
.Lcall_pl_leaf_plop166: .string          "atom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdx, [rip + .Lcall_pl_leaf_plop166]
                        call             qword ptr [rip + rt_pl_type_cold@GOTPCREL]
.Lgcsite_$mod_cl$2F4_2: push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$mod_cl$2F4_3: mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lcall_pl_leaf_α_165_249
.Lcall_pl_leaf_α_165_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_165_249:
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_165_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   $mod_cl$2F4_ω
.Lcall_pl_leaf_α_165_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n57_var_ref_α
n56_call_pl_leaf_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   $mod_cl$2F4_ω
                        .size            n56_call_pl_leaf_bx, .-n56_call_pl_leaf_bx
                        .type            n57_var_ref_bx, @function
n57_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 64]
                        mov              qword ptr [rsp + 8], rax;            jmp   n58_lit_atom_α
                        .size            n57_var_ref_bx, .-n57_var_ref_bx
                        .type            n58_lit_atom_bx, @function
n58_lit_atom_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_atom_α:         sub              rsp, 16
                        mov              qword ptr [rsp + 0], 176             # result
                        mov              rax, qword ptr [rip + .Llit_atom_α_169_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n59_call_pl_leaf_α
.Llit_atom_α_169_0:     .quad            214
                        .size            n58_lit_atom_bx, .-n58_lit_atom_bx
                        .type            n59_call_pl_leaf_bx, @function
n59_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_call_pl_leaf_α:     sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        lea              rdi, [rsp + 0]
.Lcall_pl_leaf_α_170_100:
                        mov              eax, dword ptr [rdi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_170_101
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_170_102
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_170_190
.Lcall_pl_leaf_α_170_101:
                        mov              rcx, qword ptr [rdi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_170_190
                        cmp              rcx, rdi;                            je    .Lcall_pl_leaf_α_170_130
                        mov              rdi, rcx;                            jmp   .Lcall_pl_leaf_α_170_100
.Lcall_pl_leaf_α_170_102:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_170_130
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_170_130
                        cmp              al, 3;                               jne   .Lcall_pl_leaf_α_170_190
                        mov              rdx, qword ptr [rdi + 8]
                        lea              rsi, [rsp + 16]
.Lcall_pl_leaf_α_170_110:
                        mov              eax, dword ptr [rsi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_170_111
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_170_112
                        mov              ecx, dword ptr [rsi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_170_190
.Lcall_pl_leaf_α_170_111:
                        mov              rcx, qword ptr [rsi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_170_190
                        cmp              rcx, rsi;                            je    .Lcall_pl_leaf_α_170_190
                        mov              rsi, rcx;                            jmp   .Lcall_pl_leaf_α_170_110
.Lcall_pl_leaf_α_170_112:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_170_190
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_170_190
                        cmp              al, 3;                               jne   .Lcall_pl_leaf_α_170_190
                        mov              rcx, qword ptr [rsi + 8]
                        cmp              rdx, rcx;                            je    .Lcall_pl_leaf_α_170_195
                                                                              jmp   .Lcall_pl_leaf_α_170_180
.Lcall_pl_leaf_α_170_130:
                        lea              rsi, [rsp + 16]
.Lcall_pl_leaf_α_170_120:
                        mov              eax, dword ptr [rsi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_170_121
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_170_122
                        mov              ecx, dword ptr [rsi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_170_190
.Lcall_pl_leaf_α_170_121:
                        mov              rcx, qword ptr [rsi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_170_190
                        cmp              rcx, rsi;                            je    .Lcall_pl_leaf_α_170_135
                        mov              rsi, rcx;                            jmp   .Lcall_pl_leaf_α_170_120
.Lcall_pl_leaf_α_170_122:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_170_135
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_170_135
                                                                              jmp   .Lcall_pl_leaf_α_170_190
.Lcall_pl_leaf_α_170_135:
                        cmp              rdi, rsi;                            je    .Lcall_pl_leaf_α_170_195
                                                                              jmp   .Lcall_pl_leaf_α_170_180
.Lcall_pl_leaf_α_170_180:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_pl_leaf_α_170_249
.Lcall_pl_leaf_α_170_195:
                                                                              jmp   .Lcall_pl_leaf_α_170_248
.Lcall_pl_leaf_α_170_190:
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        .section         .rodata
.Lcall_pl_leaf_plop171: .string          "ne"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdx, [rip + .Lcall_pl_leaf_plop171]
                        call             qword ptr [rip + rt_pl_atop_cold@GOTPCREL]
.Lgcsite_$mod_cl$2F4_4: push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$mod_cl$2F4_5: mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lcall_pl_leaf_α_170_249
.Lcall_pl_leaf_α_170_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_170_249:
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_170_999
                        add              rsp, 16
                        add              rsp, 64;                             jmp   $mod_cl$2F4_ω
.Lcall_pl_leaf_α_170_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n60_var_ref_α
n59_call_pl_leaf_β:     add              rsp, 16
                        add              rsp, 64;                             jmp   $mod_cl$2F4_ω
                        .size            n59_call_pl_leaf_bx, .-n59_call_pl_leaf_bx
                        .type            n60_var_ref_bx, @function
n60_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 128]
                        mov              qword ptr [rsp + 8], rax;            jmp   n61_call_pl_leaf_α
                        .size            n60_var_ref_bx, .-n60_var_ref_bx
                        .type            n61_call_pl_leaf_bx, @function
n61_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_call_pl_leaf_α:     sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        lea              rdi, [rsp + 0]
.Lcall_pl_leaf_α_174_100:
                        mov              eax, dword ptr [rdi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_174_101
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_174_102
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_174_190
.Lcall_pl_leaf_α_174_101:
                        mov              rcx, qword ptr [rdi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_174_190
                        cmp              rcx, rdi;                            je    .Lcall_pl_leaf_α_174_130
                        mov              rdi, rcx;                            jmp   .Lcall_pl_leaf_α_174_100
.Lcall_pl_leaf_α_174_102:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_174_130
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_174_130
                        cmp              al, 176;                             je    .Lcall_pl_leaf_α_174_180
                        cmp              al, 80;                              je    .Lcall_pl_leaf_α_174_180
.Lcall_pl_leaf_α_174_130:
                                                                              jmp   .Lcall_pl_leaf_α_174_195
.Lcall_pl_leaf_α_174_180:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_pl_leaf_α_174_249
.Lcall_pl_leaf_α_174_195:
                                                                              jmp   .Lcall_pl_leaf_α_174_248
.Lcall_pl_leaf_α_174_190:
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        .section         .rodata
.Lcall_pl_leaf_plop175: .string          "callable"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdx, [rip + .Lcall_pl_leaf_plop175]
                        call             qword ptr [rip + rt_pl_type_cold@GOTPCREL]
.Lgcsite_$mod_cl$2F4_6: push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$mod_cl$2F4_7: mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lcall_pl_leaf_α_174_249
.Lcall_pl_leaf_α_174_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_174_249:
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_174_999
                        add              rsp, 16
                        add              rsp, 96;                             jmp   $mod_cl$2F4_ω
.Lcall_pl_leaf_α_174_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n62_var_ref_α
n61_call_pl_leaf_β:     add              rsp, 16
                        add              rsp, 96;                             jmp   $mod_cl$2F4_ω
                        .size            n61_call_pl_leaf_bx, .-n61_call_pl_leaf_bx
                        .type            n62_var_ref_bx, @function
n62_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 160]
                        mov              qword ptr [rsp + 8], rax;            jmp   n63_var_ref_α
                        .size            n62_var_ref_bx, .-n62_var_ref_bx
                        .type            n63_var_ref_bx, @function
n63_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 1904]
                        mov              qword ptr [rsp + 8], rax;            jmp   n64_var_ref_α
                        .size            n63_var_ref_bx, .-n63_var_ref_bx
                        .type            n64_var_ref_bx, @function
n64_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 1888]
                        mov              qword ptr [rsp + 8], rax;            jmp   n65_lit_string_α
                        .size            n64_var_ref_bx, .-n64_var_ref_bx
                        .type            n65_lit_string_bx, @function
n65_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_182_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n66_call_pl_leaf_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_182_0: .quad .Llit_string_α_182_0_s; .popsection
.Llit_string_α_182_0_s: .string          "functor"
                        .size            n65_lit_string_bx, .-n65_lit_string_bx
                        .type            n66_call_pl_leaf_bx, @function
n66_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_call_pl_leaf_α:     sub              rsp, 16
                        sub              rsp, 64
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 56], rax
                        lea              rdi, [rsp + 16]
.Lcall_pl_leaf_α_183_100:
                        mov              eax, dword ptr [rdi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_183_101
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_183_102
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_183_190
.Lcall_pl_leaf_α_183_101:
                        mov              rcx, qword ptr [rdi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_183_190
                        cmp              rcx, rdi;                            je    .Lcall_pl_leaf_α_183_103
                        mov              rdi, rcx;                            jmp   .Lcall_pl_leaf_α_183_100
.Lcall_pl_leaf_α_183_102:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_183_103
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_183_103
                                                                              jmp   .Lcall_pl_leaf_α_183_104
.Lcall_pl_leaf_α_183_103:
                                                                              jmp   .Lcall_pl_leaf_α_183_190
.Lcall_pl_leaf_α_183_104:
                                                                              jmp   .Lcall_pl_leaf_α_183_180
.Lcall_pl_leaf_α_183_180:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_pl_leaf_α_183_249
.Lcall_pl_leaf_α_183_190:
                        lea              rdi, [rsp + 0]
                        mov              esi, 4
                        call             qword ptr [rip + rt_pl_anum_cold@GOTPCREL]
.Lgcsite_$mod_cl$2F4_8: push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$mod_cl$2F4_9: mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lcall_pl_leaf_α_183_249
.Lcall_pl_leaf_α_183_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_183_249:
                        add              rsp, 64
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_183_999
                        add              rsp, 16
                        add              rsp, 176;                            jmp   $mod_cl$2F4_ω
.Lcall_pl_leaf_α_183_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n67_call_direct_α
n66_call_pl_leaf_β:     add              rsp, 16
                        add              rsp, 176;                            jmp   $mod_cl$2F4_ω
                        .size            n66_call_pl_leaf_bx, .-n66_call_pl_leaf_bx
                        .type            n67_call_direct_bx, @function
n67_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_call_direct_α:      sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 40], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 3
                        call             qword ptr [rip + rt_pl_dop_functor@GOTPCREL]
.Lgcsite_$mod_cl$2F4_10:
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$mod_cl$2F4_11:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_direct_α_184_999
                        add              rsp, 16
                        add              rsp, 192;                            jmp   $mod_cl$2F4_ω
.Lcall_direct_α_184_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n68_var_ref_α
n67_call_direct_β:      add              rsp, 16
                        add              rsp, 192;                            jmp   $mod_cl$2F4_ω
                        .size            n67_call_direct_bx, .-n67_call_direct_bx
                        .type            n68_var_ref_bx, @function
n68_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 1984]
                        mov              qword ptr [rsp + 8], rax;            jmp   n69_call_pl_leaf_α
                        .size            n68_var_ref_bx, .-n68_var_ref_bx
                        .type            n69_call_pl_leaf_bx, @function
n69_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_call_pl_leaf_α:     sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        lea              rdi, [rsp + 0]
.Lcall_pl_leaf_α_187_100:
                        mov              eax, dword ptr [rdi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_187_101
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_187_102
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_187_190
.Lcall_pl_leaf_α_187_101:
                        mov              rcx, qword ptr [rdi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_187_190
                        cmp              rcx, rdi;                            je    .Lcall_pl_leaf_α_187_130
                        mov              rdi, rcx;                            jmp   .Lcall_pl_leaf_α_187_100
.Lcall_pl_leaf_α_187_102:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_187_130
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_187_130
                        cmp              al, 176;                             je    .Lcall_pl_leaf_α_187_180
.Lcall_pl_leaf_α_187_130:
                                                                              jmp   .Lcall_pl_leaf_α_187_195
.Lcall_pl_leaf_α_187_180:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_pl_leaf_α_187_249
.Lcall_pl_leaf_α_187_195:
                                                                              jmp   .Lcall_pl_leaf_α_187_248
.Lcall_pl_leaf_α_187_190:
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        .section         .rodata
.Lcall_pl_leaf_plop188: .string          "atom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdx, [rip + .Lcall_pl_leaf_plop188]
                        call             qword ptr [rip + rt_pl_type_cold@GOTPCREL]
.Lgcsite_$mod_cl$2F4_12:
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$mod_cl$2F4_13:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lcall_pl_leaf_α_187_249
.Lcall_pl_leaf_α_187_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_187_249:
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_187_999
                        add              rsp, 16
                        add              rsp, 224;                            jmp   $mod_cl$2F4_ω
.Lcall_pl_leaf_α_187_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n70_var_ref_α
n69_call_pl_leaf_β:     add              rsp, 16
                        add              rsp, 224;                            jmp   $mod_cl$2F4_ω
                        .size            n69_call_pl_leaf_bx, .-n69_call_pl_leaf_bx
                        .type            n70_var_ref_bx, @function
n70_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 272]
                        mov              qword ptr [rsp + 8], rax;            jmp   n71_lit_atom_α
                        .size            n70_var_ref_bx, .-n70_var_ref_bx
                        .type            n71_lit_atom_bx, @function
n71_lit_atom_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_atom_α:         sub              rsp, 16
                        mov              qword ptr [rsp + 0], 176             # result
                        mov              rax, qword ptr [rip + .Llit_atom_α_191_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n72_var_ref_α
.Llit_atom_α_191_0:     .quad            25
                        .size            n71_lit_atom_bx, .-n71_lit_atom_bx
                        .type            n72_var_ref_bx, @function
n72_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2032]
                        mov              qword ptr [rsp + 8], rax;            jmp   n73_lit_string_α
                        .size            n72_var_ref_bx, .-n72_var_ref_bx
                        .type            n73_lit_string_bx, @function
n73_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Llit_string_α_194_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n74_call_pl_leaf_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_194_0: .quad .Llit_string_α_194_0_s; .popsection
.Llit_string_α_194_0_s: .string          "atom_concat"
                        .size            n73_lit_string_bx, .-n73_lit_string_bx
                        .type            n74_call_pl_leaf_bx, @function
n74_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_call_pl_leaf_α:     sub              rsp, 16
                        sub              rsp, 64
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 56], rax
                        lea              rdi, [rsp + 16]
.Lcall_pl_leaf_α_195_100:
                        mov              eax, dword ptr [rdi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_195_101
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_195_102
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_195_190
.Lcall_pl_leaf_α_195_101:
                        mov              rcx, qword ptr [rdi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_195_190
                        cmp              rcx, rdi;                            je    .Lcall_pl_leaf_α_195_103
                        mov              rdi, rcx;                            jmp   .Lcall_pl_leaf_α_195_100
.Lcall_pl_leaf_α_195_102:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_195_103
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_195_103
                        cmp              al, 2;                               je    .Lcall_pl_leaf_α_195_104
                        cmp              al, 176;                             je    .Lcall_pl_leaf_α_195_104
                                                                              jmp   .Lcall_pl_leaf_α_195_190
.Lcall_pl_leaf_α_195_103:
                                                                              jmp   .Lcall_pl_leaf_α_195_190
.Lcall_pl_leaf_α_195_104:
                        lea              rdi, [rsp + 32]
.Lcall_pl_leaf_α_195_110:
                        mov              eax, dword ptr [rdi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_195_111
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_195_112
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_195_190
.Lcall_pl_leaf_α_195_111:
                        mov              rcx, qword ptr [rdi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_195_190
                        cmp              rcx, rdi;                            je    .Lcall_pl_leaf_α_195_113
                        mov              rdi, rcx;                            jmp   .Lcall_pl_leaf_α_195_110
.Lcall_pl_leaf_α_195_112:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_195_113
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_195_113
                        cmp              al, 2;                               je    .Lcall_pl_leaf_α_195_114
                        cmp              al, 176;                             je    .Lcall_pl_leaf_α_195_114
                                                                              jmp   .Lcall_pl_leaf_α_195_190
.Lcall_pl_leaf_α_195_113:
                                                                              jmp   .Lcall_pl_leaf_α_195_190
.Lcall_pl_leaf_α_195_114:
                        lea              rdi, [rsp + 48]
.Lcall_pl_leaf_α_195_120:
                        mov              eax, dword ptr [rdi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_195_121
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_195_122
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_195_190
.Lcall_pl_leaf_α_195_121:
                        mov              rcx, qword ptr [rdi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_195_190
                        cmp              rcx, rdi;                            je    .Lcall_pl_leaf_α_195_123
                        mov              rdi, rcx;                            jmp   .Lcall_pl_leaf_α_195_120
.Lcall_pl_leaf_α_195_122:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_195_123
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_195_123
                        cmp              al, 2;                               je    .Lcall_pl_leaf_α_195_124
                        cmp              al, 176;                             je    .Lcall_pl_leaf_α_195_124
                                                                              jmp   .Lcall_pl_leaf_α_195_190
.Lcall_pl_leaf_α_195_123:
                                                                              jmp   .Lcall_pl_leaf_α_195_124
.Lcall_pl_leaf_α_195_124:
                                                                              jmp   .Lcall_pl_leaf_α_195_180
.Lcall_pl_leaf_α_195_180:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_pl_leaf_α_195_249
.Lcall_pl_leaf_α_195_190:
                        lea              rdi, [rsp + 0]
                        mov              esi, 4
                        call             qword ptr [rip + rt_pl_anum_cold@GOTPCREL]
.Lgcsite_$mod_cl$2F4_14:
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$mod_cl$2F4_15:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lcall_pl_leaf_α_195_249
.Lcall_pl_leaf_α_195_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_195_249:
                        add              rsp, 64
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_195_999
                        add              rsp, 16
                        add              rsp, 304;                            jmp   $mod_cl$2F4_ω
.Lcall_pl_leaf_α_195_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n75_lit_integer_α
n74_call_pl_leaf_β:     add              rsp, 16
                        add              rsp, 304;                            jmp   $mod_cl$2F4_ω
                        .size            n74_call_pl_leaf_bx, .-n74_call_pl_leaf_bx
                        .type            n75_lit_integer_bx, @function
n75_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_196_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n76_var_ref_α
.Llit_integer_α_196_0:  .quad            0
                        .size            n75_lit_integer_bx, .-n75_lit_integer_bx
                        .type            n76_var_ref_bx, @function
n76_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 368]
                        mov              qword ptr [rsp + 8], rax;            jmp   n77_lit_atom_α
                        .size            n76_var_ref_bx, .-n76_var_ref_bx
                        .type            n77_lit_atom_bx, @function
n77_lit_atom_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_atom_α:         sub              rsp, 16
                        mov              qword ptr [rsp + 0], 176             # result
                        mov              rax, qword ptr [rip + .Llit_atom_α_199_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n78_var_ref_α
.Llit_atom_α_199_0:     .quad            25
                        .size            n77_lit_atom_bx, .-n77_lit_atom_bx
                        .type            n78_var_ref_bx, @function
n78_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2128]
                        mov              qword ptr [rsp + 8], rax;            jmp   n79_call_direct_α
                        .size            n78_var_ref_bx, .-n78_var_ref_bx
                        .type            n79_call_direct_bx, @function
n79_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_call_direct_α:      sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 3
                        call             rt_pl_dop_atom_concat_n@PLT
.Lgcsite_$mod_cl$2F4_16:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$mod_cl$2F4_17:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_direct_α_202_999
                        add              rsp, 16
                        add              rsp, 384;                            jmp   $mod_cl$2F4_ω
.Lcall_direct_α_202_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n80_to_α
n79_call_direct_β:      add              rsp, 16
                        add              rsp, 384;                            jmp   $mod_cl$2F4_ω
                        .size            n79_call_direct_bx, .-n79_call_direct_bx
                        .type            n80_to_bx, @function
n80_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_to_α:               sub              rsp, 32
                        mov              rdi, qword ptr [rsp + 96]            # lit_integer
                        mov              rsi, qword ptr [rsp + 104]
                        call             to_int@PLT
.Lgcsite_$mod_cl$2F4_21:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1744], rax
                        push             rax                                  # gc_poll bb_to.cpp:93
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$mod_cl$2F4_20:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        call             to_int@PLT
.Lgcsite_$mod_cl$2F4_19:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1752], rax
.Lto_α_204_0:           mov              rax, qword ptr [rsp + 1744]
                        mov              rcx, qword ptr [rsp + 1752]
                        cmp              rax, rcx;                            jle   .Lto_α_204_998
                        add              rsp, 32
                        add              rsp, 400;                            jmp   $mod_cl$2F4_ω
.Lto_α_204_998:         mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax
                        push             rax                                  # gc_poll bb_to.cpp:113
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$mod_cl$2F4_18:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n81_call_direct_α
n80_to_β:               inc              qword ptr [rsp + 1744];              jno   .Lto_β_204_999
                        add              rsp, 32
                        add              rsp, 400;                            jmp   $mod_cl$2F4_ω
.Lto_β_204_999:                                                               jmp   .Lto_α_204_0
                        .size            n80_to_bx, .-n80_to_bx
                        .type            n81_call_direct_bx, @function
n81_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_call_direct_α:      sub              rsp, 16
                        sub              rsp, 64
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 56], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 4
                        call             qword ptr [rip + rt_pl_dop_atom_concat_at@GOTPCREL]
.Lgcsite_$mod_cl$2F4_22:
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$mod_cl$2F4_23:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 64
                        cmp              al, 104;                             jne   .Lcall_direct_α_205_999
                        add              rsp, 16;                             jmp   n80_to_β
.Lcall_direct_α_205_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n82_var_ref_α
n81_call_direct_β:      add              rsp, 16;                             jmp   n80_to_β
                        .size            n81_call_direct_bx, .-n81_call_direct_bx
                        .type            n82_var_ref_bx, @function
n82_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2208]
                        mov              qword ptr [rsp + 8], rax;            jmp   n83_var_ref_α
                        .size            n82_var_ref_bx, .-n82_var_ref_bx
                        .type            n83_var_ref_bx, @function
n83_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2240]
                        mov              qword ptr [rsp + 8], rax;            jmp   n84_var_ref_α
                        .size            n83_var_ref_bx, .-n83_var_ref_bx
                        .type            n84_var_ref_bx, @function
n84_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2144]
                        mov              qword ptr [rsp + 8], rax;            jmp   n85_lit_string_α
                        .size            n84_var_ref_bx, .-n84_var_ref_bx
                        .type            n85_lit_string_bx, @function
n85_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Llit_string_α_212_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n86_call_pl_leaf_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_212_0: .quad .Llit_string_α_212_0_s; .popsection
.Llit_string_α_212_0_s: .string          "atom_concat"
                        .size            n85_lit_string_bx, .-n85_lit_string_bx
                        .type            n86_call_pl_leaf_bx, @function
n86_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_call_pl_leaf_α:     sub              rsp, 16
                        sub              rsp, 64
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 56], rax
                        lea              rdi, [rsp + 16]
.Lcall_pl_leaf_α_213_100:
                        mov              eax, dword ptr [rdi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_213_101
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_213_102
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_213_190
.Lcall_pl_leaf_α_213_101:
                        mov              rcx, qword ptr [rdi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_213_190
                        cmp              rcx, rdi;                            je    .Lcall_pl_leaf_α_213_103
                        mov              rdi, rcx;                            jmp   .Lcall_pl_leaf_α_213_100
.Lcall_pl_leaf_α_213_102:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_213_103
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_213_103
                        cmp              al, 2;                               je    .Lcall_pl_leaf_α_213_104
                        cmp              al, 176;                             je    .Lcall_pl_leaf_α_213_104
                                                                              jmp   .Lcall_pl_leaf_α_213_190
.Lcall_pl_leaf_α_213_103:
                                                                              jmp   .Lcall_pl_leaf_α_213_190
.Lcall_pl_leaf_α_213_104:
                        lea              rdi, [rsp + 32]
.Lcall_pl_leaf_α_213_110:
                        mov              eax, dword ptr [rdi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_213_111
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_213_112
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_213_190
.Lcall_pl_leaf_α_213_111:
                        mov              rcx, qword ptr [rdi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_213_190
                        cmp              rcx, rdi;                            je    .Lcall_pl_leaf_α_213_113
                        mov              rdi, rcx;                            jmp   .Lcall_pl_leaf_α_213_110
.Lcall_pl_leaf_α_213_112:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_213_113
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_213_113
                        cmp              al, 2;                               je    .Lcall_pl_leaf_α_213_114
                        cmp              al, 176;                             je    .Lcall_pl_leaf_α_213_114
                                                                              jmp   .Lcall_pl_leaf_α_213_190
.Lcall_pl_leaf_α_213_113:
                                                                              jmp   .Lcall_pl_leaf_α_213_190
.Lcall_pl_leaf_α_213_114:
                        lea              rdi, [rsp + 48]
.Lcall_pl_leaf_α_213_120:
                        mov              eax, dword ptr [rdi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_213_121
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_213_122
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_213_190
.Lcall_pl_leaf_α_213_121:
                        mov              rcx, qword ptr [rdi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_213_190
                        cmp              rcx, rdi;                            je    .Lcall_pl_leaf_α_213_123
                        mov              rdi, rcx;                            jmp   .Lcall_pl_leaf_α_213_120
.Lcall_pl_leaf_α_213_122:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_213_123
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_213_123
                        cmp              al, 2;                               je    .Lcall_pl_leaf_α_213_124
                        cmp              al, 176;                             je    .Lcall_pl_leaf_α_213_124
                                                                              jmp   .Lcall_pl_leaf_α_213_190
.Lcall_pl_leaf_α_213_123:
                                                                              jmp   .Lcall_pl_leaf_α_213_124
.Lcall_pl_leaf_α_213_124:
                                                                              jmp   .Lcall_pl_leaf_α_213_180
.Lcall_pl_leaf_α_213_180:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_pl_leaf_α_213_249
.Lcall_pl_leaf_α_213_190:
                        lea              rdi, [rsp + 0]
                        mov              esi, 4
                        call             qword ptr [rip + rt_pl_anum_cold@GOTPCREL]
.Lgcsite_$mod_cl$2F4_24:
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$mod_cl$2F4_25:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lcall_pl_leaf_α_213_249
.Lcall_pl_leaf_α_213_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_213_249:
                        add              rsp, 64
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_213_999
                        add              rsp, 16
                        add              rsp, 512;                            jmp   $mod_cl$2F4_ω
.Lcall_pl_leaf_α_213_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n87_lit_integer_α
n86_call_pl_leaf_β:     add              rsp, 16
                        add              rsp, 512;                            jmp   $mod_cl$2F4_ω
                        .size            n86_call_pl_leaf_bx, .-n86_call_pl_leaf_bx
                        .type            n87_lit_integer_bx, @function
n87_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_214_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n88_var_ref_α
.Llit_integer_α_214_0:  .quad            0
                        .size            n87_lit_integer_bx, .-n87_lit_integer_bx
                        .type            n88_var_ref_bx, @function
n88_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2304]
                        mov              qword ptr [rsp + 8], rax;            jmp   n89_var_ref_α
                        .size            n88_var_ref_bx, .-n88_var_ref_bx
                        .type            n89_var_ref_bx, @function
n89_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2336]
                        mov              qword ptr [rsp + 8], rax;            jmp   n90_var_ref_α
                        .size            n89_var_ref_bx, .-n89_var_ref_bx
                        .type            n90_var_ref_bx, @function
n90_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2240]
                        mov              qword ptr [rsp + 8], rax;            jmp   n91_call_direct_α
                        .size            n90_var_ref_bx, .-n90_var_ref_bx
                        .type            n91_call_direct_bx, @function
n91_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_call_direct_α:      sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 3
                        call             rt_pl_dop_atom_concat_n@PLT
.Lgcsite_$mod_cl$2F4_26:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$mod_cl$2F4_27:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_direct_α_221_999
                        add              rsp, 16
                        add              rsp, 592;                            jmp   $mod_cl$2F4_ω
.Lcall_direct_α_221_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n92_to_α
n91_call_direct_β:      add              rsp, 16
                        add              rsp, 592;                            jmp   $mod_cl$2F4_ω
                        .size            n91_call_direct_bx, .-n91_call_direct_bx
                        .type            n92_to_bx, @function
n92_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_to_α:               sub              rsp, 32
                        mov              rdi, qword ptr [rsp + 96]            # lit_integer
                        mov              rsi, qword ptr [rsp + 104]
                        call             to_int@PLT
.Lgcsite_$mod_cl$2F4_31:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1776], rax
                        push             rax                                  # gc_poll bb_to.cpp:93
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$mod_cl$2F4_30:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        call             to_int@PLT
.Lgcsite_$mod_cl$2F4_29:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1784], rax
.Lto_α_223_0:           mov              rax, qword ptr [rsp + 1776]
                        mov              rcx, qword ptr [rsp + 1784]
                        cmp              rax, rcx;                            jle   .Lto_α_223_998
                        add              rsp, 32
                        add              rsp, 176;                            jmp   n80_to_β
.Lto_α_223_998:         mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax
                        push             rax                                  # gc_poll bb_to.cpp:113
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$mod_cl$2F4_28:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n93_call_direct_α
n92_to_β:               inc              qword ptr [rsp + 1776];              jno   .Lto_β_223_999
                        add              rsp, 32
                        add              rsp, 176;                            jmp   n80_to_β
.Lto_β_223_999:                                                               jmp   .Lto_α_223_0
                        .size            n92_to_bx, .-n92_to_bx
                        .type            n93_call_direct_bx, @function
n93_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_call_direct_α:      sub              rsp, 16
                        sub              rsp, 64
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 56], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 4
                        call             qword ptr [rip + rt_pl_dop_atom_concat_at@GOTPCREL]
.Lgcsite_$mod_cl$2F4_32:
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$mod_cl$2F4_33:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 64
                        cmp              al, 104;                             jne   .Lcall_direct_α_224_999
                        add              rsp, 16;                             jmp   n92_to_β
.Lcall_direct_α_224_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n94_var_ref_α
n93_call_direct_β:      add              rsp, 16;                             jmp   n92_to_β
                        .size            n93_call_direct_bx, .-n93_call_direct_bx
                        .type            n94_var_ref_bx, @function
n94_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2368]
                        mov              qword ptr [rsp + 8], rax;            jmp   n95_var_α
                        .size            n94_var_ref_bx, .-n94_var_ref_bx
                        .type            n95_var_bx, @function
n95_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [rsp + 2416]
                        mov              rdx, qword ptr [rsp + 2424]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n96_var_α
                        .size            n95_var_bx, .-n95_var_bx
                        .type            n96_var_bx, @function
n96_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [rsp + 752]
                        mov              rdx, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n97_call_pl_leaf_α
                        .size            n96_var_bx, .-n96_var_bx
                        .type            n97_call_pl_leaf_bx, @function
n97_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_call_pl_leaf_α:     sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        lea              rdi, [rsp + 0]
.Lcall_pl_leaf_α_231_100:
                        mov              eax, dword ptr [rdi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_231_101
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_231_102
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_231_190
.Lcall_pl_leaf_α_231_101:
                        mov              rcx, qword ptr [rdi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_231_190
                        cmp              rcx, rdi;                            je    .Lcall_pl_leaf_α_231_190
                        mov              rdi, rcx;                            jmp   .Lcall_pl_leaf_α_231_100
.Lcall_pl_leaf_α_231_102:
                        cmp              al, 3;                               jne   .Lcall_pl_leaf_α_231_190
                        mov              rdx, qword ptr [rdi + 8]
                        lea              rsi, [rsp + 16]
.Lcall_pl_leaf_α_231_110:
                        mov              eax, dword ptr [rsi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_231_111
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_231_112
                        mov              ecx, dword ptr [rsi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_231_190
.Lcall_pl_leaf_α_231_111:
                        mov              rcx, qword ptr [rsi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_231_190
                        cmp              rcx, rsi;                            je    .Lcall_pl_leaf_α_231_190
                        mov              rsi, rcx;                            jmp   .Lcall_pl_leaf_α_231_110
.Lcall_pl_leaf_α_231_112:
                        cmp              al, 3;                               jne   .Lcall_pl_leaf_α_231_190
                        mov              rcx, qword ptr [rsi + 8]
                        mov              rax, rdx
                        add              rax, rcx;                            jo    .Lcall_pl_leaf_α_231_190
                        mov              rdx, rax
                        mov              eax, 3;                              jmp   .Lcall_pl_leaf_α_231_249
.Lcall_pl_leaf_α_231_190:
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        .section         .rodata
.Lcall_pl_leaf_plop232: .string          "add"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdx, [rip + .Lcall_pl_leaf_plop232]
                        call             qword ptr [rip + rt_pl_ax_cold@GOTPCREL]
.Lgcsite_$mod_cl$2F4_34:
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$mod_cl$2F4_35:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lcall_pl_leaf_α_231_249
.Lcall_pl_leaf_α_231_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_231_249:
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_231_999
                        add              rsp, 16
                        add              rsp, 704;                            jmp   $mod_cl$2F4_ω
.Lcall_pl_leaf_α_231_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n98_call_pl_leaf_α
n97_call_pl_leaf_β:     add              rsp, 16
                        add              rsp, 704;                            jmp   $mod_cl$2F4_ω
                        .size            n97_call_pl_leaf_bx, .-n97_call_pl_leaf_bx
                        .type            n98_call_pl_leaf_bx, @function
n98_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_call_pl_leaf_α:     sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        lea              rdi, [rsp + 16]
.Lcall_pl_leaf_α_233_100:
                        mov              eax, dword ptr [rdi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_233_101
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_233_102
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_233_190
.Lcall_pl_leaf_α_233_101:
                        mov              rcx, qword ptr [rdi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_233_190
                        cmp              rcx, rdi;                            je    .Lcall_pl_leaf_α_233_190
                        mov              rdi, rcx;                            jmp   .Lcall_pl_leaf_α_233_100
.Lcall_pl_leaf_α_233_102:
                        cmp              al, 3;                               je    .Lcall_pl_leaf_α_233_120
                        cmp              al, 5;                               je    .Lcall_pl_leaf_α_233_120
                        cmp              al, 120;                             je    .Lcall_pl_leaf_α_233_120
                                                                              jmp   .Lcall_pl_leaf_α_233_190
.Lcall_pl_leaf_α_233_120:
                        mov              rax, qword ptr [rdi + 0]
                        mov              rdx, qword ptr [rdi + 8]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rtx_pl_unify@GOTPCREL]
.Lgcsite_$mod_cl$2F4_38:
                        test             eax, eax;                            jz    .Lcall_pl_leaf_α_233_248
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lcall_pl_leaf_α_233_249
.Lcall_pl_leaf_α_233_190:
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        call             qword ptr [rip + rt_pl_is_cold@GOTPCREL]
.Lgcsite_$mod_cl$2F4_37:
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        push             rax                                  # gc_poll bb_call_pl_leaf.cpp:191
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$mod_cl$2F4_36:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    .Lcall_pl_leaf_α_233_248
                        lea              rdi, [rsp + 16];                     jmp   .Lcall_pl_leaf_α_233_120
.Lcall_pl_leaf_α_233_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_233_249:
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_233_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n92_to_β
.Lcall_pl_leaf_α_233_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n99_lit_integer_α
n98_call_pl_leaf_β:     add              rsp, 16
                        add              rsp, 80;                             jmp   n92_to_β
                        .size            n98_call_pl_leaf_bx, .-n98_call_pl_leaf_bx
                        .type            n99_lit_integer_bx, @function
n99_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_234_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n100_var_ref_α
.Llit_integer_α_234_0:  .quad            2
                        .size            n99_lit_integer_bx, .-n99_lit_integer_bx
                        .type            n100_var_ref_bx, @function
n100_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2416]
                        mov              qword ptr [rsp + 8], rax;            jmp   n101_var_ref_α
                        .size            n100_var_ref_bx, .-n100_var_ref_bx
                        .type            n101_var_ref_bx, @function
n101_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2480]
                        mov              qword ptr [rsp + 8], rax;            jmp   n102_call_pl_leaf_α
                        .size            n101_var_ref_bx, .-n101_var_ref_bx
                        .type            n102_call_pl_leaf_bx, @function
n102_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_call_pl_leaf_α:    sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              edi, 214
                        mov              esi, 32
                        call             qword ptr [rip + rt_gcheap_alloc@GOTPCREL]
.Lgcsite_$mod_cl$2F4_41:
                        movabs           rcx, 8589934672
                        mov              qword ptr [rsp + 0], rcx             # the result cell is parked in argv[0] (the functor literal's cell, dead once its id is baked above) across the poll and the kid loop: the box's result slot may be one of the kids' argv cells
                        mov              qword ptr [rsp + 8], rax
                        push             rax                                  # gc_poll bb_call_pl_leaf.cpp:315
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$mod_cl$2F4_40:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              r10, qword ptr [rsp + 8]
                        lea              r9, [rsp + 16]
                        mov              r11, 2
.Lcall_pl_leaf_α_239_100:
                        test             r11, r11;                            jz    .Lcall_pl_leaf_α_239_102
                        mov              rdi, r9
.Lcall_pl_leaf_α_239_103:
                        mov              eax, dword ptr [rdi + 0]             # deref: follow a name (slen 1: the cell; slen 2: the VCELL's cell) or a bound PLVAR to the cell that holds the value; eax = its tag word
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_239_104
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_239_106
                        mov              rsi, qword ptr [rdi + 8]
                        test             rsi, rsi;                            jz    .Lcall_pl_leaf_α_239_106
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_239_105
                        cmp              rsi, rdi;                            je    .Lcall_pl_leaf_α_239_106
                        mov              rdi, rsi;                            jmp   .Lcall_pl_leaf_α_239_103
.Lcall_pl_leaf_α_239_105:
                        cmp              ecx, 2;                              jne   .Lcall_pl_leaf_α_239_106
                        mov              rsi, qword ptr [rsi + 0]
                        test             rsi, rsi;                            jz    .Lcall_pl_leaf_α_239_106
                        mov              rdi, rsi;                            jmp   .Lcall_pl_leaf_α_239_103
.Lcall_pl_leaf_α_239_104:
                        mov              rsi, qword ptr [rdi + 8]
                        test             rsi, rsi;                            jz    .Lcall_pl_leaf_α_239_106
                        cmp              rsi, rdi;                            je    .Lcall_pl_leaf_α_239_106
                        mov              rdi, rsi;                            jmp   .Lcall_pl_leaf_α_239_103
.Lcall_pl_leaf_α_239_106:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_239_107
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_239_107
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_239_107
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_239_108
                        mov              rsi, qword ptr [rdi + 8]
                        cmp              rsi, rdi;                            je    .Lcall_pl_leaf_α_239_107
.Lcall_pl_leaf_α_239_108:
                        mov              rax, qword ptr [rdi + 0]
                        mov              rdx, qword ptr [rdi + 8]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx;            jmp   .Lcall_pl_leaf_α_239_101
.Lcall_pl_leaf_α_239_107:
                        cmp              rdi, rsp;                            ja    .Lcall_pl_leaf_α_239_113
                        mov              qword ptr [r10 + 0], 72
                        mov              qword ptr [r10 + 8], rdi;            jmp   .Lcall_pl_leaf_α_239_101
.Lcall_pl_leaf_α_239_113:
                        mov              qword ptr [r10 + 0], 72
                        mov              qword ptr [r10 + 8], r10
                        test             r13, r13;                            jz    .Lcall_pl_leaf_α_239_109
                        cmp              rdi, rsp;                            ja    .Lcall_pl_leaf_α_239_170
                        mov              rax, qword ptr [r13 + 0]             # a heap cell at or above B's HB (the pad of the sentinel just under B's mark) and below the frontier was made after B: not trailed
                        mov              rdx, qword ptr [rax + -32]
                        test             rdx, rdx;                            jne   .Lcall_pl_leaf_α_239_110
                        mov              rdx, qword ptr [rax + -24]
                        cmp              rdi, rdx;                            jb    .Lcall_pl_leaf_α_239_110
                        mov              rax, qword ptr [rip + g_hp_fr@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rdi, rax;                            jb    .Lcall_pl_leaf_α_239_109
                                                                              jmp   .Lcall_pl_leaf_α_239_110
.Lcall_pl_leaf_α_239_170:
                        mov              rax, qword ptr [r13 + 32]
                        shr              rax, 8
                        cmp              rdi, rax;                            jb    .Lcall_pl_leaf_α_239_109
.Lcall_pl_leaf_α_239_110:
                        mov              rax, r12                             # the push: {cell, 0, old} on the r12 trail, the arena's top word synced for the collector
                        and              rax, 536870911
                        cmp              rax, 536870880;                      jae   .Lcall_pl_leaf_α_239_111
                        mov              rax, qword ptr [rdi + 0]
                        mov              rdx, qword ptr [rdi + 8]
                        mov              qword ptr [r12 + 0], rdi
                        mov              qword ptr [r12 + 8], 0
                        mov              qword ptr [r12 + 16], rax
                        mov              qword ptr [r12 + 24], rdx
                        add              r12, 32
                        mov              rax, r12
                        and              rax, -536870912
                        mov              qword ptr [rax + 0], r12
.Lcall_pl_leaf_α_239_109:
                        mov              qword ptr [rdi + 0], 72
                        mov              qword ptr [rdi + 8], r10
.Lcall_pl_leaf_α_239_101:
                        add              r9, 16
                        add              r10, 16
                        sub              r11, 1;                              jmp   .Lcall_pl_leaf_α_239_100
.Lcall_pl_leaf_α_239_102:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8];            jmp   .Lcall_pl_leaf_α_239_249
.Lcall_pl_leaf_α_239_111:
                        mov              rdi, r12
                        call             rt_pl_tr_refuse@PLT
.Lgcsite_$mod_cl$2F4_39:
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lcall_pl_leaf_α_239_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_239_249:
                        add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_239_999
                        add              rsp, 16
                        add              rsp, 144;                            jmp   n92_to_β
.Lcall_pl_leaf_α_239_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n103_call_direct_α
n102_call_pl_leaf_β:    add              rsp, 16
                        add              rsp, 144;                            jmp   n92_to_β
                        .size            n102_call_pl_leaf_bx, .-n102_call_pl_leaf_bx
                        .type            n103_call_direct_bx, @function
n103_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_call_direct_α:     sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        call             qword ptr [rip + rt_pl_dop_pl_cp_guard@GOTPCREL]
.Lgcsite_$mod_cl$2F4_42:
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$mod_cl$2F4_43:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_direct_α_240_999
                        add              rsp, 16
                        add              rsp, 160;                            jmp   n92_to_β
.Lcall_direct_α_240_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n104_var_ref_α
n103_call_direct_β:     add              rsp, 16
                        add              rsp, 160;                            jmp   n92_to_β
                        .size            n103_call_direct_bx, .-n103_call_direct_bx
                        .type            n104_var_ref_bx, @function
n104_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2544]
                        mov              qword ptr [rsp + 8], rax;            jmp   n105_call_direct_α
                        .size            n104_var_ref_bx, .-n104_var_ref_bx
                        .type            n105_call_direct_bx, @function
n105_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_call_direct_α:     sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        call             qword ptr [rip + rt_pl_dop_pl_cp_count@GOTPCREL]
.Lgcsite_$mod_cl$2F4_44:
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$mod_cl$2F4_45:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_direct_α_243_999
                        add              rsp, 16
                        add              rsp, 192;                            jmp   n92_to_β
.Lcall_direct_α_243_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n106_bound_α
n105_call_direct_β:     add              rsp, 16
                        add              rsp, 192;                            jmp   n92_to_β
                        .size            n105_call_direct_bx, .-n105_call_direct_bx
                        .type            n106_bound_bx, @function
n106_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_bound_α:           mov              qword ptr [rsp + 1264], rsp;         jmp   n107_var_ref_α
                        .size            n106_bound_bx, .-n106_bound_bx
                        .type            n107_var_ref_bx, @function
n107_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2544]
                        mov              qword ptr [rsp + 8], rax;            jmp   n108_call_pl_leaf_α
                        .size            n107_var_ref_bx, .-n107_var_ref_bx
                        .type            n108_call_pl_leaf_bx, @function
n108_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_call_pl_leaf_α:    sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        lea              rdi, [rsp + 0]
.Lcall_pl_leaf_α_248_100:
                        mov              eax, dword ptr [rdi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_248_101
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_248_102
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_248_190
.Lcall_pl_leaf_α_248_101:
                        mov              rcx, qword ptr [rdi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_248_190
                        cmp              rcx, rdi;                            je    .Lcall_pl_leaf_α_248_130
                        mov              rdi, rcx;                            jmp   .Lcall_pl_leaf_α_248_100
.Lcall_pl_leaf_α_248_102:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_248_130
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_248_130
                                                                              jmp   .Lcall_pl_leaf_α_248_180
.Lcall_pl_leaf_α_248_130:
                                                                              jmp   .Lcall_pl_leaf_α_248_195
.Lcall_pl_leaf_α_248_180:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_pl_leaf_α_248_249
.Lcall_pl_leaf_α_248_195:
                                                                              jmp   .Lcall_pl_leaf_α_248_248
.Lcall_pl_leaf_α_248_190:
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        .section         .rodata
.Lcall_pl_leaf_plop249: .string          "nonvar"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdx, [rip + .Lcall_pl_leaf_plop249]
                        call             qword ptr [rip + rt_pl_type_cold@GOTPCREL]
.Lgcsite_$mod_cl$2F4_46:
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$mod_cl$2F4_47:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lcall_pl_leaf_α_248_249
.Lcall_pl_leaf_α_248_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_248_249:
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_248_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n115_unmark_α
.Lcall_pl_leaf_α_248_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n109_unmark_α
n108_call_pl_leaf_β:    add              rsp, 16
                        add              rsp, 16;                             jmp   n115_unmark_α
                        .size            n108_call_pl_leaf_bx, .-n108_call_pl_leaf_bx
                        .type            n109_unmark_bx, @function
n109_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_unmark_α:                                                                jmp   n110_lit_integer_α
                        .size            n109_unmark_bx, .-n109_unmark_bx
                        .type            n110_lit_integer_bx, @function
n110_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_252_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n111_var_ref_α
.Llit_integer_α_252_0:  .quad            1
                        .size            n110_lit_integer_bx, .-n110_lit_integer_bx
                        .type            n111_var_ref_bx, @function
n111_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2624]
                        mov              qword ptr [rsp + 8], rax;            jmp   n112_var_ref_α
                        .size            n111_var_ref_bx, .-n111_var_ref_bx
                        .type            n112_var_ref_bx, @function
n112_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2608]
                        mov              qword ptr [rsp + 8], rax;            jmp   n113_call_proc_staged_α
                        .size            n112_var_ref_bx, .-n112_var_ref_bx
                        .type            n113_call_proc_staged_bx, @function
n113_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_call_proc_staged_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 1424], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_258_200
                        mov              rax, qword ptr [rsp + 1440]
                        mov              rdx, qword ptr [rsp + 1448]
                        mov              r8, qword ptr [rip + g_call_args@GOTPCREL]
                        mov              r8, qword ptr [r8 + 0]
                        test             r8, r8;                              je    .Lcall_proc_staged_α_258_200
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx
                        xor              r8d, r8d;                            jmp   .Lcall_proc_staged_α_258_201
.Lcall_proc_staged_α_258_200:
                        mov              edi, 0                               # idx
                        mov              rsi, qword ptr [rsp + 1440]          # v
                        mov              rdx, qword ptr [rsp + 1448]          # v
                        call             rt_arg_stage@PLT
.Lgcsite_$mod_cl$2F4_60:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:131
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$mod_cl$2F4_59:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lcall_proc_staged_α_258_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_258_202
                        mov              rax, qword ptr [rsp + 1456]
                        mov              rdx, qword ptr [rsp + 1464]
                        mov              r8, qword ptr [rip + g_call_args@GOTPCREL]
                        mov              r8, qword ptr [r8 + 0]
                        test             r8, r8;                              je    .Lcall_proc_staged_α_258_202
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx
                        xor              r8d, r8d;                            jmp   .Lcall_proc_staged_α_258_203
.Lcall_proc_staged_α_258_202:
                        mov              edi, 1                               # idx
                        mov              rsi, qword ptr [rsp + 1456]          # v
                        mov              rdx, qword ptr [rsp + 1464]          # v
                        call             rt_arg_stage@PLT
.Lgcsite_$mod_cl$2F4_62:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:131
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$mod_cl$2F4_61:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lcall_proc_staged_α_258_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_258_204
                        mov              rax, qword ptr [rsp + 1472]
                        mov              rdx, qword ptr [rsp + 1480]
                        mov              r8, qword ptr [rip + g_call_args@GOTPCREL]
                        mov              r8, qword ptr [r8 + 0]
                        test             r8, r8;                              je    .Lcall_proc_staged_α_258_204
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx
                        xor              r8d, r8d;                            jmp   .Lcall_proc_staged_α_258_205
.Lcall_proc_staged_α_258_204:
                        mov              edi, 2                               # idx
                        mov              rsi, qword ptr [rsp + 1472]          # v
                        mov              rdx, qword ptr [rsp + 1480]          # v
                        call             rt_arg_stage@PLT
.Lgcsite_$mod_cl$2F4_64:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:131
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$mod_cl$2F4_63:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lcall_proc_staged_α_258_205:
                        mov              edi, 34                              # idx
                        mov              esi, 3                               # nargs
                        call             rt_proc_call_open_det@PLT
.Lgcsite_$mod_cl$2F4_58:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:1173
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$mod_cl$2F4_57:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:                      sub              rsp, 16                              # CFO-36 (cfo 2026-09-09): the landing words (N-2 word, landing cell) are pushed AFTER the prologue call, not before it -- in the generator regime they are an ODD count, so rt_proc_call_open_det ran at rsp 8-mod-16 and everything it reached did too (rt_trace_event_args -> image -> vsnprintf movaps: SIGSEGV on every traced generator call with an argument; Arizona coexpr and errors, rungs rung03). The entry layout the callee sees is byte-identical; only the prologue call moved above the words,
                        test             rax, rax;                            je    .Lcall_proc_staged_α_258_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_258_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_258_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_258_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_258_3:
                        mov              edx, 1
                        mov              qword ptr [rsp + 1432], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 1424]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_258_5
                        mov              qword ptr [rsp + 1424], 1
                        call             rt_proc_call_epilogue_γ@PLT
.Lgcsite_$mod_cl$2F4_56:
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lcall_proc_staged_α_258_2
.Lcall_proc_staged_α_258_5:
                        call             qword ptr [rip + rt_gen_spine_pass_γ@GOTPCREL]
.Lgcsite_$mod_cl$2F4_55:
                                                                              jmp   .Lcall_proc_staged_α_258_2
.Lcall_proc_staged_α_258_4:
                        mov              edi, 1
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 1424]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_258_6
                        mov              qword ptr [rsp + 1424], 1
                        call             rt_proc_call_epilogue_ω@PLT
.Lgcsite_$mod_cl$2F4_54:
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lcall_proc_staged_α_258_2
.Lcall_proc_staged_α_258_6:
                        call             qword ptr [rip + rt_gen_spine_pass_ω@GOTPCREL]
.Lgcsite_$mod_cl$2F4_53:
                                                                              jmp   .Lcall_proc_staged_α_258_2
.Lcall_proc_staged_α_258_1:
                        call             rt_ab_undef_fn_fail@PLT
.Lgcsite_$mod_cl$2F4_52:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:335
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$mod_cl$2F4_51:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:                      add              rsp, 16
                        add              rsp, 80;                             jmp   n129_unmark_α
.Lcall_proc_staged_α_258_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed): the fix-up is emitted here, rt_nret_fix_tiny is gone from the graph
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_258_29
                        cmp              eax, 40;                             je    .Lcall_proc_staged_α_258_25
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_nret_name@PLT
.Lgcsite_$mod_cl$2F4_50:
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1408]
                        mov              rdx, qword ptr [rsp + 1416]
                        cmp              eax, 40;                             je    .Lcall_proc_staged_α_258_25
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0;              jmp   .Lcall_proc_staged_α_258_23
.Lcall_proc_staged_α_258_25:
                        mov              rcx, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              jne   .Lcall_proc_staged_α_258_24
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0
                        cmp              eax, 40;                             jne   .Lcall_proc_staged_α_258_23
                        mov              rdi, rax                             # d
                        mov              rsi, rdx                             # d
                        call             rt_deref@PLT
.Lgcsite_$mod_cl$2F4_49:
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1408]
                        mov              rdx, qword ptr [rsp + 1416];         jmp   .Lcall_proc_staged_α_258_23
.Lcall_proc_staged_α_258_24:
.Lcall_proc_staged_α_258_23:
                        mov              rcx, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0
.Lcall_proc_staged_α_258_29:
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        cmp              al, 104;                             jne   .Lcall_proc_staged_α_258_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n129_unmark_α
.Lcall_proc_staged_α_258_999:
                                                                              jmp   n114_gate_arm_α
n113_call_proc_staged_β:
                        call             qword ptr [rip + rt_gen_spine_resume_enter@GOTPCREL]
.Lgcsite_$mod_cl$2F4_48:
                        mov              rax, qword ptr [rsp + 1432];         jmp   qword ptr [rax]
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_proc_staged_β_258_0: .quad .Lcall_proc_staged_β_258_0_s; .popsection
.Lcall_proc_staged_β_258_0_s:
                        .string          "$between_test/3"
                        .size            n113_call_proc_staged_bx, .-n113_call_proc_staged_bx
                        .type            n114_gate_arm_bx, @function
n114_gate_arm_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_gate_arm_α:        mov              dword ptr [rsp + 1328], 0
                        add              rsp, 80;                             jmp   n131_var_ref_α
                        .size            n114_gate_arm_bx, .-n114_gate_arm_bx
                        .type            n115_unmark_bx, @function
n115_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_unmark_α:                                                                jmp   n116_bound_α
                        .size            n115_unmark_bx, .-n115_unmark_bx
                        .type            n116_bound_bx, @function
n116_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_bound_α:           mov              qword ptr [rsp + 1440], rsp;         jmp   n117_disjunction_α
                        .size            n116_bound_bx, .-n116_bound_bx
                        .type            n117_disjunction_bx, @function
n117_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_disjunction_α:     sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 16], 0;             jmp   n150_var_ref_α
.Ldisjunction_γ_117_as: mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_266_0
                                                                              jmp   n118_unmark_α
.Ldisjunction_α_266_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_266_1
                                                                              jmp   n118_unmark_α
.Ldisjunction_α_266_1:                                                        jmp   n118_unmark_α
n117_disjunction_β:     add              rsp, 32;                             jmp   n153_unmark_α
.Ldisjunction_γ_117_af:
.Ldisjunction_ω_117_af: add              dword ptr [rsp + 16], 1
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 1;                              je    n147_var_ref_α
                        add              rsp, 32;                             jmp   n153_unmark_α
                        .size            n117_disjunction_bx, .-n117_disjunction_bx
                        .type            n118_unmark_bx, @function
n118_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_unmark_α:                                                                jmp   n119_var_ref_α
                        .size            n118_unmark_bx, .-n118_unmark_bx
                        .type            n119_var_ref_bx, @function
n119_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2576]
                        mov              qword ptr [rsp + 8], rax;            jmp   n120_lit_integer_α
                        .size            n119_var_ref_bx, .-n119_var_ref_bx
                        .type            n120_lit_integer_bx, @function
n120_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_271_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n121_lit_integer_α
.Llit_integer_α_271_0:  .quad            1
                        .size            n120_lit_integer_bx, .-n120_lit_integer_bx
                        .type            n121_lit_integer_bx, @function
n121_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_272_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n122_call_direct_α
.Llit_integer_α_272_0:  .quad            9223372036854775807
                        .size            n121_lit_integer_bx, .-n121_lit_integer_bx
                        .type            n122_call_direct_bx, @function
n122_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_call_direct_α:     sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 40], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 3
                        call             qword ptr [rip + rt_pl_dop_between_guard@GOTPCREL]
.Lgcsite_$mod_cl$2F4_65:
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$mod_cl$2F4_66:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_direct_α_273_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n126_unmark_α
.Lcall_direct_α_273_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n123_to_α
n122_call_direct_β:     add              rsp, 16
                        add              rsp, 80;                             jmp   n126_unmark_α
                        .size            n122_call_direct_bx, .-n122_call_direct_bx
                        .type            n123_to_bx, @function
n123_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_to_α:              sub              rsp, 32
                        mov              rdi, qword ptr [rsp + 64]            # lit_integer
                        mov              rsi, qword ptr [rsp + 72]
                        call             to_int@PLT
.Lgcsite_$mod_cl$2F4_70:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1632], rax
                        push             rax                                  # gc_poll bb_to.cpp:93
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$mod_cl$2F4_69:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 48]            # lit_integer
                        mov              rsi, qword ptr [rsp + 56]
                        call             to_int@PLT
.Lgcsite_$mod_cl$2F4_68:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1640], rax
.Lto_α_275_0:           mov              rax, qword ptr [rsp + 1632]
                        mov              rcx, qword ptr [rsp + 1640]
                        cmp              rax, rcx;                            jle   .Lto_α_275_998
                        add              rsp, 32
                        add              rsp, 96;                             jmp   n126_unmark_α
.Lto_α_275_998:         mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax
                        push             rax                                  # gc_poll bb_to.cpp:113
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$mod_cl$2F4_67:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n124_call_pl_leaf_α
n123_to_β:              inc              qword ptr [rsp + 1632];              jno   .Lto_β_275_999
                        add              rsp, 32
                        add              rsp, 96;                             jmp   n126_unmark_α
.Lto_β_275_999:                                                               jmp   .Lto_α_275_0
                        .size            n123_to_bx, .-n123_to_bx
                        .type            n124_call_pl_leaf_bx, @function
n124_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_call_pl_leaf_α:    sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        lea              rdi, [rsp + 16]
.Lcall_pl_leaf_α_276_100:
                        mov              eax, dword ptr [rdi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_276_101
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_276_102
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_276_190
.Lcall_pl_leaf_α_276_101:
                        mov              rcx, qword ptr [rdi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_276_190
                        cmp              rcx, rdi;                            je    .Lcall_pl_leaf_α_276_190
                        mov              rdi, rcx;                            jmp   .Lcall_pl_leaf_α_276_100
.Lcall_pl_leaf_α_276_102:
                        cmp              al, 3;                               je    .Lcall_pl_leaf_α_276_120
                        cmp              al, 5;                               je    .Lcall_pl_leaf_α_276_120
                        cmp              al, 120;                             je    .Lcall_pl_leaf_α_276_120
                                                                              jmp   .Lcall_pl_leaf_α_276_190
.Lcall_pl_leaf_α_276_120:
                        mov              rax, qword ptr [rdi + 0]
                        mov              rdx, qword ptr [rdi + 8]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rtx_pl_unify@GOTPCREL]
.Lgcsite_$mod_cl$2F4_73:
                        test             eax, eax;                            jz    .Lcall_pl_leaf_α_276_248
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lcall_pl_leaf_α_276_249
.Lcall_pl_leaf_α_276_190:
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        call             qword ptr [rip + rt_pl_is_cold@GOTPCREL]
.Lgcsite_$mod_cl$2F4_72:
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        push             rax                                  # gc_poll bb_call_pl_leaf.cpp:191
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$mod_cl$2F4_71:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    .Lcall_pl_leaf_α_276_248
                        lea              rdi, [rsp + 16];                     jmp   .Lcall_pl_leaf_α_276_120
.Lcall_pl_leaf_α_276_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_276_249:
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_276_999
                        add              rsp, 16;                             jmp   n123_to_β
.Lcall_pl_leaf_α_276_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n125_gate_arm_α
n124_call_pl_leaf_β:    add              rsp, 16;                             jmp   n123_to_β
                        .size            n124_call_pl_leaf_bx, .-n124_call_pl_leaf_bx
                        .type            n125_gate_arm_bx, @function
n125_gate_arm_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_gate_arm_α:        mov              dword ptr [rsp + 1552], 0
                        add              rsp, 976;                            jmp   n128_gate_arm_α
                        .size            n125_gate_arm_bx, .-n125_gate_arm_bx
                        .type            n126_unmark_bx, @function
n126_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_unmark_α:                                                                jmp   n127_gate_α
                        .size            n126_unmark_bx, .-n126_unmark_bx
                        .type            n127_gate_bx, @function
n127_gate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_gate_α:                                                                  jmp   n129_unmark_α
n127_gate_β:            mov              eax, dword ptr [rsp + 560]
                        cmp              eax, 0;                              jne   .Lgate_β_282_10
                        add              rsp, -112;                           jmp   n123_to_β
.Lgate_β_282_10:        cmp              eax, 1;                              jne   .Lgate_β_282_11
                        add              rsp, -112;                           jmp   n160_to_β
.Lgate_β_282_11:                                                              jmp   n129_unmark_α
                        .size            n127_gate_bx, .-n127_gate_bx
                        .type            n128_gate_arm_bx, @function
n128_gate_arm_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_gate_arm_α:        mov              dword ptr [rsp + 1248], 1
                        add              rsp, 848;                            jmp   n131_var_ref_α
                        .size            n128_gate_arm_bx, .-n128_gate_arm_bx
                        .type            n129_unmark_bx, @function
n129_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_unmark_α:                                                                jmp   n130_gate_α
                        .size            n129_unmark_bx, .-n129_unmark_bx
                        .type            n130_gate_bx, @function
n130_gate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_gate_α:            add              rsp, 208;                            jmp   n92_to_β
n130_gate_β:            mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 0;                              jne   .Lgate_β_288_10
                        add              rsp, -80;                            jmp   n113_call_proc_staged_β
.Lgate_β_288_10:        cmp              eax, 1;                              je    n127_gate_β
                        add              rsp, 208;                            jmp   n92_to_β
                        .size            n130_gate_bx, .-n130_gate_bx
                        .type            n131_var_ref_bx, @function
n131_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2560]
                        mov              qword ptr [rsp + 8], rax;            jmp   n132_var_ref_α
                        .size            n131_var_ref_bx, .-n131_var_ref_bx
                        .type            n132_var_ref_bx, @function
n132_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2544]
                        mov              qword ptr [rsp + 8], rax;            jmp   n133_var_ref_α
                        .size            n132_var_ref_bx, .-n132_var_ref_bx
                        .type            n133_var_ref_bx, @function
n133_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2608]
                        mov              qword ptr [rsp + 8], rax;            jmp   n134_call_direct_α
                        .size            n133_var_ref_bx, .-n133_var_ref_bx
                        .type            n134_call_direct_bx, @function
n134_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_call_direct_α:     sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 3
                        call             qword ptr [rip + rt_pl_dop_pl_cp_nth@GOTPCREL]
.Lgcsite_$mod_cl$2F4_74:
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$mod_cl$2F4_75:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_direct_α_295_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n130_gate_β
.Lcall_direct_α_295_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n135_var_ref_α
n134_call_direct_β:     add              rsp, 16
                        add              rsp, 48;                             jmp   n130_gate_β
                        .size            n134_call_direct_bx, .-n134_call_direct_bx
                        .type            n135_var_ref_bx, @function
n135_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 976]
                        mov              qword ptr [rsp + 8], rax;            jmp   n136_lit_integer_α
                        .size            n135_var_ref_bx, .-n135_var_ref_bx
                        .type            n136_lit_integer_bx, @function
n136_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_298_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n137_var_ref_α
.Llit_integer_α_298_0:  .quad            0
                        .size            n136_lit_integer_bx, .-n136_lit_integer_bx
                        .type            n137_var_ref_bx, @function
n137_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2640]
                        mov              qword ptr [rsp + 8], rax;            jmp   n138_var_ref_α
                        .size            n137_var_ref_bx, .-n137_var_ref_bx
                        .type            n138_var_ref_bx, @function
n138_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2624]
                        mov              qword ptr [rsp + 8], rax;            jmp   n139_call_pl_leaf_α
                        .size            n138_var_ref_bx, .-n138_var_ref_bx
                        .type            n139_call_pl_leaf_bx, @function
n139_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_call_pl_leaf_α:    sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              edi, 214
                        mov              esi, 32
                        call             qword ptr [rip + rt_gcheap_alloc@GOTPCREL]
.Lgcsite_$mod_cl$2F4_78:
                        movabs           rcx, 80
                        mov              qword ptr [rsp + 0], rcx             # the result cell is parked in argv[0] (the functor literal's cell, dead once its id is baked above) across the poll and the kid loop: the box's result slot may be one of the kids' argv cells
                        mov              qword ptr [rsp + 8], rax
                        push             rax                                  # gc_poll bb_call_pl_leaf.cpp:315
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$mod_cl$2F4_77:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              r10, qword ptr [rsp + 8]
                        lea              r9, [rsp + 16]
                        mov              r11, 2
.Lcall_pl_leaf_α_303_100:
                        test             r11, r11;                            jz    .Lcall_pl_leaf_α_303_102
                        mov              rdi, r9
.Lcall_pl_leaf_α_303_103:
                        mov              eax, dword ptr [rdi + 0]             # deref: follow a name (slen 1: the cell; slen 2: the VCELL's cell) or a bound PLVAR to the cell that holds the value; eax = its tag word
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_303_104
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_303_106
                        mov              rsi, qword ptr [rdi + 8]
                        test             rsi, rsi;                            jz    .Lcall_pl_leaf_α_303_106
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_303_105
                        cmp              rsi, rdi;                            je    .Lcall_pl_leaf_α_303_106
                        mov              rdi, rsi;                            jmp   .Lcall_pl_leaf_α_303_103
.Lcall_pl_leaf_α_303_105:
                        cmp              ecx, 2;                              jne   .Lcall_pl_leaf_α_303_106
                        mov              rsi, qword ptr [rsi + 0]
                        test             rsi, rsi;                            jz    .Lcall_pl_leaf_α_303_106
                        mov              rdi, rsi;                            jmp   .Lcall_pl_leaf_α_303_103
.Lcall_pl_leaf_α_303_104:
                        mov              rsi, qword ptr [rdi + 8]
                        test             rsi, rsi;                            jz    .Lcall_pl_leaf_α_303_106
                        cmp              rsi, rdi;                            je    .Lcall_pl_leaf_α_303_106
                        mov              rdi, rsi;                            jmp   .Lcall_pl_leaf_α_303_103
.Lcall_pl_leaf_α_303_106:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_303_107
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_303_107
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_303_107
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_303_108
                        mov              rsi, qword ptr [rdi + 8]
                        cmp              rsi, rdi;                            je    .Lcall_pl_leaf_α_303_107
.Lcall_pl_leaf_α_303_108:
                        mov              rax, qword ptr [rdi + 0]
                        mov              rdx, qword ptr [rdi + 8]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx;            jmp   .Lcall_pl_leaf_α_303_101
.Lcall_pl_leaf_α_303_107:
                        cmp              rdi, rsp;                            ja    .Lcall_pl_leaf_α_303_113
                        mov              qword ptr [r10 + 0], 72
                        mov              qword ptr [r10 + 8], rdi;            jmp   .Lcall_pl_leaf_α_303_101
.Lcall_pl_leaf_α_303_113:
                        mov              qword ptr [r10 + 0], 72
                        mov              qword ptr [r10 + 8], r10
                        test             r13, r13;                            jz    .Lcall_pl_leaf_α_303_109
                        cmp              rdi, rsp;                            ja    .Lcall_pl_leaf_α_303_170
                        mov              rax, qword ptr [r13 + 0]             # a heap cell at or above B's HB (the pad of the sentinel just under B's mark) and below the frontier was made after B: not trailed
                        mov              rdx, qword ptr [rax + -32]
                        test             rdx, rdx;                            jne   .Lcall_pl_leaf_α_303_110
                        mov              rdx, qword ptr [rax + -24]
                        cmp              rdi, rdx;                            jb    .Lcall_pl_leaf_α_303_110
                        mov              rax, qword ptr [rip + g_hp_fr@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rdi, rax;                            jb    .Lcall_pl_leaf_α_303_109
                                                                              jmp   .Lcall_pl_leaf_α_303_110
.Lcall_pl_leaf_α_303_170:
                        mov              rax, qword ptr [r13 + 32]
                        shr              rax, 8
                        cmp              rdi, rax;                            jb    .Lcall_pl_leaf_α_303_109
.Lcall_pl_leaf_α_303_110:
                        mov              rax, r12                             # the push: {cell, 0, old} on the r12 trail, the arena's top word synced for the collector
                        and              rax, 536870911
                        cmp              rax, 536870880;                      jae   .Lcall_pl_leaf_α_303_111
                        mov              rax, qword ptr [rdi + 0]
                        mov              rdx, qword ptr [rdi + 8]
                        mov              qword ptr [r12 + 0], rdi
                        mov              qword ptr [r12 + 8], 0
                        mov              qword ptr [r12 + 16], rax
                        mov              qword ptr [r12 + 24], rdx
                        add              r12, 32
                        mov              rax, r12
                        and              rax, -536870912
                        mov              qword ptr [rax + 0], r12
.Lcall_pl_leaf_α_303_109:
                        mov              qword ptr [rdi + 0], 72
                        mov              qword ptr [rdi + 8], r10
.Lcall_pl_leaf_α_303_101:
                        add              r9, 16
                        add              r10, 16
                        sub              r11, 1;                              jmp   .Lcall_pl_leaf_α_303_100
.Lcall_pl_leaf_α_303_102:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8];            jmp   .Lcall_pl_leaf_α_303_249
.Lcall_pl_leaf_α_303_111:
                        mov              rdi, r12
                        call             rt_pl_tr_refuse@PLT
.Lgcsite_$mod_cl$2F4_76:
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lcall_pl_leaf_α_303_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_303_249:
                        add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_303_999
                        add              rsp, 16
                        add              rsp, 992;                            jmp   $mod_cl$2F4_ω
.Lcall_pl_leaf_α_303_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n140_call_direct_α
n139_call_pl_leaf_β:    add              rsp, 16
                        add              rsp, 992;                            jmp   $mod_cl$2F4_ω
                        .size            n139_call_pl_leaf_bx, .-n139_call_pl_leaf_bx
                        .type            n140_call_direct_bx, @function
n140_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_call_direct_α:     sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        call             qword ptr [rip + rt_pl_dop_univ@GOTPCREL]
.Lgcsite_$mod_cl$2F4_79:
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$mod_cl$2F4_80:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_304_999
                        add              rsp, 16
                        add              rsp, 144;                            jmp   n130_gate_β
.Lcall_direct_α_304_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n141_var_ref_α
n140_call_direct_β:     add              rsp, 16
                        add              rsp, 144;                            jmp   n130_gate_β
                        .size            n140_call_direct_bx, .-n140_call_direct_bx
                        .type            n141_var_ref_bx, @function
n141_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 1104]
                        mov              qword ptr [rsp + 8], rax;            jmp   n142_lit_integer_α
                        .size            n141_var_ref_bx, .-n141_var_ref_bx
                        .type            n142_lit_integer_bx, @function
n142_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_307_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n143_var_ref_α
.Llit_integer_α_307_0:  .quad            0
                        .size            n142_lit_integer_bx, .-n142_lit_integer_bx
                        .type            n143_var_ref_bx, @function
n143_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2720]
                        mov              qword ptr [rsp + 8], rax;            jmp   n144_var_ref_α
                        .size            n143_var_ref_bx, .-n143_var_ref_bx
                        .type            n144_var_ref_bx, @function
n144_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2720]
                        mov              qword ptr [rsp + 8], rax;            jmp   n145_call_pl_leaf_α
                        .size            n144_var_ref_bx, .-n144_var_ref_bx
                        .type            n145_call_pl_leaf_bx, @function
n145_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_call_pl_leaf_α:    sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              edi, 214
                        mov              esi, 32
                        call             qword ptr [rip + rt_gcheap_alloc@GOTPCREL]
.Lgcsite_$mod_cl$2F4_83:
                        movabs           rcx, 80
                        mov              qword ptr [rsp + 0], rcx             # the result cell is parked in argv[0] (the functor literal's cell, dead once its id is baked above) across the poll and the kid loop: the box's result slot may be one of the kids' argv cells
                        mov              qword ptr [rsp + 8], rax
                        push             rax                                  # gc_poll bb_call_pl_leaf.cpp:315
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$mod_cl$2F4_82:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              r10, qword ptr [rsp + 8]
                        lea              r9, [rsp + 16]
                        mov              r11, 2
.Lcall_pl_leaf_α_312_100:
                        test             r11, r11;                            jz    .Lcall_pl_leaf_α_312_102
                        mov              rdi, r9
.Lcall_pl_leaf_α_312_103:
                        mov              eax, dword ptr [rdi + 0]             # deref: follow a name (slen 1: the cell; slen 2: the VCELL's cell) or a bound PLVAR to the cell that holds the value; eax = its tag word
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_312_104
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_312_106
                        mov              rsi, qword ptr [rdi + 8]
                        test             rsi, rsi;                            jz    .Lcall_pl_leaf_α_312_106
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_312_105
                        cmp              rsi, rdi;                            je    .Lcall_pl_leaf_α_312_106
                        mov              rdi, rsi;                            jmp   .Lcall_pl_leaf_α_312_103
.Lcall_pl_leaf_α_312_105:
                        cmp              ecx, 2;                              jne   .Lcall_pl_leaf_α_312_106
                        mov              rsi, qword ptr [rsi + 0]
                        test             rsi, rsi;                            jz    .Lcall_pl_leaf_α_312_106
                        mov              rdi, rsi;                            jmp   .Lcall_pl_leaf_α_312_103
.Lcall_pl_leaf_α_312_104:
                        mov              rsi, qword ptr [rdi + 8]
                        test             rsi, rsi;                            jz    .Lcall_pl_leaf_α_312_106
                        cmp              rsi, rdi;                            je    .Lcall_pl_leaf_α_312_106
                        mov              rdi, rsi;                            jmp   .Lcall_pl_leaf_α_312_103
.Lcall_pl_leaf_α_312_106:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_312_107
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_312_107
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_312_107
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_312_108
                        mov              rsi, qword ptr [rdi + 8]
                        cmp              rsi, rdi;                            je    .Lcall_pl_leaf_α_312_107
.Lcall_pl_leaf_α_312_108:
                        mov              rax, qword ptr [rdi + 0]
                        mov              rdx, qword ptr [rdi + 8]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx;            jmp   .Lcall_pl_leaf_α_312_101
.Lcall_pl_leaf_α_312_107:
                        cmp              rdi, rsp;                            ja    .Lcall_pl_leaf_α_312_113
                        mov              qword ptr [r10 + 0], 72
                        mov              qword ptr [r10 + 8], rdi;            jmp   .Lcall_pl_leaf_α_312_101
.Lcall_pl_leaf_α_312_113:
                        mov              qword ptr [r10 + 0], 72
                        mov              qword ptr [r10 + 8], r10
                        test             r13, r13;                            jz    .Lcall_pl_leaf_α_312_109
                        cmp              rdi, rsp;                            ja    .Lcall_pl_leaf_α_312_170
                        mov              rax, qword ptr [r13 + 0]             # a heap cell at or above B's HB (the pad of the sentinel just under B's mark) and below the frontier was made after B: not trailed
                        mov              rdx, qword ptr [rax + -32]
                        test             rdx, rdx;                            jne   .Lcall_pl_leaf_α_312_110
                        mov              rdx, qword ptr [rax + -24]
                        cmp              rdi, rdx;                            jb    .Lcall_pl_leaf_α_312_110
                        mov              rax, qword ptr [rip + g_hp_fr@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rdi, rax;                            jb    .Lcall_pl_leaf_α_312_109
                                                                              jmp   .Lcall_pl_leaf_α_312_110
.Lcall_pl_leaf_α_312_170:
                        mov              rax, qword ptr [r13 + 32]
                        shr              rax, 8
                        cmp              rdi, rax;                            jb    .Lcall_pl_leaf_α_312_109
.Lcall_pl_leaf_α_312_110:
                        mov              rax, r12                             # the push: {cell, 0, old} on the r12 trail, the arena's top word synced for the collector
                        and              rax, 536870911
                        cmp              rax, 536870880;                      jae   .Lcall_pl_leaf_α_312_111
                        mov              rax, qword ptr [rdi + 0]
                        mov              rdx, qword ptr [rdi + 8]
                        mov              qword ptr [r12 + 0], rdi
                        mov              qword ptr [r12 + 8], 0
                        mov              qword ptr [r12 + 16], rax
                        mov              qword ptr [r12 + 24], rdx
                        add              r12, 32
                        mov              rax, r12
                        and              rax, -536870912
                        mov              qword ptr [rax + 0], r12
.Lcall_pl_leaf_α_312_109:
                        mov              qword ptr [rdi + 0], 72
                        mov              qword ptr [rdi + 8], r10
.Lcall_pl_leaf_α_312_101:
                        add              r9, 16
                        add              r10, 16
                        sub              r11, 1;                              jmp   .Lcall_pl_leaf_α_312_100
.Lcall_pl_leaf_α_312_102:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8];            jmp   .Lcall_pl_leaf_α_312_249
.Lcall_pl_leaf_α_312_111:
                        mov              rdi, r12
                        call             rt_pl_tr_refuse@PLT
.Lgcsite_$mod_cl$2F4_81:
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lcall_pl_leaf_α_312_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_312_249:
                        add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_312_999
                        add              rsp, 16
                        add              rsp, 1088;                           jmp   $mod_cl$2F4_ω
.Lcall_pl_leaf_α_312_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n146_call_direct_α
n145_call_pl_leaf_β:    add              rsp, 16
                        add              rsp, 1088;                           jmp   $mod_cl$2F4_ω
                        .size            n145_call_pl_leaf_bx, .-n145_call_pl_leaf_bx
                        .type            n146_call_direct_bx, @function
n146_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_call_direct_α:     sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        call             qword ptr [rip + rt_pl_dop_univ@GOTPCREL]
.Lgcsite_$mod_cl$2F4_84:
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$mod_cl$2F4_85:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_313_999
                        add              rsp, 16
                        add              rsp, 240;                            jmp   n130_gate_β
.Lcall_direct_α_313_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 1104;                           jmp   $mod_cl$2F4_γ
n146_call_direct_β:     add              rsp, 16
                        add              rsp, 240;                            jmp   n130_gate_β
                        .size            n146_call_direct_bx, .-n146_call_direct_bx
                        .type            n147_var_ref_bx, @function
n147_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2608]
                        mov              qword ptr [rsp + 8], rax;            jmp   n148_lit_atom_α
n147_var_ref_β:         add              rsp, 16;                             jmp   .Ldisjunction_ω_117_af
                        .size            n147_var_ref_bx, .-n147_var_ref_bx
                        .type            n148_lit_atom_bx, @function
n148_lit_atom_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_atom_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 176             # result
                        mov              rax, qword ptr [rip + .Llit_atom_α_316_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n149_call_pl_leaf_α
.Llit_atom_α_316_0:     .quad            215
                        .size            n148_lit_atom_bx, .-n148_lit_atom_bx
                        .type            n149_call_pl_leaf_bx, @function
n149_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_call_pl_leaf_α:    sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        lea              rdi, [rsp + 0]
.Lcall_pl_leaf_α_317_100:
                        mov              eax, dword ptr [rdi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_317_101
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_317_102
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_317_190
.Lcall_pl_leaf_α_317_101:
                        mov              rcx, qword ptr [rdi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_317_190
                        cmp              rcx, rdi;                            je    .Lcall_pl_leaf_α_317_130
                        mov              rdi, rcx;                            jmp   .Lcall_pl_leaf_α_317_100
.Lcall_pl_leaf_α_317_102:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_317_130
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_317_130
                        cmp              al, 3;                               jne   .Lcall_pl_leaf_α_317_190
                        mov              rdx, qword ptr [rdi + 8]
                        lea              rsi, [rsp + 16]
.Lcall_pl_leaf_α_317_110:
                        mov              eax, dword ptr [rsi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_317_111
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_317_112
                        mov              ecx, dword ptr [rsi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_317_190
.Lcall_pl_leaf_α_317_111:
                        mov              rcx, qword ptr [rsi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_317_190
                        cmp              rcx, rsi;                            je    .Lcall_pl_leaf_α_317_190
                        mov              rsi, rcx;                            jmp   .Lcall_pl_leaf_α_317_110
.Lcall_pl_leaf_α_317_112:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_317_190
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_317_190
                        cmp              al, 3;                               jne   .Lcall_pl_leaf_α_317_190
                        mov              rcx, qword ptr [rsi + 8]
                        cmp              rdx, rcx;                            jne   .Lcall_pl_leaf_α_317_195
                                                                              jmp   .Lcall_pl_leaf_α_317_180
.Lcall_pl_leaf_α_317_130:
                        lea              rsi, [rsp + 16]
.Lcall_pl_leaf_α_317_120:
                        mov              eax, dword ptr [rsi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_317_121
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_317_122
                        mov              ecx, dword ptr [rsi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_317_190
.Lcall_pl_leaf_α_317_121:
                        mov              rcx, qword ptr [rsi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_317_190
                        cmp              rcx, rsi;                            je    .Lcall_pl_leaf_α_317_135
                        mov              rsi, rcx;                            jmp   .Lcall_pl_leaf_α_317_120
.Lcall_pl_leaf_α_317_122:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_317_135
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_317_135
                                                                              jmp   .Lcall_pl_leaf_α_317_190
.Lcall_pl_leaf_α_317_135:
                        cmp              rdi, rsi;                            jne   .Lcall_pl_leaf_α_317_195
                                                                              jmp   .Lcall_pl_leaf_α_317_180
.Lcall_pl_leaf_α_317_180:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_pl_leaf_α_317_249
.Lcall_pl_leaf_α_317_195:
                                                                              jmp   .Lcall_pl_leaf_α_317_248
.Lcall_pl_leaf_α_317_190:
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        .section         .rodata
.Lcall_pl_leaf_plop318: .string          "eq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdx, [rip + .Lcall_pl_leaf_plop318]
                        call             qword ptr [rip + rt_pl_atop_cold@GOTPCREL]
.Lgcsite_$mod_cl$2F4_86:
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$mod_cl$2F4_87:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lcall_pl_leaf_α_317_249
.Lcall_pl_leaf_α_317_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_317_249:
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_317_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   .Ldisjunction_ω_117_af
.Lcall_pl_leaf_α_317_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 48;                             jmp   .Ldisjunction_γ_117_as
n149_call_pl_leaf_β:    add              rsp, 16
                        add              rsp, 32;                             jmp   .Ldisjunction_ω_117_af
                        .size            n149_call_pl_leaf_bx, .-n149_call_pl_leaf_bx
                        .type            n150_var_ref_bx, @function
n150_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2608]
                        mov              qword ptr [rsp + 8], rax;            jmp   n151_lit_atom_α
n150_var_ref_β:         add              rsp, 16;                             jmp   .Ldisjunction_ω_117_af
                        .size            n150_var_ref_bx, .-n150_var_ref_bx
                        .type            n151_lit_atom_bx, @function
n151_lit_atom_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_atom_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 176             # result
                        mov              rax, qword ptr [rip + .Llit_atom_α_321_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n152_call_pl_leaf_α
.Llit_atom_α_321_0:     .quad            216
                        .size            n151_lit_atom_bx, .-n151_lit_atom_bx
                        .type            n152_call_pl_leaf_bx, @function
n152_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_call_pl_leaf_α:    sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        lea              rdi, [rsp + 0]
.Lcall_pl_leaf_α_322_100:
                        mov              eax, dword ptr [rdi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_322_101
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_322_102
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_322_190
.Lcall_pl_leaf_α_322_101:
                        mov              rcx, qword ptr [rdi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_322_190
                        cmp              rcx, rdi;                            je    .Lcall_pl_leaf_α_322_130
                        mov              rdi, rcx;                            jmp   .Lcall_pl_leaf_α_322_100
.Lcall_pl_leaf_α_322_102:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_322_130
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_322_130
                        cmp              al, 3;                               jne   .Lcall_pl_leaf_α_322_190
                        mov              rdx, qword ptr [rdi + 8]
                        lea              rsi, [rsp + 16]
.Lcall_pl_leaf_α_322_110:
                        mov              eax, dword ptr [rsi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_322_111
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_322_112
                        mov              ecx, dword ptr [rsi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_322_190
.Lcall_pl_leaf_α_322_111:
                        mov              rcx, qword ptr [rsi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_322_190
                        cmp              rcx, rsi;                            je    .Lcall_pl_leaf_α_322_190
                        mov              rsi, rcx;                            jmp   .Lcall_pl_leaf_α_322_110
.Lcall_pl_leaf_α_322_112:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_322_190
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_322_190
                        cmp              al, 3;                               jne   .Lcall_pl_leaf_α_322_190
                        mov              rcx, qword ptr [rsi + 8]
                        cmp              rdx, rcx;                            jne   .Lcall_pl_leaf_α_322_195
                                                                              jmp   .Lcall_pl_leaf_α_322_180
.Lcall_pl_leaf_α_322_130:
                        lea              rsi, [rsp + 16]
.Lcall_pl_leaf_α_322_120:
                        mov              eax, dword ptr [rsi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_322_121
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_322_122
                        mov              ecx, dword ptr [rsi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_322_190
.Lcall_pl_leaf_α_322_121:
                        mov              rcx, qword ptr [rsi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_322_190
                        cmp              rcx, rsi;                            je    .Lcall_pl_leaf_α_322_135
                        mov              rsi, rcx;                            jmp   .Lcall_pl_leaf_α_322_120
.Lcall_pl_leaf_α_322_122:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_322_135
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_322_135
                                                                              jmp   .Lcall_pl_leaf_α_322_190
.Lcall_pl_leaf_α_322_135:
                        cmp              rdi, rsi;                            jne   .Lcall_pl_leaf_α_322_195
                                                                              jmp   .Lcall_pl_leaf_α_322_180
.Lcall_pl_leaf_α_322_180:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_pl_leaf_α_322_249
.Lcall_pl_leaf_α_322_195:
                                                                              jmp   .Lcall_pl_leaf_α_322_248
.Lcall_pl_leaf_α_322_190:
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        .section         .rodata
.Lcall_pl_leaf_plop323: .string          "eq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdx, [rip + .Lcall_pl_leaf_plop323]
                        call             qword ptr [rip + rt_pl_atop_cold@GOTPCREL]
.Lgcsite_$mod_cl$2F4_88:
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$mod_cl$2F4_89:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lcall_pl_leaf_α_322_249
.Lcall_pl_leaf_α_322_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_322_249:
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_322_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   .Ldisjunction_ω_117_af
.Lcall_pl_leaf_α_322_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 48;                             jmp   .Ldisjunction_γ_117_as
n152_call_pl_leaf_β:    add              rsp, 16
                        add              rsp, 32;                             jmp   .Ldisjunction_ω_117_af
                        .size            n152_call_pl_leaf_bx, .-n152_call_pl_leaf_bx
                        .type            n153_unmark_bx, @function
n153_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_unmark_α:                                                                jmp   n154_var_ref_α
                        .size            n153_unmark_bx, .-n153_unmark_bx
                        .type            n154_var_ref_bx, @function
n154_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2544]
                        mov              qword ptr [rsp + 8], rax;            jmp   n155_lit_integer_α
                        .size            n154_var_ref_bx, .-n154_var_ref_bx
                        .type            n155_lit_integer_bx, @function
n155_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_328_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n156_var_α
.Llit_integer_α_328_0:  .quad            1
                        .size            n155_lit_integer_bx, .-n155_lit_integer_bx
                        .type            n156_var_bx, @function
n156_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [rsp + 2608]
                        mov              rdx, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n157_call_direct_α
                        .size            n156_var_bx, .-n156_var_bx
                        .type            n157_call_direct_bx, @function
n157_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_call_direct_α:     sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 40], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 3
                        call             qword ptr [rip + rt_pl_dop_between_guard@GOTPCREL]
.Lgcsite_$mod_cl$2F4_90:
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$mod_cl$2F4_91:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_direct_α_331_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n126_unmark_α
.Lcall_direct_α_331_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n158_var_α
n157_call_direct_β:     add              rsp, 16
                        add              rsp, 48;                             jmp   n126_unmark_α
                        .size            n157_call_direct_bx, .-n157_call_direct_bx
                        .type            n158_var_bx, @function
n158_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [rsp + 2640]
                        mov              rdx, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n159_call_pl_leaf_α
                        .size            n158_var_bx, .-n158_var_bx
                        .type            n159_call_pl_leaf_bx, @function
n159_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_call_pl_leaf_α:    sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
.Lcall_pl_leaf_α_334_190:
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        .section         .rodata
.Lcall_pl_leaf_plop335: .string          "pos"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdx, [rip + .Lcall_pl_leaf_plop335]
                        call             qword ptr [rip + rt_pl_ax_cold@GOTPCREL]
.Lgcsite_$mod_cl$2F4_92:
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$mod_cl$2F4_93:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lcall_pl_leaf_α_334_249
.Lcall_pl_leaf_α_334_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_334_249:
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_334_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n126_unmark_α
.Lcall_pl_leaf_α_334_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n160_to_α
n159_call_pl_leaf_β:    add              rsp, 16
                        add              rsp, 80;                             jmp   n126_unmark_α
                        .size            n159_call_pl_leaf_bx, .-n159_call_pl_leaf_bx
                        .type            n160_to_bx, @function
n160_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_to_α:              sub              rsp, 32
                        mov              rdi, qword ptr [rsp + 96]            # lit_integer
                        mov              rsi, qword ptr [rsp + 104]
                        call             to_int@PLT
.Lgcsite_$mod_cl$2F4_97:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1712], rax
                        push             rax                                  # gc_poll bb_to.cpp:93
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$mod_cl$2F4_96:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        call             to_int@PLT
.Lgcsite_$mod_cl$2F4_95:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1720], rax
.Lto_α_337_0:           mov              rax, qword ptr [rsp + 1712]
                        mov              rcx, qword ptr [rsp + 1720]
                        cmp              rax, rcx;                            jle   .Lto_α_337_998
                        add              rsp, 32
                        add              rsp, 96;                             jmp   n126_unmark_α
.Lto_α_337_998:         mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax
                        push             rax                                  # gc_poll bb_to.cpp:113
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$mod_cl$2F4_94:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n161_call_pl_leaf_α
n160_to_β:              inc              qword ptr [rsp + 1712];              jno   .Lto_β_337_999
                        add              rsp, 32
                        add              rsp, 96;                             jmp   n126_unmark_α
.Lto_β_337_999:                                                               jmp   .Lto_α_337_0
                        .size            n160_to_bx, .-n160_to_bx
                        .type            n161_call_pl_leaf_bx, @function
n161_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_call_pl_leaf_α:    sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        lea              rdi, [rsp + 16]
.Lcall_pl_leaf_α_338_100:
                        mov              eax, dword ptr [rdi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_338_101
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_338_102
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_338_190
.Lcall_pl_leaf_α_338_101:
                        mov              rcx, qword ptr [rdi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_338_190
                        cmp              rcx, rdi;                            je    .Lcall_pl_leaf_α_338_190
                        mov              rdi, rcx;                            jmp   .Lcall_pl_leaf_α_338_100
.Lcall_pl_leaf_α_338_102:
                        cmp              al, 3;                               je    .Lcall_pl_leaf_α_338_120
                        cmp              al, 5;                               je    .Lcall_pl_leaf_α_338_120
                        cmp              al, 120;                             je    .Lcall_pl_leaf_α_338_120
                                                                              jmp   .Lcall_pl_leaf_α_338_190
.Lcall_pl_leaf_α_338_120:
                        mov              rax, qword ptr [rdi + 0]
                        mov              rdx, qword ptr [rdi + 8]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rtx_pl_unify@GOTPCREL]
.Lgcsite_$mod_cl$2F4_100:
                        test             eax, eax;                            jz    .Lcall_pl_leaf_α_338_248
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lcall_pl_leaf_α_338_249
.Lcall_pl_leaf_α_338_190:
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        call             qword ptr [rip + rt_pl_is_cold@GOTPCREL]
.Lgcsite_$mod_cl$2F4_99:
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        push             rax                                  # gc_poll bb_call_pl_leaf.cpp:191
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$mod_cl$2F4_98:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    .Lcall_pl_leaf_α_338_248
                        lea              rdi, [rsp + 16];                     jmp   .Lcall_pl_leaf_α_338_120
.Lcall_pl_leaf_α_338_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_338_249:
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_338_999
                        add              rsp, 16;                             jmp   n160_to_β
.Lcall_pl_leaf_α_338_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n162_gate_arm_α
n161_call_pl_leaf_β:    add              rsp, 16;                             jmp   n160_to_β
                        .size            n161_call_pl_leaf_bx, .-n161_call_pl_leaf_bx
                        .type            n162_gate_arm_bx, @function
n162_gate_arm_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_gate_arm_α:        mov              dword ptr [rsp + 1552], 1
                        add              rsp, 976;                            jmp   n128_gate_arm_α
                        .size            n162_gate_arm_bx, .-n162_gate_arm_bx
#-----------------------------------------------------------------------------------------------------------------------
$mod_cl$2F4_β:
                                                                              jmp   $mod_cl$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
$mod_cl$2F4_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1816]
                        lea              rsp, [rbp + 1840]
                        mov              rbp, qword ptr [rbp + 1832];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$mod_cl$2F4_ω:
                        mov              rcx, qword ptr [rsp + 1824]
                        lea              rsp, [rbp + 1840]
                        mov              rbp, qword ptr [rbp + 1832];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_$mod_cl$2F4:
                        .quad            7904086281562
                        .quad            34359738416
                        .quad            .Lgcmap_$mod_cl$2F4_s
                        .quad            1776
                        .quad            25
                        .quad            422212465065984
                        .quad            17596481012096
                        .quad            17592186044816
                        .quad            17596481012128
                        .quad            52776558133680
                        .quad            8800387989984
                        .quad            8808977924584
                        .quad            70368744178160
                        .quad            17596481012272
                        .quad            17592186044992
                        .quad            17596481012304
                        .quad            52776558133856
                        .quad            17596481012368
                        .quad            70368744178336
                        .quad            17596481012448
                        .quad            123145302311664
                        .quad            17596481012576
                        .quad            281474976711536
                        .quad            17596481012848
                        .quad            175921860445312
                        .quad            17596481013024
                        .quad            316659348800816
                        .quad            8808977925712
                        .quad            8800387991128
                        .quad            158329674401376
.Lgcmap_$mod_cl$2F4_s:  .string          "$mod_cl/4"
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_$mod_cl$2F4_1:
                        .quad            101
                        .quad            .Lgcmap_$mod_cl$2F4
                        .quad            9223794253614810904
                        .quad            .Lgccode_$mod_cl$2F4_1
                        .quad            .Lgcsite_$mod_cl$2F4_0-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_1-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_2-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_3-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_4-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_5-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_6-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_7-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_8-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_9-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_10-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_11-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_12-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_13-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_14-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_15-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_16-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_17-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_21-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_20-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_19-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_18-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_22-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_23-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_24-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_25-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_26-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_27-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_31-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_30-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_29-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_28-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_32-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_33-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_34-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_35-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_38-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_37-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_36-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_41-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_40-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_39-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_42-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_43-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_44-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_45-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_46-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_47-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_60-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_59-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_62-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_61-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_64-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_63-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_58-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_57-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_56-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_55-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_54-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_53-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_52-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_51-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_50-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_49-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_48-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_65-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_66-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_70-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_69-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_68-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_67-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_73-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_72-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_71-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_74-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_75-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_78-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_77-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_76-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_79-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_80-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_83-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_82-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_81-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_84-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_85-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_86-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_87-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_88-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_89-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_90-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_91-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_92-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_93-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_97-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_96-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_95-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_94-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_100-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_99-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .quad            .Lgcsite_$mod_cl$2F4_98-.Lgccode_$mod_cl$2F4_1
                        .quad            65537
                        .popsection
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_$var_subtract$2F3_2:
FN__$var_subtract$2F3:
                        sub              rsp, 640
                        mov              qword ptr [rsp + 616], rcx
                        mov              qword ptr [rsp + 624], rdx
                        mov              qword ptr [rsp + 632], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 512
                        mov              edx, 608
                        call             rt_jmp_frame_lexprep2@PLT
.Lgcsite_$var_subtract$2F3_0:
                        mov              rdi, rsp                             # base_p
                        mov              esi, 3                               # nparams
                        mov              edx, 0                               # nlocals
                        call             rt_icn_zframe_args_install@PLT
.Lgcsite_$var_subtract$2F3_1:
                        mov              eax, 0                               # GCANCHOR .Lgcmap_$var_subtract$2F3 qword ptr [rsp + 584]
$var_subtract$2F3_α_body:
                        .type            n341_unify_const_bx, @function
n341_unify_const_bx:
#-----------------------------------------------------------------------------------------------------------------------
n341_unify_const_α:     lea              rdi, [rsp + 16]
.Lunify_const_α_370_10: mov              eax, dword ptr [rdi + 0]             # deref: follow a name (slen 1: the cell; slen 2: the VCELL's cell) or a bound PLVAR to the cell that holds the value; eax = its tag word
                        cmp              al, 72;                              je    .Lunify_const_α_370_11
                        cmp              al, 40;                              jne   .Lunify_const_α_370_13
                        mov              rsi, qword ptr [rdi + 8]
                        test             rsi, rsi;                            jz    .Lunify_const_α_370_13
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lunify_const_α_370_12
                        cmp              rsi, rdi;                            je    .Lunify_const_α_370_13
                        mov              rdi, rsi;                            jmp   .Lunify_const_α_370_10
.Lunify_const_α_370_12: cmp              ecx, 2;                              jne   .Lunify_const_α_370_13
                        mov              rsi, qword ptr [rsi + 0]
                        test             rsi, rsi;                            jz    .Lunify_const_α_370_13
                        mov              rdi, rsi;                            jmp   .Lunify_const_α_370_10
.Lunify_const_α_370_11: mov              rsi, qword ptr [rdi + 8]
                        test             rsi, rsi;                            jz    .Lunify_const_α_370_13
                        cmp              rsi, rdi;                            je    .Lunify_const_α_370_13
                        mov              rdi, rsi;                            jmp   .Lunify_const_α_370_10
.Lunify_const_α_370_13: cmp              al, 176;                             jne   .Lunify_const_α_370_20
                        movabs           rax, 1
                        mov              rsi, qword ptr [rdi + 8]
                        cmp              rsi, rax;                            jne   $var_subtract$2F3_ω
                                                                              jmp   n342_unify_const_α
.Lunify_const_α_370_20: cmp              al, 0;                               je    .Lunify_const_α_370_30
                        cmp              al, 104;                             je    .Lunify_const_α_370_30
                        cmp              al, 72;                              je    .Lunify_const_α_370_30
                        cmp              al, 40;                              jne   .Lunify_const_α_370_25
                        mov              rsi, qword ptr [rdi + 8]
                        cmp              rsi, rdi;                            je    .Lunify_const_α_370_30
                                                                              jmp   $var_subtract$2F3_ω
.Lunify_const_α_370_25: cmp              al, 2;                               je    .Lunify_const_α_370_40
                                                                              jmp   $var_subtract$2F3_ω
.Lunify_const_α_370_30: test             r13, r13;                            jz    .Lunify_const_α_370_31
                        cmp              rdi, rsp;                            ja    .Lunify_const_α_370_90
                        mov              rax, qword ptr [r13 + 0]             # a heap cell at or above B's HB (the pad of the sentinel just under B's mark) and below the frontier was made after B: not trailed
                        mov              rdx, qword ptr [rax + -32]
                        test             rdx, rdx;                            jne   .Lunify_const_α_370_32
                        mov              rdx, qword ptr [rax + -24]
                        cmp              rdi, rdx;                            jb    .Lunify_const_α_370_32
                        mov              rax, qword ptr [rip + g_hp_fr@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rdi, rax;                            jb    .Lunify_const_α_370_31
                                                                              jmp   .Lunify_const_α_370_32
.Lunify_const_α_370_90: mov              rax, qword ptr [r13 + 32]
                        shr              rax, 8
                        cmp              rdi, rax;                            jb    .Lunify_const_α_370_31
.Lunify_const_α_370_32: mov              rax, r12                             # the push: {cell, 0, old} on the r12 trail, the arena's top word synced for the collector
                        and              rax, 536870911
                        cmp              rax, 536870880;                      jae   .Lunify_const_α_370_39
                        mov              rax, qword ptr [rdi + 0]
                        mov              rdx, qword ptr [rdi + 8]
                        mov              qword ptr [r12 + 0], rdi
                        mov              qword ptr [r12 + 8], 0
                        mov              qword ptr [r12 + 16], rax
                        mov              qword ptr [r12 + 24], rdx
                        add              r12, 32
                        mov              rax, r12
                        and              rax, -536870912
                        mov              qword ptr [rax + 0], r12
.Lunify_const_α_370_31: mov              qword ptr [rdi + 0], 176
                        movabs           rax, 1
                        mov              qword ptr [rdi + 8], rax;            jmp   n342_unify_const_α
.Lunify_const_α_370_40: movabs           rsi, 1                               # cold: a legacy DT_S atom text, or a number of another kind, compared strictly by class by the value service; it never binds and never allocates, so no poll follows (ARCH-PROLOG-C-OUT-OF-THE-BOX 10)
                        mov              edx, 1                               # atom
                        call             rt_pl_unify_const_cold@PLT
.Lgcsite_$var_subtract$2F3_3:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    $var_subtract$2F3_ω
                                                                              jmp   n342_unify_const_α
.Lunify_const_α_370_39: mov              rdi, r12
                        call             rt_pl_tr_refuse@PLT
.Lgcsite_$var_subtract$2F3_2:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        .size            n341_unify_const_bx, .-n341_unify_const_bx
                        .type            n342_unify_const_bx, @function
n342_unify_const_bx:
#-----------------------------------------------------------------------------------------------------------------------
n342_unify_const_α:     lea              rdi, [rsp + 48]
.Lunify_const_α_372_10: mov              eax, dword ptr [rdi + 0]             # deref: follow a name (slen 1: the cell; slen 2: the VCELL's cell) or a bound PLVAR to the cell that holds the value; eax = its tag word
                        cmp              al, 72;                              je    .Lunify_const_α_372_11
                        cmp              al, 40;                              jne   .Lunify_const_α_372_13
                        mov              rsi, qword ptr [rdi + 8]
                        test             rsi, rsi;                            jz    .Lunify_const_α_372_13
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lunify_const_α_372_12
                        cmp              rsi, rdi;                            je    .Lunify_const_α_372_13
                        mov              rdi, rsi;                            jmp   .Lunify_const_α_372_10
.Lunify_const_α_372_12: cmp              ecx, 2;                              jne   .Lunify_const_α_372_13
                        mov              rsi, qword ptr [rsi + 0]
                        test             rsi, rsi;                            jz    .Lunify_const_α_372_13
                        mov              rdi, rsi;                            jmp   .Lunify_const_α_372_10
.Lunify_const_α_372_11: mov              rsi, qword ptr [rdi + 8]
                        test             rsi, rsi;                            jz    .Lunify_const_α_372_13
                        cmp              rsi, rdi;                            je    .Lunify_const_α_372_13
                        mov              rdi, rsi;                            jmp   .Lunify_const_α_372_10
.Lunify_const_α_372_13: cmp              al, 176;                             jne   .Lunify_const_α_372_20
                        movabs           rax, 1
                        mov              rsi, qword ptr [rdi + 8]
                        cmp              rsi, rax;                            jne   $var_subtract$2F3_ω
                                                                              jmp   $var_subtract$2F3_γ
.Lunify_const_α_372_20: cmp              al, 0;                               je    .Lunify_const_α_372_30
                        cmp              al, 104;                             je    .Lunify_const_α_372_30
                        cmp              al, 72;                              je    .Lunify_const_α_372_30
                        cmp              al, 40;                              jne   .Lunify_const_α_372_25
                        mov              rsi, qword ptr [rdi + 8]
                        cmp              rsi, rdi;                            je    .Lunify_const_α_372_30
                                                                              jmp   $var_subtract$2F3_ω
.Lunify_const_α_372_25: cmp              al, 2;                               je    .Lunify_const_α_372_40
                                                                              jmp   $var_subtract$2F3_ω
.Lunify_const_α_372_30: test             r13, r13;                            jz    .Lunify_const_α_372_31
                        cmp              rdi, rsp;                            ja    .Lunify_const_α_372_90
                        mov              rax, qword ptr [r13 + 0]             # a heap cell at or above B's HB (the pad of the sentinel just under B's mark) and below the frontier was made after B: not trailed
                        mov              rdx, qword ptr [rax + -32]
                        test             rdx, rdx;                            jne   .Lunify_const_α_372_32
                        mov              rdx, qword ptr [rax + -24]
                        cmp              rdi, rdx;                            jb    .Lunify_const_α_372_32
                        mov              rax, qword ptr [rip + g_hp_fr@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rdi, rax;                            jb    .Lunify_const_α_372_31
                                                                              jmp   .Lunify_const_α_372_32
.Lunify_const_α_372_90: mov              rax, qword ptr [r13 + 32]
                        shr              rax, 8
                        cmp              rdi, rax;                            jb    .Lunify_const_α_372_31
.Lunify_const_α_372_32: mov              rax, r12                             # the push: {cell, 0, old} on the r12 trail, the arena's top word synced for the collector
                        and              rax, 536870911
                        cmp              rax, 536870880;                      jae   .Lunify_const_α_372_39
                        mov              rax, qword ptr [rdi + 0]
                        mov              rdx, qword ptr [rdi + 8]
                        mov              qword ptr [r12 + 0], rdi
                        mov              qword ptr [r12 + 8], 0
                        mov              qword ptr [r12 + 16], rax
                        mov              qword ptr [r12 + 24], rdx
                        add              r12, 32
                        mov              rax, r12
                        and              rax, -536870912
                        mov              qword ptr [rax + 0], r12
.Lunify_const_α_372_31: mov              qword ptr [rdi + 0], 176
                        movabs           rax, 1
                        mov              qword ptr [rdi + 8], rax;            jmp   $var_subtract$2F3_γ
.Lunify_const_α_372_40: movabs           rsi, 1                               # cold: a legacy DT_S atom text, or a number of another kind, compared strictly by class by the value service; it never binds and never allocates, so no poll follows (ARCH-PROLOG-C-OUT-OF-THE-BOX 10)
                        mov              edx, 1                               # atom
                        call             rt_pl_unify_const_cold@PLT
.Lgcsite_$var_subtract$2F3_5:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    $var_subtract$2F3_ω
                                                                              jmp   $var_subtract$2F3_γ
.Lunify_const_α_372_39: mov              rdi, r12
                        call             rt_pl_tr_refuse@PLT
.Lgcsite_$var_subtract$2F3_4:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        .size            n342_unify_const_bx, .-n342_unify_const_bx
                        .type            n343_unify_struct_bx, @function
n343_unify_struct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n343_unify_struct_α:    sub              rsp, 16
                        lea              rdi, [rsp + 32]
.Lunify_struct_α_374_10:
                        mov              eax, dword ptr [rdi + 0]             # deref: follow a name (slen 1: the cell; slen 2: the VCELL's cell) or a bound PLVAR to the cell that holds the value; eax = its tag word
                        cmp              al, 72;                              je    .Lunify_struct_α_374_11
                        cmp              al, 40;                              jne   .Lunify_struct_α_374_13
                        mov              rsi, qword ptr [rdi + 8]
                        test             rsi, rsi;                            jz    .Lunify_struct_α_374_13
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lunify_struct_α_374_12
                        cmp              rsi, rdi;                            je    .Lunify_struct_α_374_13
                        mov              rdi, rsi;                            jmp   .Lunify_struct_α_374_10
.Lunify_struct_α_374_12:
                        cmp              ecx, 2;                              jne   .Lunify_struct_α_374_13
                        mov              rsi, qword ptr [rsi + 0]
                        test             rsi, rsi;                            jz    .Lunify_struct_α_374_13
                        mov              rdi, rsi;                            jmp   .Lunify_struct_α_374_10
.Lunify_struct_α_374_11:
                        mov              rsi, qword ptr [rdi + 8]
                        test             rsi, rsi;                            jz    .Lunify_struct_α_374_13
                        cmp              rsi, rdi;                            je    .Lunify_struct_α_374_13
                        mov              rdi, rsi;                            jmp   .Lunify_struct_α_374_10
.Lunify_struct_α_374_13:
                        cmp              al, 80;                              jne   .Lunify_struct_α_374_20
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 0;                              je    .Lunify_struct_α_374_999
                        add              rsp, 16;                             jmp   $var_subtract$2F3_ω
.Lunify_struct_α_374_999:
                        mov              rax, qword ptr [rdi + 0]
                        mov              rdx, qword ptr [rdi + 8]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   n344_unify_first_α
.Lunify_struct_α_374_20:
                        cmp              al, 0;                               je    .Lunify_struct_α_374_30
                        cmp              al, 104;                             je    .Lunify_struct_α_374_30
                        cmp              al, 72;                              je    .Lunify_struct_α_374_30
                        cmp              al, 40;                              jne   .Lunify_struct_α_374_25
                        mov              rsi, qword ptr [rdi + 8]
                        cmp              rsi, rdi;                            je    .Lunify_struct_α_374_30
.Lunify_struct_α_374_25:
                        add              rsp, 16;                             jmp   $var_subtract$2F3_ω
.Lunify_struct_α_374_30:
                        mov              edi, 214                             # write mode (ARCH-PROLOG-C-OUT-OF-THE-BOX 10): the box builds the fresh block -- one allocating call for the argument block (HB_DVEC, zero-filled by the allocator, so every cell is typed before the poll), the result cell {DT_PLREF, functor id, block} stored into the mapped slot before the poll, then each argument cell made a self-reference inline; the cell is re-derived after the poll and bound to the block. No C value service builds it.
                        mov              esi, 32
                        call             qword ptr [rip + rt_gcheap_alloc@GOTPCREL]
.Lgcsite_$var_subtract$2F3_8:
                        movabs           rcx, 80
                        mov              qword ptr [rsp + 0], rcx
                        mov              qword ptr [rsp + 8], rax
                        push             rax                                  # gc_poll bb_unify_struct.cpp:81
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$var_subtract$2F3_7:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              r10, qword ptr [rsp + 8]
                        mov              qword ptr [r10 + 0], 72
                        lea              rcx, [r10 + 0]
                        mov              qword ptr [r10 + 8], rcx
                        mov              qword ptr [r10 + 16], 72
                        lea              rcx, [r10 + 16]
                        mov              qword ptr [r10 + 24], rcx
                        lea              rdi, [rsp + 32]
.Lunify_struct_α_374_14:
                        mov              eax, dword ptr [rdi + 0]             # deref: follow a name (slen 1: the cell; slen 2: the VCELL's cell) or a bound PLVAR to the cell that holds the value; eax = its tag word
                        cmp              al, 72;                              je    .Lunify_struct_α_374_15
                        cmp              al, 40;                              jne   .Lunify_struct_α_374_17
                        mov              rsi, qword ptr [rdi + 8]
                        test             rsi, rsi;                            jz    .Lunify_struct_α_374_17
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lunify_struct_α_374_16
                        cmp              rsi, rdi;                            je    .Lunify_struct_α_374_17
                        mov              rdi, rsi;                            jmp   .Lunify_struct_α_374_14
.Lunify_struct_α_374_16:
                        cmp              ecx, 2;                              jne   .Lunify_struct_α_374_17
                        mov              rsi, qword ptr [rsi + 0]
                        test             rsi, rsi;                            jz    .Lunify_struct_α_374_17
                        mov              rdi, rsi;                            jmp   .Lunify_struct_α_374_14
.Lunify_struct_α_374_15:
                        mov              rsi, qword ptr [rdi + 8]
                        test             rsi, rsi;                            jz    .Lunify_struct_α_374_17
                        cmp              rsi, rdi;                            je    .Lunify_struct_α_374_17
                        mov              rdi, rsi;                            jmp   .Lunify_struct_α_374_14
.Lunify_struct_α_374_17:
                        test             r13, r13;                            jz    .Lunify_struct_α_374_31
                        cmp              rdi, rsp;                            ja    .Lunify_struct_α_374_90
                        mov              rax, qword ptr [r13 + 0]             # a heap cell at or above B's HB (the pad of the sentinel just under B's mark) and below the frontier was made after B: not trailed
                        mov              rdx, qword ptr [rax + -32]
                        test             rdx, rdx;                            jne   .Lunify_struct_α_374_32
                        mov              rdx, qword ptr [rax + -24]
                        cmp              rdi, rdx;                            jb    .Lunify_struct_α_374_32
                        mov              rax, qword ptr [rip + g_hp_fr@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rdi, rax;                            jb    .Lunify_struct_α_374_31
                                                                              jmp   .Lunify_struct_α_374_32
.Lunify_struct_α_374_90:
                        mov              rax, qword ptr [r13 + 32]
                        shr              rax, 8
                        cmp              rdi, rax;                            jb    .Lunify_struct_α_374_31
.Lunify_struct_α_374_32:
                        mov              rax, r12                             # the push: {cell, 0, old} on the r12 trail, the arena's top word synced for the collector
                        and              rax, 536870911
                        cmp              rax, 536870880;                      jae   .Lunify_struct_α_374_39
                        mov              rax, qword ptr [rdi + 0]
                        mov              rdx, qword ptr [rdi + 8]
                        mov              qword ptr [r12 + 0], rdi
                        mov              qword ptr [r12 + 8], 0
                        mov              qword ptr [r12 + 16], rax
                        mov              qword ptr [r12 + 24], rdx
                        add              r12, 32
                        mov              rax, r12
                        and              rax, -536870912
                        mov              qword ptr [rax + 0], r12
.Lunify_struct_α_374_31:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rdi + 0], rax
                        mov              qword ptr [rdi + 8], rdx;            jmp   n344_unify_first_α
.Lunify_struct_α_374_39:
                        mov              rdi, r12
                        call             rt_pl_tr_refuse@PLT
.Lgcsite_$var_subtract$2F3_6:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        .size            n343_unify_struct_bx, .-n343_unify_struct_bx
                        .type            n344_unify_first_bx, @function
n344_unify_first_bx:
#-----------------------------------------------------------------------------------------------------------------------
n344_unify_first_α:     mov              rax, qword ptr [rsp + 8]             # the cell is child 0 of the parent box's compound: [parent.p + 16j]
                        lea              rdi, [rax + 0]
.Lunify_first_α_376_10: mov              eax, dword ptr [rdi + 0]             # deref: follow a name (slen 1: the cell; slen 2: the VCELL's cell) or a bound PLVAR to the cell that holds the value; eax = its tag word
                        cmp              al, 72;                              je    .Lunify_first_α_376_11
                        cmp              al, 40;                              jne   .Lunify_first_α_376_13
                        mov              rsi, qword ptr [rdi + 8]
                        test             rsi, rsi;                            jz    .Lunify_first_α_376_13
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lunify_first_α_376_12
                        cmp              rsi, rdi;                            je    .Lunify_first_α_376_13
                        mov              rdi, rsi;                            jmp   .Lunify_first_α_376_10
.Lunify_first_α_376_12: cmp              ecx, 2;                              jne   .Lunify_first_α_376_13
                        mov              rsi, qword ptr [rsi + 0]
                        test             rsi, rsi;                            jz    .Lunify_first_α_376_13
                        mov              rdi, rsi;                            jmp   .Lunify_first_α_376_10
.Lunify_first_α_376_11: mov              rsi, qword ptr [rdi + 8]
                        test             rsi, rsi;                            jz    .Lunify_first_α_376_13
                        cmp              rsi, rdi;                            je    .Lunify_first_α_376_13
                        mov              rdi, rsi;                            jmp   .Lunify_first_α_376_10
.Lunify_first_α_376_13: cmp              al, 0;                               je    .Lunify_first_α_376_30
                        cmp              al, 104;                             je    .Lunify_first_α_376_30
                        cmp              al, 72;                              je    .Lunify_first_α_376_30
                        cmp              al, 40;                              jne   .Lunify_first_α_376_25
                        mov              rsi, qword ptr [rdi + 8]
                        cmp              rsi, rdi;                            je    .Lunify_first_α_376_30
.Lunify_first_α_376_25: mov              rax, qword ptr [rdi + 0]
                        mov              rdx, qword ptr [rdi + 8]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n345_unify_first_α
.Lunify_first_α_376_30: mov              rax, 72
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdi;          jmp   n345_unify_first_α
                        .size            n344_unify_first_bx, .-n344_unify_first_bx
                        .type            n345_unify_first_bx, @function
n345_unify_first_bx:
#-----------------------------------------------------------------------------------------------------------------------
n345_unify_first_α:     mov              rax, qword ptr [rsp + 8]             # the cell is child 1 of the parent box's compound: [parent.p + 16j]
                        lea              rdi, [rax + 16]
.Lunify_first_α_378_10: mov              eax, dword ptr [rdi + 0]             # deref: follow a name (slen 1: the cell; slen 2: the VCELL's cell) or a bound PLVAR to the cell that holds the value; eax = its tag word
                        cmp              al, 72;                              je    .Lunify_first_α_378_11
                        cmp              al, 40;                              jne   .Lunify_first_α_378_13
                        mov              rsi, qword ptr [rdi + 8]
                        test             rsi, rsi;                            jz    .Lunify_first_α_378_13
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lunify_first_α_378_12
                        cmp              rsi, rdi;                            je    .Lunify_first_α_378_13
                        mov              rdi, rsi;                            jmp   .Lunify_first_α_378_10
.Lunify_first_α_378_12: cmp              ecx, 2;                              jne   .Lunify_first_α_378_13
                        mov              rsi, qword ptr [rsi + 0]
                        test             rsi, rsi;                            jz    .Lunify_first_α_378_13
                        mov              rdi, rsi;                            jmp   .Lunify_first_α_378_10
.Lunify_first_α_378_11: mov              rsi, qword ptr [rdi + 8]
                        test             rsi, rsi;                            jz    .Lunify_first_α_378_13
                        cmp              rsi, rdi;                            je    .Lunify_first_α_378_13
                        mov              rdi, rsi;                            jmp   .Lunify_first_α_378_10
.Lunify_first_α_378_13: cmp              al, 0;                               je    .Lunify_first_α_378_30
                        cmp              al, 104;                             je    .Lunify_first_α_378_30
                        cmp              al, 72;                              je    .Lunify_first_α_378_30
                        cmp              al, 40;                              jne   .Lunify_first_α_378_25
                        mov              rsi, qword ptr [rdi + 8]
                        cmp              rsi, rdi;                            je    .Lunify_first_α_378_30
.Lunify_first_α_378_25: mov              rax, qword ptr [rdi + 0]
                        mov              rdx, qword ptr [rdi + 8]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n346_bound_α
.Lunify_first_α_378_30: mov              rax, 72
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdi;          jmp   n346_bound_α
                        .size            n345_unify_first_bx, .-n345_unify_first_bx
                        .type            n346_bound_bx, @function
n346_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n346_bound_α:           mov              qword ptr [rsp + 272], rsp;          jmp   n347_var_ref_α
                        .size            n346_bound_bx, .-n346_bound_bx
                        .type            n347_var_ref_bx, @function
n347_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n347_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 592]
                        mov              qword ptr [rsp + 8], rax;            jmp   n348_var_ref_α
                        .size            n347_var_ref_bx, .-n347_var_ref_bx
                        .type            n348_var_ref_bx, @function
n348_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n348_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 80]
                        mov              qword ptr [rsp + 8], rax;            jmp   n349_call_proc_staged_α
                        .size            n348_var_ref_bx, .-n348_var_ref_bx
                        .type            n349_call_proc_staged_bx, @function
n349_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n349_call_proc_staged_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 512], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_386_200
                        mov              rax, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
                        mov              r8, qword ptr [rip + g_call_args@GOTPCREL]
                        mov              r8, qword ptr [r8 + 0]
                        test             r8, r8;                              je    .Lcall_proc_staged_α_386_200
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx
                        xor              r8d, r8d;                            jmp   .Lcall_proc_staged_α_386_201
.Lcall_proc_staged_α_386_200:
                        mov              edi, 0                               # idx
                        mov              rsi, qword ptr [rsp + 528]           # v
                        mov              rdx, qword ptr [rsp + 536]           # v
                        call             rt_arg_stage@PLT
.Lgcsite_$var_subtract$2F3_21:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:131
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$var_subtract$2F3_20:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lcall_proc_staged_α_386_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_386_202
                        mov              rax, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
                        mov              r8, qword ptr [rip + g_call_args@GOTPCREL]
                        mov              r8, qword ptr [r8 + 0]
                        test             r8, r8;                              je    .Lcall_proc_staged_α_386_202
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx
                        xor              r8d, r8d;                            jmp   .Lcall_proc_staged_α_386_203
.Lcall_proc_staged_α_386_202:
                        mov              edi, 1                               # idx
                        mov              rsi, qword ptr [rsp + 544]           # v
                        mov              rdx, qword ptr [rsp + 552]           # v
                        call             rt_arg_stage@PLT
.Lgcsite_$var_subtract$2F3_23:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:131
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$var_subtract$2F3_22:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lcall_proc_staged_α_386_203:
                        mov              edi, 6                               # idx
                        mov              esi, 2                               # nargs
                        call             rt_proc_call_open_det@PLT
.Lgcsite_$var_subtract$2F3_19:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:1173
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$var_subtract$2F3_18:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:                      sub              rsp, 16                              # CFO-36 (cfo 2026-09-09): the landing words (N-2 word, landing cell) are pushed AFTER the prologue call, not before it -- in the generator regime they are an ODD count, so rt_proc_call_open_det ran at rsp 8-mod-16 and everything it reached did too (rt_trace_event_args -> image -> vsnprintf movaps: SIGSEGV on every traced generator call with an argument; Arizona coexpr and errors, rungs rung03). The entry layout the callee sees is byte-identical; only the prologue call moved above the words,
                        test             rax, rax;                            je    .Lcall_proc_staged_α_386_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_386_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_386_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_386_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_386_3:
                        mov              edx, 1
                        mov              qword ptr [rsp + 520], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 512]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_386_5
                        mov              qword ptr [rsp + 512], 1
                        call             rt_proc_call_epilogue_γ@PLT
.Lgcsite_$var_subtract$2F3_17:
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lcall_proc_staged_α_386_2
.Lcall_proc_staged_α_386_5:
                        call             qword ptr [rip + rt_gen_spine_pass_γ@GOTPCREL]
.Lgcsite_$var_subtract$2F3_16:
                                                                              jmp   .Lcall_proc_staged_α_386_2
.Lcall_proc_staged_α_386_4:
                        mov              edi, 1
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 512]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_386_6
                        mov              qword ptr [rsp + 512], 1
                        call             rt_proc_call_epilogue_ω@PLT
.Lgcsite_$var_subtract$2F3_15:
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lcall_proc_staged_α_386_2
.Lcall_proc_staged_α_386_6:
                        call             qword ptr [rip + rt_gen_spine_pass_ω@GOTPCREL]
.Lgcsite_$var_subtract$2F3_14:
                                                                              jmp   .Lcall_proc_staged_α_386_2
.Lcall_proc_staged_α_386_1:
                        call             rt_ab_undef_fn_fail@PLT
.Lgcsite_$var_subtract$2F3_13:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:335
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$var_subtract$2F3_12:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:                      add              rsp, 16
                        add              rsp, 32;                             jmp   n355_unmark_α
.Lcall_proc_staged_α_386_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed): the fix-up is emitted here, rt_nret_fix_tiny is gone from the graph
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_386_29
                        cmp              eax, 40;                             je    .Lcall_proc_staged_α_386_25
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_nret_name@PLT
.Lgcsite_$var_subtract$2F3_11:
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        cmp              eax, 40;                             je    .Lcall_proc_staged_α_386_25
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0;              jmp   .Lcall_proc_staged_α_386_23
.Lcall_proc_staged_α_386_25:
                        mov              rcx, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              jne   .Lcall_proc_staged_α_386_24
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0
                        cmp              eax, 40;                             jne   .Lcall_proc_staged_α_386_23
                        mov              rdi, rax                             # d
                        mov              rsi, rdx                             # d
                        call             rt_deref@PLT
.Lgcsite_$var_subtract$2F3_10:
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504];          jmp   .Lcall_proc_staged_α_386_23
.Lcall_proc_staged_α_386_24:
.Lcall_proc_staged_α_386_23:
                        mov              rcx, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0
.Lcall_proc_staged_α_386_29:
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             jne   .Lcall_proc_staged_α_386_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n355_unmark_α
.Lcall_proc_staged_α_386_999:
                                                                              jmp   n350_unmark_α
n349_call_proc_staged_β:
                        call             qword ptr [rip + rt_gen_spine_resume_enter@GOTPCREL]
.Lgcsite_$var_subtract$2F3_9:
                        mov              rax, qword ptr [rsp + 520];          jmp   qword ptr [rax]
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_proc_staged_β_386_0: .quad .Lcall_proc_staged_β_386_0_s; .popsection
.Lcall_proc_staged_β_386_0_s:
                        .string          "$var_memberchk/2"
                        .size            n349_call_proc_staged_bx, .-n349_call_proc_staged_bx
                        .type            n350_unmark_bx, @function
n350_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n350_unmark_α:                                                                jmp   n351_var_ref_α
                        .size            n350_unmark_bx, .-n350_unmark_bx
                        .type            n351_var_ref_bx, @function
n351_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n351_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 128]
                        mov              qword ptr [rsp + 8], rax;            jmp   n352_var_ref_α
                        .size            n351_var_ref_bx, .-n351_var_ref_bx
                        .type            n352_var_ref_bx, @function
n352_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n352_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 640]
                        mov              qword ptr [rsp + 8], rax;            jmp   n353_call_pl_leaf_α
                        .size            n352_var_ref_bx, .-n352_var_ref_bx
                        .type            n353_call_pl_leaf_bx, @function
n353_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n353_call_pl_leaf_α:    sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        lea              rdi, [rsp + 0]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rtx_pl_unify@GOTPCREL]
.Lgcsite_$var_subtract$2F3_26:
                        test             eax, eax;                            jz    .Lcall_pl_leaf_α_393_190
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_pl_leaf_α_393_249
.Lcall_pl_leaf_α_393_190:
                        mov              rdx, r12                             # occurs_check error (the trail header's mode word reads 2): the leaf's failure is re-run on the cx road, which builds the ball, unwinds what it bound and arms r15
                        and              rdx, -536870912
                        cmp              qword ptr [rdx + 24], 2;             jne   .Lcall_pl_leaf_α_393_195
                        lea              rdi, [rsp + 0]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_pl_dop_unify_raise@GOTPCREL]
.Lgcsite_$var_subtract$2F3_25:
                        push             rax                                  # gc_poll bb_call_pl_leaf.cpp:389
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$var_subtract$2F3_24:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   .Lcall_pl_leaf_α_393_195
.Lcall_pl_leaf_α_393_195:
                                                                              jmp   .Lcall_pl_leaf_α_393_248
.Lcall_pl_leaf_α_393_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_393_249:
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_393_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n363_unmark_α
.Lcall_pl_leaf_α_393_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n354_gate_arm_α
n353_call_pl_leaf_β:    add              rsp, 16
                        add              rsp, 80;                             jmp   n363_unmark_α
                        .size            n353_call_pl_leaf_bx, .-n353_call_pl_leaf_bx
                        .type            n354_gate_arm_bx, @function
n354_gate_arm_bx:
#-----------------------------------------------------------------------------------------------------------------------
n354_gate_arm_α:        mov              dword ptr [rsp + 336], 0
                        add              rsp, 80;                             jmp   n365_var_ref_α
                        .size            n354_gate_arm_bx, .-n354_gate_arm_bx
                        .type            n355_unmark_bx, @function
n355_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n355_unmark_α:                                                                jmp   n356_var_ref_α
                        .size            n355_unmark_bx, .-n355_unmark_bx
                        .type            n356_var_ref_bx, @function
n356_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n356_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 80]
                        mov              qword ptr [rsp + 8], rax;            jmp   n357_lit_integer_α
                        .size            n356_var_ref_bx, .-n356_var_ref_bx
                        .type            n357_lit_integer_bx, @function
n357_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n357_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_400_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n358_var_ref_α
.Llit_integer_α_400_0:  .quad            0
                        .size            n357_lit_integer_bx, .-n357_lit_integer_bx
                        .type            n358_var_ref_bx, @function
n358_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n358_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 624]
                        mov              qword ptr [rsp + 8], rax;            jmp   n359_var_ref_α
                        .size            n358_var_ref_bx, .-n358_var_ref_bx
                        .type            n359_var_ref_bx, @function
n359_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n359_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 624]
                        mov              qword ptr [rsp + 8], rax;            jmp   n360_call_pl_leaf_α
                        .size            n359_var_ref_bx, .-n359_var_ref_bx
                        .type            n360_call_pl_leaf_bx, @function
n360_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n360_call_pl_leaf_α:    sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              edi, 214
                        mov              esi, 32
                        call             qword ptr [rip + rt_gcheap_alloc@GOTPCREL]
.Lgcsite_$var_subtract$2F3_29:
                        movabs           rcx, 80
                        mov              qword ptr [rsp + 0], rcx             # the result cell is parked in argv[0] (the functor literal's cell, dead once its id is baked above) across the poll and the kid loop: the box's result slot may be one of the kids' argv cells
                        mov              qword ptr [rsp + 8], rax
                        push             rax                                  # gc_poll bb_call_pl_leaf.cpp:315
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$var_subtract$2F3_28:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              r10, qword ptr [rsp + 8]
                        lea              r9, [rsp + 16]
                        mov              r11, 2
.Lcall_pl_leaf_α_405_100:
                        test             r11, r11;                            jz    .Lcall_pl_leaf_α_405_102
                        mov              rdi, r9
.Lcall_pl_leaf_α_405_103:
                        mov              eax, dword ptr [rdi + 0]             # deref: follow a name (slen 1: the cell; slen 2: the VCELL's cell) or a bound PLVAR to the cell that holds the value; eax = its tag word
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_405_104
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_405_106
                        mov              rsi, qword ptr [rdi + 8]
                        test             rsi, rsi;                            jz    .Lcall_pl_leaf_α_405_106
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_405_105
                        cmp              rsi, rdi;                            je    .Lcall_pl_leaf_α_405_106
                        mov              rdi, rsi;                            jmp   .Lcall_pl_leaf_α_405_103
.Lcall_pl_leaf_α_405_105:
                        cmp              ecx, 2;                              jne   .Lcall_pl_leaf_α_405_106
                        mov              rsi, qword ptr [rsi + 0]
                        test             rsi, rsi;                            jz    .Lcall_pl_leaf_α_405_106
                        mov              rdi, rsi;                            jmp   .Lcall_pl_leaf_α_405_103
.Lcall_pl_leaf_α_405_104:
                        mov              rsi, qword ptr [rdi + 8]
                        test             rsi, rsi;                            jz    .Lcall_pl_leaf_α_405_106
                        cmp              rsi, rdi;                            je    .Lcall_pl_leaf_α_405_106
                        mov              rdi, rsi;                            jmp   .Lcall_pl_leaf_α_405_103
.Lcall_pl_leaf_α_405_106:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_405_107
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_405_107
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_405_107
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_405_108
                        mov              rsi, qword ptr [rdi + 8]
                        cmp              rsi, rdi;                            je    .Lcall_pl_leaf_α_405_107
.Lcall_pl_leaf_α_405_108:
                        mov              rax, qword ptr [rdi + 0]
                        mov              rdx, qword ptr [rdi + 8]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx;            jmp   .Lcall_pl_leaf_α_405_101
.Lcall_pl_leaf_α_405_107:
                        cmp              rdi, rsp;                            ja    .Lcall_pl_leaf_α_405_113
                        mov              qword ptr [r10 + 0], 72
                        mov              qword ptr [r10 + 8], rdi;            jmp   .Lcall_pl_leaf_α_405_101
.Lcall_pl_leaf_α_405_113:
                        mov              qword ptr [r10 + 0], 72
                        mov              qword ptr [r10 + 8], r10
                        test             r13, r13;                            jz    .Lcall_pl_leaf_α_405_109
                        cmp              rdi, rsp;                            ja    .Lcall_pl_leaf_α_405_170
                        mov              rax, qword ptr [r13 + 0]             # a heap cell at or above B's HB (the pad of the sentinel just under B's mark) and below the frontier was made after B: not trailed
                        mov              rdx, qword ptr [rax + -32]
                        test             rdx, rdx;                            jne   .Lcall_pl_leaf_α_405_110
                        mov              rdx, qword ptr [rax + -24]
                        cmp              rdi, rdx;                            jb    .Lcall_pl_leaf_α_405_110
                        mov              rax, qword ptr [rip + g_hp_fr@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rdi, rax;                            jb    .Lcall_pl_leaf_α_405_109
                                                                              jmp   .Lcall_pl_leaf_α_405_110
.Lcall_pl_leaf_α_405_170:
                        mov              rax, qword ptr [r13 + 32]
                        shr              rax, 8
                        cmp              rdi, rax;                            jb    .Lcall_pl_leaf_α_405_109
.Lcall_pl_leaf_α_405_110:
                        mov              rax, r12                             # the push: {cell, 0, old} on the r12 trail, the arena's top word synced for the collector
                        and              rax, 536870911
                        cmp              rax, 536870880;                      jae   .Lcall_pl_leaf_α_405_111
                        mov              rax, qword ptr [rdi + 0]
                        mov              rdx, qword ptr [rdi + 8]
                        mov              qword ptr [r12 + 0], rdi
                        mov              qword ptr [r12 + 8], 0
                        mov              qword ptr [r12 + 16], rax
                        mov              qword ptr [r12 + 24], rdx
                        add              r12, 32
                        mov              rax, r12
                        and              rax, -536870912
                        mov              qword ptr [rax + 0], r12
.Lcall_pl_leaf_α_405_109:
                        mov              qword ptr [rdi + 0], 72
                        mov              qword ptr [rdi + 8], r10
.Lcall_pl_leaf_α_405_101:
                        add              r9, 16
                        add              r10, 16
                        sub              r11, 1;                              jmp   .Lcall_pl_leaf_α_405_100
.Lcall_pl_leaf_α_405_102:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8];            jmp   .Lcall_pl_leaf_α_405_249
.Lcall_pl_leaf_α_405_111:
                        mov              rdi, r12
                        call             rt_pl_tr_refuse@PLT
.Lgcsite_$var_subtract$2F3_27:
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lcall_pl_leaf_α_405_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_405_249:
                        add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_405_999
                        add              rsp, 16
                        add              rsp, 64;                             jmp   n363_unmark_α
.Lcall_pl_leaf_α_405_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n361_call_pl_leaf_α
n360_call_pl_leaf_β:    add              rsp, 16
                        add              rsp, 64;                             jmp   n363_unmark_α
                        .size            n360_call_pl_leaf_bx, .-n360_call_pl_leaf_bx
                        .type            n361_call_pl_leaf_bx, @function
n361_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n361_call_pl_leaf_α:    sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        lea              rdi, [rsp + 0]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rtx_pl_unify@GOTPCREL]
.Lgcsite_$var_subtract$2F3_32:
                        test             eax, eax;                            jz    .Lcall_pl_leaf_α_406_190
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_pl_leaf_α_406_249
.Lcall_pl_leaf_α_406_190:
                        mov              rdx, r12                             # occurs_check error (the trail header's mode word reads 2): the leaf's failure is re-run on the cx road, which builds the ball, unwinds what it bound and arms r15
                        and              rdx, -536870912
                        cmp              qword ptr [rdx + 24], 2;             jne   .Lcall_pl_leaf_α_406_195
                        lea              rdi, [rsp + 0]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_pl_dop_unify_raise@GOTPCREL]
.Lgcsite_$var_subtract$2F3_31:
                        push             rax                                  # gc_poll bb_call_pl_leaf.cpp:389
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$var_subtract$2F3_30:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   .Lcall_pl_leaf_α_406_195
.Lcall_pl_leaf_α_406_195:
                                                                              jmp   .Lcall_pl_leaf_α_406_248
.Lcall_pl_leaf_α_406_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_406_249:
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_406_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n363_unmark_α
.Lcall_pl_leaf_α_406_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n362_gate_arm_α
n361_call_pl_leaf_β:    add              rsp, 16
                        add              rsp, 80;                             jmp   n363_unmark_α
                        .size            n361_call_pl_leaf_bx, .-n361_call_pl_leaf_bx
                        .type            n362_gate_arm_bx, @function
n362_gate_arm_bx:
#-----------------------------------------------------------------------------------------------------------------------
n362_gate_arm_α:        mov              dword ptr [rsp + 336], 1
                        add              rsp, 96;                             jmp   n365_var_ref_α
                        .size            n362_gate_arm_bx, .-n362_gate_arm_bx
                        .type            n363_unmark_bx, @function
n363_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n363_unmark_α:                                                                jmp   n364_gate_α
                        .size            n363_unmark_bx, .-n363_unmark_bx
                        .type            n364_gate_bx, @function
n364_gate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n364_gate_α:            add              rsp, 16;                             jmp   $var_subtract$2F3_ω
n364_gate_β:            mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 0;                              jne   .Lgate_β_412_10
                        add              rsp, 16;                             jmp   n364_gate_α
.Lgate_β_412_10:        cmp              eax, 1;                              jne   .Lgate_β_412_11
                        add              rsp, 16;                             jmp   n364_gate_α
.Lgate_β_412_11:        add              rsp, 16;                             jmp   $var_subtract$2F3_ω
                        .size            n364_gate_bx, .-n364_gate_bx
                        .type            n365_var_ref_bx, @function
n365_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n365_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 576]
                        mov              qword ptr [rsp + 8], rax;            jmp   n366_var_ref_α
                        .size            n365_var_ref_bx, .-n365_var_ref_bx
                        .type            n366_var_ref_bx, @function
n366_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n366_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 96]
                        mov              qword ptr [rsp + 8], rax;            jmp   n367_var_ref_α
                        .size            n366_var_ref_bx, .-n366_var_ref_bx
                        .type            n367_var_ref_bx, @function
n367_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n367_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 624]
                        mov              qword ptr [rsp + 8], rax;            jmp   n368_call_proc_staged_α
                        .size            n367_var_ref_bx, .-n367_var_ref_bx
                        .type            n368_call_proc_staged_bx, @function
n368_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n368_call_proc_staged_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 240], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_420_200
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              r8, qword ptr [rip + g_call_args@GOTPCREL]
                        mov              r8, qword ptr [r8 + 0]
                        test             r8, r8;                              je    .Lcall_proc_staged_α_420_200
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx
                        xor              r8d, r8d;                            jmp   .Lcall_proc_staged_α_420_201
.Lcall_proc_staged_α_420_200:
                        mov              edi, 0                               # idx
                        mov              rsi, qword ptr [rsp + 256]           # v
                        mov              rdx, qword ptr [rsp + 264]           # v
                        call             rt_arg_stage@PLT
.Lgcsite_$var_subtract$2F3_45:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:131
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$var_subtract$2F3_44:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lcall_proc_staged_α_420_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_420_202
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              r8, qword ptr [rip + g_call_args@GOTPCREL]
                        mov              r8, qword ptr [r8 + 0]
                        test             r8, r8;                              je    .Lcall_proc_staged_α_420_202
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx
                        xor              r8d, r8d;                            jmp   .Lcall_proc_staged_α_420_203
.Lcall_proc_staged_α_420_202:
                        mov              edi, 1                               # idx
                        mov              rsi, qword ptr [rsp + 272]           # v
                        mov              rdx, qword ptr [rsp + 280]           # v
                        call             rt_arg_stage@PLT
.Lgcsite_$var_subtract$2F3_47:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:131
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$var_subtract$2F3_46:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lcall_proc_staged_α_420_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_420_204
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              r8, qword ptr [rip + g_call_args@GOTPCREL]
                        mov              r8, qword ptr [r8 + 0]
                        test             r8, r8;                              je    .Lcall_proc_staged_α_420_204
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx
                        xor              r8d, r8d;                            jmp   .Lcall_proc_staged_α_420_205
.Lcall_proc_staged_α_420_204:
                        mov              edi, 2                               # idx
                        mov              rsi, qword ptr [rsp + 288]           # v
                        mov              rdx, qword ptr [rsp + 296]           # v
                        call             rt_arg_stage@PLT
.Lgcsite_$var_subtract$2F3_49:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:131
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$var_subtract$2F3_48:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lcall_proc_staged_α_420_205:
                        mov              edi, 2                               # idx
                        mov              esi, 3                               # nargs
                        call             rt_proc_call_open_det@PLT
.Lgcsite_$var_subtract$2F3_43:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:1173
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$var_subtract$2F3_42:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:                      sub              rsp, 16                              # CFO-36 (cfo 2026-09-09): the landing words (N-2 word, landing cell) are pushed AFTER the prologue call, not before it -- in the generator regime they are an ODD count, so rt_proc_call_open_det ran at rsp 8-mod-16 and everything it reached did too (rt_trace_event_args -> image -> vsnprintf movaps: SIGSEGV on every traced generator call with an argument; Arizona coexpr and errors, rungs rung03). The entry layout the callee sees is byte-identical; only the prologue call moved above the words,
                        test             rax, rax;                            je    .Lcall_proc_staged_α_420_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_420_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_420_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_420_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_420_3:
                        mov              edx, 1
                        mov              qword ptr [rsp + 248], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 240]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_420_5
                        mov              qword ptr [rsp + 240], 1
                        call             rt_proc_call_epilogue_γ@PLT
.Lgcsite_$var_subtract$2F3_41:
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lcall_proc_staged_α_420_2
.Lcall_proc_staged_α_420_5:
                        call             qword ptr [rip + rt_gen_spine_pass_γ@GOTPCREL]
.Lgcsite_$var_subtract$2F3_40:
                                                                              jmp   .Lcall_proc_staged_α_420_2
.Lcall_proc_staged_α_420_4:
                        mov              edi, 1
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 240]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_420_6
                        mov              qword ptr [rsp + 240], 1
                        call             rt_proc_call_epilogue_ω@PLT
.Lgcsite_$var_subtract$2F3_39:
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lcall_proc_staged_α_420_2
.Lcall_proc_staged_α_420_6:
                        call             qword ptr [rip + rt_gen_spine_pass_ω@GOTPCREL]
.Lgcsite_$var_subtract$2F3_38:
                                                                              jmp   .Lcall_proc_staged_α_420_2
.Lcall_proc_staged_α_420_1:
                        call             rt_ab_undef_fn_fail@PLT
.Lgcsite_$var_subtract$2F3_37:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:335
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$var_subtract$2F3_36:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:                      add              rsp, 16
                        add              rsp, 48;                             jmp   n364_gate_β
.Lcall_proc_staged_α_420_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed): the fix-up is emitted here, rt_nret_fix_tiny is gone from the graph
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_420_29
                        cmp              eax, 40;                             je    .Lcall_proc_staged_α_420_25
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_nret_name@PLT
.Lgcsite_$var_subtract$2F3_35:
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        cmp              eax, 40;                             je    .Lcall_proc_staged_α_420_25
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0;              jmp   .Lcall_proc_staged_α_420_23
.Lcall_proc_staged_α_420_25:
                        mov              rcx, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              jne   .Lcall_proc_staged_α_420_24
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0
                        cmp              eax, 40;                             jne   .Lcall_proc_staged_α_420_23
                        mov              rdi, rax                             # d
                        mov              rsi, rdx                             # d
                        call             rt_deref@PLT
.Lgcsite_$var_subtract$2F3_34:
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232];          jmp   .Lcall_proc_staged_α_420_23
.Lcall_proc_staged_α_420_24:
.Lcall_proc_staged_α_420_23:
                        mov              rcx, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0
.Lcall_proc_staged_α_420_29:
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             jne   .Lcall_proc_staged_α_420_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n364_gate_β
.Lcall_proc_staged_α_420_999:
                        add              rsp, 96;                             jmp   $var_subtract$2F3_γ
n368_call_proc_staged_β:
                        call             qword ptr [rip + rt_gen_spine_resume_enter@GOTPCREL]
.Lgcsite_$var_subtract$2F3_33:
                        mov              rax, qword ptr [rsp + 248];          jmp   qword ptr [rax]
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_proc_staged_β_420_0: .quad .Lcall_proc_staged_β_420_0_s; .popsection
.Lcall_proc_staged_β_420_0_s:
                        .string          "$var_subtract/3"
                        .size            n368_call_proc_staged_bx, .-n368_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
$var_subtract$2F3_β:
                                                                              jmp   $var_subtract$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
$var_subtract$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 616]
                        lea              rsp, [rbp + 640]
                        mov              rbp, qword ptr [rbp + 632];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$var_subtract$2F3_ω:
                        mov              rcx, qword ptr [rsp + 624]
                        lea              rsp, [rbp + 640]
                        mov              rbp, qword ptr [rbp + 632];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_$var_subtract$2F3:
                        .quad            2750125526362
                        .quad            34359738416
                        .quad            .Lgcmap_$var_subtract$2F3_s
                        .quad            576
                        .quad            14
                        .quad            158329674399744
                        .quad            8800387989648
                        .quad            8808977924248
                        .quad            70368744177824
                        .quad            17596481011936
                        .quad            17592186044656
                        .quad            17596481011968
                        .quad            193514046488848
                        .quad            8800387989952
                        .quad            8808977924552
                        .quad            52776558133712
                        .quad            8808977924608
                        .quad            8800387990024
                        .quad            52776558133776
.Lgcmap_$var_subtract$2F3_s: .string          "$var_subtract/3"
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_$var_subtract$2F3_2:
                        .quad            50
                        .quad            .Lgcmap_$var_subtract$2F3
                        .quad            9223794253614809704
                        .quad            .Lgccode_$var_subtract$2F3_2
                        .quad            .Lgcsite_$var_subtract$2F3_0-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_1-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_3-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_2-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_5-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_4-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_8-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_7-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_6-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_21-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_20-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_23-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_22-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_19-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_18-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_17-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_16-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_15-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_14-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_13-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_12-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_11-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_10-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_9-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_26-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_25-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_24-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_29-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_28-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_27-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_32-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_31-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_30-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_45-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_44-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_47-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_46-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_49-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_48-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_43-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_42-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_41-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_40-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_39-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_38-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_37-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_36-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_35-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_34-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .quad            .Lgcsite_$var_subtract$2F3_33-.Lgccode_$var_subtract$2F3_2
                        .quad            65537
                        .popsection
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_list$2F1_3:
FN__list$2F1:
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rcx
                        mov              qword ptr [rsp + 128], rdx
                        mov              qword ptr [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 64
                        mov              edx, 112
                        call             rt_jmp_frame_lexprep2@PLT
.Lgcsite_list$2F1_0:    mov              rdi, rsp                             # base_p
                        mov              esi, 1                               # nparams
                        mov              edx, 0                               # nlocals
                        call             rt_icn_zframe_args_install@PLT
.Lgcsite_list$2F1_1:    mov              eax, 0                               # GCANCHOR .Lgcmap_list$2F1 qword ptr [rsp + 88]
list$2F1_α_body:
                        .type            n421_var_ref_bx, @function
n421_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n421_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 32]
                        mov              qword ptr [rsp + 8], rax;            jmp   n422_call_direct_α
                        .size            n421_var_ref_bx, .-n421_var_ref_bx
                        .type            n422_call_direct_bx, @function
n422_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n422_call_direct_α:     sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        call             dop_pl_is_list@PLT
.Lgcsite_list$2F1_2:    mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_list$2F1_3:    mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_direct_α_425_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   list$2F1_ω
.Lcall_direct_α_425_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 32;                             jmp   list$2F1_γ
n422_call_direct_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   list$2F1_ω
                        .size            n422_call_direct_bx, .-n422_call_direct_bx
#-----------------------------------------------------------------------------------------------------------------------
list$2F1_β:
                                                                              jmp   list$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
list$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 120]
                        lea              rsp, [rbp + 144]
                        mov              rbp, qword ptr [rbp + 136];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
list$2F1_ω:
                        mov              rcx, qword ptr [rsp + 128]
                        lea              rsp, [rbp + 144]
                        mov              rbp, qword ptr [rbp + 136];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_list$2F1:
                        .quad            619821747546
                        .quad            34359738416
                        .quad            .Lgcmap_list$2F1_s
                        .quad            80
                        .quad            3
                        .quad            70368744177664
                        .quad            8808977924160
                        .quad            8800387989576
.Lgcmap_list$2F1_s:     .string          "list/1"
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_list$2F1_3:   .quad            4
                        .quad            .Lgcmap_list$2F1
                        .quad            9223794253614809208
                        .quad            .Lgccode_list$2F1_3
                        .quad            .Lgcsite_list$2F1_0-.Lgccode_list$2F1_3
                        .quad            65537
                        .quad            .Lgcsite_list$2F1_1-.Lgccode_list$2F1_3
                        .quad            65537
                        .quad            .Lgcsite_list$2F1_2-.Lgccode_list$2F1_3
                        .quad            65537
                        .quad            .Lgcsite_list$2F1_3-.Lgccode_list$2F1_3
                        .quad            65537
                        .popsection
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_$arg_swi$2F3_4:
FN__$arg_swi$2F3:
                        sub              rsp, 1200
                        mov              qword ptr [rsp + 1176], rcx
                        mov              qword ptr [rsp + 1184], rdx
                        mov              qword ptr [rsp + 1192], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1088
                        mov              edx, 1168
                        call             rt_jmp_frame_lexprep2@PLT
.Lgcsite_$arg_swi$2F3_0:
                        mov              rdi, rsp                             # base_p
                        mov              esi, 3                               # nparams
                        mov              edx, 0                               # nlocals
                        call             rt_icn_zframe_args_install@PLT
.Lgcsite_$arg_swi$2F3_1:
                        mov              eax, 0                               # GCANCHOR .Lgcmap_$arg_swi$2F3 qword ptr [rsp + 1144]
$arg_swi$2F3_α_body:
                        .type            n426_var_ref_bx, @function
n426_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n426_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 32]
                        mov              qword ptr [rsp + 8], rax;            jmp   n427_call_pl_leaf_α
                        .size            n426_var_ref_bx, .-n426_var_ref_bx
                        .type            n427_call_pl_leaf_bx, @function
n427_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n427_call_pl_leaf_α:    sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        lea              rdi, [rsp + 0]
.Lcall_pl_leaf_α_505_100:
                        mov              eax, dword ptr [rdi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_505_101
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_505_102
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_505_190
.Lcall_pl_leaf_α_505_101:
                        mov              rcx, qword ptr [rdi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_505_190
                        cmp              rcx, rdi;                            je    .Lcall_pl_leaf_α_505_130
                        mov              rdi, rcx;                            jmp   .Lcall_pl_leaf_α_505_100
.Lcall_pl_leaf_α_505_102:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_505_130
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_505_130
                                                                              jmp   .Lcall_pl_leaf_α_505_195
.Lcall_pl_leaf_α_505_130:
                                                                              jmp   .Lcall_pl_leaf_α_505_180
.Lcall_pl_leaf_α_505_180:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_pl_leaf_α_505_249
.Lcall_pl_leaf_α_505_195:
                                                                              jmp   .Lcall_pl_leaf_α_505_248
.Lcall_pl_leaf_α_505_190:
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        .section         .rodata
.Lcall_pl_leaf_plop506: .string          "var"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdx, [rip + .Lcall_pl_leaf_plop506]
                        call             qword ptr [rip + rt_pl_type_cold@GOTPCREL]
.Lgcsite_$arg_swi$2F3_2:
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$arg_swi$2F3_3:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lcall_pl_leaf_α_505_249
.Lcall_pl_leaf_α_505_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_505_249:
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_505_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   $arg_swi$2F3_ω
.Lcall_pl_leaf_α_505_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n428_cut_α
n427_call_pl_leaf_β:    add              rsp, 16
                        add              rsp, 16;                             jmp   $arg_swi$2F3_ω
                        .size            n427_call_pl_leaf_bx, .-n427_call_pl_leaf_bx
                        .type            n428_cut_bx, @function
n428_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n428_cut_α:                                                                   jmp   n429_bound_α
                        .size            n428_cut_bx, .-n428_cut_bx
                        .type            n429_bound_bx, @function
n429_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n429_bound_α:           mov              qword ptr [rsp + 224], rsp;          jmp   n430_var_ref_α
                        .size            n429_bound_bx, .-n429_bound_bx
                        .type            n430_var_ref_bx, @function
n430_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n430_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 80]
                        mov              qword ptr [rsp + 8], rax;            jmp   n431_call_pl_leaf_α
                        .size            n430_var_ref_bx, .-n430_var_ref_bx
                        .type            n431_call_pl_leaf_bx, @function
n431_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n431_call_pl_leaf_α:    sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        lea              rdi, [rsp + 0]
.Lcall_pl_leaf_α_513_100:
                        mov              eax, dword ptr [rdi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_513_101
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_513_102
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_513_190
.Lcall_pl_leaf_α_513_101:
                        mov              rcx, qword ptr [rdi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_513_190
                        cmp              rcx, rdi;                            je    .Lcall_pl_leaf_α_513_130
                        mov              rdi, rcx;                            jmp   .Lcall_pl_leaf_α_513_100
.Lcall_pl_leaf_α_513_102:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_513_130
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_513_130
                        cmp              al, 80;                              je    .Lcall_pl_leaf_α_513_180
.Lcall_pl_leaf_α_513_130:
                                                                              jmp   .Lcall_pl_leaf_α_513_195
.Lcall_pl_leaf_α_513_180:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_pl_leaf_α_513_249
.Lcall_pl_leaf_α_513_195:
                                                                              jmp   .Lcall_pl_leaf_α_513_248
.Lcall_pl_leaf_α_513_190:
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        .section         .rodata
.Lcall_pl_leaf_plop514: .string          "compound"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdx, [rip + .Lcall_pl_leaf_plop514]
                        call             qword ptr [rip + rt_pl_type_cold@GOTPCREL]
.Lgcsite_$arg_swi$2F3_4:
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$arg_swi$2F3_5:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lcall_pl_leaf_α_513_249
.Lcall_pl_leaf_α_513_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_513_249:
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_513_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n477_unmark_α
.Lcall_pl_leaf_α_513_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n432_unmark_α
n431_call_pl_leaf_β:    add              rsp, 16
                        add              rsp, 16;                             jmp   n477_unmark_α
                        .size            n431_call_pl_leaf_bx, .-n431_call_pl_leaf_bx
                        .type            n432_unmark_bx, @function
n432_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n432_unmark_α:                                                                jmp   n433_var_ref_α
                        .size            n432_unmark_bx, .-n432_unmark_bx
                        .type            n433_var_ref_bx, @function
n433_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n433_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 112]
                        mov              qword ptr [rsp + 8], rax;            jmp   n434_var_ref_α
                        .size            n433_var_ref_bx, .-n433_var_ref_bx
                        .type            n434_var_ref_bx, @function
n434_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n434_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 1216]
                        mov              qword ptr [rsp + 8], rax;            jmp   n435_var_ref_α
                        .size            n434_var_ref_bx, .-n434_var_ref_bx
                        .type            n435_var_ref_bx, @function
n435_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n435_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 1216]
                        mov              qword ptr [rsp + 8], rax;            jmp   n436_lit_string_α
                        .size            n435_var_ref_bx, .-n435_var_ref_bx
                        .type            n436_lit_string_bx, @function
n436_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n436_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_523_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n437_call_pl_leaf_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_523_0: .quad .Llit_string_α_523_0_s; .popsection
.Llit_string_α_523_0_s: .string          "functor"
                        .size            n436_lit_string_bx, .-n436_lit_string_bx
                        .type            n437_call_pl_leaf_bx, @function
n437_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n437_call_pl_leaf_α:    sub              rsp, 16
                        sub              rsp, 64
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 56], rax
                        lea              rdi, [rsp + 16]
.Lcall_pl_leaf_α_524_100:
                        mov              eax, dword ptr [rdi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_524_101
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_524_102
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_524_190
.Lcall_pl_leaf_α_524_101:
                        mov              rcx, qword ptr [rdi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_524_190
                        cmp              rcx, rdi;                            je    .Lcall_pl_leaf_α_524_103
                        mov              rdi, rcx;                            jmp   .Lcall_pl_leaf_α_524_100
.Lcall_pl_leaf_α_524_102:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_524_103
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_524_103
                                                                              jmp   .Lcall_pl_leaf_α_524_104
.Lcall_pl_leaf_α_524_103:
                                                                              jmp   .Lcall_pl_leaf_α_524_190
.Lcall_pl_leaf_α_524_104:
                                                                              jmp   .Lcall_pl_leaf_α_524_180
.Lcall_pl_leaf_α_524_180:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_pl_leaf_α_524_249
.Lcall_pl_leaf_α_524_190:
                        lea              rdi, [rsp + 0]
                        mov              esi, 4
                        call             qword ptr [rip + rt_pl_anum_cold@GOTPCREL]
.Lgcsite_$arg_swi$2F3_6:
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$arg_swi$2F3_7:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lcall_pl_leaf_α_524_249
.Lcall_pl_leaf_α_524_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_524_249:
                        add              rsp, 64
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_524_999
                        add              rsp, 16
                        add              rsp, 96;                             jmp   n485_unmark_α
.Lcall_pl_leaf_α_524_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n438_call_direct_α
n437_call_pl_leaf_β:    add              rsp, 16
                        add              rsp, 96;                             jmp   n485_unmark_α
                        .size            n437_call_pl_leaf_bx, .-n437_call_pl_leaf_bx
                        .type            n438_call_direct_bx, @function
n438_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n438_call_direct_α:     sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 40], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 3
                        call             qword ptr [rip + rt_pl_dop_functor@GOTPCREL]
.Lgcsite_$arg_swi$2F3_8:
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$arg_swi$2F3_9:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_direct_α_525_999
                        add              rsp, 16
                        add              rsp, 112;                            jmp   n485_unmark_α
.Lcall_direct_α_525_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n439_bound_α
n438_call_direct_β:     add              rsp, 16
                        add              rsp, 112;                            jmp   n485_unmark_α
                        .size            n438_call_direct_bx, .-n438_call_direct_bx
                        .type            n439_bound_bx, @function
n439_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n439_bound_α:           mov              qword ptr [rsp + 512], rsp;          jmp   n440_var_ref_α
                        .size            n439_bound_bx, .-n439_bound_bx
                        .type            n440_var_ref_bx, @function
n440_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n440_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 192]
                        mov              qword ptr [rsp + 8], rax;            jmp   n441_call_pl_leaf_α
                        .size            n440_var_ref_bx, .-n440_var_ref_bx
                        .type            n441_call_pl_leaf_bx, @function
n441_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n441_call_pl_leaf_α:    sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        lea              rdi, [rsp + 0]
.Lcall_pl_leaf_α_530_100:
                        mov              eax, dword ptr [rdi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_530_101
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_530_102
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_530_190
.Lcall_pl_leaf_α_530_101:
                        mov              rcx, qword ptr [rdi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_530_190
                        cmp              rcx, rdi;                            je    .Lcall_pl_leaf_α_530_130
                        mov              rdi, rcx;                            jmp   .Lcall_pl_leaf_α_530_100
.Lcall_pl_leaf_α_530_102:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_530_130
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_530_130
                                                                              jmp   .Lcall_pl_leaf_α_530_180
.Lcall_pl_leaf_α_530_130:
                                                                              jmp   .Lcall_pl_leaf_α_530_195
.Lcall_pl_leaf_α_530_180:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_pl_leaf_α_530_249
.Lcall_pl_leaf_α_530_195:
                                                                              jmp   .Lcall_pl_leaf_α_530_248
.Lcall_pl_leaf_α_530_190:
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        .section         .rodata
.Lcall_pl_leaf_plop531: .string          "nonvar"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdx, [rip + .Lcall_pl_leaf_plop531]
                        call             qword ptr [rip + rt_pl_type_cold@GOTPCREL]
.Lgcsite_$arg_swi$2F3_10:
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$arg_swi$2F3_11:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lcall_pl_leaf_α_530_249
.Lcall_pl_leaf_α_530_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_530_249:
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_530_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n448_unmark_α
.Lcall_pl_leaf_α_530_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n442_unmark_α
n441_call_pl_leaf_β:    add              rsp, 16
                        add              rsp, 16;                             jmp   n448_unmark_α
                        .size            n441_call_pl_leaf_bx, .-n441_call_pl_leaf_bx
                        .type            n442_unmark_bx, @function
n442_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n442_unmark_α:                                                                jmp   n443_lit_integer_α
                        .size            n442_unmark_bx, .-n442_unmark_bx
                        .type            n443_lit_integer_bx, @function
n443_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n443_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_534_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n444_var_ref_α
.Llit_integer_α_534_0:  .quad            1
                        .size            n443_lit_integer_bx, .-n443_lit_integer_bx
                        .type            n444_var_ref_bx, @function
n444_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n444_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 1328]
                        mov              qword ptr [rsp + 8], rax;            jmp   n445_var_ref_α
                        .size            n444_var_ref_bx, .-n444_var_ref_bx
                        .type            n445_var_ref_bx, @function
n445_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n445_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 256]
                        mov              qword ptr [rsp + 8], rax;            jmp   n446_call_proc_staged_α
                        .size            n445_var_ref_bx, .-n445_var_ref_bx
                        .type            n446_call_proc_staged_bx, @function
n446_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n446_call_proc_staged_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 672], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_540_200
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              r8, qword ptr [rip + g_call_args@GOTPCREL]
                        mov              r8, qword ptr [r8 + 0]
                        test             r8, r8;                              je    .Lcall_proc_staged_α_540_200
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx
                        xor              r8d, r8d;                            jmp   .Lcall_proc_staged_α_540_201
.Lcall_proc_staged_α_540_200:
                        mov              edi, 0                               # idx
                        mov              rsi, qword ptr [rsp + 688]           # v
                        mov              rdx, qword ptr [rsp + 696]           # v
                        call             rt_arg_stage@PLT
.Lgcsite_$arg_swi$2F3_24:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:131
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$arg_swi$2F3_23:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lcall_proc_staged_α_540_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_540_202
                        mov              rax, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
                        mov              r8, qword ptr [rip + g_call_args@GOTPCREL]
                        mov              r8, qword ptr [r8 + 0]
                        test             r8, r8;                              je    .Lcall_proc_staged_α_540_202
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx
                        xor              r8d, r8d;                            jmp   .Lcall_proc_staged_α_540_203
.Lcall_proc_staged_α_540_202:
                        mov              edi, 1                               # idx
                        mov              rsi, qword ptr [rsp + 704]           # v
                        mov              rdx, qword ptr [rsp + 712]           # v
                        call             rt_arg_stage@PLT
.Lgcsite_$arg_swi$2F3_26:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:131
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$arg_swi$2F3_25:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lcall_proc_staged_α_540_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_540_204
                        mov              rax, qword ptr [rsp + 720]
                        mov              rdx, qword ptr [rsp + 728]
                        mov              r8, qword ptr [rip + g_call_args@GOTPCREL]
                        mov              r8, qword ptr [r8 + 0]
                        test             r8, r8;                              je    .Lcall_proc_staged_α_540_204
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx
                        xor              r8d, r8d;                            jmp   .Lcall_proc_staged_α_540_205
.Lcall_proc_staged_α_540_204:
                        mov              edi, 2                               # idx
                        mov              rsi, qword ptr [rsp + 720]           # v
                        mov              rdx, qword ptr [rsp + 728]           # v
                        call             rt_arg_stage@PLT
.Lgcsite_$arg_swi$2F3_28:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:131
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$arg_swi$2F3_27:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lcall_proc_staged_α_540_205:
                        mov              edi, 34                              # idx
                        mov              esi, 3                               # nargs
                        call             rt_proc_call_open_det@PLT
.Lgcsite_$arg_swi$2F3_22:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:1173
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$arg_swi$2F3_21:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:                      sub              rsp, 16                              # CFO-36 (cfo 2026-09-09): the landing words (N-2 word, landing cell) are pushed AFTER the prologue call, not before it -- in the generator regime they are an ODD count, so rt_proc_call_open_det ran at rsp 8-mod-16 and everything it reached did too (rt_trace_event_args -> image -> vsnprintf movaps: SIGSEGV on every traced generator call with an argument; Arizona coexpr and errors, rungs rung03). The entry layout the callee sees is byte-identical; only the prologue call moved above the words,
                        test             rax, rax;                            je    .Lcall_proc_staged_α_540_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_540_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_540_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_540_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_540_3:
                        mov              edx, 1
                        mov              qword ptr [rsp + 680], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 672]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_540_5
                        mov              qword ptr [rsp + 672], 1
                        call             rt_proc_call_epilogue_γ@PLT
.Lgcsite_$arg_swi$2F3_20:
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lcall_proc_staged_α_540_2
.Lcall_proc_staged_α_540_5:
                        call             qword ptr [rip + rt_gen_spine_pass_γ@GOTPCREL]
.Lgcsite_$arg_swi$2F3_19:
                                                                              jmp   .Lcall_proc_staged_α_540_2
.Lcall_proc_staged_α_540_4:
                        mov              edi, 1
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 672]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_540_6
                        mov              qword ptr [rsp + 672], 1
                        call             rt_proc_call_epilogue_ω@PLT
.Lgcsite_$arg_swi$2F3_18:
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lcall_proc_staged_α_540_2
.Lcall_proc_staged_α_540_6:
                        call             qword ptr [rip + rt_gen_spine_pass_ω@GOTPCREL]
.Lgcsite_$arg_swi$2F3_17:
                                                                              jmp   .Lcall_proc_staged_α_540_2
.Lcall_proc_staged_α_540_1:
                        call             rt_ab_undef_fn_fail@PLT
.Lgcsite_$arg_swi$2F3_16:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:335
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$arg_swi$2F3_15:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:                      add              rsp, 16
                        add              rsp, 80;                             jmp   n462_unmark_α
.Lcall_proc_staged_α_540_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed): the fix-up is emitted here, rt_nret_fix_tiny is gone from the graph
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_540_29
                        cmp              eax, 40;                             je    .Lcall_proc_staged_α_540_25
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_nret_name@PLT
.Lgcsite_$arg_swi$2F3_14:
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
                        cmp              eax, 40;                             je    .Lcall_proc_staged_α_540_25
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0;              jmp   .Lcall_proc_staged_α_540_23
.Lcall_proc_staged_α_540_25:
                        mov              rcx, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              jne   .Lcall_proc_staged_α_540_24
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0
                        cmp              eax, 40;                             jne   .Lcall_proc_staged_α_540_23
                        mov              rdi, rax                             # d
                        mov              rsi, rdx                             # d
                        call             rt_deref@PLT
.Lgcsite_$arg_swi$2F3_13:
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664];          jmp   .Lcall_proc_staged_α_540_23
.Lcall_proc_staged_α_540_24:
.Lcall_proc_staged_α_540_23:
                        mov              rcx, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0
.Lcall_proc_staged_α_540_29:
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              al, 104;                             jne   .Lcall_proc_staged_α_540_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n462_unmark_α
.Lcall_proc_staged_α_540_999:
                                                                              jmp   n447_gate_arm_α
n446_call_proc_staged_β:
                        call             qword ptr [rip + rt_gen_spine_resume_enter@GOTPCREL]
.Lgcsite_$arg_swi$2F3_12:
                        mov              rax, qword ptr [rsp + 680];          jmp   qword ptr [rax]
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_proc_staged_β_540_0: .quad .Lcall_proc_staged_β_540_0_s; .popsection
.Lcall_proc_staged_β_540_0_s:
                        .string          "$between_test/3"
                        .size            n446_call_proc_staged_bx, .-n446_call_proc_staged_bx
                        .type            n447_gate_arm_bx, @function
n447_gate_arm_bx:
#-----------------------------------------------------------------------------------------------------------------------
n447_gate_arm_α:        mov              dword ptr [rsp + 576], 0
                        add              rsp, 80;                             jmp   n464_var_ref_α
                        .size            n447_gate_arm_bx, .-n447_gate_arm_bx
                        .type            n448_unmark_bx, @function
n448_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n448_unmark_α:                                                                jmp   n449_bound_α
                        .size            n448_unmark_bx, .-n448_unmark_bx
                        .type            n449_bound_bx, @function
n449_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n449_bound_α:           mov              qword ptr [rsp + 688], rsp;          jmp   n450_disjunction_α
                        .size            n449_bound_bx, .-n449_bound_bx
                        .type            n450_disjunction_bx, @function
n450_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n450_disjunction_α:     sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 16], 0;             jmp   n474_var_ref_α
.Ldisjunction_γ_450_as: mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_548_0
                                                                              jmp   n451_unmark_α
.Ldisjunction_α_548_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_548_1
                                                                              jmp   n451_unmark_α
.Ldisjunction_α_548_1:                                                        jmp   n451_unmark_α
n450_disjunction_β:     add              rsp, 32;                             jmp   n493_unmark_α
.Ldisjunction_γ_450_af:
.Ldisjunction_ω_450_af: add              dword ptr [rsp + 16], 1
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 1;                              je    n471_var_ref_α
                        add              rsp, 32;                             jmp   n493_unmark_α
                        .size            n450_disjunction_bx, .-n450_disjunction_bx
                        .type            n451_unmark_bx, @function
n451_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n451_unmark_α:                                                                jmp   n452_var_ref_α
                        .size            n451_unmark_bx, .-n451_unmark_bx
                        .type            n452_var_ref_bx, @function
n452_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n452_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 224]
                        mov              qword ptr [rsp + 8], rax;            jmp   n453_lit_integer_α
                        .size            n452_var_ref_bx, .-n452_var_ref_bx
                        .type            n453_lit_integer_bx, @function
n453_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n453_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_553_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n454_lit_integer_α
.Llit_integer_α_553_0:  .quad            1
                        .size            n453_lit_integer_bx, .-n453_lit_integer_bx
                        .type            n454_lit_integer_bx, @function
n454_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n454_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_554_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n455_call_direct_α
.Llit_integer_α_554_0:  .quad            9223372036854775807
                        .size            n454_lit_integer_bx, .-n454_lit_integer_bx
                        .type            n455_call_direct_bx, @function
n455_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n455_call_direct_α:     sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 40], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 3
                        call             qword ptr [rip + rt_pl_dop_between_guard@GOTPCREL]
.Lgcsite_$arg_swi$2F3_29:
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$arg_swi$2F3_30:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_direct_α_555_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n459_unmark_α
.Lcall_direct_α_555_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n456_to_α
n455_call_direct_β:     add              rsp, 16
                        add              rsp, 80;                             jmp   n459_unmark_α
                        .size            n455_call_direct_bx, .-n455_call_direct_bx
                        .type            n456_to_bx, @function
n456_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n456_to_α:              sub              rsp, 32
                        mov              rdi, qword ptr [rsp + 64]            # lit_integer
                        mov              rsi, qword ptr [rsp + 72]
                        call             to_int@PLT
.Lgcsite_$arg_swi$2F3_34:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 880], rax
                        push             rax                                  # gc_poll bb_to.cpp:93
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$arg_swi$2F3_33:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 48]            # lit_integer
                        mov              rsi, qword ptr [rsp + 56]
                        call             to_int@PLT
.Lgcsite_$arg_swi$2F3_32:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 888], rax
.Lto_α_557_0:           mov              rax, qword ptr [rsp + 880]
                        mov              rcx, qword ptr [rsp + 888]
                        cmp              rax, rcx;                            jle   .Lto_α_557_998
                        add              rsp, 32
                        add              rsp, 96;                             jmp   n459_unmark_α
.Lto_α_557_998:         mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax
                        push             rax                                  # gc_poll bb_to.cpp:113
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$arg_swi$2F3_31:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n457_call_pl_leaf_α
n456_to_β:              inc              qword ptr [rsp + 880];               jno   .Lto_β_557_999
                        add              rsp, 32
                        add              rsp, 96;                             jmp   n459_unmark_α
.Lto_β_557_999:                                                               jmp   .Lto_α_557_0
                        .size            n456_to_bx, .-n456_to_bx
                        .type            n457_call_pl_leaf_bx, @function
n457_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n457_call_pl_leaf_α:    sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        lea              rdi, [rsp + 16]
.Lcall_pl_leaf_α_558_100:
                        mov              eax, dword ptr [rdi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_558_101
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_558_102
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_558_190
.Lcall_pl_leaf_α_558_101:
                        mov              rcx, qword ptr [rdi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_558_190
                        cmp              rcx, rdi;                            je    .Lcall_pl_leaf_α_558_190
                        mov              rdi, rcx;                            jmp   .Lcall_pl_leaf_α_558_100
.Lcall_pl_leaf_α_558_102:
                        cmp              al, 3;                               je    .Lcall_pl_leaf_α_558_120
                        cmp              al, 5;                               je    .Lcall_pl_leaf_α_558_120
                        cmp              al, 120;                             je    .Lcall_pl_leaf_α_558_120
                                                                              jmp   .Lcall_pl_leaf_α_558_190
.Lcall_pl_leaf_α_558_120:
                        mov              rax, qword ptr [rdi + 0]
                        mov              rdx, qword ptr [rdi + 8]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rtx_pl_unify@GOTPCREL]
.Lgcsite_$arg_swi$2F3_37:
                        test             eax, eax;                            jz    .Lcall_pl_leaf_α_558_248
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lcall_pl_leaf_α_558_249
.Lcall_pl_leaf_α_558_190:
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        call             qword ptr [rip + rt_pl_is_cold@GOTPCREL]
.Lgcsite_$arg_swi$2F3_36:
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        push             rax                                  # gc_poll bb_call_pl_leaf.cpp:191
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$arg_swi$2F3_35:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    .Lcall_pl_leaf_α_558_248
                        lea              rdi, [rsp + 16];                     jmp   .Lcall_pl_leaf_α_558_120
.Lcall_pl_leaf_α_558_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_558_249:
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_558_999
                        add              rsp, 16;                             jmp   n456_to_β
.Lcall_pl_leaf_α_558_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n458_gate_arm_α
n457_call_pl_leaf_β:    add              rsp, 16;                             jmp   n456_to_β
                        .size            n457_call_pl_leaf_bx, .-n457_call_pl_leaf_bx
                        .type            n458_gate_arm_bx, @function
n458_gate_arm_bx:
#-----------------------------------------------------------------------------------------------------------------------
n458_gate_arm_α:        mov              dword ptr [rsp + 800], 0
                        add              rsp, 288;                            jmp   n461_gate_arm_α
                        .size            n458_gate_arm_bx, .-n458_gate_arm_bx
                        .type            n459_unmark_bx, @function
n459_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n459_unmark_α:                                                                jmp   n460_gate_α
                        .size            n459_unmark_bx, .-n459_unmark_bx
                        .type            n460_gate_bx, @function
n460_gate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n460_gate_α:                                                                  jmp   n462_unmark_α
n460_gate_β:            mov              eax, dword ptr [rsp + 496]
                        cmp              eax, 0;                              jne   .Lgate_β_564_10
                        add              rsp, -112;                           jmp   n456_to_β
.Lgate_β_564_10:        cmp              eax, 1;                              jne   .Lgate_β_564_11
                        add              rsp, -112;                           jmp   n500_to_β
.Lgate_β_564_11:                                                              jmp   n462_unmark_α
                        .size            n460_gate_bx, .-n460_gate_bx
                        .type            n461_gate_arm_bx, @function
n461_gate_arm_bx:
#-----------------------------------------------------------------------------------------------------------------------
n461_gate_arm_α:        mov              dword ptr [rsp + 496], 1
                        add              rsp, 160;                            jmp   n464_var_ref_α
                        .size            n461_gate_arm_bx, .-n461_gate_arm_bx
                        .type            n462_unmark_bx, @function
n462_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n462_unmark_α:                                                                jmp   n463_gate_α
                        .size            n462_unmark_bx, .-n462_unmark_bx
                        .type            n463_gate_bx, @function
n463_gate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n463_gate_α:            add              rsp, 128;                            jmp   n485_unmark_α
n463_gate_β:            mov              eax, dword ptr [rsp + 320]
                        cmp              eax, 0;                              jne   .Lgate_β_570_10
                        add              rsp, -80;                            jmp   n446_call_proc_staged_β
.Lgate_β_570_10:        cmp              eax, 1;                              je    n460_gate_β
                        add              rsp, 128;                            jmp   n485_unmark_α
                        .size            n463_gate_bx, .-n463_gate_bx
                        .type            n464_var_ref_bx, @function
n464_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n464_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 208]
                        mov              qword ptr [rsp + 8], rax;            jmp   n465_var_ref_α
                        .size            n464_var_ref_bx, .-n464_var_ref_bx
                        .type            n465_var_ref_bx, @function
n465_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n465_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 240]
                        mov              qword ptr [rsp + 8], rax;            jmp   n466_var_ref_α
                        .size            n465_var_ref_bx, .-n465_var_ref_bx
                        .type            n466_var_ref_bx, @function
n466_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n466_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 272]
                        mov              qword ptr [rsp + 8], rax;            jmp   n467_lit_string_α
                        .size            n466_var_ref_bx, .-n466_var_ref_bx
                        .type            n467_lit_string_bx, @function
n467_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n467_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_577_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n468_call_pl_leaf_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_577_0: .quad .Llit_string_α_577_0_s; .popsection
.Llit_string_α_577_0_s: .string          "arg"
                        .size            n467_lit_string_bx, .-n467_lit_string_bx
                        .type            n468_call_pl_leaf_bx, @function
n468_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n468_call_pl_leaf_α:    sub              rsp, 16
                        sub              rsp, 64
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 56], rax
                        lea              rdi, [rsp + 16]
.Lcall_pl_leaf_α_578_100:
                        mov              eax, dword ptr [rdi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_578_101
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_578_102
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_578_190
.Lcall_pl_leaf_α_578_101:
                        mov              rcx, qword ptr [rdi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_578_190
                        cmp              rcx, rdi;                            je    .Lcall_pl_leaf_α_578_103
                        mov              rdi, rcx;                            jmp   .Lcall_pl_leaf_α_578_100
.Lcall_pl_leaf_α_578_102:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_578_103
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_578_103
                        cmp              al, 3;                               jne   .Lcall_pl_leaf_α_578_190
                        mov              rcx, qword ptr [rdi + 8]
                        test             rcx, rcx;                            js    .Lcall_pl_leaf_α_578_190
                                                                              jmp   .Lcall_pl_leaf_α_578_104
.Lcall_pl_leaf_α_578_103:
                                                                              jmp   .Lcall_pl_leaf_α_578_190
.Lcall_pl_leaf_α_578_104:
                        lea              rdi, [rsp + 32]
.Lcall_pl_leaf_α_578_110:
                        mov              eax, dword ptr [rdi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_578_111
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_578_112
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_578_190
.Lcall_pl_leaf_α_578_111:
                        mov              rcx, qword ptr [rdi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_578_190
                        cmp              rcx, rdi;                            je    .Lcall_pl_leaf_α_578_113
                        mov              rdi, rcx;                            jmp   .Lcall_pl_leaf_α_578_110
.Lcall_pl_leaf_α_578_112:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_578_113
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_578_113
                        cmp              al, 80;                              jne   .Lcall_pl_leaf_α_578_190
                                                                              jmp   .Lcall_pl_leaf_α_578_114
.Lcall_pl_leaf_α_578_113:
                                                                              jmp   .Lcall_pl_leaf_α_578_190
.Lcall_pl_leaf_α_578_114:
                                                                              jmp   .Lcall_pl_leaf_α_578_180
.Lcall_pl_leaf_α_578_180:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_pl_leaf_α_578_249
.Lcall_pl_leaf_α_578_190:
                        lea              rdi, [rsp + 0]
                        mov              esi, 4
                        call             qword ptr [rip + rt_pl_anum_cold@GOTPCREL]
.Lgcsite_$arg_swi$2F3_38:
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$arg_swi$2F3_39:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lcall_pl_leaf_α_578_249
.Lcall_pl_leaf_α_578_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_578_249:
                        add              rsp, 64
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_578_999
                        add              rsp, 16
                        add              rsp, 208;                            jmp   n485_unmark_α
.Lcall_pl_leaf_α_578_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n469_call_direct_α
n468_call_pl_leaf_β:    add              rsp, 16
                        add              rsp, 208;                            jmp   n485_unmark_α
                        .size            n468_call_pl_leaf_bx, .-n468_call_pl_leaf_bx
                        .type            n469_call_direct_bx, @function
n469_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n469_call_direct_α:     sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 40], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 3
                        call             qword ptr [rip + rt_pl_dop_arg@GOTPCREL]
.Lgcsite_$arg_swi$2F3_40:
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$arg_swi$2F3_41:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_direct_α_579_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n463_gate_β
.Lcall_direct_α_579_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n470_gate_arm_α
n469_call_direct_β:     add              rsp, 16
                        add              rsp, 80;                             jmp   n463_gate_β
                        .size            n469_call_direct_bx, .-n469_call_direct_bx
                        .type            n470_gate_arm_bx, @function
n470_gate_arm_bx:
#-----------------------------------------------------------------------------------------------------------------------
n470_gate_arm_α:        mov              dword ptr [rsp + 432], 0
                        add              rsp, 384;                            jmp   $arg_swi$2F3_γ
                        .size            n470_gate_arm_bx, .-n470_gate_arm_bx
                        .type            n471_var_ref_bx, @function
n471_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n471_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 1312]
                        mov              qword ptr [rsp + 8], rax;            jmp   n472_lit_atom_α
n471_var_ref_β:         add              rsp, 16;                             jmp   .Ldisjunction_ω_450_af
                        .size            n471_var_ref_bx, .-n471_var_ref_bx
                        .type            n472_lit_atom_bx, @function
n472_lit_atom_bx:
#-----------------------------------------------------------------------------------------------------------------------
n472_lit_atom_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 176             # result
                        mov              rax, qword ptr [rip + .Llit_atom_α_584_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n473_call_pl_leaf_α
.Llit_atom_α_584_0:     .quad            215
                        .size            n472_lit_atom_bx, .-n472_lit_atom_bx
                        .type            n473_call_pl_leaf_bx, @function
n473_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n473_call_pl_leaf_α:    sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        lea              rdi, [rsp + 0]
.Lcall_pl_leaf_α_585_100:
                        mov              eax, dword ptr [rdi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_585_101
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_585_102
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_585_190
.Lcall_pl_leaf_α_585_101:
                        mov              rcx, qword ptr [rdi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_585_190
                        cmp              rcx, rdi;                            je    .Lcall_pl_leaf_α_585_130
                        mov              rdi, rcx;                            jmp   .Lcall_pl_leaf_α_585_100
.Lcall_pl_leaf_α_585_102:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_585_130
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_585_130
                        cmp              al, 3;                               jne   .Lcall_pl_leaf_α_585_190
                        mov              rdx, qword ptr [rdi + 8]
                        lea              rsi, [rsp + 16]
.Lcall_pl_leaf_α_585_110:
                        mov              eax, dword ptr [rsi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_585_111
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_585_112
                        mov              ecx, dword ptr [rsi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_585_190
.Lcall_pl_leaf_α_585_111:
                        mov              rcx, qword ptr [rsi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_585_190
                        cmp              rcx, rsi;                            je    .Lcall_pl_leaf_α_585_190
                        mov              rsi, rcx;                            jmp   .Lcall_pl_leaf_α_585_110
.Lcall_pl_leaf_α_585_112:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_585_190
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_585_190
                        cmp              al, 3;                               jne   .Lcall_pl_leaf_α_585_190
                        mov              rcx, qword ptr [rsi + 8]
                        cmp              rdx, rcx;                            jne   .Lcall_pl_leaf_α_585_195
                                                                              jmp   .Lcall_pl_leaf_α_585_180
.Lcall_pl_leaf_α_585_130:
                        lea              rsi, [rsp + 16]
.Lcall_pl_leaf_α_585_120:
                        mov              eax, dword ptr [rsi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_585_121
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_585_122
                        mov              ecx, dword ptr [rsi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_585_190
.Lcall_pl_leaf_α_585_121:
                        mov              rcx, qword ptr [rsi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_585_190
                        cmp              rcx, rsi;                            je    .Lcall_pl_leaf_α_585_135
                        mov              rsi, rcx;                            jmp   .Lcall_pl_leaf_α_585_120
.Lcall_pl_leaf_α_585_122:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_585_135
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_585_135
                                                                              jmp   .Lcall_pl_leaf_α_585_190
.Lcall_pl_leaf_α_585_135:
                        cmp              rdi, rsi;                            jne   .Lcall_pl_leaf_α_585_195
                                                                              jmp   .Lcall_pl_leaf_α_585_180
.Lcall_pl_leaf_α_585_180:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_pl_leaf_α_585_249
.Lcall_pl_leaf_α_585_195:
                                                                              jmp   .Lcall_pl_leaf_α_585_248
.Lcall_pl_leaf_α_585_190:
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        .section         .rodata
.Lcall_pl_leaf_plop586: .string          "eq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdx, [rip + .Lcall_pl_leaf_plop586]
                        call             qword ptr [rip + rt_pl_atop_cold@GOTPCREL]
.Lgcsite_$arg_swi$2F3_42:
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$arg_swi$2F3_43:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lcall_pl_leaf_α_585_249
.Lcall_pl_leaf_α_585_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_585_249:
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_585_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   .Ldisjunction_ω_450_af
.Lcall_pl_leaf_α_585_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 48;                             jmp   .Ldisjunction_γ_450_as
n473_call_pl_leaf_β:    add              rsp, 16
                        add              rsp, 32;                             jmp   .Ldisjunction_ω_450_af
                        .size            n473_call_pl_leaf_bx, .-n473_call_pl_leaf_bx
                        .type            n474_var_ref_bx, @function
n474_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n474_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 1312]
                        mov              qword ptr [rsp + 8], rax;            jmp   n475_lit_atom_α
n474_var_ref_β:         add              rsp, 16;                             jmp   .Ldisjunction_ω_450_af
                        .size            n474_var_ref_bx, .-n474_var_ref_bx
                        .type            n475_lit_atom_bx, @function
n475_lit_atom_bx:
#-----------------------------------------------------------------------------------------------------------------------
n475_lit_atom_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 176             # result
                        mov              rax, qword ptr [rip + .Llit_atom_α_589_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n476_call_pl_leaf_α
.Llit_atom_α_589_0:     .quad            216
                        .size            n475_lit_atom_bx, .-n475_lit_atom_bx
                        .type            n476_call_pl_leaf_bx, @function
n476_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n476_call_pl_leaf_α:    sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        lea              rdi, [rsp + 0]
.Lcall_pl_leaf_α_590_100:
                        mov              eax, dword ptr [rdi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_590_101
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_590_102
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_590_190
.Lcall_pl_leaf_α_590_101:
                        mov              rcx, qword ptr [rdi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_590_190
                        cmp              rcx, rdi;                            je    .Lcall_pl_leaf_α_590_130
                        mov              rdi, rcx;                            jmp   .Lcall_pl_leaf_α_590_100
.Lcall_pl_leaf_α_590_102:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_590_130
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_590_130
                        cmp              al, 3;                               jne   .Lcall_pl_leaf_α_590_190
                        mov              rdx, qword ptr [rdi + 8]
                        lea              rsi, [rsp + 16]
.Lcall_pl_leaf_α_590_110:
                        mov              eax, dword ptr [rsi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_590_111
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_590_112
                        mov              ecx, dword ptr [rsi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_590_190
.Lcall_pl_leaf_α_590_111:
                        mov              rcx, qword ptr [rsi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_590_190
                        cmp              rcx, rsi;                            je    .Lcall_pl_leaf_α_590_190
                        mov              rsi, rcx;                            jmp   .Lcall_pl_leaf_α_590_110
.Lcall_pl_leaf_α_590_112:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_590_190
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_590_190
                        cmp              al, 3;                               jne   .Lcall_pl_leaf_α_590_190
                        mov              rcx, qword ptr [rsi + 8]
                        cmp              rdx, rcx;                            jne   .Lcall_pl_leaf_α_590_195
                                                                              jmp   .Lcall_pl_leaf_α_590_180
.Lcall_pl_leaf_α_590_130:
                        lea              rsi, [rsp + 16]
.Lcall_pl_leaf_α_590_120:
                        mov              eax, dword ptr [rsi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_590_121
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_590_122
                        mov              ecx, dword ptr [rsi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_590_190
.Lcall_pl_leaf_α_590_121:
                        mov              rcx, qword ptr [rsi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_590_190
                        cmp              rcx, rsi;                            je    .Lcall_pl_leaf_α_590_135
                        mov              rsi, rcx;                            jmp   .Lcall_pl_leaf_α_590_120
.Lcall_pl_leaf_α_590_122:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_590_135
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_590_135
                                                                              jmp   .Lcall_pl_leaf_α_590_190
.Lcall_pl_leaf_α_590_135:
                        cmp              rdi, rsi;                            jne   .Lcall_pl_leaf_α_590_195
                                                                              jmp   .Lcall_pl_leaf_α_590_180
.Lcall_pl_leaf_α_590_180:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_pl_leaf_α_590_249
.Lcall_pl_leaf_α_590_195:
                                                                              jmp   .Lcall_pl_leaf_α_590_248
.Lcall_pl_leaf_α_590_190:
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        .section         .rodata
.Lcall_pl_leaf_plop591: .string          "eq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdx, [rip + .Lcall_pl_leaf_plop591]
                        call             qword ptr [rip + rt_pl_atop_cold@GOTPCREL]
.Lgcsite_$arg_swi$2F3_44:
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$arg_swi$2F3_45:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lcall_pl_leaf_α_590_249
.Lcall_pl_leaf_α_590_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_590_249:
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_590_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   .Ldisjunction_ω_450_af
.Lcall_pl_leaf_α_590_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 48;                             jmp   .Ldisjunction_γ_450_as
n476_call_pl_leaf_β:    add              rsp, 16
                        add              rsp, 32;                             jmp   .Ldisjunction_ω_450_af
                        .size            n476_call_pl_leaf_bx, .-n476_call_pl_leaf_bx
                        .type            n477_unmark_bx, @function
n477_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n477_unmark_α:                                                                jmp   n478_var_ref_α
                        .size            n477_unmark_bx, .-n477_unmark_bx
                        .type            n478_var_ref_bx, @function
n478_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n478_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 64]
                        mov              qword ptr [rsp + 8], rax;            jmp   n479_var_ref_α
                        .size            n478_var_ref_bx, .-n478_var_ref_bx
                        .type            n479_var_ref_bx, @function
n479_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n479_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 96]
                        mov              qword ptr [rsp + 8], rax;            jmp   n480_var_ref_α
                        .size            n479_var_ref_bx, .-n479_var_ref_bx
                        .type            n480_var_ref_bx, @function
n480_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n480_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 128]
                        mov              qword ptr [rsp + 8], rax;            jmp   n481_lit_string_α
                        .size            n480_var_ref_bx, .-n480_var_ref_bx
                        .type            n481_lit_string_bx, @function
n481_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n481_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_600_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n482_call_pl_leaf_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_600_0: .quad .Llit_string_α_600_0_s; .popsection
.Llit_string_α_600_0_s: .string          "arg"
                        .size            n481_lit_string_bx, .-n481_lit_string_bx
                        .type            n482_call_pl_leaf_bx, @function
n482_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n482_call_pl_leaf_α:    sub              rsp, 16
                        sub              rsp, 64
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 56], rax
                        lea              rdi, [rsp + 16]
.Lcall_pl_leaf_α_601_100:
                        mov              eax, dword ptr [rdi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_601_101
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_601_102
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_601_190
.Lcall_pl_leaf_α_601_101:
                        mov              rcx, qword ptr [rdi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_601_190
                        cmp              rcx, rdi;                            je    .Lcall_pl_leaf_α_601_103
                        mov              rdi, rcx;                            jmp   .Lcall_pl_leaf_α_601_100
.Lcall_pl_leaf_α_601_102:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_601_103
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_601_103
                        cmp              al, 3;                               jne   .Lcall_pl_leaf_α_601_190
                        mov              rcx, qword ptr [rdi + 8]
                        test             rcx, rcx;                            js    .Lcall_pl_leaf_α_601_190
                                                                              jmp   .Lcall_pl_leaf_α_601_104
.Lcall_pl_leaf_α_601_103:
                                                                              jmp   .Lcall_pl_leaf_α_601_190
.Lcall_pl_leaf_α_601_104:
                        lea              rdi, [rsp + 32]
.Lcall_pl_leaf_α_601_110:
                        mov              eax, dword ptr [rdi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_601_111
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_601_112
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_601_190
.Lcall_pl_leaf_α_601_111:
                        mov              rcx, qword ptr [rdi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_601_190
                        cmp              rcx, rdi;                            je    .Lcall_pl_leaf_α_601_113
                        mov              rdi, rcx;                            jmp   .Lcall_pl_leaf_α_601_110
.Lcall_pl_leaf_α_601_112:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_601_113
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_601_113
                        cmp              al, 80;                              jne   .Lcall_pl_leaf_α_601_190
                                                                              jmp   .Lcall_pl_leaf_α_601_114
.Lcall_pl_leaf_α_601_113:
                                                                              jmp   .Lcall_pl_leaf_α_601_190
.Lcall_pl_leaf_α_601_114:
                                                                              jmp   .Lcall_pl_leaf_α_601_180
.Lcall_pl_leaf_α_601_180:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_pl_leaf_α_601_249
.Lcall_pl_leaf_α_601_190:
                        lea              rdi, [rsp + 0]
                        mov              esi, 4
                        call             qword ptr [rip + rt_pl_anum_cold@GOTPCREL]
.Lgcsite_$arg_swi$2F3_46:
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$arg_swi$2F3_47:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lcall_pl_leaf_α_601_249
.Lcall_pl_leaf_α_601_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_601_249:
                        add              rsp, 64
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_601_999
                        add              rsp, 16
                        add              rsp, 64;                             jmp   n485_unmark_α
.Lcall_pl_leaf_α_601_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n483_call_direct_α
n482_call_pl_leaf_β:    add              rsp, 16
                        add              rsp, 64;                             jmp   n485_unmark_α
                        .size            n482_call_pl_leaf_bx, .-n482_call_pl_leaf_bx
                        .type            n483_call_direct_bx, @function
n483_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n483_call_direct_α:     sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 40], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 3
                        call             qword ptr [rip + rt_pl_dop_arg@GOTPCREL]
.Lgcsite_$arg_swi$2F3_48:
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$arg_swi$2F3_49:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_direct_α_602_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n485_unmark_α
.Lcall_direct_α_602_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n484_gate_arm_α
n483_call_direct_β:     add              rsp, 16
                        add              rsp, 80;                             jmp   n485_unmark_α
                        .size            n483_call_direct_bx, .-n483_call_direct_bx
                        .type            n484_gate_arm_bx, @function
n484_gate_arm_bx:
#-----------------------------------------------------------------------------------------------------------------------
n484_gate_arm_α:        mov              dword ptr [rsp + 288], 1
                        add              rsp, 112;                            jmp   $arg_swi$2F3_γ
                        .size            n484_gate_arm_bx, .-n484_gate_arm_bx
                        .type            n485_unmark_bx, @function
n485_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n485_unmark_α:                                                                jmp   n486_gate_α
                        .size            n485_unmark_bx, .-n485_unmark_bx
                        .type            n486_gate_bx, @function
n486_gate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n486_gate_α:            add              rsp, 32;                             jmp   $arg_swi$2F3_ω
n486_gate_β:            mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 0;                              jne   .Lgate_β_608_10
                        add              rsp, -128;                           jmp   n463_gate_β
.Lgate_β_608_10:        cmp              eax, 1;                              jne   .Lgate_β_608_11
                        add              rsp, 16;                             jmp   n486_gate_α
.Lgate_β_608_11:        add              rsp, 32;                             jmp   $arg_swi$2F3_ω
                        .size            n486_gate_bx, .-n486_gate_bx
                        .type            n487_var_ref_bx, @function
n487_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n487_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 32]
                        mov              qword ptr [rsp + 8], rax;            jmp   n488_var_ref_α
                        .size            n487_var_ref_bx, .-n487_var_ref_bx
                        .type            n488_var_ref_bx, @function
n488_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n488_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 64]
                        mov              qword ptr [rsp + 8], rax;            jmp   n489_var_ref_α
                        .size            n488_var_ref_bx, .-n488_var_ref_bx
                        .type            n489_var_ref_bx, @function
n489_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n489_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 96]
                        mov              qword ptr [rsp + 8], rax;            jmp   n490_lit_string_α
                        .size            n489_var_ref_bx, .-n489_var_ref_bx
                        .type            n490_lit_string_bx, @function
n490_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n490_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_615_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n491_call_pl_leaf_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_615_0: .quad .Llit_string_α_615_0_s; .popsection
.Llit_string_α_615_0_s: .string          "arg"
                        .size            n490_lit_string_bx, .-n490_lit_string_bx
                        .type            n491_call_pl_leaf_bx, @function
n491_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n491_call_pl_leaf_α:    sub              rsp, 16
                        sub              rsp, 64
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 56], rax
                        lea              rdi, [rsp + 16]
.Lcall_pl_leaf_α_616_100:
                        mov              eax, dword ptr [rdi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_616_101
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_616_102
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_616_190
.Lcall_pl_leaf_α_616_101:
                        mov              rcx, qword ptr [rdi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_616_190
                        cmp              rcx, rdi;                            je    .Lcall_pl_leaf_α_616_103
                        mov              rdi, rcx;                            jmp   .Lcall_pl_leaf_α_616_100
.Lcall_pl_leaf_α_616_102:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_616_103
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_616_103
                        cmp              al, 3;                               jne   .Lcall_pl_leaf_α_616_190
                        mov              rcx, qword ptr [rdi + 8]
                        test             rcx, rcx;                            js    .Lcall_pl_leaf_α_616_190
                                                                              jmp   .Lcall_pl_leaf_α_616_104
.Lcall_pl_leaf_α_616_103:
                                                                              jmp   .Lcall_pl_leaf_α_616_190
.Lcall_pl_leaf_α_616_104:
                        lea              rdi, [rsp + 32]
.Lcall_pl_leaf_α_616_110:
                        mov              eax, dword ptr [rdi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_616_111
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_616_112
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_616_190
.Lcall_pl_leaf_α_616_111:
                        mov              rcx, qword ptr [rdi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_616_190
                        cmp              rcx, rdi;                            je    .Lcall_pl_leaf_α_616_113
                        mov              rdi, rcx;                            jmp   .Lcall_pl_leaf_α_616_110
.Lcall_pl_leaf_α_616_112:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_616_113
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_616_113
                        cmp              al, 80;                              jne   .Lcall_pl_leaf_α_616_190
                                                                              jmp   .Lcall_pl_leaf_α_616_114
.Lcall_pl_leaf_α_616_113:
                                                                              jmp   .Lcall_pl_leaf_α_616_190
.Lcall_pl_leaf_α_616_114:
                                                                              jmp   .Lcall_pl_leaf_α_616_180
.Lcall_pl_leaf_α_616_180:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_pl_leaf_α_616_249
.Lcall_pl_leaf_α_616_190:
                        lea              rdi, [rsp + 0]
                        mov              esi, 4
                        call             qword ptr [rip + rt_pl_anum_cold@GOTPCREL]
.Lgcsite_$arg_swi$2F3_50:
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$arg_swi$2F3_51:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lcall_pl_leaf_α_616_249
.Lcall_pl_leaf_α_616_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_616_249:
                        add              rsp, 64
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_616_999
                        add              rsp, 16
                        add              rsp, 64;                             jmp   $arg_swi$2F3_ω
.Lcall_pl_leaf_α_616_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n492_call_direct_α
n491_call_pl_leaf_β:    add              rsp, 16
                        add              rsp, 64;                             jmp   $arg_swi$2F3_ω
                        .size            n491_call_pl_leaf_bx, .-n491_call_pl_leaf_bx
                        .type            n492_call_direct_bx, @function
n492_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n492_call_direct_α:     sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 40], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 3
                        call             qword ptr [rip + rt_pl_dop_arg@GOTPCREL]
.Lgcsite_$arg_swi$2F3_52:
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$arg_swi$2F3_53:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_direct_α_617_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   $arg_swi$2F3_ω
.Lcall_direct_α_617_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 96;                             jmp   $arg_swi$2F3_γ
n492_call_direct_β:     add              rsp, 16
                        add              rsp, 80;                             jmp   $arg_swi$2F3_ω
                        .size            n492_call_direct_bx, .-n492_call_direct_bx
                        .type            n493_unmark_bx, @function
n493_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n493_unmark_α:                                                                jmp   n494_var_ref_α
                        .size            n493_unmark_bx, .-n493_unmark_bx
                        .type            n494_var_ref_bx, @function
n494_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n494_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 192]
                        mov              qword ptr [rsp + 8], rax;            jmp   n495_lit_integer_α
                        .size            n494_var_ref_bx, .-n494_var_ref_bx
                        .type            n495_lit_integer_bx, @function
n495_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n495_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_622_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n496_var_α
.Llit_integer_α_622_0:  .quad            1
                        .size            n495_lit_integer_bx, .-n495_lit_integer_bx
                        .type            n496_var_bx, @function
n496_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n496_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [rsp + 1312]
                        mov              rdx, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n497_call_direct_α
                        .size            n496_var_bx, .-n496_var_bx
                        .type            n497_call_direct_bx, @function
n497_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n497_call_direct_α:     sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 40], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 3
                        call             qword ptr [rip + rt_pl_dop_between_guard@GOTPCREL]
.Lgcsite_$arg_swi$2F3_54:
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$arg_swi$2F3_55:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_direct_α_625_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n459_unmark_α
.Lcall_direct_α_625_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n498_var_α
n497_call_direct_β:     add              rsp, 16
                        add              rsp, 48;                             jmp   n459_unmark_α
                        .size            n497_call_direct_bx, .-n497_call_direct_bx
                        .type            n498_var_bx, @function
n498_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n498_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [rsp + 1344]
                        mov              rdx, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n499_call_pl_leaf_α
                        .size            n498_var_bx, .-n498_var_bx
                        .type            n499_call_pl_leaf_bx, @function
n499_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n499_call_pl_leaf_α:    sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
.Lcall_pl_leaf_α_628_190:
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        .section         .rodata
.Lcall_pl_leaf_plop629: .string          "pos"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdx, [rip + .Lcall_pl_leaf_plop629]
                        call             qword ptr [rip + rt_pl_ax_cold@GOTPCREL]
.Lgcsite_$arg_swi$2F3_56:
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_$arg_swi$2F3_57:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lcall_pl_leaf_α_628_249
.Lcall_pl_leaf_α_628_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_628_249:
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_628_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n459_unmark_α
.Lcall_pl_leaf_α_628_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n500_to_α
n499_call_pl_leaf_β:    add              rsp, 16
                        add              rsp, 80;                             jmp   n459_unmark_α
                        .size            n499_call_pl_leaf_bx, .-n499_call_pl_leaf_bx
                        .type            n500_to_bx, @function
n500_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n500_to_α:              sub              rsp, 32
                        mov              rdi, qword ptr [rsp + 96]            # lit_integer
                        mov              rsi, qword ptr [rsp + 104]
                        call             to_int@PLT
.Lgcsite_$arg_swi$2F3_61:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 960], rax
                        push             rax                                  # gc_poll bb_to.cpp:93
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$arg_swi$2F3_60:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        call             to_int@PLT
.Lgcsite_$arg_swi$2F3_59:
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 968], rax
.Lto_α_631_0:           mov              rax, qword ptr [rsp + 960]
                        mov              rcx, qword ptr [rsp + 968]
                        cmp              rax, rcx;                            jle   .Lto_α_631_998
                        add              rsp, 32
                        add              rsp, 96;                             jmp   n459_unmark_α
.Lto_α_631_998:         mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax
                        push             rax                                  # gc_poll bb_to.cpp:113
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$arg_swi$2F3_58:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n501_call_pl_leaf_α
n500_to_β:              inc              qword ptr [rsp + 960];               jno   .Lto_β_631_999
                        add              rsp, 32
                        add              rsp, 96;                             jmp   n459_unmark_α
.Lto_β_631_999:                                                               jmp   .Lto_α_631_0
                        .size            n500_to_bx, .-n500_to_bx
                        .type            n501_call_pl_leaf_bx, @function
n501_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n501_call_pl_leaf_α:    sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        lea              rdi, [rsp + 16]
.Lcall_pl_leaf_α_632_100:
                        mov              eax, dword ptr [rdi + 0]
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_632_101
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_632_102
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_632_190
.Lcall_pl_leaf_α_632_101:
                        mov              rcx, qword ptr [rdi + 8]
                        test             rcx, rcx;                            jz    .Lcall_pl_leaf_α_632_190
                        cmp              rcx, rdi;                            je    .Lcall_pl_leaf_α_632_190
                        mov              rdi, rcx;                            jmp   .Lcall_pl_leaf_α_632_100
.Lcall_pl_leaf_α_632_102:
                        cmp              al, 3;                               je    .Lcall_pl_leaf_α_632_120
                        cmp              al, 5;                               je    .Lcall_pl_leaf_α_632_120
                        cmp              al, 120;                             je    .Lcall_pl_leaf_α_632_120
                                                                              jmp   .Lcall_pl_leaf_α_632_190
.Lcall_pl_leaf_α_632_120:
                        mov              rax, qword ptr [rdi + 0]
                        mov              rdx, qword ptr [rdi + 8]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rtx_pl_unify@GOTPCREL]
.Lgcsite_$arg_swi$2F3_64:
                        test             eax, eax;                            jz    .Lcall_pl_leaf_α_632_248
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lcall_pl_leaf_α_632_249
.Lcall_pl_leaf_α_632_190:
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        call             qword ptr [rip + rt_pl_is_cold@GOTPCREL]
.Lgcsite_$arg_swi$2F3_63:
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        push             rax                                  # gc_poll bb_call_pl_leaf.cpp:191
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_$arg_swi$2F3_62:
                        mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    .Lcall_pl_leaf_α_632_248
                        lea              rdi, [rsp + 16];                     jmp   .Lcall_pl_leaf_α_632_120
.Lcall_pl_leaf_α_632_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_632_249:
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_632_999
                        add              rsp, 16;                             jmp   n500_to_β
.Lcall_pl_leaf_α_632_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n502_gate_arm_α
n501_call_pl_leaf_β:    add              rsp, 16;                             jmp   n500_to_β
                        .size            n501_call_pl_leaf_bx, .-n501_call_pl_leaf_bx
                        .type            n502_gate_arm_bx, @function
n502_gate_arm_bx:
#-----------------------------------------------------------------------------------------------------------------------
n502_gate_arm_α:        mov              dword ptr [rsp + 800], 1
                        add              rsp, 288;                            jmp   n461_gate_arm_α
                        .size            n502_gate_arm_bx, .-n502_gate_arm_bx
#-----------------------------------------------------------------------------------------------------------------------
$arg_swi$2F3_β:
                                                                              jmp   $arg_swi$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
$arg_swi$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1176]
                        lea              rsp, [rbp + 1200]
                        mov              rbp, qword ptr [rbp + 1192];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$arg_swi$2F3_ω:
                        mov              rcx, qword ptr [rsp + 1184]
                        lea              rsp, [rbp + 1200]
                        mov              rbp, qword ptr [rbp + 1192];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_$arg_swi$2F3:
                        .quad            5155307212122
                        .quad            34359738416
                        .quad            .Lgcmap_$arg_swi$2F3_s
                        .quad            1136
                        .quad            25
                        .quad            175921860444160
                        .quad            17596481011872
                        .quad            17592186044592
                        .quad            17596481011904
                        .quad            123145302311120
                        .quad            17596481012032
                        .quad            17592186044752
                        .quad            17596481012064
                        .quad            52776558133616
                        .quad            8800387989920
                        .quad            8808977924520
                        .quad            70368744178096
                        .quad            17596481012208
                        .quad            17592186044928
                        .quad            17596481012240
                        .quad            52776558133792
                        .quad            17596481012304
                        .quad            70368744178272
                        .quad            17596481012384
                        .quad            123145302311600
                        .quad            17596481012512
                        .quad            299067162755888
                        .quad            8808977925184
                        .quad            8800387990600
                        .quad            35184372089936
.Lgcmap_$arg_swi$2F3_s: .string          "$arg_swi/3"
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_$arg_swi$2F3_4:
                        .quad            65
                        .quad            .Lgcmap_$arg_swi$2F3
                        .quad            9223794253614810264
                        .quad            .Lgccode_$arg_swi$2F3_4
                        .quad            .Lgcsite_$arg_swi$2F3_0-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_1-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_2-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_3-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_4-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_5-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_6-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_7-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_8-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_9-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_10-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_11-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_24-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_23-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_26-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_25-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_28-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_27-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_22-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_21-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_20-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_19-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_18-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_17-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_16-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_15-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_14-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_13-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_12-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_29-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_30-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_34-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_33-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_32-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_31-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_37-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_36-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_35-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_38-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_39-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_40-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_41-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_42-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_43-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_44-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_45-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_46-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_47-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_48-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_49-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_50-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_51-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_52-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_53-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_54-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_55-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_56-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_57-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_61-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_60-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_59-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_58-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_64-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_63-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .quad            .Lgcsite_$arg_swi$2F3_62-.Lgccode_$arg_swi$2F3_4
                        .quad            65537
                        .popsection
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_rdet$2F1_5:
FN__rdet$2F1:
                        sub              rsp, 2704
                        mov              qword ptr [rsp + 2680], rcx
                        mov              qword ptr [rsp + 2688], rdx
                        mov              qword ptr [rsp + 2696], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2480
                        mov              edx, 2672
                        call             rt_jmp_frame_lexprep2@PLT
.Lgcsite_rdet$2F1_0:    mov              rdi, rsp                             # base_p
                        mov              esi, 1                               # nparams
                        mov              edx, 0                               # nlocals
                        call             rt_icn_zframe_args_install@PLT
.Lgcsite_rdet$2F1_1:    mov              eax, 0                               # GCANCHOR .Lgcmap_rdet$2F1 qword ptr [rsp + 2648]
rdet$2F1_α_body:
                        .type            n635_lit_integer_bx, @function
n635_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n635_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_815_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n636_lit_integer_α
.Llit_integer_α_815_0:  .quad            3
                        .size            n635_lit_integer_bx, .-n635_lit_integer_bx
                        .type            n636_lit_integer_bx, @function
n636_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n636_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_816_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n637_call_pl_leaf_α
.Llit_integer_α_816_0:  .quad            0
                        .size            n636_lit_integer_bx, .-n636_lit_integer_bx
                        .type            n637_call_pl_leaf_bx, @function
n637_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n637_call_pl_leaf_α:    sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        mov              edi, 214
                        mov              esi, 16
                        call             qword ptr [rip + rt_gcheap_alloc@GOTPCREL]
.Lgcsite_rdet$2F1_4:    movabs           rcx, 12884901968
                        mov              qword ptr [rsp + 0], rcx             # the result cell is parked in argv[0] (the functor literal's cell, dead once its id is baked above) across the poll and the kid loop: the box's result slot may be one of the kids' argv cells
                        mov              qword ptr [rsp + 8], rax
                        push             rax                                  # gc_poll bb_call_pl_leaf.cpp:315
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_rdet$2F1_3:    mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              r10, qword ptr [rsp + 8]
                        lea              r9, [rsp + 16]
                        mov              r11, 1
.Lcall_pl_leaf_α_817_100:
                        test             r11, r11;                            jz    .Lcall_pl_leaf_α_817_102
                        mov              rdi, r9
.Lcall_pl_leaf_α_817_103:
                        mov              eax, dword ptr [rdi + 0]             # deref: follow a name (slen 1: the cell; slen 2: the VCELL's cell) or a bound PLVAR to the cell that holds the value; eax = its tag word
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_817_104
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_817_106
                        mov              rsi, qword ptr [rdi + 8]
                        test             rsi, rsi;                            jz    .Lcall_pl_leaf_α_817_106
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_817_105
                        cmp              rsi, rdi;                            je    .Lcall_pl_leaf_α_817_106
                        mov              rdi, rsi;                            jmp   .Lcall_pl_leaf_α_817_103
.Lcall_pl_leaf_α_817_105:
                        cmp              ecx, 2;                              jne   .Lcall_pl_leaf_α_817_106
                        mov              rsi, qword ptr [rsi + 0]
                        test             rsi, rsi;                            jz    .Lcall_pl_leaf_α_817_106
                        mov              rdi, rsi;                            jmp   .Lcall_pl_leaf_α_817_103
.Lcall_pl_leaf_α_817_104:
                        mov              rsi, qword ptr [rdi + 8]
                        test             rsi, rsi;                            jz    .Lcall_pl_leaf_α_817_106
                        cmp              rsi, rdi;                            je    .Lcall_pl_leaf_α_817_106
                        mov              rdi, rsi;                            jmp   .Lcall_pl_leaf_α_817_103
.Lcall_pl_leaf_α_817_106:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_817_107
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_817_107
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_817_107
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_817_108
                        mov              rsi, qword ptr [rdi + 8]
                        cmp              rsi, rdi;                            je    .Lcall_pl_leaf_α_817_107
.Lcall_pl_leaf_α_817_108:
                        mov              rax, qword ptr [rdi + 0]
                        mov              rdx, qword ptr [rdi + 8]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx;            jmp   .Lcall_pl_leaf_α_817_101
.Lcall_pl_leaf_α_817_107:
                        cmp              rdi, rsp;                            ja    .Lcall_pl_leaf_α_817_113
                        mov              qword ptr [r10 + 0], 72
                        mov              qword ptr [r10 + 8], rdi;            jmp   .Lcall_pl_leaf_α_817_101
.Lcall_pl_leaf_α_817_113:
                        mov              qword ptr [r10 + 0], 72
                        mov              qword ptr [r10 + 8], r10
                        test             r13, r13;                            jz    .Lcall_pl_leaf_α_817_109
                        cmp              rdi, rsp;                            ja    .Lcall_pl_leaf_α_817_170
                        mov              rax, qword ptr [r13 + 0]             # a heap cell at or above B's HB (the pad of the sentinel just under B's mark) and below the frontier was made after B: not trailed
                        mov              rdx, qword ptr [rax + -32]
                        test             rdx, rdx;                            jne   .Lcall_pl_leaf_α_817_110
                        mov              rdx, qword ptr [rax + -24]
                        cmp              rdi, rdx;                            jb    .Lcall_pl_leaf_α_817_110
                        mov              rax, qword ptr [rip + g_hp_fr@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rdi, rax;                            jb    .Lcall_pl_leaf_α_817_109
                                                                              jmp   .Lcall_pl_leaf_α_817_110
.Lcall_pl_leaf_α_817_170:
                        mov              rax, qword ptr [r13 + 32]
                        shr              rax, 8
                        cmp              rdi, rax;                            jb    .Lcall_pl_leaf_α_817_109
.Lcall_pl_leaf_α_817_110:
                        mov              rax, r12                             # the push: {cell, 0, old} on the r12 trail, the arena's top word synced for the collector
                        and              rax, 536870911
                        cmp              rax, 536870880;                      jae   .Lcall_pl_leaf_α_817_111
                        mov              rax, qword ptr [rdi + 0]
                        mov              rdx, qword ptr [rdi + 8]
                        mov              qword ptr [r12 + 0], rdi
                        mov              qword ptr [r12 + 8], 0
                        mov              qword ptr [r12 + 16], rax
                        mov              qword ptr [r12 + 24], rdx
                        add              r12, 32
                        mov              rax, r12
                        and              rax, -536870912
                        mov              qword ptr [rax + 0], r12
.Lcall_pl_leaf_α_817_109:
                        mov              qword ptr [rdi + 0], 72
                        mov              qword ptr [rdi + 8], r10
.Lcall_pl_leaf_α_817_101:
                        add              r9, 16
                        add              r10, 16
                        sub              r11, 1;                              jmp   .Lcall_pl_leaf_α_817_100
.Lcall_pl_leaf_α_817_102:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8];            jmp   .Lcall_pl_leaf_α_817_249
.Lcall_pl_leaf_α_817_111:
                        mov              rdi, r12
                        call             rt_pl_tr_refuse@PLT
.Lgcsite_rdet$2F1_2:    mov              r9,  qword ptr [rip + rtccb+48]
.Lcall_pl_leaf_α_817_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_817_249:
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_817_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   rdet$2F1_ω
.Lcall_pl_leaf_α_817_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n638_lit_integer_α
n637_call_pl_leaf_β:    add              rsp, 16
                        add              rsp, 32;                             jmp   rdet$2F1_ω
                        .size            n637_call_pl_leaf_bx, .-n637_call_pl_leaf_bx
                        .type            n638_lit_integer_bx, @function
n638_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n638_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_818_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n639_var_ref_α
.Llit_integer_α_818_0:  .quad            3
                        .size            n638_lit_integer_bx, .-n638_lit_integer_bx
                        .type            n639_var_ref_bx, @function
n639_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n639_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 96]
                        mov              qword ptr [rsp + 8], rax;            jmp   n640_call_pl_leaf_α
                        .size            n639_var_ref_bx, .-n639_var_ref_bx
                        .type            n640_call_pl_leaf_bx, @function
n640_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n640_call_pl_leaf_α:    sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        mov              edi, 214
                        mov              esi, 16
                        call             qword ptr [rip + rt_gcheap_alloc@GOTPCREL]
.Lgcsite_rdet$2F1_7:    movabs           rcx, 12884901968
                        mov              qword ptr [rsp + 0], rcx             # the result cell is parked in argv[0] (the functor literal's cell, dead once its id is baked above) across the poll and the kid loop: the box's result slot may be one of the kids' argv cells
                        mov              qword ptr [rsp + 8], rax
                        push             rax                                  # gc_poll bb_call_pl_leaf.cpp:315
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_rdet$2F1_6:    mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              r10, qword ptr [rsp + 8]
                        lea              r9, [rsp + 16]
                        mov              r11, 1
.Lcall_pl_leaf_α_821_100:
                        test             r11, r11;                            jz    .Lcall_pl_leaf_α_821_102
                        mov              rdi, r9
.Lcall_pl_leaf_α_821_103:
                        mov              eax, dword ptr [rdi + 0]             # deref: follow a name (slen 1: the cell; slen 2: the VCELL's cell) or a bound PLVAR to the cell that holds the value; eax = its tag word
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_821_104
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_821_106
                        mov              rsi, qword ptr [rdi + 8]
                        test             rsi, rsi;                            jz    .Lcall_pl_leaf_α_821_106
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_821_105
                        cmp              rsi, rdi;                            je    .Lcall_pl_leaf_α_821_106
                        mov              rdi, rsi;                            jmp   .Lcall_pl_leaf_α_821_103
.Lcall_pl_leaf_α_821_105:
                        cmp              ecx, 2;                              jne   .Lcall_pl_leaf_α_821_106
                        mov              rsi, qword ptr [rsi + 0]
                        test             rsi, rsi;                            jz    .Lcall_pl_leaf_α_821_106
                        mov              rdi, rsi;                            jmp   .Lcall_pl_leaf_α_821_103
.Lcall_pl_leaf_α_821_104:
                        mov              rsi, qword ptr [rdi + 8]
                        test             rsi, rsi;                            jz    .Lcall_pl_leaf_α_821_106
                        cmp              rsi, rdi;                            je    .Lcall_pl_leaf_α_821_106
                        mov              rdi, rsi;                            jmp   .Lcall_pl_leaf_α_821_103
.Lcall_pl_leaf_α_821_106:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_821_107
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_821_107
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_821_107
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_821_108
                        mov              rsi, qword ptr [rdi + 8]
                        cmp              rsi, rdi;                            je    .Lcall_pl_leaf_α_821_107
.Lcall_pl_leaf_α_821_108:
                        mov              rax, qword ptr [rdi + 0]
                        mov              rdx, qword ptr [rdi + 8]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx;            jmp   .Lcall_pl_leaf_α_821_101
.Lcall_pl_leaf_α_821_107:
                        cmp              rdi, rsp;                            ja    .Lcall_pl_leaf_α_821_113
                        mov              qword ptr [r10 + 0], 72
                        mov              qword ptr [r10 + 8], rdi;            jmp   .Lcall_pl_leaf_α_821_101
.Lcall_pl_leaf_α_821_113:
                        mov              qword ptr [r10 + 0], 72
                        mov              qword ptr [r10 + 8], r10
                        test             r13, r13;                            jz    .Lcall_pl_leaf_α_821_109
                        cmp              rdi, rsp;                            ja    .Lcall_pl_leaf_α_821_170
                        mov              rax, qword ptr [r13 + 0]             # a heap cell at or above B's HB (the pad of the sentinel just under B's mark) and below the frontier was made after B: not trailed
                        mov              rdx, qword ptr [rax + -32]
                        test             rdx, rdx;                            jne   .Lcall_pl_leaf_α_821_110
                        mov              rdx, qword ptr [rax + -24]
                        cmp              rdi, rdx;                            jb    .Lcall_pl_leaf_α_821_110
                        mov              rax, qword ptr [rip + g_hp_fr@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rdi, rax;                            jb    .Lcall_pl_leaf_α_821_109
                                                                              jmp   .Lcall_pl_leaf_α_821_110
.Lcall_pl_leaf_α_821_170:
                        mov              rax, qword ptr [r13 + 32]
                        shr              rax, 8
                        cmp              rdi, rax;                            jb    .Lcall_pl_leaf_α_821_109
.Lcall_pl_leaf_α_821_110:
                        mov              rax, r12                             # the push: {cell, 0, old} on the r12 trail, the arena's top word synced for the collector
                        and              rax, 536870911
                        cmp              rax, 536870880;                      jae   .Lcall_pl_leaf_α_821_111
                        mov              rax, qword ptr [rdi + 0]
                        mov              rdx, qword ptr [rdi + 8]
                        mov              qword ptr [r12 + 0], rdi
                        mov              qword ptr [r12 + 8], 0
                        mov              qword ptr [r12 + 16], rax
                        mov              qword ptr [r12 + 24], rdx
                        add              r12, 32
                        mov              rax, r12
                        and              rax, -536870912
                        mov              qword ptr [rax + 0], r12
.Lcall_pl_leaf_α_821_109:
                        mov              qword ptr [rdi + 0], 72
                        mov              qword ptr [rdi + 8], r10
.Lcall_pl_leaf_α_821_101:
                        add              r9, 16
                        add              r10, 16
                        sub              r11, 1;                              jmp   .Lcall_pl_leaf_α_821_100
.Lcall_pl_leaf_α_821_102:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8];            jmp   .Lcall_pl_leaf_α_821_249
.Lcall_pl_leaf_α_821_111:
                        mov              rdi, r12
                        call             rt_pl_tr_refuse@PLT
.Lgcsite_rdet$2F1_5:    mov              r9,  qword ptr [rip + rtccb+48]
.Lcall_pl_leaf_α_821_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_821_249:
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_821_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   rdet$2F1_ω
.Lcall_pl_leaf_α_821_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n641_call_proc_staged_α
n640_call_pl_leaf_β:    add              rsp, 16
                        add              rsp, 80;                             jmp   rdet$2F1_ω
                        .size            n640_call_pl_leaf_bx, .-n640_call_pl_leaf_bx
                        .type            n641_call_proc_staged_bx, @function
n641_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n641_call_proc_staged_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 256], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_823_200
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              r8, qword ptr [rip + g_call_args@GOTPCREL]
                        mov              r8, qword ptr [r8 + 0]
                        test             r8, r8;                              je    .Lcall_proc_staged_α_823_200
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx
                        xor              r8d, r8d;                            jmp   .Lcall_proc_staged_α_823_201
.Lcall_proc_staged_α_823_200:
                        mov              edi, 0                               # idx
                        mov              rsi, qword ptr [rsp + 288]           # v
                        mov              rdx, qword ptr [rsp + 296]           # v
                        call             rt_arg_stage@PLT
.Lgcsite_rdet$2F1_20:   mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:131
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_rdet$2F1_19:   mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lcall_proc_staged_α_823_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_823_202
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              r8, qword ptr [rip + g_call_args@GOTPCREL]
                        mov              r8, qword ptr [r8 + 0]
                        test             r8, r8;                              je    .Lcall_proc_staged_α_823_202
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx
                        xor              r8d, r8d;                            jmp   .Lcall_proc_staged_α_823_203
.Lcall_proc_staged_α_823_202:
                        mov              edi, 1                               # idx
                        mov              rsi, qword ptr [rsp + 336]           # v
                        mov              rdx, qword ptr [rsp + 344]           # v
                        call             rt_arg_stage@PLT
.Lgcsite_rdet$2F1_22:   mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:131
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_rdet$2F1_21:   mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lcall_proc_staged_α_823_203:
                        mov              edi, 62                              # idx
                        mov              esi, 2                               # nargs
                        call             rt_proc_call_open_det@PLT
.Lgcsite_rdet$2F1_18:   mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:1173
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_rdet$2F1_17:   mov              r9,  qword ptr [rip + rtccb+48]
1:                      sub              rsp, 16                              # CFO-36 (cfo 2026-09-09): the landing words (N-2 word, landing cell) are pushed AFTER the prologue call, not before it -- in the generator regime they are an ODD count, so rt_proc_call_open_det ran at rsp 8-mod-16 and everything it reached did too (rt_trace_event_args -> image -> vsnprintf movaps: SIGSEGV on every traced generator call with an argument; Arizona coexpr and errors, rungs rung03). The entry layout the callee sees is byte-identical; only the prologue call moved above the words,
                        test             rax, rax;                            je    .Lcall_proc_staged_α_823_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_823_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_823_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_823_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_823_3:
                        mov              edx, 1
                        mov              qword ptr [rsp + 264], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 256]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_823_5
                        mov              qword ptr [rsp + 256], 1
                        call             rt_proc_call_epilogue_γ@PLT
.Lgcsite_rdet$2F1_16:   mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lcall_proc_staged_α_823_2
.Lcall_proc_staged_α_823_5:
                        call             qword ptr [rip + rt_gen_spine_pass_γ@GOTPCREL]
.Lgcsite_rdet$2F1_15:                                                         jmp   .Lcall_proc_staged_α_823_2
.Lcall_proc_staged_α_823_4:
                        mov              edi, 1
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 256]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_823_6
                        mov              qword ptr [rsp + 256], 1
                        call             rt_proc_call_epilogue_ω@PLT
.Lgcsite_rdet$2F1_14:   mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lcall_proc_staged_α_823_2
.Lcall_proc_staged_α_823_6:
                        call             qword ptr [rip + rt_gen_spine_pass_ω@GOTPCREL]
.Lgcsite_rdet$2F1_13:                                                         jmp   .Lcall_proc_staged_α_823_2
.Lcall_proc_staged_α_823_1:
                        call             rt_ab_undef_fn_fail@PLT
.Lgcsite_rdet$2F1_12:   mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:335
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_rdet$2F1_11:   mov              r9,  qword ptr [rip + rtccb+48]
1:                      add              rsp, 16
                        add              rsp, 96;                             jmp   rdet$2F1_ω
.Lcall_proc_staged_α_823_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed): the fix-up is emitted here, rt_nret_fix_tiny is gone from the graph
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_823_29
                        cmp              eax, 40;                             je    .Lcall_proc_staged_α_823_25
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_nret_name@PLT
.Lgcsite_rdet$2F1_10:   mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        cmp              eax, 40;                             je    .Lcall_proc_staged_α_823_25
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0;              jmp   .Lcall_proc_staged_α_823_23
.Lcall_proc_staged_α_823_25:
                        mov              rcx, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              jne   .Lcall_proc_staged_α_823_24
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0
                        cmp              eax, 40;                             jne   .Lcall_proc_staged_α_823_23
                        mov              rdi, rax                             # d
                        mov              rsi, rdx                             # d
                        call             rt_deref@PLT
.Lgcsite_rdet$2F1_9:    mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248];          jmp   .Lcall_proc_staged_α_823_23
.Lcall_proc_staged_α_823_24:
.Lcall_proc_staged_α_823_23:
                        mov              rcx, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0
.Lcall_proc_staged_α_823_29:
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             jne   .Lcall_proc_staged_α_823_999
                        add              rsp, 16
                        add              rsp, 96;                             jmp   rdet$2F1_ω
.Lcall_proc_staged_α_823_999:
                                                                              jmp   n642_unify_const_α
n641_call_proc_staged_β:
                        call             qword ptr [rip + rt_gen_spine_resume_enter@GOTPCREL]
.Lgcsite_rdet$2F1_8:    mov              rax, qword ptr [rsp + 264];          jmp   qword ptr [rax]
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_proc_staged_β_823_0: .quad .Lcall_proc_staged_β_823_0_s; .popsection
.Lcall_proc_staged_β_823_0_s:
                        .string          "subsumes_term/2"
                        .size            n641_call_proc_staged_bx, .-n641_call_proc_staged_bx
                        .type            n642_unify_const_bx, @function
n642_unify_const_bx:
#-----------------------------------------------------------------------------------------------------------------------
n642_unify_const_α:     lea              rdi, [rsp + 128]
.Lunify_const_α_825_10: mov              eax, dword ptr [rdi + 0]             # deref: follow a name (slen 1: the cell; slen 2: the VCELL's cell) or a bound PLVAR to the cell that holds the value; eax = its tag word
                        cmp              al, 72;                              je    .Lunify_const_α_825_11
                        cmp              al, 40;                              jne   .Lunify_const_α_825_13
                        mov              rsi, qword ptr [rdi + 8]
                        test             rsi, rsi;                            jz    .Lunify_const_α_825_13
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lunify_const_α_825_12
                        cmp              rsi, rdi;                            je    .Lunify_const_α_825_13
                        mov              rdi, rsi;                            jmp   .Lunify_const_α_825_10
.Lunify_const_α_825_12: cmp              ecx, 2;                              jne   .Lunify_const_α_825_13
                        mov              rsi, qword ptr [rsi + 0]
                        test             rsi, rsi;                            jz    .Lunify_const_α_825_13
                        mov              rdi, rsi;                            jmp   .Lunify_const_α_825_10
.Lunify_const_α_825_11: mov              rsi, qword ptr [rdi + 8]
                        test             rsi, rsi;                            jz    .Lunify_const_α_825_13
                        cmp              rsi, rdi;                            je    .Lunify_const_α_825_13
                        mov              rdi, rsi;                            jmp   .Lunify_const_α_825_10
.Lunify_const_α_825_13: cmp              al, 3;                               jne   .Lunify_const_α_825_20
                        mov              ecx, dword ptr [rdi + 4]
                        test             ecx, ecx;                            jne   .Lunify_const_α_825_40
                        movabs           rax, 0
                        mov              rsi, qword ptr [rdi + 8]
                        cmp              rsi, rax;                            jne   n641_call_proc_staged_β
                                                                              jmp   n643_cut_α
.Lunify_const_α_825_20: cmp              al, 0;                               je    .Lunify_const_α_825_30
                        cmp              al, 104;                             je    .Lunify_const_α_825_30
                        cmp              al, 72;                              je    .Lunify_const_α_825_30
                        cmp              al, 40;                              jne   .Lunify_const_α_825_25
                        mov              rsi, qword ptr [rdi + 8]
                        cmp              rsi, rdi;                            je    .Lunify_const_α_825_30
                                                                              jmp   n641_call_proc_staged_β
.Lunify_const_α_825_25: cmp              al, 80;                              je    n641_call_proc_staged_β
                        cmp              al, 176;                             je    n641_call_proc_staged_β
                        cmp              al, 2;                               je    n641_call_proc_staged_β
                                                                              jmp   .Lunify_const_α_825_40
.Lunify_const_α_825_30: test             r13, r13;                            jz    .Lunify_const_α_825_31
                        cmp              rdi, rsp;                            ja    .Lunify_const_α_825_90
                        mov              rax, qword ptr [r13 + 0]             # a heap cell at or above B's HB (the pad of the sentinel just under B's mark) and below the frontier was made after B: not trailed
                        mov              rdx, qword ptr [rax + -32]
                        test             rdx, rdx;                            jne   .Lunify_const_α_825_32
                        mov              rdx, qword ptr [rax + -24]
                        cmp              rdi, rdx;                            jb    .Lunify_const_α_825_32
                        mov              rax, qword ptr [rip + g_hp_fr@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rdi, rax;                            jb    .Lunify_const_α_825_31
                                                                              jmp   .Lunify_const_α_825_32
.Lunify_const_α_825_90: mov              rax, qword ptr [r13 + 32]
                        shr              rax, 8
                        cmp              rdi, rax;                            jb    .Lunify_const_α_825_31
.Lunify_const_α_825_32: mov              rax, r12                             # the push: {cell, 0, old} on the r12 trail, the arena's top word synced for the collector
                        and              rax, 536870911
                        cmp              rax, 536870880;                      jae   .Lunify_const_α_825_39
                        mov              rax, qword ptr [rdi + 0]
                        mov              rdx, qword ptr [rdi + 8]
                        mov              qword ptr [r12 + 0], rdi
                        mov              qword ptr [r12 + 8], 0
                        mov              qword ptr [r12 + 16], rax
                        mov              qword ptr [r12 + 24], rdx
                        add              r12, 32
                        mov              rax, r12
                        and              rax, -536870912
                        mov              qword ptr [rax + 0], r12
.Lunify_const_α_825_31: mov              qword ptr [rdi + 0], 3
                        movabs           rax, 0
                        mov              qword ptr [rdi + 8], rax;            jmp   n643_cut_α
.Lunify_const_α_825_40: movabs           rsi, 0                               # cold: a legacy DT_S atom text, or a number of another kind, compared strictly by class by the value service; it never binds and never allocates, so no poll follows (ARCH-PROLOG-C-OUT-OF-THE-BOX 10)
                        mov              edx, 0                               # atom
                        call             rt_pl_unify_const_cold@PLT
.Lgcsite_rdet$2F1_24:   mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    n641_call_proc_staged_β
                                                                              jmp   n643_cut_α
.Lunify_const_α_825_39: mov              rdi, r12
                        call             rt_pl_tr_refuse@PLT
.Lgcsite_rdet$2F1_23:   mov              r9,  qword ptr [rip + rtccb+48]
                        .size            n642_unify_const_bx, .-n642_unify_const_bx
                        .type            n643_cut_bx, @function
n643_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n643_cut_α:             add              rsp, 112;                            jmp   rdet$2F1_γ
                        .size            n643_cut_bx, .-n643_cut_bx
                        .type            n644_lit_integer_bx, @function
n644_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n644_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_828_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n645_var_ref_α
.Llit_integer_α_828_0:  .quad            3
                        .size            n644_lit_integer_bx, .-n644_lit_integer_bx
                        .type            n645_var_ref_bx, @function
n645_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n645_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 48]
                        mov              qword ptr [rsp + 8], rax;            jmp   n646_call_pl_leaf_α
                        .size            n645_var_ref_bx, .-n645_var_ref_bx
                        .type            n646_call_pl_leaf_bx, @function
n646_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n646_call_pl_leaf_α:    sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        mov              edi, 214
                        mov              esi, 16
                        call             qword ptr [rip + rt_gcheap_alloc@GOTPCREL]
.Lgcsite_rdet$2F1_27:   movabs           rcx, 12884901968
                        mov              qword ptr [rsp + 0], rcx             # the result cell is parked in argv[0] (the functor literal's cell, dead once its id is baked above) across the poll and the kid loop: the box's result slot may be one of the kids' argv cells
                        mov              qword ptr [rsp + 8], rax
                        push             rax                                  # gc_poll bb_call_pl_leaf.cpp:315
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_rdet$2F1_26:   mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              r10, qword ptr [rsp + 8]
                        lea              r9, [rsp + 16]
                        mov              r11, 1
.Lcall_pl_leaf_α_831_100:
                        test             r11, r11;                            jz    .Lcall_pl_leaf_α_831_102
                        mov              rdi, r9
.Lcall_pl_leaf_α_831_103:
                        mov              eax, dword ptr [rdi + 0]             # deref: follow a name (slen 1: the cell; slen 2: the VCELL's cell) or a bound PLVAR to the cell that holds the value; eax = its tag word
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_831_104
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_831_106
                        mov              rsi, qword ptr [rdi + 8]
                        test             rsi, rsi;                            jz    .Lcall_pl_leaf_α_831_106
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_831_105
                        cmp              rsi, rdi;                            je    .Lcall_pl_leaf_α_831_106
                        mov              rdi, rsi;                            jmp   .Lcall_pl_leaf_α_831_103
.Lcall_pl_leaf_α_831_105:
                        cmp              ecx, 2;                              jne   .Lcall_pl_leaf_α_831_106
                        mov              rsi, qword ptr [rsi + 0]
                        test             rsi, rsi;                            jz    .Lcall_pl_leaf_α_831_106
                        mov              rdi, rsi;                            jmp   .Lcall_pl_leaf_α_831_103
.Lcall_pl_leaf_α_831_104:
                        mov              rsi, qword ptr [rdi + 8]
                        test             rsi, rsi;                            jz    .Lcall_pl_leaf_α_831_106
                        cmp              rsi, rdi;                            je    .Lcall_pl_leaf_α_831_106
                        mov              rdi, rsi;                            jmp   .Lcall_pl_leaf_α_831_103
.Lcall_pl_leaf_α_831_106:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_831_107
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_831_107
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_831_107
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_831_108
                        mov              rsi, qword ptr [rdi + 8]
                        cmp              rsi, rdi;                            je    .Lcall_pl_leaf_α_831_107
.Lcall_pl_leaf_α_831_108:
                        mov              rax, qword ptr [rdi + 0]
                        mov              rdx, qword ptr [rdi + 8]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx;            jmp   .Lcall_pl_leaf_α_831_101
.Lcall_pl_leaf_α_831_107:
                        cmp              rdi, rsp;                            ja    .Lcall_pl_leaf_α_831_113
                        mov              qword ptr [r10 + 0], 72
                        mov              qword ptr [r10 + 8], rdi;            jmp   .Lcall_pl_leaf_α_831_101
.Lcall_pl_leaf_α_831_113:
                        mov              qword ptr [r10 + 0], 72
                        mov              qword ptr [r10 + 8], r10
                        test             r13, r13;                            jz    .Lcall_pl_leaf_α_831_109
                        cmp              rdi, rsp;                            ja    .Lcall_pl_leaf_α_831_170
                        mov              rax, qword ptr [r13 + 0]             # a heap cell at or above B's HB (the pad of the sentinel just under B's mark) and below the frontier was made after B: not trailed
                        mov              rdx, qword ptr [rax + -32]
                        test             rdx, rdx;                            jne   .Lcall_pl_leaf_α_831_110
                        mov              rdx, qword ptr [rax + -24]
                        cmp              rdi, rdx;                            jb    .Lcall_pl_leaf_α_831_110
                        mov              rax, qword ptr [rip + g_hp_fr@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rdi, rax;                            jb    .Lcall_pl_leaf_α_831_109
                                                                              jmp   .Lcall_pl_leaf_α_831_110
.Lcall_pl_leaf_α_831_170:
                        mov              rax, qword ptr [r13 + 32]
                        shr              rax, 8
                        cmp              rdi, rax;                            jb    .Lcall_pl_leaf_α_831_109
.Lcall_pl_leaf_α_831_110:
                        mov              rax, r12                             # the push: {cell, 0, old} on the r12 trail, the arena's top word synced for the collector
                        and              rax, 536870911
                        cmp              rax, 536870880;                      jae   .Lcall_pl_leaf_α_831_111
                        mov              rax, qword ptr [rdi + 0]
                        mov              rdx, qword ptr [rdi + 8]
                        mov              qword ptr [r12 + 0], rdi
                        mov              qword ptr [r12 + 8], 0
                        mov              qword ptr [r12 + 16], rax
                        mov              qword ptr [r12 + 24], rdx
                        add              r12, 32
                        mov              rax, r12
                        and              rax, -536870912
                        mov              qword ptr [rax + 0], r12
.Lcall_pl_leaf_α_831_109:
                        mov              qword ptr [rdi + 0], 72
                        mov              qword ptr [rdi + 8], r10
.Lcall_pl_leaf_α_831_101:
                        add              r9, 16
                        add              r10, 16
                        sub              r11, 1;                              jmp   .Lcall_pl_leaf_α_831_100
.Lcall_pl_leaf_α_831_102:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8];            jmp   .Lcall_pl_leaf_α_831_249
.Lcall_pl_leaf_α_831_111:
                        mov              rdi, r12
                        call             rt_pl_tr_refuse@PLT
.Lgcsite_rdet$2F1_25:   mov              r9,  qword ptr [rip + rtccb+48]
.Lcall_pl_leaf_α_831_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_831_249:
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_831_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   rdet$2F1_ω
.Lcall_pl_leaf_α_831_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n647_lit_integer_α
n646_call_pl_leaf_β:    add              rsp, 16
                        add              rsp, 32;                             jmp   rdet$2F1_ω
                        .size            n646_call_pl_leaf_bx, .-n646_call_pl_leaf_bx
                        .type            n647_lit_integer_bx, @function
n647_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n647_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_832_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n648_var_ref_α
.Llit_integer_α_832_0:  .quad            3
                        .size            n647_lit_integer_bx, .-n647_lit_integer_bx
                        .type            n648_var_ref_bx, @function
n648_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n648_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 96]
                        mov              qword ptr [rsp + 8], rax;            jmp   n649_call_pl_leaf_α
                        .size            n648_var_ref_bx, .-n648_var_ref_bx
                        .type            n649_call_pl_leaf_bx, @function
n649_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n649_call_pl_leaf_α:    sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        mov              edi, 214
                        mov              esi, 16
                        call             qword ptr [rip + rt_gcheap_alloc@GOTPCREL]
.Lgcsite_rdet$2F1_30:   movabs           rcx, 12884901968
                        mov              qword ptr [rsp + 0], rcx             # the result cell is parked in argv[0] (the functor literal's cell, dead once its id is baked above) across the poll and the kid loop: the box's result slot may be one of the kids' argv cells
                        mov              qword ptr [rsp + 8], rax
                        push             rax                                  # gc_poll bb_call_pl_leaf.cpp:315
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_rdet$2F1_29:   mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              r10, qword ptr [rsp + 8]
                        lea              r9, [rsp + 16]
                        mov              r11, 1
.Lcall_pl_leaf_α_835_100:
                        test             r11, r11;                            jz    .Lcall_pl_leaf_α_835_102
                        mov              rdi, r9
.Lcall_pl_leaf_α_835_103:
                        mov              eax, dword ptr [rdi + 0]             # deref: follow a name (slen 1: the cell; slen 2: the VCELL's cell) or a bound PLVAR to the cell that holds the value; eax = its tag word
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_835_104
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_835_106
                        mov              rsi, qword ptr [rdi + 8]
                        test             rsi, rsi;                            jz    .Lcall_pl_leaf_α_835_106
                        mov              ecx, dword ptr [rdi + 4]
                        cmp              ecx, 1;                              jne   .Lcall_pl_leaf_α_835_105
                        cmp              rsi, rdi;                            je    .Lcall_pl_leaf_α_835_106
                        mov              rdi, rsi;                            jmp   .Lcall_pl_leaf_α_835_103
.Lcall_pl_leaf_α_835_105:
                        cmp              ecx, 2;                              jne   .Lcall_pl_leaf_α_835_106
                        mov              rsi, qword ptr [rsi + 0]
                        test             rsi, rsi;                            jz    .Lcall_pl_leaf_α_835_106
                        mov              rdi, rsi;                            jmp   .Lcall_pl_leaf_α_835_103
.Lcall_pl_leaf_α_835_104:
                        mov              rsi, qword ptr [rdi + 8]
                        test             rsi, rsi;                            jz    .Lcall_pl_leaf_α_835_106
                        cmp              rsi, rdi;                            je    .Lcall_pl_leaf_α_835_106
                        mov              rdi, rsi;                            jmp   .Lcall_pl_leaf_α_835_103
.Lcall_pl_leaf_α_835_106:
                        cmp              al, 0;                               je    .Lcall_pl_leaf_α_835_107
                        cmp              al, 104;                             je    .Lcall_pl_leaf_α_835_107
                        cmp              al, 72;                              je    .Lcall_pl_leaf_α_835_107
                        cmp              al, 40;                              jne   .Lcall_pl_leaf_α_835_108
                        mov              rsi, qword ptr [rdi + 8]
                        cmp              rsi, rdi;                            je    .Lcall_pl_leaf_α_835_107
.Lcall_pl_leaf_α_835_108:
                        mov              rax, qword ptr [rdi + 0]
                        mov              rdx, qword ptr [rdi + 8]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx;            jmp   .Lcall_pl_leaf_α_835_101
.Lcall_pl_leaf_α_835_107:
                        cmp              rdi, rsp;                            ja    .Lcall_pl_leaf_α_835_113
                        mov              qword ptr [r10 + 0], 72
                        mov              qword ptr [r10 + 8], rdi;            jmp   .Lcall_pl_leaf_α_835_101
.Lcall_pl_leaf_α_835_113:
                        mov              qword ptr [r10 + 0], 72
                        mov              qword ptr [r10 + 8], r10
                        test             r13, r13;                            jz    .Lcall_pl_leaf_α_835_109
                        cmp              rdi, rsp;                            ja    .Lcall_pl_leaf_α_835_170
                        mov              rax, qword ptr [r13 + 0]             # a heap cell at or above B's HB (the pad of the sentinel just under B's mark) and below the frontier was made after B: not trailed
                        mov              rdx, qword ptr [rax + -32]
                        test             rdx, rdx;                            jne   .Lcall_pl_leaf_α_835_110
                        mov              rdx, qword ptr [rax + -24]
                        cmp              rdi, rdx;                            jb    .Lcall_pl_leaf_α_835_110
                        mov              rax, qword ptr [rip + g_hp_fr@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rdi, rax;                            jb    .Lcall_pl_leaf_α_835_109
                                                                              jmp   .Lcall_pl_leaf_α_835_110
.Lcall_pl_leaf_α_835_170:
                        mov              rax, qword ptr [r13 + 32]
                        shr              rax, 8
                        cmp              rdi, rax;                            jb    .Lcall_pl_leaf_α_835_109
.Lcall_pl_leaf_α_835_110:
                        mov              rax, r12                             # the push: {cell, 0, old} on the r12 trail, the arena's top word synced for the collector
                        and              rax, 536870911
                        cmp              rax, 536870880;                      jae   .Lcall_pl_leaf_α_835_111
                        mov              rax, qword ptr [rdi + 0]
                        mov              rdx, qword ptr [rdi + 8]
                        mov              qword ptr [r12 + 0], rdi
                        mov              qword ptr [r12 + 8], 0
                        mov              qword ptr [r12 + 16], rax
                        mov              qword ptr [r12 + 24], rdx
                        add              r12, 32
                        mov              rax, r12
                        and              rax, -536870912
                        mov              qword ptr [rax + 0], r12
.Lcall_pl_leaf_α_835_109:
                        mov              qword ptr [rdi + 0], 72
                        mov              qword ptr [rdi + 8], r10
.Lcall_pl_leaf_α_835_101:
                        add              r9, 16
                        add              r10, 16
                        sub              r11, 1;                              jmp   .Lcall_pl_leaf_α_835_100
.Lcall_pl_leaf_α_835_102:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8];            jmp   .Lcall_pl_leaf_α_835_249
.Lcall_pl_leaf_α_835_111:
                        mov              rdi, r12
                        call             rt_pl_tr_refuse@PLT
.Lgcsite_rdet$2F1_28:   mov              r9,  qword ptr [rip + rtccb+48]
.Lcall_pl_leaf_α_835_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_835_249:
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_835_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   rdet$2F1_ω
.Lcall_pl_leaf_α_835_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n650_call_proc_staged_α
n649_call_pl_leaf_β:    add              rsp, 16
                        add              rsp, 80;                             jmp   rdet$2F1_ω
                        .size            n649_call_pl_leaf_bx, .-n649_call_pl_leaf_bx
                        .type            n650_call_proc_staged_bx, @function
n650_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n650_call_proc_staged_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 2480], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_837_200
                        mov              rax, qword ptr [rsp + 2512]
                        mov              rdx, qword ptr [rsp + 2520]
                        mov              r8, qword ptr [rip + g_call_args@GOTPCREL]
                        mov              r8, qword ptr [r8 + 0]
                        test             r8, r8;                              je    .Lcall_proc_staged_α_837_200
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx
                        xor              r8d, r8d;                            jmp   .Lcall_proc_staged_α_837_201
.Lcall_proc_staged_α_837_200:
                        mov              edi, 0                               # idx
                        mov              rsi, qword ptr [rsp + 2512]          # v
                        mov              rdx, qword ptr [rsp + 2520]          # v
                        call             rt_arg_stage@PLT
.Lgcsite_rdet$2F1_43:   mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:131
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_rdet$2F1_42:   mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lcall_proc_staged_α_837_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_837_202
                        mov              rax, qword ptr [rsp + 2560]
                        mov              rdx, qword ptr [rsp + 2568]
                        mov              r8, qword ptr [rip + g_call_args@GOTPCREL]
                        mov              r8, qword ptr [r8 + 0]
                        test             r8, r8;                              je    .Lcall_proc_staged_α_837_202
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx
                        xor              r8d, r8d;                            jmp   .Lcall_proc_staged_α_837_203
.Lcall_proc_staged_α_837_202:
                        mov              edi, 1                               # idx
                        mov              rsi, qword ptr [rsp + 2560]          # v
                        mov              rdx, qword ptr [rsp + 2568]          # v
                        call             rt_arg_stage@PLT
.Lgcsite_rdet$2F1_45:   mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:131
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_rdet$2F1_44:   mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lcall_proc_staged_α_837_203:
                        mov              edi, 62                              # idx
                        mov              esi, 2                               # nargs
                        call             rt_proc_call_open_det@PLT
.Lgcsite_rdet$2F1_41:   mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:1173
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_rdet$2F1_40:   mov              r9,  qword ptr [rip + rtccb+48]
1:                      sub              rsp, 16                              # CFO-36 (cfo 2026-09-09): the landing words (N-2 word, landing cell) are pushed AFTER the prologue call, not before it -- in the generator regime they are an ODD count, so rt_proc_call_open_det ran at rsp 8-mod-16 and everything it reached did too (rt_trace_event_args -> image -> vsnprintf movaps: SIGSEGV on every traced generator call with an argument; Arizona coexpr and errors, rungs rung03). The entry layout the callee sees is byte-identical; only the prologue call moved above the words,
                        test             rax, rax;                            je    .Lcall_proc_staged_α_837_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_837_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_837_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_837_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_837_3:
                        mov              edx, 1
                        mov              qword ptr [rsp + 2488], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 2480]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_837_5
                        mov              qword ptr [rsp + 2480], 1
                        call             rt_proc_call_epilogue_γ@PLT
.Lgcsite_rdet$2F1_39:   mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lcall_proc_staged_α_837_2
.Lcall_proc_staged_α_837_5:
                        call             qword ptr [rip + rt_gen_spine_pass_γ@GOTPCREL]
.Lgcsite_rdet$2F1_38:                                                         jmp   .Lcall_proc_staged_α_837_2
.Lcall_proc_staged_α_837_4:
                        mov              edi, 1
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 2480]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_837_6
                        mov              qword ptr [rsp + 2480], 1
                        call             rt_proc_call_epilogue_ω@PLT
.Lgcsite_rdet$2F1_37:   mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lcall_proc_staged_α_837_2
.Lcall_proc_staged_α_837_6:
                        call             qword ptr [rip + rt_gen_spine_pass_ω@GOTPCREL]
.Lgcsite_rdet$2F1_36:                                                         jmp   .Lcall_proc_staged_α_837_2
.Lcall_proc_staged_α_837_1:
                        call             rt_ab_undef_fn_fail@PLT
.Lgcsite_rdet$2F1_35:   mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_call_proc_staged.cpp:335
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_rdet$2F1_34:   mov              r9,  qword ptr [rip + rtccb+48]
1:                      add              rsp, 16
                        add              rsp, 96;                             jmp   rdet$2F1_ω
.Lcall_proc_staged_α_837_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed): the fix-up is emitted here, rt_nret_fix_tiny is gone from the graph
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_837_29
                        cmp              eax, 40;                             je    .Lcall_proc_staged_α_837_25
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_nret_name@PLT
.Lgcsite_rdet$2F1_33:   mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2464]
                        mov              rdx, qword ptr [rsp + 2472]
                        cmp              eax, 40;                             je    .Lcall_proc_staged_α_837_25
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0;              jmp   .Lcall_proc_staged_α_837_23
.Lcall_proc_staged_α_837_25:
                        mov              rcx, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              jne   .Lcall_proc_staged_α_837_24
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0
                        cmp              eax, 40;                             jne   .Lcall_proc_staged_α_837_23
                        mov              rdi, rax                             # d
                        mov              rsi, rdx                             # d
                        call             rt_deref@PLT
.Lgcsite_rdet$2F1_32:   mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2464]
                        mov              rdx, qword ptr [rsp + 2472];         jmp   .Lcall_proc_staged_α_837_23
.Lcall_proc_staged_α_837_24:
.Lcall_proc_staged_α_837_23:
                        mov              rcx, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0
.Lcall_proc_staged_α_837_29:
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx
                        cmp              al, 104;                             jne   .Lcall_proc_staged_α_837_999
                        add              rsp, 16
                        add              rsp, 96;                             jmp   rdet$2F1_ω
.Lcall_proc_staged_α_837_999:
                                                                              jmp   n651_var_ref_α
n650_call_proc_staged_β:
                        call             qword ptr [rip + rt_gen_spine_resume_enter@GOTPCREL]
.Lgcsite_rdet$2F1_31:   mov              rax, qword ptr [rsp + 2488];         jmp   qword ptr [rax]
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_proc_staged_β_837_0: .quad .Lcall_proc_staged_β_837_0_s; .popsection
.Lcall_proc_staged_β_837_0_s:
                        .string          "subsumes_term/2"
                        .size            n650_call_proc_staged_bx, .-n650_call_proc_staged_bx
                        .type            n651_var_ref_bx, @function
n651_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n651_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 144]
                        mov              qword ptr [rsp + 8], rax;            jmp   n652_var_ref_α
                        .size            n651_var_ref_bx, .-n651_var_ref_bx
                        .type            n652_var_ref_bx, @function
n652_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n652_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 160]
                        mov              qword ptr [rsp + 8], rax;            jmp   n653_call_pl_leaf_α
                        .size            n652_var_ref_bx, .-n652_var_ref_bx
                        .type            n653_call_pl_leaf_bx, @function
n653_call_pl_leaf_bx:
#-----------------------------------------------------------------------------------------------------------------------
n653_call_pl_leaf_α:    sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        lea              rdi, [rsp + 0]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rtx_pl_unify@GOTPCREL]
.Lgcsite_rdet$2F1_48:   test             eax, eax;                            jz    .Lcall_pl_leaf_α_842_190
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_pl_leaf_α_842_249
.Lcall_pl_leaf_α_842_190:
                        mov              rdx, r12                             # occurs_check error (the trail header's mode word reads 2): the leaf's failure is re-run on the cx road, which builds the ball, unwinds what it bound and arms r15
                        and              rdx, -536870912
                        cmp              qword ptr [rdx + 24], 2;             jne   .Lcall_pl_leaf_α_842_195
                        lea              rdi, [rsp + 0]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_pl_dop_unify_raise@GOTPCREL]
.Lgcsite_rdet$2F1_47:   push             rax                                  # gc_poll bb_call_pl_leaf.cpp:389
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_rdet$2F1_46:   mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   .Lcall_pl_leaf_α_842_195
.Lcall_pl_leaf_α_842_195:
                                                                              jmp   .Lcall_pl_leaf_α_842_248
.Lcall_pl_leaf_α_842_248:
                        mov              eax, 104
                        xor              edx, edx
.Lcall_pl_leaf_α_842_249:
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_pl_leaf_α_842_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n650_call_proc_staged_β
.Lcall_pl_leaf_α_842_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n654_cut_α
n653_call_pl_leaf_β:    add              rsp, 16
                        add              rsp, 32;                             jmp   n650_call_proc_staged_β
                        .size            n653_call_pl_leaf_bx, .-n653_call_pl_leaf_bx
                        .type            n654_cut_bx, @function
n654_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n654_cut_α:                                                                   jmp   n655_cleanup_α
                        .size            n654_cut_bx, .-n654_cut_bx
                        .type            n655_cleanup_bx, @function
n655_cleanup_bx:
