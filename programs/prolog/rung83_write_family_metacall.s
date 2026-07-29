                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$call$2F1_α
proc_$call$2F1_α:
                        .global          proc_$call$2F1_α
                        .global          proc_$call$2F1_β
                        .global          proc_$call$2F1_γ
                        .global          proc_$call$2F1_ω
                        sub              rsp, 144
                        mov              [rsp + 120], rcx
                        mov              [rsp + 128], rdx
                        mov              [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 96
                        mov              edx, 112
                        call             rt_jmp_frame_lexprep2@PLT
proc_$call$2F1_α_body:
                        lea              rax, [rip + n2_suspend_β]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n1_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        mov              qword ptr [rbp + 64], 0
.Lx5_60:
                        .section         .rodata
.Lbynamegenfn2:         .string          "$call"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn2]
                        lea              rsi, [rbp + 48]
                        mov              edx, 1
                        lea              rcx, [rbp + 64]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_$call$2F1_ω
                                                                                        jmp   n2_suspend_α
n1_call_builtin_gen_β:
                                                                                        jmp   .Lx5_60
#-----------------------------------------------------------------------------------------------------------------------
n2_suspend_α:
                        lea              rax, [rip + n2_suspend_β]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$call$2F1_γ
n2_suspend_β:
                                                                                        jmp   n1_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_$call$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$call$2F1_β:
                                                                                        jmp   qword ptr [rbp + 96]
#-----------------------------------------------------------------------------------------------------------------------
proc_$call$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$call$2F1_res]
                        push             rax
                        mov              rax, [rbp + 120]
                        mov              rbp, [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$call$2F1_ω:
                        mov              rax, [rbp + 128]
                        lea              rsp, [rbp + 144]
                        mov              rbp, [rbp + 136]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "$call/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_$call$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 112
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
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
                        call             main_α
                        xor              eax, eax
                        add              rsp, 24
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        .global          main_α
                        .global          main_β
                        .global          main_γ
                        .global          main_ω
                        sub              rsp, 2648
                        mov              rdi, rsp
                        mov              ecx, 2648
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 2640], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n8_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx92_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx92_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx92_101
.Lx92_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx92_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n9_lit_string_α
n8_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 2416], 1
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n10_lit_string_α
.Lx93_0:
                        .quad            .Lx93_0_s
.Lx93_0_s:
                        .string          "/tmp/rung83_probe.txt"
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        mov              qword ptr [rbp + 2432], 1
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n11_var_ref_α
.Lx94_0:
                        .quad            .Lx94_0_s
.Lx94_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2624]
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n12_op11_α:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2376], rax
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2392], rax
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2408], rax
                        .section         .rodata
.Lrkfn98:               .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn98]
                        lea              rsi, [rbp + 2368]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n13_var_ref_α
n12_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2624]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n14_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 208]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n16_lit_string_α
n14_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n15_op11_α:
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2328], rax
                        .section         .rodata
.Lrkfn103:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn103]
                        lea              rsi, [rbp + 2320]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n17_lit_string_α
n15_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n18_op11_α
.Lx104_0:
                        .quad            .Lx104_0_s
.Lx104_0_s:
                        .string          "main_failed"
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        mov              qword ptr [rbp + 2256], 1
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   n19_lit_string_α
.Lx105_0:
                        .quad            .Lx105_0_s
.Lx105_0_s:
                        .string          "/tmp/rung83_probe.txt"
#-----------------------------------------------------------------------------------------------------------------------
n18_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn107:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn107]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n21_op11_α
                                                                                        jmp   n20_lit_string_α
n18_op11_β:
                                                                                        jmp   n21_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        mov              qword ptr [rbp + 2272], 1
                        mov              rax, qword ptr [rip + .Lx108_0]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n22_var_ref_α
.Lx108_0:
                        .quad            .Lx108_0_s
.Lx108_0_s:
                        .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n23_op11_α
.Lx109_0:
                        .quad            .Lx109_0_s
.Lx109_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n21_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n21_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2528]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                                                                                        jmp   n24_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n23_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn114:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn114]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n21_op11_α
                                                                                        jmp   n25_move_label_α
n23_op11_β:
                                                                                        jmp   n21_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n24_op11_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2216], rax
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2232], rax
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2248], rax
                        .section         .rodata
.Lrkfn116:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn116]
                        lea              rsi, [rbp + 2208]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n26_var_ref_α
n24_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n25_move_label_α:
                        lea              rax, [rip + n21_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2608]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                                                                                        jmp   n28_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n27_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n27_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        mov              qword ptr [rbp + 2176], 1
                        mov              rax, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n29_var_ref_α
.Lx123_0:
                        .quad            .Lx123_0_s
.Lx123_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2528]
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                                                                                        jmp   n30_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:
                        mov              qword ptr [rbp + 2080], 1
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n31_op11_α
.Lx126_0:
                        .quad            .Lx126_0_s
.Lx126_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n31_op11_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2120], rax
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2136], rax
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2152], rax
                        lea              rdi, [rbp + 2112]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n32_op11_α
n31_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n32_op11_α:
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2024], rax
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2040], rax
                        lea              rdi, [rbp + 2016]
                        lea              r8, [rbp + 2016]
.Lx128_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx128_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx128_41
                        cmp              esi, 1
                                                                                        jne   .Lx128_55
                        mov              r8, rax
                                                                                        jmp   .Lx128_40
.Lx128_55:
                        cmp              esi, 2
                                                                                        jne   .Lx128_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx128_41
                        mov              r8, rax
                                                                                        jmp   .Lx128_40
.Lx128_56:
                        cmp              eax, 13
                                                                                        jne   .Lx128_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx128_41
                        cmp              rax, r8
                                                                                        je    .Lx128_41
                        mov              r8, rax
                                                                                        jmp   .Lx128_40
.Lx128_41:
                        lea              r9, [rbp + 2032]
.Lx128_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx128_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx128_43
                        cmp              esi, 1
                                                                                        jne   .Lx128_57
                        mov              r9, rax
                                                                                        jmp   .Lx128_42
.Lx128_57:
                        cmp              esi, 2
                                                                                        jne   .Lx128_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx128_43
                        mov              r9, rax
                                                                                        jmp   .Lx128_42
.Lx128_58:
                        cmp              eax, 13
                                                                                        jne   .Lx128_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx128_43
                        cmp              rax, r9
                                                                                        je    .Lx128_43
                        mov              r9, rax
                                                                                        jmp   .Lx128_42
.Lx128_43:
                        cmp              r8, r9
                                                                                        je    .Lx128_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx128_44
                        cmp              eax, 99
                                                                                        je    .Lx128_44
                        cmp              eax, 13
                                                                                        jne   .Lx128_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx128_44
                                                                                        jmp   .Lx128_45
.Lx128_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx128_53
                        cmp              eax, 99
                                                                                        je    .Lx128_53
                        cmp              eax, 13
                                                                                        jne   .Lx128_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx128_53
                                                                                        jmp   .Lx128_46
.Lx128_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx128_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx128_53
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
                                                                                        jmp   .Lx128_51
.Lx128_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx128_47
                        cmp              eax, 99
                                                                                        je    .Lx128_47
                        cmp              eax, 13
                                                                                        jne   .Lx128_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx128_47
                                                                                        jmp   .Lx128_48
.Lx128_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx128_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx128_53
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
                                                                                        jmp   .Lx128_51
.Lx128_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx128_49
                        cmp              edx, 14
                                                                                        je    .Lx128_53
                                                                                        jmp   .Lx128_52
.Lx128_49:
                        cmp              edx, 14
                                                                                        je    .Lx128_52
                        cmp              ecx, 7
                                                                                        je    .Lx128_53
                        cmp              edx, 7
                                                                                        je    .Lx128_53
                        cmp              ecx, 6
                                                                                        jne   .Lx128_50
                        cmp              edx, 6
                                                                                        jne   .Lx128_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx128_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx128_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx128_51
                                                                                        jmp   .Lx128_52
.Lx128_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx128_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx128_53
.Lx128_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx128_54
.Lx128_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx128_54
.Lx128_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx128_54:
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n33_lit_string_α
n32_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        mov              qword ptr [rbp + 1824], 1
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n34_lit_string_α
.Lx129_0:
                        .quad            .Lx129_0_s
.Lx129_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:
                        mov              qword ptr [rbp + 1712], 1
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n35_var_ref_α
.Lx130_0:
                        .quad            .Lx130_0_s
.Lx130_0_s:
                        .string          "permission_error"
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n36_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2560]
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                                                                                        jmp   n37_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2576]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n38_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n38_op11_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1640], rax
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1656], rax
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1688], rax
                        lea              rdi, [rbp + 1632]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n39_var_ref_α
n38_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2592]
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   n40_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n40_op11_α:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1768], rax
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1800], rax
                        lea              rdi, [rbp + 1760]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 99
                                                                                        je    n42_lit_string_α
                                                                                        jmp   n41_op11_α
n40_op11_β:
                                                                                        jmp   n42_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n41_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx141_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx141_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx141_101
.Lx141_100:
                        lea              rdi, [rbp + 1856]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx141_101:
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              eax, 99
                                                                                        je    n42_lit_string_α
                                                                                        jmp   n43_var_ref_α
n41_op11_β:
                                                                                        jmp   n42_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        mov              qword ptr [rbp + 1552], 1
                        mov              rax, qword ptr [rip + .Lx142_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n44_op11_α
.Lx142_0:
                        .quad            .Lx142_0_s
.Lx142_0_s:
                        .string          "no_catch"
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2608]
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                                                                                        jmp   n45_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n44_op11_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1544], rax
                        .section         .rodata
.Lrkfn146:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn146]
                        lea              rsi, [rbp + 1536]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n46_lit_string_α
n44_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n45_call_proc_staged_α:
                        mov              qword ptr [rbp + 1952], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx148_20
                        mov              rax, qword ptr [rbp + 1984]
                        mov              rdx, qword ptr [rbp + 1992]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx148_21
.Lx148_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1984]
                        mov              rdx, qword ptr [rbp + 1992]
                        call             rt_arg_stage@PLT
.Lx148_21:
                        mov              edi, 0
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx148_1
                        lea              rcx, [rip + .Lx148_3]
                        lea              rdx, [rip + .Lx148_4]
                                                                                        jmp   rax
.Lx148_3:
                        mov              qword ptr [rbp + 1960], rsp
                        mov              rax, qword ptr [rbp + 1952]
                        test             rax, rax
                                                                                        jne   .Lx148_5
                        mov              qword ptr [rbp + 1952], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx148_2
.Lx148_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx148_2
.Lx148_4:
                        mov              rax, qword ptr [rbp + 1952]
                        test             rax, rax
                                                                                        jne   .Lx148_6
                        mov              qword ptr [rbp + 1952], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx148_2
.Lx148_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx148_2
.Lx148_1:
                        call             rt_faildescr@PLT
.Lx148_2:
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                        cmp              eax, 99
                                                                                        je    n48_op11_α
                                                                                        jmp   n47_lit_string_α
n45_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1960]
                                                                                        jmp   qword ptr [rsp]
.Lx148_0:
                        .quad            .Lx148_0_s
.Lx148_0_s:
                        .string          "$call/1"
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        mov              qword ptr [rbp + 1504], 1
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n49_op11_α
.Lx149_0:
                        .quad            .Lx149_0_s
.Lx149_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:
                        mov              qword ptr [rbp + 1456], 1
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n50_var_ref_α
.Lx150_0:
                        .quad            .Lx150_0_s
.Lx150_0_s:
                        .string          "perm"
#-----------------------------------------------------------------------------------------------------------------------
n48_op11_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1896], rax
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1912], rax
                        .section         .rodata
.Lrkfn152:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn152]
                        lea              rsi, [rbp + 1888]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 99
                                                                                        je    n42_lit_string_α
                                                                                        jmp   n47_lit_string_α
n48_op11_β:
                                                                                        jmp   n42_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n49_op11_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1496], rax
                        .section         .rodata
.Lrkfn154:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn154]
                        lea              rsi, [rbp + 1488]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n51_var_ref_α
n49_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n52_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2528]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n53_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2560]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n54_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n53_op11_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1240], rax
                        .section         .rodata
.Lrkfn162:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn162]
                        lea              rsi, [rbp + 1232]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n55_var_ref_α
n53_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n54_op11_α:
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1416], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1432], rax
                        lea              rdi, [rbp + 1392]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n56_op11_α
n54_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2512]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n57_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n56_op11_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1336], rax
                        .section         .rodata
.Lrkfn167:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn167]
                        lea              rsi, [rbp + 1328]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n58_lit_string_α
n56_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:
                        mov              qword ptr [rbp + 1200], 1
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n59_lit_string_α
.Lx168_0:
                        .quad            .Lx168_0_s
.Lx168_0_s:
                        .string          "nl"
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:
                        mov              qword ptr [rbp + 1296], 1
                        mov              rax, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n60_op11_α
.Lx169_0:
                        .quad            .Lx169_0_s
.Lx169_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n61_op11_α
.Lx170_0:
                        .quad            .Lx170_0_s
.Lx170_0_s:
                        .string          "user_output"
#-----------------------------------------------------------------------------------------------------------------------
n60_op11_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1288], rax
                        .section         .rodata
.Lrkfn172:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn172]
                        lea              rsi, [rbp + 1280]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n51_var_ref_α
n60_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n61_op11_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1176], rax
                        lea              rdi, [rbp + 1152]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n62_op11_α
n61_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n62_op11_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1096], rax
                        lea              rdi, [rbp + 1072]
                        lea              r8, [rbp + 1072]
.Lx174_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx174_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx174_41
                        cmp              esi, 1
                                                                                        jne   .Lx174_55
                        mov              r8, rax
                                                                                        jmp   .Lx174_40
.Lx174_55:
                        cmp              esi, 2
                                                                                        jne   .Lx174_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx174_41
                        mov              r8, rax
                                                                                        jmp   .Lx174_40
.Lx174_56:
                        cmp              eax, 13
                                                                                        jne   .Lx174_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx174_41
                        cmp              rax, r8
                                                                                        je    .Lx174_41
                        mov              r8, rax
                                                                                        jmp   .Lx174_40
.Lx174_41:
                        lea              r9, [rbp + 1088]
.Lx174_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx174_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx174_43
                        cmp              esi, 1
                                                                                        jne   .Lx174_57
                        mov              r9, rax
                                                                                        jmp   .Lx174_42
.Lx174_57:
                        cmp              esi, 2
                                                                                        jne   .Lx174_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx174_43
                        mov              r9, rax
                                                                                        jmp   .Lx174_42
.Lx174_58:
                        cmp              eax, 13
                                                                                        jne   .Lx174_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx174_43
                        cmp              rax, r9
                                                                                        je    .Lx174_43
                        mov              r9, rax
                                                                                        jmp   .Lx174_42
.Lx174_43:
                        cmp              r8, r9
                                                                                        je    .Lx174_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx174_44
                        cmp              eax, 99
                                                                                        je    .Lx174_44
                        cmp              eax, 13
                                                                                        jne   .Lx174_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx174_44
                                                                                        jmp   .Lx174_45
.Lx174_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx174_53
                        cmp              eax, 99
                                                                                        je    .Lx174_53
                        cmp              eax, 13
                                                                                        jne   .Lx174_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx174_53
                                                                                        jmp   .Lx174_46
.Lx174_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx174_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx174_53
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
                                                                                        jmp   .Lx174_51
.Lx174_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx174_47
                        cmp              eax, 99
                                                                                        je    .Lx174_47
                        cmp              eax, 13
                                                                                        jne   .Lx174_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx174_47
                                                                                        jmp   .Lx174_48
.Lx174_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx174_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx174_53
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
                                                                                        jmp   .Lx174_51
.Lx174_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx174_49
                        cmp              edx, 14
                                                                                        je    .Lx174_53
                                                                                        jmp   .Lx174_52
.Lx174_49:
                        cmp              edx, 14
                                                                                        je    .Lx174_52
                        cmp              ecx, 7
                                                                                        je    .Lx174_53
                        cmp              edx, 7
                                                                                        je    .Lx174_53
                        cmp              ecx, 6
                                                                                        jne   .Lx174_50
                        cmp              edx, 6
                                                                                        jne   .Lx174_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx174_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx174_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx174_51
                                                                                        jmp   .Lx174_52
.Lx174_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx174_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx174_53
.Lx174_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx174_54
.Lx174_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx174_54
.Lx174_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx174_54:
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n63_var_ref_α
n62_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2496]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n64_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n64_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx177_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx177_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx177_101
.Lx177_100:
                        lea              rdi, [rbp + 912]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx177_101:
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n66_lit_string_α
                                                                                        jmp   n65_var_ref_α
n64_op11_β:
                                                                                        jmp   n66_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n65_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2512]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n67_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n68_op11_α
.Lx180_0:
                        .quad            .Lx180_0_s
.Lx180_0_s:
                        .string          "nl1_fail"
#-----------------------------------------------------------------------------------------------------------------------
n67_call_proc_staged_α:
                        mov              qword ptr [rbp + 1008], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx182_20
                        mov              rax, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx182_21
.Lx182_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        call             rt_arg_stage@PLT
.Lx182_21:
                        mov              edi, 0
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx182_1
                        lea              rcx, [rip + .Lx182_3]
                        lea              rdx, [rip + .Lx182_4]
                                                                                        jmp   rax
.Lx182_3:
                        mov              qword ptr [rbp + 1016], rsp
                        mov              rax, qword ptr [rbp + 1008]
                        test             rax, rax
                                                                                        jne   .Lx182_5
                        mov              qword ptr [rbp + 1008], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx182_2
.Lx182_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx182_2
.Lx182_4:
                        mov              rax, qword ptr [rbp + 1008]
                        test             rax, rax
                                                                                        jne   .Lx182_6
                        mov              qword ptr [rbp + 1008], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx182_2
.Lx182_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx182_2
.Lx182_1:
                        call             rt_faildescr@PLT
.Lx182_2:
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n70_op11_α
                                                                                        jmp   n69_lit_string_α
n67_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1016]
                                                                                        jmp   qword ptr [rsp]
.Lx182_0:
                        .quad            .Lx182_0_s
.Lx182_0_s:
                        .string          "$call/1"
#-----------------------------------------------------------------------------------------------------------------------
n68_op11_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 856], rax
                        .section         .rodata
.Lrkfn184:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn184]
                        lea              rsi, [rbp + 848]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n71_lit_string_α
n68_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx185_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n72_op11_α
.Lx185_0:
                        .quad            .Lx185_0_s
.Lx185_0_s:
                        .string          "nl1_ok"
#-----------------------------------------------------------------------------------------------------------------------
n70_op11_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 968], rax
                        .section         .rodata
.Lrkfn187:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn187]
                        lea              rsi, [rbp + 944]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n66_lit_string_α
                                                                                        jmp   n70_op11_α
n70_op11_β:
                                                                                        jmp   n66_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n73_op11_α
.Lx188_0:
                        .quad            .Lx188_0_s
.Lx188_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n72_op11_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lrkfn190:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn190]
                        lea              rsi, [rbp + 800]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n71_lit_string_α
n72_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n73_op11_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn192:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn192]
                        lea              rsi, [rbp + 752]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n74_var_ref_α
n73_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2480]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n75_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              rax, qword ptr [rip + .Lx195_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n76_lit_string_α
.Lx195_0:
                        .quad            .Lx195_0_s
.Lx195_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n77_lit_string_α
.Lx196_0:
                        .quad            .Lx196_0_s
.Lx196_0_s:
                        .string          "user_output"
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n78_op11_α
.Lx197_0:
                        .quad            .Lx197_0_s
.Lx197_0_s:
                        .string          "w2ok"
#-----------------------------------------------------------------------------------------------------------------------
n78_op11_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 656]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n79_op11_α
n78_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n79_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 584], rax
                        lea              rdi, [rbp + 560]
                        lea              r8, [rbp + 560]
.Lx199_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx199_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx199_41
                        cmp              esi, 1
                                                                                        jne   .Lx199_55
                        mov              r8, rax
                                                                                        jmp   .Lx199_40
.Lx199_55:
                        cmp              esi, 2
                                                                                        jne   .Lx199_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx199_41
                        mov              r8, rax
                                                                                        jmp   .Lx199_40
.Lx199_56:
                        cmp              eax, 13
                                                                                        jne   .Lx199_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx199_41
                        cmp              rax, r8
                                                                                        je    .Lx199_41
                        mov              r8, rax
                                                                                        jmp   .Lx199_40
.Lx199_41:
                        lea              r9, [rbp + 576]
.Lx199_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx199_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx199_43
                        cmp              esi, 1
                                                                                        jne   .Lx199_57
                        mov              r9, rax
                                                                                        jmp   .Lx199_42
.Lx199_57:
                        cmp              esi, 2
                                                                                        jne   .Lx199_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx199_43
                        mov              r9, rax
                                                                                        jmp   .Lx199_42
.Lx199_58:
                        cmp              eax, 13
                                                                                        jne   .Lx199_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx199_43
                        cmp              rax, r9
                                                                                        je    .Lx199_43
                        mov              r9, rax
                                                                                        jmp   .Lx199_42
.Lx199_43:
                        cmp              r8, r9
                                                                                        je    .Lx199_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx199_44
                        cmp              eax, 99
                                                                                        je    .Lx199_44
                        cmp              eax, 13
                                                                                        jne   .Lx199_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx199_44
                                                                                        jmp   .Lx199_45
.Lx199_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx199_53
                        cmp              eax, 99
                                                                                        je    .Lx199_53
                        cmp              eax, 13
                                                                                        jne   .Lx199_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx199_53
                                                                                        jmp   .Lx199_46
.Lx199_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx199_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx199_53
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
                                                                                        jmp   .Lx199_51
.Lx199_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx199_47
                        cmp              eax, 99
                                                                                        je    .Lx199_47
                        cmp              eax, 13
                                                                                        jne   .Lx199_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx199_47
                                                                                        jmp   .Lx199_48
.Lx199_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx199_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx199_53
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
                                                                                        jmp   .Lx199_51
.Lx199_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx199_49
                        cmp              edx, 14
                                                                                        je    .Lx199_53
                                                                                        jmp   .Lx199_52
.Lx199_49:
                        cmp              edx, 14
                                                                                        je    .Lx199_52
                        cmp              ecx, 7
                                                                                        je    .Lx199_53
                        cmp              edx, 7
                                                                                        je    .Lx199_53
                        cmp              ecx, 6
                                                                                        jne   .Lx199_50
                        cmp              edx, 6
                                                                                        jne   .Lx199_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx199_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx199_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx199_51
                                                                                        jmp   .Lx199_52
.Lx199_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx199_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx199_53
.Lx199_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx199_54
.Lx199_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx199_54
.Lx199_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx199_54:
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n80_var_ref_α
n79_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2464]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n81_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n81_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx202_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx202_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx202_101
.Lx202_100:
                        lea              rdi, [rbp + 400]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx202_101:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n83_lit_string_α
                                                                                        jmp   n82_var_ref_α
n81_op11_β:
                                                                                        jmp   n83_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2480]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n84_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n85_op11_α
.Lx205_0:
                        .quad            .Lx205_0_s
.Lx205_0_s:
                        .string          "w2_fail"
#-----------------------------------------------------------------------------------------------------------------------
n84_call_proc_staged_α:
                        mov              qword ptr [rbp + 496], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx207_20
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx207_21
.Lx207_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        call             rt_arg_stage@PLT
.Lx207_21:
                        mov              edi, 0
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx207_1
                        lea              rcx, [rip + .Lx207_3]
                        lea              rdx, [rip + .Lx207_4]
                                                                                        jmp   rax
.Lx207_3:
                        mov              qword ptr [rbp + 504], rsp
                        mov              rax, qword ptr [rbp + 496]
                        test             rax, rax
                                                                                        jne   .Lx207_5
                        mov              qword ptr [rbp + 496], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx207_2
.Lx207_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx207_2
.Lx207_4:
                        mov              rax, qword ptr [rbp + 496]
                        test             rax, rax
                                                                                        jne   .Lx207_6
                        mov              qword ptr [rbp + 496], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx207_2
.Lx207_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx207_2
.Lx207_1:
                        call             rt_faildescr@PLT
.Lx207_2:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n87_op11_α
                                                                                        jmp   n86_lit_string_α
n84_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 504]
                                                                                        jmp   qword ptr [rsp]
.Lx207_0:
                        .quad            .Lx207_0_s
.Lx207_0_s:
                        .string          "$call/1"
#-----------------------------------------------------------------------------------------------------------------------
n85_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn209:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn209]
                        lea              rsi, [rbp + 336]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n88_lit_string_α
n85_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n89_op11_α
.Lx210_0:
                        .quad            .Lx210_0_s
.Lx210_0_s:
                        .string          "w2_after"
#-----------------------------------------------------------------------------------------------------------------------
n87_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn212:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn212]
                        lea              rsi, [rbp + 432]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n83_lit_string_α
                                                                                        jmp   n87_op11_α
n87_op11_β:
                                                                                        jmp   n83_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n90_op11_α
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n89_op11_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn215:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn215]
                        lea              rsi, [rbp + 288]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n88_lit_string_α
n89_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n90_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn217:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn217]
                        lea              rsi, [rbp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n91_move_label_α
n90_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n91_move_label_α:
                        lea              rax, [rip + n14_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n27_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 2640]
                        add              rsp, 2648
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 2640]
                        add              rsp, 2648
                        ret
                        .section         .note.GNU-stack,"",@progbits
