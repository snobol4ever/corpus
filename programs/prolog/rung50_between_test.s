                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_between$2F3_α
proc_between$2F3_α:
proc_between$2F3_α_body:
                        lea              rax, [rip + n4_suspend_β]
                        mov              qword ptr [rbp + 192], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_var_ref_α:
                        sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n1_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n3_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 120], rax
                        mov              qword ptr [rbp + 128], 0
.Lx11_60:
                        .section         .rodata
.Lbynamegenfn4:         .string          "$between"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn4]                    # fn
                        lea              rsi, [rbp + 80]                                # args
                        mov              edx, 3                                         # nargs
                        lea              rcx, [rbp + 128]                               # resume
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx11_240
                        add              rsp, 48
                                                                                        jmp   proc_between$2F3_ω
.Lx11_240:
                                                                                        jmp   n4_suspend_α
n3_call_builtin_gen_β:
                                                                                        jmp   .Lx11_60
#-----------------------------------------------------------------------------------------------------------------------
n4_suspend_α:
                        lea              rax, [rip + n4_suspend_β]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 48
                                                                                        jmp   proc_between$2F3_γ
n4_suspend_β:
                                                                                        jmp   n3_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_between$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_between$2F3_β:
                                                                                        jmp   qword ptr [rbp + 192]
#-----------------------------------------------------------------------------------------------------------------------
proc_between$2F3_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_between$2F3_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_t$2F3_α
proc_t$2F3_α:
proc_t$2F3_α_body:
                        lea              rax, [rip + n34_suspend_β]
                        mov              qword ptr [rbp + 672], rax
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_prolog_α:
                        sub              rsp, 496
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx36_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx36_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx36_101
.Lx36_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx36_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx36_240
                        add              rsp, 496
                                                                                        jmp   proc_t$2F3_ω
.Lx36_240:
                                                                                        jmp   n15_var_ref_α
n14_call_builtin_prolog_β:
                        add              rsp, 496
                                                                                        jmp   proc_t$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n16_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n17_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 608]
                        lea              r8, [rbp + 608]
.Lx41_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx41_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx41_41
                        cmp              esi, 1
                                                                                        jne   .Lx41_55
                        mov              r8, rax
                                                                                        jmp   .Lx41_40
.Lx41_55:
                        cmp              esi, 2
                                                                                        jne   .Lx41_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx41_41
                        mov              r8, rax
                                                                                        jmp   .Lx41_40
.Lx41_56:
                        cmp              eax, 72
                                                                                        jne   .Lx41_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx41_41
                        cmp              rax, r8
                                                                                        je    .Lx41_41
                        mov              r8, rax
                                                                                        jmp   .Lx41_40
.Lx41_41:
                        lea              r9, [rbp + 624]
.Lx41_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx41_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx41_43
                        cmp              esi, 1
                                                                                        jne   .Lx41_57
                        mov              r9, rax
                                                                                        jmp   .Lx41_42
.Lx41_57:
                        cmp              esi, 2
                                                                                        jne   .Lx41_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx41_43
                        mov              r9, rax
                                                                                        jmp   .Lx41_42
.Lx41_58:
                        cmp              eax, 72
                                                                                        jne   .Lx41_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx41_43
                        cmp              rax, r9
                                                                                        je    .Lx41_43
                        mov              r9, rax
                                                                                        jmp   .Lx41_42
.Lx41_43:
                        cmp              r8, r9
                                                                                        je    .Lx41_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx41_44
                        cmp              eax, 104
                                                                                        je    .Lx41_44
                        cmp              eax, 72
                                                                                        jne   .Lx41_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx41_44
                                                                                        jmp   .Lx41_45
.Lx41_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx41_53
                        cmp              eax, 104
                                                                                        je    .Lx41_53
                        cmp              eax, 72
                                                                                        jne   .Lx41_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx41_53
                                                                                        jmp   .Lx41_46
.Lx41_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx41_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx41_53
                        add              r11, rsi
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
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx41_51
.Lx41_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx41_47
                        cmp              eax, 104
                                                                                        je    .Lx41_47
                        cmp              eax, 72
                                                                                        jne   .Lx41_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx41_47
                                                                                        jmp   .Lx41_48
.Lx41_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx41_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx41_53
                        add              r11, rsi
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
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx41_51
.Lx41_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx41_49
                        cmp              edx, 80
                                                                                        je    .Lx41_53
                                                                                        jmp   .Lx41_52
.Lx41_49:
                        cmp              edx, 80
                                                                                        je    .Lx41_52
                        cmp              ecx, 5
                                                                                        je    .Lx41_53
                        cmp              edx, 5
                                                                                        je    .Lx41_53
                        cmp              ecx, 3
                                                                                        jne   .Lx41_50
                        cmp              edx, 3
                                                                                        jne   .Lx41_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx41_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx41_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx41_51
                                                                                        jmp   .Lx41_52
.Lx41_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx41_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx41_53
.Lx41_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx41_54
.Lx41_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx41_54
.Lx41_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx41_54:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 104
                                                                                        je    n35_call_builtin_prolog_α
                                                                                        jmp   n18_var_ref_α
n17_call_builtin_prolog_β:
                                                                                        jmp   n35_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n19_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n20_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 528]
                        lea              r8, [rbp + 528]
.Lx46_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx46_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx46_41
                        cmp              esi, 1
                                                                                        jne   .Lx46_55
                        mov              r8, rax
                                                                                        jmp   .Lx46_40
.Lx46_55:
                        cmp              esi, 2
                                                                                        jne   .Lx46_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx46_41
                        mov              r8, rax
                                                                                        jmp   .Lx46_40
.Lx46_56:
                        cmp              eax, 72
                                                                                        jne   .Lx46_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx46_41
                        cmp              rax, r8
                                                                                        je    .Lx46_41
                        mov              r8, rax
                                                                                        jmp   .Lx46_40
.Lx46_41:
                        lea              r9, [rbp + 544]
.Lx46_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx46_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx46_43
                        cmp              esi, 1
                                                                                        jne   .Lx46_57
                        mov              r9, rax
                                                                                        jmp   .Lx46_42
.Lx46_57:
                        cmp              esi, 2
                                                                                        jne   .Lx46_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx46_43
                        mov              r9, rax
                                                                                        jmp   .Lx46_42
.Lx46_58:
                        cmp              eax, 72
                                                                                        jne   .Lx46_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx46_43
                        cmp              rax, r9
                                                                                        je    .Lx46_43
                        mov              r9, rax
                                                                                        jmp   .Lx46_42
.Lx46_43:
                        cmp              r8, r9
                                                                                        je    .Lx46_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx46_44
                        cmp              eax, 104
                                                                                        je    .Lx46_44
                        cmp              eax, 72
                                                                                        jne   .Lx46_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx46_44
                                                                                        jmp   .Lx46_45
.Lx46_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx46_53
                        cmp              eax, 104
                                                                                        je    .Lx46_53
                        cmp              eax, 72
                                                                                        jne   .Lx46_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx46_53
                                                                                        jmp   .Lx46_46
.Lx46_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx46_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx46_53
                        add              r11, rsi
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
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx46_51
.Lx46_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx46_47
                        cmp              eax, 104
                                                                                        je    .Lx46_47
                        cmp              eax, 72
                                                                                        jne   .Lx46_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx46_47
                                                                                        jmp   .Lx46_48
.Lx46_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx46_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx46_53
                        add              r11, rsi
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
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx46_51
.Lx46_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx46_49
                        cmp              edx, 80
                                                                                        je    .Lx46_53
                                                                                        jmp   .Lx46_52
.Lx46_49:
                        cmp              edx, 80
                                                                                        je    .Lx46_52
                        cmp              ecx, 5
                                                                                        je    .Lx46_53
                        cmp              edx, 5
                                                                                        je    .Lx46_53
                        cmp              ecx, 3
                                                                                        jne   .Lx46_50
                        cmp              edx, 3
                                                                                        jne   .Lx46_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx46_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx46_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx46_51
                                                                                        jmp   .Lx46_52
.Lx46_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx46_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx46_53
.Lx46_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx46_54
.Lx46_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx46_54
.Lx46_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx46_54:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 104
                                                                                        je    n35_call_builtin_prolog_α
                                                                                        jmp   n21_var_ref_α
n20_call_builtin_prolog_β:
                                                                                        jmp   n35_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n22_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 720]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n23_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 448]
                        lea              r8, [rbp + 448]
.Lx51_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx51_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx51_41
                        cmp              esi, 1
                                                                                        jne   .Lx51_55
                        mov              r8, rax
                                                                                        jmp   .Lx51_40
.Lx51_55:
                        cmp              esi, 2
                                                                                        jne   .Lx51_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx51_41
                        mov              r8, rax
                                                                                        jmp   .Lx51_40
.Lx51_56:
                        cmp              eax, 72
                                                                                        jne   .Lx51_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx51_41
                        cmp              rax, r8
                                                                                        je    .Lx51_41
                        mov              r8, rax
                                                                                        jmp   .Lx51_40
.Lx51_41:
                        lea              r9, [rbp + 464]
.Lx51_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx51_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx51_43
                        cmp              esi, 1
                                                                                        jne   .Lx51_57
                        mov              r9, rax
                                                                                        jmp   .Lx51_42
.Lx51_57:
                        cmp              esi, 2
                                                                                        jne   .Lx51_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx51_43
                        mov              r9, rax
                                                                                        jmp   .Lx51_42
.Lx51_58:
                        cmp              eax, 72
                                                                                        jne   .Lx51_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx51_43
                        cmp              rax, r9
                                                                                        je    .Lx51_43
                        mov              r9, rax
                                                                                        jmp   .Lx51_42
.Lx51_43:
                        cmp              r8, r9
                                                                                        je    .Lx51_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx51_44
                        cmp              eax, 104
                                                                                        je    .Lx51_44
                        cmp              eax, 72
                                                                                        jne   .Lx51_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx51_44
                                                                                        jmp   .Lx51_45
.Lx51_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx51_53
                        cmp              eax, 104
                                                                                        je    .Lx51_53
                        cmp              eax, 72
                                                                                        jne   .Lx51_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx51_53
                                                                                        jmp   .Lx51_46
.Lx51_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx51_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx51_53
                        add              r11, rsi
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
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx51_51
.Lx51_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx51_47
                        cmp              eax, 104
                                                                                        je    .Lx51_47
                        cmp              eax, 72
                                                                                        jne   .Lx51_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx51_47
                                                                                        jmp   .Lx51_48
.Lx51_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx51_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx51_53
                        add              r11, rsi
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
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx51_51
.Lx51_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx51_49
                        cmp              edx, 80
                                                                                        je    .Lx51_53
                                                                                        jmp   .Lx51_52
.Lx51_49:
                        cmp              edx, 80
                                                                                        je    .Lx51_52
                        cmp              ecx, 5
                                                                                        je    .Lx51_53
                        cmp              edx, 5
                                                                                        je    .Lx51_53
                        cmp              ecx, 3
                                                                                        jne   .Lx51_50
                        cmp              edx, 3
                                                                                        jne   .Lx51_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx51_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx51_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx51_51
                                                                                        jmp   .Lx51_52
.Lx51_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx51_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx51_53
.Lx51_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx51_54
.Lx51_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx51_54
.Lx51_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx51_54:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 104
                                                                                        je    n35_call_builtin_prolog_α
                                                                                        jmp   n24_var_ref_α
n23_call_builtin_prolog_β:
                                                                                        jmp   n35_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n25_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n26_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 720]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n27_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n27_call_proc_staged_α:
                        mov              qword ptr [rbp + 352], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx59_20
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx59_21
.Lx59_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 384]                     # v
                        mov              rdx, qword ptr [rbp + 392]                     # v
                        call             rt_arg_stage@PLT
.Lx59_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx59_22
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx59_23
.Lx59_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 400]                     # v
                        mov              rdx, qword ptr [rbp + 408]                     # v
                        call             rt_arg_stage@PLT
.Lx59_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx59_24
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx59_25
.Lx59_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 416]                     # v
                        mov              rdx, qword ptr [rbp + 424]                     # v
                        call             rt_arg_stage@PLT
.Lx59_25:
                        mov              edi, 0                                         # idx
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx59_1
                        lea              rcx, [rip + .Lx59_3]
                        lea              rdx, [rip + .Lx59_4]
                                                                                        jmp   rax
.Lx59_3:
                        mov              qword ptr [rbp + 360], rsp
                        mov              rax, qword ptr [rbp + 352]
                        test             rax, rax
                                                                                        jne   .Lx59_5
                        mov              qword ptr [rbp + 352], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx59_2
.Lx59_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx59_2
.Lx59_4:
                        mov              rax, qword ptr [rbp + 352]
                        test             rax, rax
                                                                                        jne   .Lx59_6
                        mov              qword ptr [rbp + 352], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx59_2
.Lx59_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx59_2
.Lx59_1:
                        call             rt_faildescr@PLT
.Lx59_2:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx59_240
                        add              rsp, 496
                                                                                        jmp   n30_lit_string_α
.Lx59_240:
                                                                                        jmp   n28_lit_string_α
n27_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 360]
                                                                                        jmp   qword ptr [rsp]
.Lx59_0:
                        .quad            .Lx59_0_s
.Lx59_0_s:
                        .string          "between/3"
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        mov              qword ptr [rbp + 224], 2                       # result
                        mov              dword ptr [rbp + 228], 3
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n29_call_builtin_prolog_α
.Lx60_0:
                        .quad            .Lx60_0_s
.Lx60_0_s:
                        .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn62:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn62]                          # fn
                        lea              rsi, [rbp + 208]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        je    n35_call_builtin_prolog_α
                                                                                        jmp   n32_lit_string_α
n29_call_builtin_prolog_β:
                                                                                        jmp   n35_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:
                        mov              qword ptr [rbp + 272], 2                       # result
                        mov              dword ptr [rbp + 276], 2
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n31_call_builtin_prolog_α
.Lx63_0:
                        .quad            .Lx63_0_s
.Lx63_0_s:
                        .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn65:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn65]                          # fn
                        lea              rsi, [rbp + 256]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    n35_call_builtin_prolog_α
                                                                                        jmp   n32_lit_string_α
n31_call_builtin_prolog_β:
                                                                                        jmp   n35_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:
                        mov              qword ptr [rbp + 176], 2                       # result
                        mov              dword ptr [rbp + 180], 0
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n33_call_builtin_prolog_α
.Lx66_0:
                        .quad            .Lx66_0_s
.Lx66_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn68:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn68]                          # fn
                        lea              rsi, [rbp + 160]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n35_call_builtin_prolog_α
                                                                                        jmp   n34_suspend_α
n33_call_builtin_prolog_β:
                                                                                        jmp   n35_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n34_suspend_α:
                        lea              rax, [rip + n34_suspend_β]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 496
                                                                                        jmp   proc_t$2F3_γ
n34_suspend_β:
                                                                                        jmp   n35_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 120], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    proc_t$2F3_ω
                                                                                        jmp   proc_t$2F3_ω
n35_call_builtin_prolog_β:
                                                                                        jmp   proc_t$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_t$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_t$2F3_β:
                                                                                        jmp   qword ptr [rbp + 672]
#-----------------------------------------------------------------------------------------------------------------------
proc_t$2F3_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_t$2F3_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "between/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_between$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 208
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "t/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_t$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 736
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        add              rsp, 8
                        ret
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n72_call_builtin_prolog_α:
                        sub              rsp, 1104
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx104_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx104_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx104_101
.Lx104_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx104_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx104_240
                        add              rsp, 1104
                                                                                        jmp   main_ω
.Lx104_240:
                                                                                        jmp   n73_lit_integer_α
n72_call_builtin_prolog_β:
                        add              rsp, 1104
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_integer_α:
                        mov              qword ptr [rbp + 1056], 3                      # result
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n74_lit_integer_α
.Lx105_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_integer_α:
                        mov              qword ptr [rbp + 1072], 3                      # result
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n75_lit_integer_α
.Lx106_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_integer_α:
                        mov              qword ptr [rbp + 1088], 3                      # result
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n76_call_proc_staged_α
.Lx107_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n76_call_proc_staged_α:
                        mov              qword ptr [rbp + 1024], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx109_20
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx109_21
.Lx109_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1056]                    # v
                        mov              rdx, qword ptr [rbp + 1064]                    # v
                        call             rt_arg_stage@PLT
.Lx109_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx109_22
                        mov              rax, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx109_23
.Lx109_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 1072]                    # v
                        mov              rdx, qword ptr [rbp + 1080]                    # v
                        call             rt_arg_stage@PLT
.Lx109_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx109_24
                        mov              rax, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx109_25
.Lx109_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 1088]                    # v
                        mov              rdx, qword ptr [rbp + 1096]                    # v
                        call             rt_arg_stage@PLT
.Lx109_25:
                        mov              edi, 1                                         # idx
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx109_1
                        lea              rcx, [rip + .Lx109_3]
                        lea              rdx, [rip + .Lx109_4]
                                                                                        jmp   rax
.Lx109_3:
                        mov              qword ptr [rbp + 1032], rsp
                        mov              rax, qword ptr [rbp + 1024]
                        test             rax, rax
                                                                                        jne   .Lx109_5
                        mov              qword ptr [rbp + 1024], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx109_2
.Lx109_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx109_2
.Lx109_4:
                        mov              rax, qword ptr [rbp + 1024]
                        test             rax, rax
                                                                                        jne   .Lx109_6
                        mov              qword ptr [rbp + 1024], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx109_2
.Lx109_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx109_2
.Lx109_1:
                        call             rt_faildescr@PLT
.Lx109_2:
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx109_240
                        add              rsp, 1104
                                                                                        jmp   n103_call_builtin_prolog_α
.Lx109_240:
                                                                                        jmp   n77_lit_integer_α
n76_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1032]
                                                                                        jmp   qword ptr [rsp]
.Lx109_0:
                        .quad            .Lx109_0_s
.Lx109_0_s:
                        .string          "t/3"
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_integer_α:
                        mov              qword ptr [rbp + 912], 3                       # result
                        mov              rax, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n78_lit_integer_α
.Lx110_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_integer_α:
                        mov              qword ptr [rbp + 928], 3                       # result
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n79_lit_integer_α
.Lx111_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_integer_α:
                        mov              qword ptr [rbp + 944], 3                       # result
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n80_call_proc_staged_α
.Lx112_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n80_call_proc_staged_α:
                        mov              qword ptr [rbp + 880], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx114_20
                        mov              rax, qword ptr [rbp + 912]
                        mov              rdx, qword ptr [rbp + 920]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx114_21
.Lx114_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 912]                     # v
                        mov              rdx, qword ptr [rbp + 920]                     # v
                        call             rt_arg_stage@PLT
.Lx114_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx114_22
                        mov              rax, qword ptr [rbp + 928]
                        mov              rdx, qword ptr [rbp + 936]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx114_23
.Lx114_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 928]                     # v
                        mov              rdx, qword ptr [rbp + 936]                     # v
                        call             rt_arg_stage@PLT
.Lx114_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx114_24
                        mov              rax, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx114_25
.Lx114_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 944]                     # v
                        mov              rdx, qword ptr [rbp + 952]                     # v
                        call             rt_arg_stage@PLT
.Lx114_25:
                        mov              edi, 1                                         # idx
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx114_1
                        lea              rcx, [rip + .Lx114_3]
                        lea              rdx, [rip + .Lx114_4]
                                                                                        jmp   rax
.Lx114_3:
                        mov              qword ptr [rbp + 888], rsp
                        mov              rax, qword ptr [rbp + 880]
                        test             rax, rax
                                                                                        jne   .Lx114_5
                        mov              qword ptr [rbp + 880], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx114_2
.Lx114_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx114_2
.Lx114_4:
                        mov              rax, qword ptr [rbp + 880]
                        test             rax, rax
                                                                                        jne   .Lx114_6
                        mov              qword ptr [rbp + 880], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx114_2
.Lx114_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx114_2
.Lx114_1:
                        call             rt_faildescr@PLT
.Lx114_2:
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 104
                                                                                        je    n76_call_proc_staged_β
                                                                                        jmp   n81_lit_integer_α
n80_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 888]
                                                                                        jmp   qword ptr [rsp]
.Lx114_0:
                        .quad            .Lx114_0_s
.Lx114_0_s:
                        .string          "t/3"
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_integer_α:
                        mov              qword ptr [rbp + 768], 3                       # result
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n82_lit_integer_α
.Lx115_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:
                        mov              qword ptr [rbp + 784], 3                       # result
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n83_lit_integer_α
.Lx116_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:
                        mov              qword ptr [rbp + 800], 3                       # result
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n84_call_proc_staged_α
.Lx117_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n84_call_proc_staged_α:
                        mov              qword ptr [rbp + 736], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx119_20
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx119_21
.Lx119_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 768]                     # v
                        mov              rdx, qword ptr [rbp + 776]                     # v
                        call             rt_arg_stage@PLT
.Lx119_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx119_22
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx119_23
.Lx119_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 784]                     # v
                        mov              rdx, qword ptr [rbp + 792]                     # v
                        call             rt_arg_stage@PLT
.Lx119_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx119_24
                        mov              rax, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx119_25
.Lx119_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 800]                     # v
                        mov              rdx, qword ptr [rbp + 808]                     # v
                        call             rt_arg_stage@PLT
.Lx119_25:
                        mov              edi, 1                                         # idx
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx119_1
                        lea              rcx, [rip + .Lx119_3]
                        lea              rdx, [rip + .Lx119_4]
                                                                                        jmp   rax
.Lx119_3:
                        mov              qword ptr [rbp + 744], rsp
                        mov              rax, qword ptr [rbp + 736]
                        test             rax, rax
                                                                                        jne   .Lx119_5
                        mov              qword ptr [rbp + 736], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx119_2
.Lx119_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx119_2
.Lx119_4:
                        mov              rax, qword ptr [rbp + 736]
                        test             rax, rax
                                                                                        jne   .Lx119_6
                        mov              qword ptr [rbp + 736], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx119_2
.Lx119_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx119_2
.Lx119_1:
                        call             rt_faildescr@PLT
.Lx119_2:
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 104
                                                                                        je    n80_call_proc_staged_β
                                                                                        jmp   n85_lit_integer_α
n84_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 744]
                                                                                        jmp   qword ptr [rsp]
.Lx119_0:
                        .quad            .Lx119_0_s
.Lx119_0_s:
                        .string          "t/3"
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:
                        mov              qword ptr [rbp + 624], 3                       # result
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n86_lit_integer_α
.Lx120_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_integer_α:
                        mov              qword ptr [rbp + 640], 3                       # result
                        mov              rax, qword ptr [rip + .Lx121_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n87_lit_integer_α
.Lx121_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_integer_α:
                        mov              qword ptr [rbp + 656], 3                       # result
                        mov              rax, qword ptr [rip + .Lx122_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n88_call_proc_staged_α
.Lx122_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n88_call_proc_staged_α:
                        mov              qword ptr [rbp + 592], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx124_20
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx124_21
.Lx124_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 624]                     # v
                        mov              rdx, qword ptr [rbp + 632]                     # v
                        call             rt_arg_stage@PLT
.Lx124_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx124_22
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx124_23
.Lx124_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 640]                     # v
                        mov              rdx, qword ptr [rbp + 648]                     # v
                        call             rt_arg_stage@PLT
.Lx124_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx124_24
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx124_25
.Lx124_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 656]                     # v
                        mov              rdx, qword ptr [rbp + 664]                     # v
                        call             rt_arg_stage@PLT
.Lx124_25:
                        mov              edi, 1                                         # idx
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx124_1
                        lea              rcx, [rip + .Lx124_3]
                        lea              rdx, [rip + .Lx124_4]
                                                                                        jmp   rax
.Lx124_3:
                        mov              qword ptr [rbp + 600], rsp
                        mov              rax, qword ptr [rbp + 592]
                        test             rax, rax
                                                                                        jne   .Lx124_5
                        mov              qword ptr [rbp + 592], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx124_2
.Lx124_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx124_2
.Lx124_4:
                        mov              rax, qword ptr [rbp + 592]
                        test             rax, rax
                                                                                        jne   .Lx124_6
                        mov              qword ptr [rbp + 592], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx124_2
.Lx124_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx124_2
.Lx124_1:
                        call             rt_faildescr@PLT
.Lx124_2:
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 104
                                                                                        je    n84_call_proc_staged_β
                                                                                        jmp   n89_lit_integer_α
n88_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 600]
                                                                                        jmp   qword ptr [rsp]
.Lx124_0:
                        .quad            .Lx124_0_s
.Lx124_0_s:
                        .string          "t/3"
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_integer_α:
                        mov              qword ptr [rbp + 480], 3                       # result
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n90_lit_integer_α
.Lx125_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_integer_α:
                        mov              qword ptr [rbp + 496], 3                       # result
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n91_lit_integer_α
.Lx126_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:
                        mov              qword ptr [rbp + 512], 3                       # result
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n92_call_proc_staged_α
.Lx127_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n92_call_proc_staged_α:
                        mov              qword ptr [rbp + 448], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx129_20
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx129_21
.Lx129_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 480]                     # v
                        mov              rdx, qword ptr [rbp + 488]                     # v
                        call             rt_arg_stage@PLT
.Lx129_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx129_22
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx129_23
.Lx129_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 496]                     # v
                        mov              rdx, qword ptr [rbp + 504]                     # v
                        call             rt_arg_stage@PLT
.Lx129_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx129_24
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx129_25
.Lx129_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 512]                     # v
                        mov              rdx, qword ptr [rbp + 520]                     # v
                        call             rt_arg_stage@PLT
.Lx129_25:
                        mov              edi, 1                                         # idx
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx129_1
                        lea              rcx, [rip + .Lx129_3]
                        lea              rdx, [rip + .Lx129_4]
                                                                                        jmp   rax
.Lx129_3:
                        mov              qword ptr [rbp + 456], rsp
                        mov              rax, qword ptr [rbp + 448]
                        test             rax, rax
                                                                                        jne   .Lx129_5
                        mov              qword ptr [rbp + 448], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx129_2
.Lx129_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx129_2
.Lx129_4:
                        mov              rax, qword ptr [rbp + 448]
                        test             rax, rax
                                                                                        jne   .Lx129_6
                        mov              qword ptr [rbp + 448], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx129_2
.Lx129_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx129_2
.Lx129_1:
                        call             rt_faildescr@PLT
.Lx129_2:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 104
                                                                                        je    n88_call_proc_staged_β
                                                                                        jmp   n93_lit_integer_α
n92_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 456]
                                                                                        jmp   qword ptr [rsp]
.Lx129_0:
                        .quad            .Lx129_0_s
.Lx129_0_s:
                        .string          "t/3"
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_integer_α:
                        mov              qword ptr [rbp + 336], 3                       # result
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n94_lit_integer_α
.Lx130_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_integer_α:
                        mov              qword ptr [rbp + 352], 3                       # result
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n95_lit_integer_α
.Lx131_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:
                        mov              qword ptr [rbp + 368], 3                       # result
                        mov              rax, qword ptr [rip + .Lx132_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n96_call_proc_staged_α
.Lx132_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n96_call_proc_staged_α:
                        mov              qword ptr [rbp + 304], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx134_20
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx134_21
.Lx134_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 336]                     # v
                        mov              rdx, qword ptr [rbp + 344]                     # v
                        call             rt_arg_stage@PLT
.Lx134_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx134_22
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx134_23
.Lx134_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 352]                     # v
                        mov              rdx, qword ptr [rbp + 360]                     # v
                        call             rt_arg_stage@PLT
.Lx134_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx134_24
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx134_25
.Lx134_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 368]                     # v
                        mov              rdx, qword ptr [rbp + 376]                     # v
                        call             rt_arg_stage@PLT
.Lx134_25:
                        mov              edi, 1                                         # idx
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx134_1
                        lea              rcx, [rip + .Lx134_3]
                        lea              rdx, [rip + .Lx134_4]
                                                                                        jmp   rax
.Lx134_3:
                        mov              qword ptr [rbp + 312], rsp
                        mov              rax, qword ptr [rbp + 304]
                        test             rax, rax
                                                                                        jne   .Lx134_5
                        mov              qword ptr [rbp + 304], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx134_2
.Lx134_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx134_2
.Lx134_4:
                        mov              rax, qword ptr [rbp + 304]
                        test             rax, rax
                                                                                        jne   .Lx134_6
                        mov              qword ptr [rbp + 304], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx134_2
.Lx134_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx134_2
.Lx134_1:
                        call             rt_faildescr@PLT
.Lx134_2:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    n92_call_proc_staged_β
                                                                                        jmp   n97_lit_integer_α
n96_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 312]
                                                                                        jmp   qword ptr [rsp]
.Lx134_0:
                        .quad            .Lx134_0_s
.Lx134_0_s:
                        .string          "t/3"
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_integer_α:
                        mov              qword ptr [rbp + 192], 3                       # result
                        mov              rax, qword ptr [rip + .Lx135_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n98_lit_integer_α
.Lx135_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:
                        mov              qword ptr [rbp + 208], 3                       # result
                        mov              rax, qword ptr [rip + .Lx136_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n99_lit_integer_α
.Lx136_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_integer_α:
                        mov              qword ptr [rbp + 224], 3                       # result
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n100_call_proc_staged_α
.Lx137_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n100_call_proc_staged_α:
                        mov              qword ptr [rbp + 160], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx139_20
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx139_21
.Lx139_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 192]                     # v
                        mov              rdx, qword ptr [rbp + 200]                     # v
                        call             rt_arg_stage@PLT
.Lx139_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx139_22
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx139_23
.Lx139_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 208]                     # v
                        mov              rdx, qword ptr [rbp + 216]                     # v
                        call             rt_arg_stage@PLT
.Lx139_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx139_24
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx139_25
.Lx139_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 224]                     # v
                        mov              rdx, qword ptr [rbp + 232]                     # v
                        call             rt_arg_stage@PLT
.Lx139_25:
                        mov              edi, 1                                         # idx
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx139_1
                        lea              rcx, [rip + .Lx139_3]
                        lea              rdx, [rip + .Lx139_4]
                                                                                        jmp   rax
.Lx139_3:
                        mov              qword ptr [rbp + 168], rsp
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx139_5
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx139_2
.Lx139_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx139_2
.Lx139_4:
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx139_6
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx139_2
.Lx139_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx139_2
.Lx139_1:
                        call             rt_faildescr@PLT
.Lx139_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    n96_call_proc_staged_β
                                                                                        jmp   n101_move_label_α
n100_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 168]
                                                                                        jmp   qword ptr [rsp]
.Lx139_0:
                        .quad            .Lx139_0_s
.Lx139_0_s:
                        .string          "t/3"
#-----------------------------------------------------------------------------------------------------------------------
n101_move_label_α:
                        lea              rax, [rip + n100_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                        add              rsp, 1104
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n102_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n102_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n103_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n103_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n102_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
