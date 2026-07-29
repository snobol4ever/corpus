                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_between$2F3_α
proc_between$2F3_α:
                        .global          proc_between$2F3_α
                        .global          proc_between$2F3_β
                        .global          proc_between$2F3_γ
                        .global          proc_between$2F3_ω
                        sub              rsp, 240
                        mov              [rsp + 216], rcx
                        mov              [rsp + 224], rdx
                        mov              [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 192
                        mov              edx, 208
                        call             rt_jmp_frame_lexprep2@PLT
proc_between$2F3_α_body:
                        lea              rax, [rip + n4_suspend_β]
                        mov              qword ptr [rbp + 192], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_var_ref_α:
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
                        lea              rdi, [rip + .Lbynamegenfn4]
                        lea              rsi, [rbp + 80]
                        mov              edx, 3
                        lea              rcx, [rbp + 128]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_between$2F3_ω
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
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_between$2F3_res]
                        push             rax
                        mov              rax, [rbp + 216]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_between$2F3_ω:
                        mov              rax, [rbp + 224]
                        lea              rsp, [rbp + 240]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
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
                        mov              esi, 208
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
                        sub              rsp, 2600
                        mov              rdi, rsp
                        mov              ecx, 2600
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 2592], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n14_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx88_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx88_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx88_101
.Lx88_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx88_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n15_lit_string_α
n14_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        mov              qword ptr [rbp + 2000], 1
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n16_var_ref_α
.Lx89_0:
                        .quad            .Lx89_0_s
.Lx89_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                                                                                        jmp   n17_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2560]
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                                                                                        jmp   n18_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n18_op11_α:
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1944], rax
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1960], rax
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1976], rax
                        lea              rdi, [rbp + 1936]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                        cmp              eax, 99
                                                                                        je    n20_op11_α
                                                                                        jmp   n19_op11_α
n18_op11_β:
                                                                                        jmp   n20_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n19_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx95_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx95_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx95_101
.Lx95_100:
                        lea              rdi, [rbp + 2032]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx95_101:
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        cmp              eax, 99
                                                                                        je    n20_op11_α
                                                                                        jmp   n21_lit_string_α
n19_op11_β:
                                                                                        jmp   n20_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n20_op11_α:
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
n20_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:
                        mov              qword ptr [rbp + 2288], 1
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n22_lit_integer_α
.Lx97_0:
                        .quad            .Lx97_0_s
.Lx97_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:
                        mov              qword ptr [rbp + 2304], 6
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n23_var_ref_α
.Lx98_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2576]
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                                                                                        jmp   n24_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n24_call_proc_staged_α:
                        mov              qword ptr [rbp + 2256], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx102_20
                        mov              rax, qword ptr [rbp + 2288]
                        mov              rdx, qword ptr [rbp + 2296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx102_21
.Lx102_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2288]
                        mov              rdx, qword ptr [rbp + 2296]
                        call             rt_arg_stage@PLT
.Lx102_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx102_22
                        mov              rax, qword ptr [rbp + 2304]
                        mov              rdx, qword ptr [rbp + 2312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx102_23
.Lx102_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2304]
                        mov              rdx, qword ptr [rbp + 2312]
                        call             rt_arg_stage@PLT
.Lx102_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx102_24
                        mov              rax, qword ptr [rbp + 2320]
                        mov              rdx, qword ptr [rbp + 2328]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx102_25
.Lx102_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 2320]
                        mov              rdx, qword ptr [rbp + 2328]
                        call             rt_arg_stage@PLT
.Lx102_25:
                        mov              edi, 0
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx102_1
                        lea              rcx, [rip + .Lx102_3]
                        lea              rdx, [rip + .Lx102_4]
                                                                                        jmp   rax
.Lx102_3:
                        mov              qword ptr [rbp + 2264], rsp
                        mov              rax, qword ptr [rbp + 2256]
                        test             rax, rax
                                                                                        jne   .Lx102_5
                        mov              qword ptr [rbp + 2256], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx102_2
.Lx102_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx102_2
.Lx102_4:
                        mov              rax, qword ptr [rbp + 2256]
                        test             rax, rax
                                                                                        jne   .Lx102_6
                        mov              qword ptr [rbp + 2256], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx102_2
.Lx102_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx102_2
.Lx102_1:
                        call             rt_faildescr@PLT
.Lx102_2:
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              eax, 99
                                                                                        je    n26_op11_α
                                                                                        jmp   n25_lit_string_α
n24_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2264]
                                                                                        jmp   qword ptr [rsp]
.Lx102_0:
                        .quad            .Lx102_0_s
.Lx102_0_s:
                        .string          "between/3"
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        mov              qword ptr [rbp + 1552], 1
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n27_var_ref_α
.Lx103_0:
                        .quad            .Lx103_0_s
.Lx103_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n26_op11_α:
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 2072], rax
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 2088], rax
                        .section         .rodata
.Lrkfn105:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn105]
                        lea              rsi, [rbp + 2064]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                        cmp              eax, 99
                                                                                        je    n20_op11_α
                                                                                        jmp   n28_var_α
n26_op11_β:
                                                                                        jmp   n20_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2496]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   n29_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n30_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2512]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n31_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n30_op11_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2168], rax
                        .section         .rodata
.Lrkfn113:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn113]
                        lea              rsi, [rbp + 2160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        cmp              eax, 99
                                                                                        je    n26_op11_α
                                                                                        jmp   n32_lit_string_α
n30_op11_β:
                                                                                        jmp   n26_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n31_op11_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1496], rax
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1512], rax
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1528], rax
                        lea              rdi, [rbp + 1488]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        cmp              eax, 99
                                                                                        je    n20_op11_α
                                                                                        jmp   n33_op11_α
n31_op11_β:
                                                                                        jmp   n20_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:
                        mov              qword ptr [rbp + 2128], 1
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n34_op11_α
.Lx115_0:
                        .quad            .Lx115_0_s
.Lx115_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n33_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx116_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx116_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx116_101
.Lx116_100:
                        lea              rdi, [rbp + 1584]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx116_101:
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 99
                                                                                        je    n20_op11_α
                                                                                        jmp   n35_lit_integer_α
n33_op11_β:
                                                                                        jmp   n20_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n34_op11_α:
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2120], rax
                        .section         .rodata
.Lrkfn118:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn118]
                        lea              rsi, [rbp + 2112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        cmp              eax, 99
                                                                                        je    n26_op11_α
                                                                                        jmp   n25_lit_string_α
n34_op11_β:
                                                                                        jmp   n26_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:
                        mov              qword ptr [rbp + 1840], 6
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n36_lit_string_α
.Lx119_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:
                        mov              qword ptr [rbp + 1856], 1
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n37_var_ref_α
.Lx120_0:
                        .quad            .Lx120_0_s
.Lx120_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n37_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2528]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   n38_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n38_call_proc_staged_α:
                        mov              qword ptr [rbp + 1808], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx124_20
                        mov              rax, qword ptr [rbp + 1840]
                        mov              rdx, qword ptr [rbp + 1848]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx124_21
.Lx124_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1840]
                        mov              rdx, qword ptr [rbp + 1848]
                        call             rt_arg_stage@PLT
.Lx124_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx124_22
                        mov              rax, qword ptr [rbp + 1856]
                        mov              rdx, qword ptr [rbp + 1864]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx124_23
.Lx124_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1856]
                        mov              rdx, qword ptr [rbp + 1864]
                        call             rt_arg_stage@PLT
.Lx124_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx124_24
                        mov              rax, qword ptr [rbp + 1872]
                        mov              rdx, qword ptr [rbp + 1880]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx124_25
.Lx124_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1872]
                        mov              rdx, qword ptr [rbp + 1880]
                        call             rt_arg_stage@PLT
.Lx124_25:
                        mov              edi, 0
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx124_1
                        lea              rcx, [rip + .Lx124_3]
                        lea              rdx, [rip + .Lx124_4]
                                                                                        jmp   rax
.Lx124_3:
                        mov              qword ptr [rbp + 1816], rsp
                        mov              rax, qword ptr [rbp + 1808]
                        test             rax, rax
                                                                                        jne   .Lx124_5
                        mov              qword ptr [rbp + 1808], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx124_2
.Lx124_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx124_2
.Lx124_4:
                        mov              rax, qword ptr [rbp + 1808]
                        test             rax, rax
                                                                                        jne   .Lx124_6
                        mov              qword ptr [rbp + 1808], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx124_2
.Lx124_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx124_2
.Lx124_1:
                        call             rt_faildescr@PLT
.Lx124_2:
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 99
                                                                                        je    n40_op11_α
                                                                                        jmp   n39_lit_string_α
n38_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1816]
                                                                                        jmp   qword ptr [rsp]
.Lx124_0:
                        .quad            .Lx124_0_s
.Lx124_0_s:
                        .string          "between/3"
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:
                        mov              qword ptr [rbp + 1104], 1
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n41_var_ref_α
.Lx125_0:
                        .quad            .Lx125_0_s
.Lx125_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n40_op11_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1624], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1640], rax
                        .section         .rodata
.Lrkfn127:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn127]
                        lea              rsi, [rbp + 1616]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        cmp              eax, 99
                                                                                        je    n20_op11_α
                                                                                        jmp   n42_var_α
n40_op11_β:
                                                                                        jmp   n20_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2432]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n43_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n44_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2448]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n45_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n44_op11_α:
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1720], rax
                        .section         .rodata
.Lrkfn135:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn135]
                        lea              rsi, [rbp + 1712]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              eax, 99
                                                                                        je    n40_op11_α
                                                                                        jmp   n46_lit_string_α
n44_op11_β:
                                                                                        jmp   n40_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n45_op11_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 1080], rax
                        lea              rdi, [rbp + 1040]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n20_op11_α
                                                                                        jmp   n47_op11_α
n45_op11_β:
                                                                                        jmp   n20_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        mov              qword ptr [rbp + 1680], 1
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n48_op11_α
.Lx137_0:
                        .quad            .Lx137_0_s
.Lx137_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n47_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx138_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx138_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx138_101
.Lx138_100:
                        lea              rdi, [rbp + 1136]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx138_101:
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 99
                                                                                        je    n20_op11_α
                                                                                        jmp   n49_var_ref_α
n47_op11_β:
                                                                                        jmp   n20_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n48_op11_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1672], rax
                        .section         .rodata
.Lrkfn140:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn140]
                        lea              rsi, [rbp + 1664]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              eax, 99
                                                                                        je    n40_op11_α
                                                                                        jmp   n39_lit_string_α
n48_op11_β:
                                                                                        jmp   n40_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2464]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n50_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:
                        mov              qword ptr [rbp + 1408], 6
                        mov              rax, qword ptr [rip + .Lx143_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n51_var_ref_α
.Lx143_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n51_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2480]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n52_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n52_call_proc_staged_α:
                        mov              qword ptr [rbp + 1360], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx147_20
                        mov              rax, qword ptr [rbp + 1392]
                        mov              rdx, qword ptr [rbp + 1400]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx147_21
.Lx147_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1392]
                        mov              rdx, qword ptr [rbp + 1400]
                        call             rt_arg_stage@PLT
.Lx147_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx147_22
                        mov              rax, qword ptr [rbp + 1408]
                        mov              rdx, qword ptr [rbp + 1416]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx147_23
.Lx147_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1408]
                        mov              rdx, qword ptr [rbp + 1416]
                        call             rt_arg_stage@PLT
.Lx147_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx147_24
                        mov              rax, qword ptr [rbp + 1424]
                        mov              rdx, qword ptr [rbp + 1432]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx147_25
.Lx147_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1424]
                        mov              rdx, qword ptr [rbp + 1432]
                        call             rt_arg_stage@PLT
.Lx147_25:
                        mov              edi, 0
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx147_1
                        lea              rcx, [rip + .Lx147_3]
                        lea              rdx, [rip + .Lx147_4]
                                                                                        jmp   rax
.Lx147_3:
                        mov              qword ptr [rbp + 1368], rsp
                        mov              rax, qword ptr [rbp + 1360]
                        test             rax, rax
                                                                                        jne   .Lx147_5
                        mov              qword ptr [rbp + 1360], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx147_2
.Lx147_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx147_2
.Lx147_4:
                        mov              rax, qword ptr [rbp + 1360]
                        test             rax, rax
                                                                                        jne   .Lx147_6
                        mov              qword ptr [rbp + 1360], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx147_2
.Lx147_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx147_2
.Lx147_1:
                        call             rt_faildescr@PLT
.Lx147_2:
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    n54_op11_α
                                                                                        jmp   n53_lit_string_α
n52_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1368]
                                                                                        jmp   qword ptr [rsp]
.Lx147_0:
                        .quad            .Lx147_0_s
.Lx147_0_s:
                        .string          "between/3"
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n55_var_ref_α
.Lx148_0:
                        .quad            .Lx148_0_s
.Lx148_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n54_op11_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1192], rax
                        .section         .rodata
.Lrkfn150:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn150]
                        lea              rsi, [rbp + 1168]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    n20_op11_α
                                                                                        jmp   n56_var_α
n54_op11_β:
                                                                                        jmp   n20_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2368]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n57_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n58_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2384]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n59_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n58_op11_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1272], rax
                        .section         .rodata
.Lrkfn158:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn158]
                        lea              rsi, [rbp + 1264]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 99
                                                                                        je    n54_op11_α
                                                                                        jmp   n60_lit_string_α
n58_op11_β:
                                                                                        jmp   n54_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n59_op11_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 592]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n20_op11_α
                                                                                        jmp   n61_op11_α
n59_op11_β:
                                                                                        jmp   n20_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        mov              qword ptr [rbp + 1232], 1
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n62_op11_α
.Lx160_0:
                        .quad            .Lx160_0_s
.Lx160_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n61_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx161_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx161_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx161_101
.Lx161_100:
                        lea              rdi, [rbp + 688]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx161_101:
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n20_op11_α
                                                                                        jmp   n63_lit_integer_α
n61_op11_β:
                                                                                        jmp   n20_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n62_op11_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lrkfn163:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn163]
                        lea              rsi, [rbp + 1216]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 99
                                                                                        je    n54_op11_α
                                                                                        jmp   n53_lit_string_α
n62_op11_β:
                                                                                        jmp   n54_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_integer_α:
                        mov              qword ptr [rbp + 944], 6
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n64_var_ref_α
.Lx164_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2400]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n65_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n65_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2416]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n66_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n66_call_proc_staged_α:
                        mov              qword ptr [rbp + 912], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx170_20
                        mov              rax, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx170_21
.Lx170_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
                        call             rt_arg_stage@PLT
.Lx170_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx170_22
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx170_23
.Lx170_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        call             rt_arg_stage@PLT
.Lx170_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx170_24
                        mov              rax, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx170_25
.Lx170_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        call             rt_arg_stage@PLT
.Lx170_25:
                        mov              edi, 0
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx170_1
                        lea              rcx, [rip + .Lx170_3]
                        lea              rdx, [rip + .Lx170_4]
                                                                                        jmp   rax
.Lx170_3:
                        mov              qword ptr [rbp + 920], rsp
                        mov              rax, qword ptr [rbp + 912]
                        test             rax, rax
                                                                                        jne   .Lx170_5
                        mov              qword ptr [rbp + 912], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx170_2
.Lx170_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx170_2
.Lx170_4:
                        mov              rax, qword ptr [rbp + 912]
                        test             rax, rax
                                                                                        jne   .Lx170_6
                        mov              qword ptr [rbp + 912], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx170_2
.Lx170_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx170_2
.Lx170_1:
                        call             rt_faildescr@PLT
.Lx170_2:
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 99
                                                                                        je    n68_op11_α
                                                                                        jmp   n67_lit_string_α
n66_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 920]
                                                                                        jmp   qword ptr [rsp]
.Lx170_0:
                        .quad            .Lx170_0_s
.Lx170_0_s:
                        .string          "between/3"
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n69_var_ref_α
.Lx171_0:
                        .quad            .Lx171_0_s
.Lx171_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n68_op11_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 744], rax
                        .section         .rodata
.Lrkfn173:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn173]
                        lea              rsi, [rbp + 720]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n20_op11_α
                                                                                        jmp   n70_var_α
n68_op11_β:
                                                                                        jmp   n20_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n69_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2336]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n71_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n70_var_α:
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n72_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2352]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n73_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n72_op11_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 824], rax
                        .section         .rodata
.Lrkfn181:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn181]
                        lea              rsi, [rbp + 816]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n68_op11_α
                                                                                        jmp   n74_lit_string_α
n72_op11_β:
                                                                                        jmp   n68_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n73_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 144]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n20_op11_α
                                                                                        jmp   n75_op11_α
n73_op11_β:
                                                                                        jmp   n20_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n76_op11_α
.Lx183_0:
                        .quad            .Lx183_0_s
.Lx183_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n75_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx184_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx184_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx184_101
.Lx184_100:
                        lea              rdi, [rbp + 240]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx184_101:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n20_op11_α
                                                                                        jmp   n77_lit_integer_α
n75_op11_β:
                                                                                        jmp   n20_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n76_op11_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 776], rax
                        .section         .rodata
.Lrkfn186:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn186]
                        lea              rsi, [rbp + 768]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n68_op11_α
                                                                                        jmp   n67_lit_string_α
n76_op11_β:
                                                                                        jmp   n68_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_integer_α:
                        mov              qword ptr [rbp + 496], 6
                        mov              rax, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n78_lit_integer_α
.Lx187_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_integer_α:
                        mov              qword ptr [rbp + 512], 6
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n79_lit_string_α
.Lx188_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx189_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n80_call_proc_staged_α
.Lx189_0:
                        .quad            .Lx189_0_s
.Lx189_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n80_call_proc_staged_α:
                        mov              qword ptr [rbp + 464], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx191_20
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx191_21
.Lx191_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        call             rt_arg_stage@PLT
.Lx191_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx191_22
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx191_23
.Lx191_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        call             rt_arg_stage@PLT
.Lx191_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx191_24
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx191_25
.Lx191_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        call             rt_arg_stage@PLT
.Lx191_25:
                        mov              edi, 0
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx191_1
                        lea              rcx, [rip + .Lx191_3]
                        lea              rdx, [rip + .Lx191_4]
                                                                                        jmp   rax
.Lx191_3:
                        mov              qword ptr [rbp + 472], rsp
                        mov              rax, qword ptr [rbp + 464]
                        test             rax, rax
                                                                                        jne   .Lx191_5
                        mov              qword ptr [rbp + 464], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx191_2
.Lx191_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx191_2
.Lx191_4:
                        mov              rax, qword ptr [rbp + 464]
                        test             rax, rax
                                                                                        jne   .Lx191_6
                        mov              qword ptr [rbp + 464], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx191_2
.Lx191_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx191_2
.Lx191_1:
                        call             rt_faildescr@PLT
.Lx191_2:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n82_op11_α
                                                                                        jmp   n81_move_label_α
n80_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 472]
                                                                                        jmp   qword ptr [rsp]
.Lx191_0:
                        .quad            .Lx191_0_s
.Lx191_0_s:
                        .string          "between/3"
#-----------------------------------------------------------------------------------------------------------------------
n81_move_label_α:
                        lea              rax, [rip + n20_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n82_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn195:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn195]
                        lea              rsi, [rbp + 272]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n20_op11_α
                                                                                        jmp   n84_var_α
n82_op11_β:
                                                                                        jmp   n20_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n83_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n83_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n85_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n85_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn201:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn201]
                        lea              rsi, [rbp + 368]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n82_op11_α
                                                                                        jmp   n86_lit_string_α
n85_op11_β:
                                                                                        jmp   n82_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n87_op11_α
.Lx202_0:
                        .quad            .Lx202_0_s
.Lx202_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n87_op11_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn204:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn204]
                        lea              rsi, [rbp + 320]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n82_op11_α
                                                                                        jmp   n81_move_label_α
n87_op11_β:
                                                                                        jmp   n82_op11_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n83_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 2592]
                        add              rsp, 2600
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 2592]
                        add              rsp, 2600
                        ret
                        .section         .note.GNU-stack,"",@progbits
