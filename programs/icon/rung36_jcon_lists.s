                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__limage:
                        sub              rsp, 512
                        mov              qword ptr [rsp + 488], rcx
                        mov              qword ptr [rsp + 496], rdx
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
limage_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 360], rax;          jmp   n1_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], 3
                        mov              rax, qword ptr [rip + .Lx15_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n2_var_α
.Lx15_0:                .quad            .Lx15_0_s
.Lx15_0_s:              .string          ". ["
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 408], rax;          jmp   n3_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n3_unop_α:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n4_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 1
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n5_call_builtin_icon_α
.Lx19_0:                .quad            .Lx19_0_s
.Lx19_0_s:              .string          "]"
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α: mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 280], rax
                        .section         .rodata
.Lrkfn21:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn21]
                        lea              rsi, [rsp + 272]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              eax, 104;                            je    n6_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n6_lit_string_α
n5_call_builtin_icon_β:                                                       jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 1
                        mov              rax, qword ptr [rip + .Lx22_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n7_var_α
.Lx22_0:                .quad            .Lx22_0_s
.Lx22_0_s:              .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 248], rax;          jmp   n8_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n8_iterate_α:           mov              qword ptr [rsp + 224], 0
.Lx26_0:                mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdx, qword ptr [rsp + 224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              rax, 104;                            je    n11_call_builtin_icon_α
                                                                              jmp   n9_call_builtin_icon_α
n8_iterate_β:           inc              qword ptr [rsp + 224];               jmp   .Lx26_0
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_icon_α: mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lrkfn28:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn28]
                        lea              rsi, [rsp + 176]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              eax, 104;                            je    n8_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n10_call_builtin_icon_α
n9_call_builtin_icon_β:                                                       jmp   n8_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn30:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn30]
                        lea              rsi, [rsp + 96]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 104;                            je    n8_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n8_iterate_β
n10_call_builtin_icon_β:
                                                                              jmp   n8_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn32:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn32]
                        lea              rsi, [rsp + 64]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104;                            je    n12_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n12_return_α
n11_call_builtin_icon_β:
                                                                              jmp   n12_return_α
#-----------------------------------------------------------------------------------------------------------------------
n12_return_α:           mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   limage_γ
#-----------------------------------------------------------------------------------------------------------------------
limage_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
limage_β:
                                                                              jmp   limage_ω
#-----------------------------------------------------------------------------------------------------------------------
limage_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 488]
                        add              rsp, 512;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
limage_ω:
                        mov              rcx, qword ptr [rsp + 496]
                        add              rsp, 512;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
limage_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             rdx
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r10, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx34_2]
                        lea              rdx, [rip + .Lx34_3];                jmp   FN__limage
.Lx34_2:                pop              r11
                        pop              r11;                                 jmp   r11
.Lx34_3:                pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
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
                        sub              rsp, 10608
                        mov              qword ptr [rsp + 10584], rcx
                        mov              qword ptr [rsp + 10592], rdx
                        mov              rdi, rsp
                        add              rdi, 10432
                        xor              eax, eax
                        mov              ecx, 64
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 4
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n35_proc_value_α:       mov              rdi, qword ptr [rip + .Lx410_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 10416], rax
                        mov              qword ptr [rsp + 10424], rdx;        jmp   n36_call_builtin_icon_α
.Lx410_0:               .quad            .Lx410_0_s
.Lx410_0_s:             .string          "push"
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 10416]
                        mov              qword ptr [rsp + 10384], rax
                        mov              rax, qword ptr [rsp + 10424]
                        mov              qword ptr [rsp + 10392], rax
                        .section         .rodata
.Lrkfn412:              .string          "args"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn412]
                        lea              rsi, [rsp + 10384]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 10368], rax
                        mov              qword ptr [rsp + 10376], rdx
                        cmp              eax, 104;                            je    n38_proc_value_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n37_call_builtin_icon_α
n36_call_builtin_icon_β:
                                                                              jmp   n38_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n37_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 10368]
                        mov              qword ptr [rsp + 10336], rax
                        mov              rax, qword ptr [rsp + 10376]
                        mov              qword ptr [rsp + 10344], rax
                        .section         .rodata
.Lrkfn414:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn414]
                        lea              rsi, [rsp + 10336]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 10320], rax
                        mov              qword ptr [rsp + 10328], rdx
                        cmp              eax, 104;                            je    n38_proc_value_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n38_proc_value_α
n37_call_builtin_icon_β:
                                                                              jmp   n38_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n38_proc_value_α:       mov              rdi, qword ptr [rip + .Lx416_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 10304], rax
                        mov              qword ptr [rsp + 10312], rdx;        jmp   n39_call_builtin_icon_α
.Lx416_0:               .quad            .Lx416_0_s
.Lx416_0_s:             .string          "put"
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 10304]
                        mov              qword ptr [rsp + 10272], rax
                        mov              rax, qword ptr [rsp + 10312]
                        mov              qword ptr [rsp + 10280], rax
                        .section         .rodata
.Lrkfn418:              .string          "args"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn418]
                        lea              rsi, [rsp + 10272]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 10256], rax
                        mov              qword ptr [rsp + 10264], rdx
                        cmp              eax, 104;                            je    n41_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n40_call_builtin_icon_α
n39_call_builtin_icon_β:
                                                                              jmp   n41_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 10256]
                        mov              qword ptr [rsp + 10224], rax
                        mov              rax, qword ptr [rsp + 10264]
                        mov              qword ptr [rsp + 10232], rax
                        .section         .rodata
.Lrkfn420:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn420]
                        lea              rsi, [rsp + 10224]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 10208], rax
                        mov              qword ptr [rsp + 10216], rdx
                        cmp              eax, 104;                            je    n41_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n41_lit_string_α
n40_call_builtin_icon_β:
                                                                              jmp   n41_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:       mov              qword ptr [rsp + 10160], 2           # result
                        mov              dword ptr [rsp + 10164], 1
                        mov              rax, qword ptr [rip + .Lx421_0]
                        mov              qword ptr [rsp + 10168], rax;        jmp   n42_call_builtin_icon_α
.Lx421_0:               .quad            .Lx421_0_s
.Lx421_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n42_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn423:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn423]
                        lea              rsi, [rsp + 10192]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 10176], rax
                        mov              qword ptr [rsp + 10184], rdx
                        cmp              eax, 104;                            je    n44_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n43_call_proc_staged_α
n42_call_builtin_icon_β:
                                                                              jmp   n44_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n43_call_proc_staged_α: lea              rsi, [rsp + 10160]
                        lea              rdx, [rsp + 10176]
                        call             limage_dcα;                          jmp   .Lx425_2
.Lx425_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx425_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 10096], rax
                        mov              qword ptr [rsp + 10104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 10096]
                        mov              rdx, qword ptr [rsp + 10104]
.Lx425_29:              mov              qword ptr [rsp + 10096], rax
                        mov              qword ptr [rsp + 10104], rdx
                        cmp              eax, 104;                            je    n44_lit_string_α
                                                                              jmp   n44_lit_string_α
n43_call_proc_staged_β:                                                       jmp   n44_lit_string_α
.Lx425_0:               .quad            .Lx425_0_s
.Lx425_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:       mov              qword ptr [rsp + 10016], 2           # result
                        mov              dword ptr [rsp + 10020], 1
                        mov              rax, qword ptr [rip + .Lx426_0]
                        mov              qword ptr [rsp + 10024], rax;        jmp   n45_lit_integer_α
.Lx426_0:               .quad            .Lx426_0_s
.Lx426_0_s:             .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:      mov              qword ptr [rsp + 10080], 3           # result
                        mov              rax, qword ptr [rip + .Lx427_0]
                        mov              qword ptr [rsp + 10088], rax;        jmp   n46_call_builtin_icon_α
.Lx427_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n46_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 10080]
                        mov              qword ptr [rsp + 10048], rax
                        mov              rax, qword ptr [rsp + 10088]
                        mov              qword ptr [rsp + 10056], rax
                        .section         .rodata
.Lrkfn429:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn429]
                        lea              rsi, [rsp + 10048]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 10032], rax
                        mov              qword ptr [rsp + 10040], rdx
                        cmp              eax, 104;                            je    n48_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n47_call_proc_staged_α
n46_call_builtin_icon_β:
                                                                              jmp   n48_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n47_call_proc_staged_α: lea              rsi, [rsp + 10016]
                        lea              rdx, [rsp + 10032]
                        call             limage_dcα;                          jmp   .Lx431_2
.Lx431_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx431_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 9952], rax
                        mov              qword ptr [rsp + 9960], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 9952]
                        mov              rdx, qword ptr [rsp + 9960]
.Lx431_29:              mov              qword ptr [rsp + 9952], rax
                        mov              qword ptr [rsp + 9960], rdx
                        cmp              eax, 104;                            je    n48_lit_string_α
                                                                              jmp   n48_lit_string_α
n47_call_proc_staged_β:                                                       jmp   n48_lit_string_α
.Lx431_0:               .quad            .Lx431_0_s
.Lx431_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:       mov              qword ptr [rsp + 9824], 2            # result
                        mov              dword ptr [rsp + 9828], 1
                        mov              rax, qword ptr [rip + .Lx432_0]
                        mov              qword ptr [rsp + 9832], rax;         jmp   n49_keyword_icon_α
.Lx432_0:               .quad            .Lx432_0_s
.Lx432_0_s:             .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n49_keyword_icon_α:     mov              qword ptr [rsp + 9904], 0
                        mov              qword ptr [rsp + 9912], 0;           jmp   n50_lit_integer_α
n49_keyword_icon_β:                                                           jmp   n53_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:      mov              qword ptr [rsp + 9936], 3            # result
                        mov              rax, qword ptr [rip + .Lx434_0]
                        mov              qword ptr [rsp + 9944], rax;         jmp   n51_call_builtin_icon_α
.Lx434_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n51_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 9936]
                        mov              qword ptr [rsp + 9872], rax
                        mov              rax, qword ptr [rsp + 9944]
                        mov              qword ptr [rsp + 9880], rax
                        mov              rax, qword ptr [rsp + 9904]
                        mov              qword ptr [rsp + 9856], rax
                        mov              rax, qword ptr [rsp + 9912]
                        mov              qword ptr [rsp + 9864], rax
                        .section         .rodata
.Lrkfn436:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn436]
                        lea              rsi, [rsp + 9856]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 9840], rax
                        mov              qword ptr [rsp + 9848], rdx
                        cmp              eax, 104;                            je    n53_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n52_call_proc_staged_α
n51_call_builtin_icon_β:
                                                                              jmp   n53_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n52_call_proc_staged_α: lea              rsi, [rsp + 9824]
                        lea              rdx, [rsp + 9840]
                        call             limage_dcα;                          jmp   .Lx438_2
.Lx438_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx438_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 9760], rax
                        mov              qword ptr [rsp + 9768], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 9760]
                        mov              rdx, qword ptr [rsp + 9768]
.Lx438_29:              mov              qword ptr [rsp + 9760], rax
                        mov              qword ptr [rsp + 9768], rdx
                        cmp              eax, 104;                            je    n53_lit_string_α
                                                                              jmp   n53_lit_string_α
n52_call_proc_staged_β:                                                       jmp   n53_lit_string_α
.Lx438_0:               .quad            .Lx438_0_s
.Lx438_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:       mov              qword ptr [rsp + 9648], 2            # result
                        mov              dword ptr [rsp + 9652], 1
                        mov              rax, qword ptr [rip + .Lx439_0]
                        mov              qword ptr [rsp + 9656], rax;         jmp   n54_lit_integer_α
.Lx439_0:               .quad            .Lx439_0_s
.Lx439_0_s:             .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:      mov              qword ptr [rsp + 9728], 3            # result
                        mov              rax, qword ptr [rip + .Lx440_0]
                        mov              qword ptr [rsp + 9736], rax;         jmp   n55_lit_integer_α
.Lx440_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:      mov              qword ptr [rsp + 9744], 3            # result
                        mov              rax, qword ptr [rip + .Lx441_0]
                        mov              qword ptr [rsp + 9752], rax;         jmp   n56_call_builtin_icon_α
.Lx441_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n56_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 9744]
                        mov              qword ptr [rsp + 9696], rax
                        mov              rax, qword ptr [rsp + 9752]
                        mov              qword ptr [rsp + 9704], rax
                        mov              rax, qword ptr [rsp + 9728]
                        mov              qword ptr [rsp + 9680], rax
                        mov              rax, qword ptr [rsp + 9736]
                        mov              qword ptr [rsp + 9688], rax
                        .section         .rodata
.Lrkfn443:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn443]
                        lea              rsi, [rsp + 9680]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 9664], rax
                        mov              qword ptr [rsp + 9672], rdx
                        cmp              eax, 104;                            je    n58_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n57_call_proc_staged_α
n56_call_builtin_icon_β:
                                                                              jmp   n58_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n57_call_proc_staged_α: lea              rsi, [rsp + 9648]
                        lea              rdx, [rsp + 9664]
                        call             limage_dcα;                          jmp   .Lx445_2
.Lx445_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx445_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 9584], rax
                        mov              qword ptr [rsp + 9592], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 9584]
                        mov              rdx, qword ptr [rsp + 9592]
.Lx445_29:              mov              qword ptr [rsp + 9584], rax
                        mov              qword ptr [rsp + 9592], rdx
                        cmp              eax, 104;                            je    n58_lit_string_α
                                                                              jmp   n58_lit_string_α
n57_call_proc_staged_β:                                                       jmp   n58_lit_string_α
.Lx445_0:               .quad            .Lx445_0_s
.Lx445_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:       mov              qword ptr [rsp + 9440], 2            # result
                        mov              dword ptr [rsp + 9444], 1
                        mov              rax, qword ptr [rip + .Lx446_0]
                        mov              qword ptr [rsp + 9448], rax;         jmp   n59_lit_integer_α
.Lx446_0:               .quad            .Lx446_0_s
.Lx446_0_s:             .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_integer_α:      mov              qword ptr [rsp + 9536], 3            # result
                        mov              rax, qword ptr [rip + .Lx447_0]
                        mov              qword ptr [rsp + 9544], rax;         jmp   n60_lit_integer_α
.Lx447_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_integer_α:      mov              qword ptr [rsp + 9552], 3            # result
                        mov              rax, qword ptr [rip + .Lx448_0]
                        mov              qword ptr [rsp + 9560], rax;         jmp   n61_lit_integer_α
.Lx448_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_integer_α:      mov              qword ptr [rsp + 9568], 3            # result
                        mov              rax, qword ptr [rip + .Lx449_0]
                        mov              qword ptr [rsp + 9576], rax;         jmp   n62_call_builtin_icon_α
.Lx449_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n62_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 9568]
                        mov              qword ptr [rsp + 9504], rax
                        mov              rax, qword ptr [rsp + 9576]
                        mov              qword ptr [rsp + 9512], rax
                        mov              rax, qword ptr [rsp + 9552]
                        mov              qword ptr [rsp + 9488], rax
                        mov              rax, qword ptr [rsp + 9560]
                        mov              qword ptr [rsp + 9496], rax
                        mov              rax, qword ptr [rsp + 9536]
                        mov              qword ptr [rsp + 9472], rax
                        mov              rax, qword ptr [rsp + 9544]
                        mov              qword ptr [rsp + 9480], rax
                        .section         .rodata
.Lrkfn451:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn451]
                        lea              rsi, [rsp + 9472]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 9456], rax
                        mov              qword ptr [rsp + 9464], rdx
                        cmp              eax, 104;                            je    n64_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n63_call_proc_staged_α
n62_call_builtin_icon_β:
                                                                              jmp   n64_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n63_call_proc_staged_α: lea              rsi, [rsp + 9440]
                        lea              rdx, [rsp + 9456]
                        call             limage_dcα;                          jmp   .Lx453_2
.Lx453_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx453_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 9376], rax
                        mov              qword ptr [rsp + 9384], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 9376]
                        mov              rdx, qword ptr [rsp + 9384]
.Lx453_29:              mov              qword ptr [rsp + 9376], rax
                        mov              qword ptr [rsp + 9384], rdx
                        cmp              eax, 104;                            je    n64_lit_string_α
                                                                              jmp   n64_lit_string_α
n63_call_proc_staged_β:                                                       jmp   n64_lit_string_α
.Lx453_0:               .quad            .Lx453_0_s
.Lx453_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:       mov              qword ptr [rsp + 9344], 2            # result
                        mov              dword ptr [rsp + 9348], 1
                        mov              rax, qword ptr [rip + .Lx454_0]
                        mov              qword ptr [rsp + 9352], rax;         jmp   n65_make_list_α
.Lx454_0:               .quad            .Lx454_0_s
.Lx454_0_s:             .string          "e"
#-----------------------------------------------------------------------------------------------------------------------
n65_make_list_α:        lea              rdi, [rsp + 9376]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 9360], rax
                        mov              qword ptr [rsp + 9368], rdx;         jmp   n66_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n66_call_proc_staged_α: lea              rsi, [rsp + 9344]
                        lea              rdx, [rsp + 9360]
                        call             limage_dcα;                          jmp   .Lx458_2
.Lx458_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx458_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 9280], rax
                        mov              qword ptr [rsp + 9288], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 9280]
                        mov              rdx, qword ptr [rsp + 9288]
.Lx458_29:              mov              qword ptr [rsp + 9280], rax
                        mov              qword ptr [rsp + 9288], rdx
                        cmp              eax, 104;                            je    n67_lit_string_α
                                                                              jmp   n67_lit_string_α
n66_call_proc_staged_β:                                                       jmp   n67_lit_string_α
.Lx458_0:               .quad            .Lx458_0_s
.Lx458_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:       mov              qword ptr [rsp + 9200], 2            # result
                        mov              dword ptr [rsp + 9204], 1
                        mov              rax, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rsp + 9208], rax;         jmp   n68_keyword_icon_α
.Lx459_0:               .quad            .Lx459_0_s
.Lx459_0_s:             .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n68_keyword_icon_α:     mov              qword ptr [rsp + 9248], 0
                        mov              qword ptr [rsp + 9256], 0;           jmp   n69_make_list_α
n68_keyword_icon_β:                                                           jmp   n71_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n69_make_list_α:        mov              rax, qword ptr [rsp + 9248]
                        mov              qword ptr [rsp + 9232], rax
                        mov              rax, qword ptr [rsp + 9256]
                        mov              qword ptr [rsp + 9240], rax
                        lea              rdi, [rsp + 9232]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 9216], rax
                        mov              qword ptr [rsp + 9224], rdx;         jmp   n70_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n70_call_proc_staged_α: lea              rsi, [rsp + 9200]
                        lea              rdx, [rsp + 9216]
                        call             limage_dcα;                          jmp   .Lx464_2
.Lx464_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx464_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 9136], rax
                        mov              qword ptr [rsp + 9144], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 9136]
                        mov              rdx, qword ptr [rsp + 9144]
.Lx464_29:              mov              qword ptr [rsp + 9136], rax
                        mov              qword ptr [rsp + 9144], rdx
                        cmp              eax, 104;                            je    n71_lit_string_α
                                                                              jmp   n71_lit_string_α
n70_call_proc_staged_β:                                                       jmp   n71_lit_string_α
.Lx464_0:               .quad            .Lx464_0_s
.Lx464_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:       mov              qword ptr [rsp + 9072], 2            # result
                        mov              dword ptr [rsp + 9076], 1
                        mov              rax, qword ptr [rip + .Lx465_0]
                        mov              qword ptr [rsp + 9080], rax;         jmp   n72_lit_integer_α
.Lx465_0:               .quad            .Lx465_0_s
.Lx465_0_s:             .string          "g"
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_integer_α:      mov              qword ptr [rsp + 9120], 3            # result
                        mov              rax, qword ptr [rip + .Lx466_0]
                        mov              qword ptr [rsp + 9128], rax;         jmp   n73_make_list_α
.Lx466_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n73_make_list_α:        mov              rax, qword ptr [rsp + 9120]
                        mov              qword ptr [rsp + 9104], rax
                        mov              rax, qword ptr [rsp + 9128]
                        mov              qword ptr [rsp + 9112], rax
                        lea              rdi, [rsp + 9104]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 9088], rax
                        mov              qword ptr [rsp + 9096], rdx;         jmp   n74_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n74_call_proc_staged_α: lea              rsi, [rsp + 9072]
                        lea              rdx, [rsp + 9088]
                        call             limage_dcα;                          jmp   .Lx470_2
.Lx470_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx470_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 9008], rax
                        mov              qword ptr [rsp + 9016], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 9008]
                        mov              rdx, qword ptr [rsp + 9016]
.Lx470_29:              mov              qword ptr [rsp + 9008], rax
                        mov              qword ptr [rsp + 9016], rdx
                        cmp              eax, 104;                            je    n75_lit_string_α
                                                                              jmp   n75_lit_string_α
n74_call_proc_staged_β:                                                       jmp   n75_lit_string_α
.Lx470_0:               .quad            .Lx470_0_s
.Lx470_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:       mov              qword ptr [rsp + 8848], 2            # result
                        mov              dword ptr [rsp + 8852], 1
                        mov              rax, qword ptr [rip + .Lx471_0]
                        mov              qword ptr [rsp + 8856], rax;         jmp   n76_lit_integer_α
.Lx471_0:               .quad            .Lx471_0_s
.Lx471_0_s:             .string          "h"
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_integer_α:      mov              qword ptr [rsp + 8944], 3            # result
                        mov              rax, qword ptr [rip + .Lx472_0]
                        mov              qword ptr [rsp + 8952], rax;         jmp   n77_lit_integer_α
.Lx472_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_integer_α:      mov              qword ptr [rsp + 8960], 3            # result
                        mov              rax, qword ptr [rip + .Lx473_0]
                        mov              qword ptr [rsp + 8968], rax;         jmp   n78_lit_integer_α
.Lx473_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_integer_α:      mov              qword ptr [rsp + 8976], 3            # result
                        mov              rax, qword ptr [rip + .Lx474_0]
                        mov              qword ptr [rsp + 8984], rax;         jmp   n79_lit_integer_α
.Lx474_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_integer_α:      mov              qword ptr [rsp + 8992], 3            # result
                        mov              rax, qword ptr [rip + .Lx475_0]
                        mov              qword ptr [rsp + 9000], rax;         jmp   n80_make_list_α
.Lx475_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n80_make_list_α:        mov              rax, qword ptr [rsp + 8944]
                        mov              qword ptr [rsp + 8880], rax
                        mov              rax, qword ptr [rsp + 8952]
                        mov              qword ptr [rsp + 8888], rax
                        mov              rax, qword ptr [rsp + 8960]
                        mov              qword ptr [rsp + 8896], rax
                        mov              rax, qword ptr [rsp + 8968]
                        mov              qword ptr [rsp + 8904], rax
                        mov              rax, qword ptr [rsp + 8976]
                        mov              qword ptr [rsp + 8912], rax
                        mov              rax, qword ptr [rsp + 8984]
                        mov              qword ptr [rsp + 8920], rax
                        mov              rax, qword ptr [rsp + 8992]
                        mov              qword ptr [rsp + 8928], rax
                        mov              rax, qword ptr [rsp + 9000]
                        mov              qword ptr [rsp + 8936], rax
                        lea              rdi, [rsp + 8880]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 8864], rax
                        mov              qword ptr [rsp + 8872], rdx;         jmp   n81_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n81_call_proc_staged_α: lea              rsi, [rsp + 8848]
                        lea              rdx, [rsp + 8864]
                        call             limage_dcα;                          jmp   .Lx479_2
.Lx479_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx479_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 8784], rax
                        mov              qword ptr [rsp + 8792], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8784]
                        mov              rdx, qword ptr [rsp + 8792]
.Lx479_29:              mov              qword ptr [rsp + 8784], rax
                        mov              qword ptr [rsp + 8792], rdx
                        cmp              eax, 104;                            je    n82_lit_string_α
                                                                              jmp   n82_lit_string_α
n81_call_proc_staged_β:                                                       jmp   n82_lit_string_α
.Lx479_0:               .quad            .Lx479_0_s
.Lx479_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:       mov              qword ptr [rsp + 8464], 2            # result
                        mov              dword ptr [rsp + 8468], 1
                        mov              rax, qword ptr [rip + .Lx480_0]
                        mov              qword ptr [rsp + 8472], rax;         jmp   n83_lit_integer_α
.Lx480_0:               .quad            .Lx480_0_s
.Lx480_0_s:             .string          "i"
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:      mov              qword ptr [rsp + 8560], 3            # result
                        mov              rax, qword ptr [rip + .Lx481_0]
                        mov              qword ptr [rsp + 8568], rax;         jmp   n84_lit_integer_α
.Lx481_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_integer_α:      mov              qword ptr [rsp + 8576], 3            # result
                        mov              rax, qword ptr [rip + .Lx482_0]
                        mov              qword ptr [rsp + 8584], rax;         jmp   n85_lit_integer_α
.Lx482_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:      mov              qword ptr [rsp + 8592], 3            # result
                        mov              rax, qword ptr [rip + .Lx483_0]
                        mov              qword ptr [rsp + 8600], rax;         jmp   n86_make_list_α
.Lx483_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n86_make_list_α:        mov              rax, qword ptr [rsp + 8560]
                        mov              qword ptr [rsp + 8512], rax
                        mov              rax, qword ptr [rsp + 8568]
                        mov              qword ptr [rsp + 8520], rax
                        mov              rax, qword ptr [rsp + 8576]
                        mov              qword ptr [rsp + 8528], rax
                        mov              rax, qword ptr [rsp + 8584]
                        mov              qword ptr [rsp + 8536], rax
                        mov              rax, qword ptr [rsp + 8592]
                        mov              qword ptr [rsp + 8544], rax
                        mov              rax, qword ptr [rsp + 8600]
                        mov              qword ptr [rsp + 8552], rax
                        lea              rdi, [rsp + 8512]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 8496], rax
                        mov              qword ptr [rsp + 8504], rdx;         jmp   n87_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_integer_α:      mov              qword ptr [rsp + 8704], 3            # result
                        mov              rax, qword ptr [rip + .Lx486_0]
                        mov              qword ptr [rsp + 8712], rax;         jmp   n88_lit_integer_α
.Lx486_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:      mov              qword ptr [rsp + 8720], 3            # result
                        mov              rax, qword ptr [rip + .Lx487_0]
                        mov              qword ptr [rsp + 8728], rax;         jmp   n89_lit_integer_α
.Lx487_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_integer_α:      mov              qword ptr [rsp + 8736], 3            # result
                        mov              rax, qword ptr [rip + .Lx488_0]
                        mov              qword ptr [rsp + 8744], rax;         jmp   n90_lit_integer_α
.Lx488_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_integer_α:      mov              qword ptr [rsp + 8752], 3            # result
                        mov              rax, qword ptr [rip + .Lx489_0]
                        mov              qword ptr [rsp + 8760], rax;         jmp   n91_lit_integer_α
.Lx489_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:      mov              qword ptr [rsp + 8768], 3            # result
                        mov              rax, qword ptr [rip + .Lx490_0]
                        mov              qword ptr [rsp + 8776], rax;         jmp   n92_make_list_α
.Lx490_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n92_make_list_α:        mov              rax, qword ptr [rsp + 8704]
                        mov              qword ptr [rsp + 8624], rax
                        mov              rax, qword ptr [rsp + 8712]
                        mov              qword ptr [rsp + 8632], rax
                        mov              rax, qword ptr [rsp + 8720]
                        mov              qword ptr [rsp + 8640], rax
                        mov              rax, qword ptr [rsp + 8728]
                        mov              qword ptr [rsp + 8648], rax
                        mov              rax, qword ptr [rsp + 8736]
                        mov              qword ptr [rsp + 8656], rax
                        mov              rax, qword ptr [rsp + 8744]
                        mov              qword ptr [rsp + 8664], rax
                        mov              rax, qword ptr [rsp + 8752]
                        mov              qword ptr [rsp + 8672], rax
                        mov              rax, qword ptr [rsp + 8760]
                        mov              qword ptr [rsp + 8680], rax
                        mov              rax, qword ptr [rsp + 8768]
                        mov              qword ptr [rsp + 8688], rax
                        mov              rax, qword ptr [rsp + 8776]
                        mov              qword ptr [rsp + 8696], rax
                        lea              rdi, [rsp + 8624]
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 8608], rax
                        mov              qword ptr [rsp + 8616], rdx;         jmp   n93_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n93_binop_α:            mov              rdi, qword ptr [rsp + 8496]
                        mov              rsi, qword ptr [rsp + 8504]
                        mov              rdx, qword ptr [rsp + 8608]
                        mov              rcx, qword ptr [rsp + 8616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 8480], rax
                        mov              qword ptr [rsp + 8488], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n94_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n94_call_proc_staged_α: lea              rsi, [rsp + 8464]
                        lea              rdx, [rsp + 8480]
                        call             limage_dcα;                          jmp   .Lx495_2
.Lx495_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx495_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 8400], rax
                        mov              qword ptr [rsp + 8408], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8400]
                        mov              rdx, qword ptr [rsp + 8408]
.Lx495_29:              mov              qword ptr [rsp + 8400], rax
                        mov              qword ptr [rsp + 8408], rdx
                        cmp              eax, 104;                            je    n95_lit_integer_α
                                                                              jmp   n95_lit_integer_α
n94_call_proc_staged_β:                                                       jmp   n95_lit_integer_α
.Lx495_0:               .quad            .Lx495_0_s
.Lx495_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:      mov              qword ptr [rsp + 8352], 3            # result
                        mov              rax, qword ptr [rip + .Lx496_0]
                        mov              qword ptr [rsp + 8360], rax;         jmp   n96_lit_integer_α
.Lx496_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:      mov              qword ptr [rsp + 8368], 3            # result
                        mov              rax, qword ptr [rip + .Lx497_0]
                        mov              qword ptr [rsp + 8376], rax;         jmp   n97_lit_integer_α
.Lx497_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_integer_α:      mov              qword ptr [rsp + 8384], 3            # result
                        mov              rax, qword ptr [rip + .Lx498_0]
                        mov              qword ptr [rsp + 8392], rax;         jmp   n98_make_list_α
.Lx498_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n98_make_list_α:        mov              rax, qword ptr [rsp + 8352]
                        mov              qword ptr [rsp + 8304], rax
                        mov              rax, qword ptr [rsp + 8360]
                        mov              qword ptr [rsp + 8312], rax
                        mov              rax, qword ptr [rsp + 8368]
                        mov              qword ptr [rsp + 8320], rax
                        mov              rax, qword ptr [rsp + 8376]
                        mov              qword ptr [rsp + 8328], rax
                        mov              rax, qword ptr [rsp + 8384]
                        mov              qword ptr [rsp + 8336], rax
                        mov              rax, qword ptr [rsp + 8392]
                        mov              qword ptr [rsp + 8344], rax
                        lea              rdi, [rsp + 8304]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 8288], rax
                        mov              qword ptr [rsp + 8296], rdx;         jmp   n99_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n99_assign_α:           mov              rax, qword ptr [rsp + 8288]
                        mov              rdx, qword ptr [rsp + 8296]
                        mov              qword ptr [rsp + 10464], rax
                        mov              qword ptr [rsp + 10472], rdx;        jmp   n100_var_α
#-----------------------------------------------------------------------------------------------------------------------
n100_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 8272], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 8280], rax;         jmp   n101_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n101_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 8272]
                        mov              qword ptr [rsp + 8240], rax
                        mov              rax, qword ptr [rsp + 8280]
                        mov              qword ptr [rsp + 8248], rax
                        .section         .rodata
.Lrkfn505:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn505]
                        lea              rsi, [rsp + 8240]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 8224], rax
                        mov              qword ptr [rsp + 8232], rdx
                        cmp              eax, 104;                            je    n102_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n102_lit_string_α
n101_call_builtin_icon_β:
                                                                              jmp   n102_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:      mov              qword ptr [rsp + 8192], 2            # result
                        mov              dword ptr [rsp + 8196], 1
                        mov              rax, qword ptr [rip + .Lx506_0]
                        mov              qword ptr [rsp + 8200], rax;         jmp   n103_var_α
.Lx506_0:               .quad            .Lx506_0_s
.Lx506_0_s:             .string          "A"
#-----------------------------------------------------------------------------------------------------------------------
n103_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 8208], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 8216], rax;         jmp   n104_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n104_call_proc_staged_α:
                        lea              rsi, [rsp + 8192]
                        lea              rdx, [rsp + 8208]
                        call             limage_dcα;                          jmp   .Lx510_2
.Lx510_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx510_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 8128], rax
                        mov              qword ptr [rsp + 8136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8128]
                        mov              rdx, qword ptr [rsp + 8136]
.Lx510_29:              mov              qword ptr [rsp + 8128], rax
                        mov              qword ptr [rsp + 8136], rdx
                        cmp              eax, 104;                            je    n105_var_α
                                                                              jmp   n105_var_α
n104_call_proc_staged_β:
                                                                              jmp   n105_var_α
.Lx510_0:               .quad            .Lx510_0_s
.Lx510_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n105_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 8112], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 8120], rax;         jmp   n106_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n106_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 8112]
                        mov              qword ptr [rsp + 8080], rax
                        mov              rax, qword ptr [rsp + 8120]
                        mov              qword ptr [rsp + 8088], rax
                        .section         .rodata
.Lrkfn514:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn514]
                        lea              rsi, [rsp + 8080]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 8064], rax
                        mov              qword ptr [rsp + 8072], rdx
                        cmp              eax, 104;                            je    n107_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n107_lit_string_α
n106_call_builtin_icon_β:
                                                                              jmp   n107_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:      mov              qword ptr [rsp + 8032], 2            # result
                        mov              dword ptr [rsp + 8036], 1
                        mov              rax, qword ptr [rip + .Lx515_0]
                        mov              qword ptr [rsp + 8040], rax;         jmp   n108_var_α
.Lx515_0:               .quad            .Lx515_0_s
.Lx515_0_s:             .string          "B"
#-----------------------------------------------------------------------------------------------------------------------
n108_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 8048], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 8056], rax;         jmp   n109_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n109_call_proc_staged_α:
                        lea              rsi, [rsp + 8032]
                        lea              rdx, [rsp + 8048]
                        call             limage_dcα;                          jmp   .Lx519_2
.Lx519_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx519_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 7968], rax
                        mov              qword ptr [rsp + 7976], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 7968]
                        mov              rdx, qword ptr [rsp + 7976]
.Lx519_29:              mov              qword ptr [rsp + 7968], rax
                        mov              qword ptr [rsp + 7976], rdx
                        cmp              eax, 104;                            je    n110_lit_string_α
                                                                              jmp   n110_lit_string_α
n109_call_proc_staged_β:
                                                                              jmp   n110_lit_string_α
.Lx519_0:               .quad            .Lx519_0_s
.Lx519_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:      mov              qword ptr [rsp + 7840], 2            # result
                        mov              dword ptr [rsp + 7844], 1
                        mov              rax, qword ptr [rip + .Lx520_0]
                        mov              qword ptr [rsp + 7848], rax;         jmp   n111_var_α
.Lx520_0:               .quad            .Lx520_0_s
.Lx520_0_s:             .string          "\t"
#-----------------------------------------------------------------------------------------------------------------------
n111_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 7952], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 7960], rax;         jmp   n112_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n112_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 7952]
                        mov              qword ptr [rsp + 7920], rax
                        mov              rax, qword ptr [rsp + 7960]
                        mov              qword ptr [rsp + 7928], rax
                        .section         .rodata
.Lrkfn524:              .string          "pop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn524]
                        lea              rsi, [rsp + 7920]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7904], rax
                        mov              qword ptr [rsp + 7912], rdx
                        cmp              eax, 104;                            je    n115_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n113_call_builtin_icon_α
n112_call_builtin_icon_β:
                                                                              jmp   n115_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n113_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 7904]
                        mov              qword ptr [rsp + 7872], rax
                        mov              rax, qword ptr [rsp + 7912]
                        mov              qword ptr [rsp + 7880], rax
                        .section         .rodata
.Lrkfn526:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn526]
                        lea              rsi, [rsp + 7872]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7856], rax
                        mov              qword ptr [rsp + 7864], rdx
                        cmp              eax, 104;                            je    n115_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n114_call_builtin_icon_α
n113_call_builtin_icon_β:
                                                                              jmp   n115_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n114_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 7856]
                        mov              qword ptr [rsp + 7808], rax
                        mov              rax, qword ptr [rsp + 7864]
                        mov              qword ptr [rsp + 7816], rax
                        mov              rax, qword ptr [rsp + 7840]
                        mov              qword ptr [rsp + 7792], rax
                        mov              rax, qword ptr [rsp + 7848]
                        mov              qword ptr [rsp + 7800], rax
                        .section         .rodata
.Lrkfn528:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn528]
                        lea              rsi, [rsp + 7792]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7776], rax
                        mov              qword ptr [rsp + 7784], rdx
                        cmp              eax, 104;                            je    n115_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n115_lit_string_α
n114_call_builtin_icon_β:
                                                                              jmp   n115_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_string_α:      mov              qword ptr [rsp + 7744], 2            # result
                        mov              dword ptr [rsp + 7748], 1
                        mov              rax, qword ptr [rip + .Lx529_0]
                        mov              qword ptr [rsp + 7752], rax;         jmp   n116_var_α
.Lx529_0:               .quad            .Lx529_0_s
.Lx529_0_s:             .string          "C"
#-----------------------------------------------------------------------------------------------------------------------
n116_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 7760], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 7768], rax;         jmp   n117_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n117_call_proc_staged_α:
                        lea              rsi, [rsp + 7744]
                        lea              rdx, [rsp + 7760]
                        call             limage_dcα;                          jmp   .Lx533_2
.Lx533_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx533_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 7680], rax
                        mov              qword ptr [rsp + 7688], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 7680]
                        mov              rdx, qword ptr [rsp + 7688]
.Lx533_29:              mov              qword ptr [rsp + 7680], rax
                        mov              qword ptr [rsp + 7688], rdx
                        cmp              eax, 104;                            je    n118_lit_string_α
                                                                              jmp   n118_lit_string_α
n117_call_proc_staged_β:
                                                                              jmp   n118_lit_string_α
.Lx533_0:               .quad            .Lx533_0_s
.Lx533_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:      mov              qword ptr [rsp + 7552], 2            # result
                        mov              dword ptr [rsp + 7556], 1
                        mov              rax, qword ptr [rip + .Lx534_0]
                        mov              qword ptr [rsp + 7560], rax;         jmp   n119_var_α
.Lx534_0:               .quad            .Lx534_0_s
.Lx534_0_s:             .string          "\t"
#-----------------------------------------------------------------------------------------------------------------------
n119_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 7664], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 7672], rax;         jmp   n120_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n120_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 7664]
                        mov              qword ptr [rsp + 7632], rax
                        mov              rax, qword ptr [rsp + 7672]
                        mov              qword ptr [rsp + 7640], rax
                        .section         .rodata
.Lrkfn538:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn538]
                        lea              rsi, [rsp + 7632]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7616], rax
                        mov              qword ptr [rsp + 7624], rdx
                        cmp              eax, 104;                            je    n123_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n121_call_builtin_icon_α
n120_call_builtin_icon_β:
                                                                              jmp   n123_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n121_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 7616]
                        mov              qword ptr [rsp + 7584], rax
                        mov              rax, qword ptr [rsp + 7624]
                        mov              qword ptr [rsp + 7592], rax
                        .section         .rodata
.Lrkfn540:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn540]
                        lea              rsi, [rsp + 7584]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7568], rax
                        mov              qword ptr [rsp + 7576], rdx
                        cmp              eax, 104;                            je    n123_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n122_call_builtin_icon_α
n121_call_builtin_icon_β:
                                                                              jmp   n123_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n122_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 7568]
                        mov              qword ptr [rsp + 7520], rax
                        mov              rax, qword ptr [rsp + 7576]
                        mov              qword ptr [rsp + 7528], rax
                        mov              rax, qword ptr [rsp + 7552]
                        mov              qword ptr [rsp + 7504], rax
                        mov              rax, qword ptr [rsp + 7560]
                        mov              qword ptr [rsp + 7512], rax
                        .section         .rodata
.Lrkfn542:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn542]
                        lea              rsi, [rsp + 7504]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7488], rax
                        mov              qword ptr [rsp + 7496], rdx
                        cmp              eax, 104;                            je    n123_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n123_lit_string_α
n122_call_builtin_icon_β:
                                                                              jmp   n123_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:      mov              qword ptr [rsp + 7456], 2            # result
                        mov              dword ptr [rsp + 7460], 1
                        mov              rax, qword ptr [rip + .Lx543_0]
                        mov              qword ptr [rsp + 7464], rax;         jmp   n124_var_α
.Lx543_0:               .quad            .Lx543_0_s
.Lx543_0_s:             .string          "D"
#-----------------------------------------------------------------------------------------------------------------------
n124_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 7472], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 7480], rax;         jmp   n125_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n125_call_proc_staged_α:
                        lea              rsi, [rsp + 7456]
                        lea              rdx, [rsp + 7472]
                        call             limage_dcα;                          jmp   .Lx547_2
.Lx547_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx547_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 7392], rax
                        mov              qword ptr [rsp + 7400], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 7392]
                        mov              rdx, qword ptr [rsp + 7400]
.Lx547_29:              mov              qword ptr [rsp + 7392], rax
                        mov              qword ptr [rsp + 7400], rdx
                        cmp              eax, 104;                            je    n126_lit_string_α
                                                                              jmp   n126_lit_string_α
n125_call_proc_staged_β:
                                                                              jmp   n126_lit_string_α
.Lx547_0:               .quad            .Lx547_0_s
.Lx547_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:      mov              qword ptr [rsp + 7264], 2            # result
                        mov              dword ptr [rsp + 7268], 1
                        mov              rax, qword ptr [rip + .Lx548_0]
                        mov              qword ptr [rsp + 7272], rax;         jmp   n127_var_α
.Lx548_0:               .quad            .Lx548_0_s
.Lx548_0_s:             .string          "\t"
#-----------------------------------------------------------------------------------------------------------------------
n127_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 7376], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 7384], rax;         jmp   n128_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n128_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 7376]
                        mov              qword ptr [rsp + 7344], rax
                        mov              rax, qword ptr [rsp + 7384]
                        mov              qword ptr [rsp + 7352], rax
                        .section         .rodata
.Lrkfn552:              .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn552]
                        lea              rsi, [rsp + 7344]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7328], rax
                        mov              qword ptr [rsp + 7336], rdx
                        cmp              eax, 104;                            je    n131_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n129_call_builtin_icon_α
n128_call_builtin_icon_β:
                                                                              jmp   n131_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n129_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 7328]
                        mov              qword ptr [rsp + 7296], rax
                        mov              rax, qword ptr [rsp + 7336]
                        mov              qword ptr [rsp + 7304], rax
                        .section         .rodata
.Lrkfn554:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn554]
                        lea              rsi, [rsp + 7296]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7280], rax
                        mov              qword ptr [rsp + 7288], rdx
                        cmp              eax, 104;                            je    n131_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n130_call_builtin_icon_α
n129_call_builtin_icon_β:
                                                                              jmp   n131_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n130_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 7280]
                        mov              qword ptr [rsp + 7232], rax
                        mov              rax, qword ptr [rsp + 7288]
                        mov              qword ptr [rsp + 7240], rax
                        mov              rax, qword ptr [rsp + 7264]
                        mov              qword ptr [rsp + 7216], rax
                        mov              rax, qword ptr [rsp + 7272]
                        mov              qword ptr [rsp + 7224], rax
                        .section         .rodata
.Lrkfn556:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn556]
                        lea              rsi, [rsp + 7216]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7200], rax
                        mov              qword ptr [rsp + 7208], rdx
                        cmp              eax, 104;                            je    n131_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n131_lit_string_α
n130_call_builtin_icon_β:
                                                                              jmp   n131_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:      mov              qword ptr [rsp + 7168], 2            # result
                        mov              dword ptr [rsp + 7172], 1
                        mov              rax, qword ptr [rip + .Lx557_0]
                        mov              qword ptr [rsp + 7176], rax;         jmp   n132_var_α
.Lx557_0:               .quad            .Lx557_0_s
.Lx557_0_s:             .string          "E"
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 7184], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 7192], rax;         jmp   n133_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n133_call_proc_staged_α:
                        lea              rsi, [rsp + 7168]
                        lea              rdx, [rsp + 7184]
                        call             limage_dcα;                          jmp   .Lx561_2
.Lx561_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx561_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 7104], rax
                        mov              qword ptr [rsp + 7112], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 7104]
                        mov              rdx, qword ptr [rsp + 7112]
.Lx561_29:              mov              qword ptr [rsp + 7104], rax
                        mov              qword ptr [rsp + 7112], rdx
                        cmp              eax, 104;                            je    n134_var_α
                                                                              jmp   n134_var_α
n133_call_proc_staged_β:
                                                                              jmp   n134_var_α
.Lx561_0:               .quad            .Lx561_0_s
.Lx561_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n134_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 7072], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 7080], rax;         jmp   n135_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_integer_α:     mov              qword ptr [rsp + 7088], 3            # result
                        mov              rax, qword ptr [rip + .Lx564_0]
                        mov              qword ptr [rsp + 7096], rax;         jmp   n136_call_builtin_icon_α
.Lx564_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n136_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 7088]
                        mov              qword ptr [rsp + 7040], rax
                        mov              rax, qword ptr [rsp + 7096]
                        mov              qword ptr [rsp + 7048], rax
                        mov              rax, qword ptr [rsp + 7072]
                        mov              qword ptr [rsp + 7024], rax
                        mov              rax, qword ptr [rsp + 7080]
                        mov              qword ptr [rsp + 7032], rax
                        .section         .rodata
.Lrkfn566:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn566]
                        lea              rsi, [rsp + 7024]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7008], rax
                        mov              qword ptr [rsp + 7016], rdx
                        cmp              eax, 104;                            je    n137_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n137_lit_string_α
n136_call_builtin_icon_β:
                                                                              jmp   n137_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:      mov              qword ptr [rsp + 6976], 2            # result
                        mov              dword ptr [rsp + 6980], 1
                        mov              rax, qword ptr [rip + .Lx567_0]
                        mov              qword ptr [rsp + 6984], rax;         jmp   n138_var_α
.Lx567_0:               .quad            .Lx567_0_s
.Lx567_0_s:             .string          "F"
#-----------------------------------------------------------------------------------------------------------------------
n138_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 6992], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 7000], rax;         jmp   n139_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n139_call_proc_staged_α:
                        lea              rsi, [rsp + 6976]
                        lea              rdx, [rsp + 6992]
                        call             limage_dcα;                          jmp   .Lx571_2
.Lx571_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx571_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 6912], rax
                        mov              qword ptr [rsp + 6920], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 6912]
                        mov              rdx, qword ptr [rsp + 6920]
.Lx571_29:              mov              qword ptr [rsp + 6912], rax
                        mov              qword ptr [rsp + 6920], rdx
                        cmp              eax, 104;                            je    n140_var_α
                                                                              jmp   n140_var_α
n139_call_proc_staged_β:
                                                                              jmp   n140_var_α
.Lx571_0:               .quad            .Lx571_0_s
.Lx571_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n140_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 6848], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 6856], rax;         jmp   n141_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_integer_α:     mov              qword ptr [rsp + 6864], 3            # result
                        mov              rax, qword ptr [rip + .Lx574_0]
                        mov              qword ptr [rsp + 6872], rax;         jmp   n142_lit_integer_α
.Lx574_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_integer_α:     mov              qword ptr [rsp + 6880], 3            # result
                        mov              rax, qword ptr [rip + .Lx575_0]
                        mov              qword ptr [rsp + 6888], rax;         jmp   n143_lit_integer_α
.Lx575_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_integer_α:     mov              qword ptr [rsp + 6896], 3            # result
                        mov              rax, qword ptr [rip + .Lx576_0]
                        mov              qword ptr [rsp + 6904], rax;         jmp   n144_call_builtin_icon_α
.Lx576_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n144_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 6896]
                        mov              qword ptr [rsp + 6816], rax
                        mov              rax, qword ptr [rsp + 6904]
                        mov              qword ptr [rsp + 6824], rax
                        mov              rax, qword ptr [rsp + 6880]
                        mov              qword ptr [rsp + 6800], rax
                        mov              rax, qword ptr [rsp + 6888]
                        mov              qword ptr [rsp + 6808], rax
                        mov              rax, qword ptr [rsp + 6864]
                        mov              qword ptr [rsp + 6784], rax
                        mov              rax, qword ptr [rsp + 6872]
                        mov              qword ptr [rsp + 6792], rax
                        mov              rax, qword ptr [rsp + 6848]
                        mov              qword ptr [rsp + 6768], rax
                        mov              rax, qword ptr [rsp + 6856]
                        mov              qword ptr [rsp + 6776], rax
                        .section         .rodata
.Lrkfn578:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn578]
                        lea              rsi, [rsp + 6768]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6752], rax
                        mov              qword ptr [rsp + 6760], rdx
                        cmp              eax, 104;                            je    n145_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n145_lit_string_α
n144_call_builtin_icon_β:
                                                                              jmp   n145_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_string_α:      mov              qword ptr [rsp + 6720], 2            # result
                        mov              dword ptr [rsp + 6724], 1
                        mov              rax, qword ptr [rip + .Lx579_0]
                        mov              qword ptr [rsp + 6728], rax;         jmp   n146_var_α
.Lx579_0:               .quad            .Lx579_0_s
.Lx579_0_s:             .string          "G"
#-----------------------------------------------------------------------------------------------------------------------
n146_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 6736], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 6744], rax;         jmp   n147_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n147_call_proc_staged_α:
                        lea              rsi, [rsp + 6720]
                        lea              rdx, [rsp + 6736]
                        call             limage_dcα;                          jmp   .Lx583_2
.Lx583_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx583_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 6656], rax
                        mov              qword ptr [rsp + 6664], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 6656]
                        mov              rdx, qword ptr [rsp + 6664]
.Lx583_29:              mov              qword ptr [rsp + 6656], rax
                        mov              qword ptr [rsp + 6664], rdx
                        cmp              eax, 104;                            je    n148_var_α
                                                                              jmp   n148_var_α
n147_call_proc_staged_β:
                                                                              jmp   n148_var_α
.Lx583_0:               .quad            .Lx583_0_s
.Lx583_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n148_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 6576], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 6584], rax;         jmp   n149_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_integer_α:     mov              qword ptr [rsp + 6592], 3            # result
                        mov              rax, qword ptr [rip + .Lx586_0]
                        mov              qword ptr [rsp + 6600], rax;         jmp   n150_lit_integer_α
.Lx586_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_integer_α:     mov              qword ptr [rsp + 6608], 3            # result
                        mov              rax, qword ptr [rip + .Lx587_0]
                        mov              qword ptr [rsp + 6616], rax;         jmp   n151_call_builtin_icon_α
.Lx587_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n151_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 6608]
                        mov              qword ptr [rsp + 6544], rax
                        mov              rax, qword ptr [rsp + 6616]
                        mov              qword ptr [rsp + 6552], rax
                        mov              rax, qword ptr [rsp + 6592]
                        mov              qword ptr [rsp + 6528], rax
                        mov              rax, qword ptr [rsp + 6600]
                        mov              qword ptr [rsp + 6536], rax
                        mov              rax, qword ptr [rsp + 6576]
                        mov              qword ptr [rsp + 6512], rax
                        mov              rax, qword ptr [rsp + 6584]
                        mov              qword ptr [rsp + 6520], rax
                        .section         .rodata
.Lrkfn589:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn589]
                        lea              rsi, [rsp + 6512]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6496], rax
                        mov              qword ptr [rsp + 6504], rdx
                        cmp              eax, 104;                            je    n155_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n152_lit_integer_α
n151_call_builtin_icon_β:
                                                                              jmp   n155_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_integer_α:     mov              qword ptr [rsp + 6624], 3            # result
                        mov              rax, qword ptr [rip + .Lx590_0]
                        mov              qword ptr [rsp + 6632], rax;         jmp   n153_lit_integer_α
.Lx590_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:     mov              qword ptr [rsp + 6640], 3            # result
                        mov              rax, qword ptr [rip + .Lx591_0]
                        mov              qword ptr [rsp + 6648], rax;         jmp   n154_call_builtin_icon_α
.Lx591_0:               .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n154_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 6640]
                        mov              qword ptr [rsp + 6464], rax
                        mov              rax, qword ptr [rsp + 6648]
                        mov              qword ptr [rsp + 6472], rax
                        mov              rax, qword ptr [rsp + 6624]
                        mov              qword ptr [rsp + 6448], rax
                        mov              rax, qword ptr [rsp + 6632]
                        mov              qword ptr [rsp + 6456], rax
                        mov              rax, qword ptr [rsp + 6496]
                        mov              qword ptr [rsp + 6432], rax
                        mov              rax, qword ptr [rsp + 6504]
                        mov              qword ptr [rsp + 6440], rax
                        .section         .rodata
.Lrkfn593:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn593]
                        lea              rsi, [rsp + 6432]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6416], rax
                        mov              qword ptr [rsp + 6424], rdx
                        cmp              eax, 104;                            je    n155_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n155_lit_string_α
n154_call_builtin_icon_β:
                                                                              jmp   n155_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_string_α:      mov              qword ptr [rsp + 6384], 2            # result
                        mov              dword ptr [rsp + 6388], 1
                        mov              rax, qword ptr [rip + .Lx594_0]
                        mov              qword ptr [rsp + 6392], rax;         jmp   n156_var_α
.Lx594_0:               .quad            .Lx594_0_s
.Lx594_0_s:             .string          "H"
#-----------------------------------------------------------------------------------------------------------------------
n156_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 6400], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 6408], rax;         jmp   n157_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n157_call_proc_staged_α:
                        lea              rsi, [rsp + 6384]
                        lea              rdx, [rsp + 6400]
                        call             limage_dcα;                          jmp   .Lx598_2
.Lx598_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx598_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 6320], rax
                        mov              qword ptr [rsp + 6328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 6320]
                        mov              rdx, qword ptr [rsp + 6328]
.Lx598_29:              mov              qword ptr [rsp + 6320], rax
                        mov              qword ptr [rsp + 6328], rdx
                        cmp              eax, 104;                            je    n158_var_α
                                                                              jmp   n158_var_α
n157_call_proc_staged_β:
                                                                              jmp   n158_var_α
.Lx598_0:               .quad            .Lx598_0_s
.Lx598_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n158_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 6288], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 6296], rax;         jmp   n159_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_integer_α:     mov              qword ptr [rsp + 6304], 3            # result
                        mov              rax, qword ptr [rip + .Lx601_0]
                        mov              qword ptr [rsp + 6312], rax;         jmp   n160_call_builtin_icon_α
.Lx601_0:               .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n160_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 6304]
                        mov              qword ptr [rsp + 6256], rax
                        mov              rax, qword ptr [rsp + 6312]
                        mov              qword ptr [rsp + 6264], rax
                        mov              rax, qword ptr [rsp + 6288]
                        mov              qword ptr [rsp + 6240], rax
                        mov              rax, qword ptr [rsp + 6296]
                        mov              qword ptr [rsp + 6248], rax
                        .section         .rodata
.Lrkfn603:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn603]
                        lea              rsi, [rsp + 6240]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6224], rax
                        mov              qword ptr [rsp + 6232], rdx
                        cmp              eax, 104;                            je    n161_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n161_lit_string_α
n160_call_builtin_icon_β:
                                                                              jmp   n161_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_string_α:      mov              qword ptr [rsp + 6192], 2            # result
                        mov              dword ptr [rsp + 6196], 1
                        mov              rax, qword ptr [rip + .Lx604_0]
                        mov              qword ptr [rsp + 6200], rax;         jmp   n162_var_α
.Lx604_0:               .quad            .Lx604_0_s
.Lx604_0_s:             .string          "I"
#-----------------------------------------------------------------------------------------------------------------------
n162_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 6208], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 6216], rax;         jmp   n163_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n163_call_proc_staged_α:
                        lea              rsi, [rsp + 6192]
                        lea              rdx, [rsp + 6208]
                        call             limage_dcα;                          jmp   .Lx608_2
.Lx608_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx608_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 6128], rax
                        mov              qword ptr [rsp + 6136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 6128]
                        mov              rdx, qword ptr [rsp + 6136]
.Lx608_29:              mov              qword ptr [rsp + 6128], rax
                        mov              qword ptr [rsp + 6136], rdx
                        cmp              eax, 104;                            je    n164_var_α
                                                                              jmp   n164_var_α
n163_call_proc_staged_β:
                                                                              jmp   n164_var_α
.Lx608_0:               .quad            .Lx608_0_s
.Lx608_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n164_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 6064], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 6072], rax;         jmp   n165_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_integer_α:     mov              qword ptr [rsp + 6080], 3            # result
                        mov              rax, qword ptr [rip + .Lx611_0]
                        mov              qword ptr [rsp + 6088], rax;         jmp   n166_lit_integer_α
.Lx611_0:               .quad            13
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_integer_α:     mov              qword ptr [rsp + 6096], 3            # result
                        mov              rax, qword ptr [rip + .Lx612_0]
                        mov              qword ptr [rsp + 6104], rax;         jmp   n167_lit_integer_α
.Lx612_0:               .quad            14
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_integer_α:     mov              qword ptr [rsp + 6112], 3            # result
                        mov              rax, qword ptr [rip + .Lx613_0]
                        mov              qword ptr [rsp + 6120], rax;         jmp   n168_call_builtin_icon_α
.Lx613_0:               .quad            15
#-----------------------------------------------------------------------------------------------------------------------
n168_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 6112]
                        mov              qword ptr [rsp + 6032], rax
                        mov              rax, qword ptr [rsp + 6120]
                        mov              qword ptr [rsp + 6040], rax
                        mov              rax, qword ptr [rsp + 6096]
                        mov              qword ptr [rsp + 6016], rax
                        mov              rax, qword ptr [rsp + 6104]
                        mov              qword ptr [rsp + 6024], rax
                        mov              rax, qword ptr [rsp + 6080]
                        mov              qword ptr [rsp + 6000], rax
                        mov              rax, qword ptr [rsp + 6088]
                        mov              qword ptr [rsp + 6008], rax
                        mov              rax, qword ptr [rsp + 6064]
                        mov              qword ptr [rsp + 5984], rax
                        mov              rax, qword ptr [rsp + 6072]
                        mov              qword ptr [rsp + 5992], rax
                        .section         .rodata
.Lrkfn615:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn615]
                        lea              rsi, [rsp + 5984]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5968], rax
                        mov              qword ptr [rsp + 5976], rdx
                        cmp              eax, 104;                            je    n169_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n169_lit_string_α
n168_call_builtin_icon_β:
                                                                              jmp   n169_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_string_α:      mov              qword ptr [rsp + 5936], 2            # result
                        mov              dword ptr [rsp + 5940], 1
                        mov              rax, qword ptr [rip + .Lx616_0]
                        mov              qword ptr [rsp + 5944], rax;         jmp   n170_var_α
.Lx616_0:               .quad            .Lx616_0_s
.Lx616_0_s:             .string          "J"
#-----------------------------------------------------------------------------------------------------------------------
n170_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 5952], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 5960], rax;         jmp   n171_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n171_call_proc_staged_α:
                        lea              rsi, [rsp + 5936]
                        lea              rdx, [rsp + 5952]
                        call             limage_dcα;                          jmp   .Lx620_2
.Lx620_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx620_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 5872], rax
                        mov              qword ptr [rsp + 5880], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5872]
                        mov              rdx, qword ptr [rsp + 5880]
.Lx620_29:              mov              qword ptr [rsp + 5872], rax
                        mov              qword ptr [rsp + 5880], rdx
                        cmp              eax, 104;                            je    n172_var_α
                                                                              jmp   n172_var_α
n171_call_proc_staged_β:
                                                                              jmp   n172_var_α
.Lx620_0:               .quad            .Lx620_0_s
.Lx620_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n172_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 5792], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 5800], rax;         jmp   n173_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_integer_α:     mov              qword ptr [rsp + 5808], 3            # result
                        mov              rax, qword ptr [rip + .Lx623_0]
                        mov              qword ptr [rsp + 5816], rax;         jmp   n174_lit_integer_α
.Lx623_0:               .quad            16
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_integer_α:     mov              qword ptr [rsp + 5824], 3            # result
                        mov              rax, qword ptr [rip + .Lx624_0]
                        mov              qword ptr [rsp + 5832], rax;         jmp   n175_call_builtin_icon_α
.Lx624_0:               .quad            17
#-----------------------------------------------------------------------------------------------------------------------
n175_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 5824]
                        mov              qword ptr [rsp + 5760], rax
                        mov              rax, qword ptr [rsp + 5832]
                        mov              qword ptr [rsp + 5768], rax
                        mov              rax, qword ptr [rsp + 5808]
                        mov              qword ptr [rsp + 5744], rax
                        mov              rax, qword ptr [rsp + 5816]
                        mov              qword ptr [rsp + 5752], rax
                        mov              rax, qword ptr [rsp + 5792]
                        mov              qword ptr [rsp + 5728], rax
                        mov              rax, qword ptr [rsp + 5800]
                        mov              qword ptr [rsp + 5736], rax
                        .section         .rodata
.Lrkfn626:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn626]
                        lea              rsi, [rsp + 5728]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5712], rax
                        mov              qword ptr [rsp + 5720], rdx
                        cmp              eax, 104;                            je    n179_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n176_lit_integer_α
n175_call_builtin_icon_β:
                                                                              jmp   n179_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_integer_α:     mov              qword ptr [rsp + 5840], 3            # result
                        mov              rax, qword ptr [rip + .Lx627_0]
                        mov              qword ptr [rsp + 5848], rax;         jmp   n177_lit_integer_α
.Lx627_0:               .quad            18
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_integer_α:     mov              qword ptr [rsp + 5856], 3            # result
                        mov              rax, qword ptr [rip + .Lx628_0]
                        mov              qword ptr [rsp + 5864], rax;         jmp   n178_call_builtin_icon_α
.Lx628_0:               .quad            19
#-----------------------------------------------------------------------------------------------------------------------
n178_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 5856]
                        mov              qword ptr [rsp + 5680], rax
                        mov              rax, qword ptr [rsp + 5864]
                        mov              qword ptr [rsp + 5688], rax
                        mov              rax, qword ptr [rsp + 5840]
                        mov              qword ptr [rsp + 5664], rax
                        mov              rax, qword ptr [rsp + 5848]
                        mov              qword ptr [rsp + 5672], rax
                        mov              rax, qword ptr [rsp + 5712]
                        mov              qword ptr [rsp + 5648], rax
                        mov              rax, qword ptr [rsp + 5720]
                        mov              qword ptr [rsp + 5656], rax
                        .section         .rodata
.Lrkfn630:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn630]
                        lea              rsi, [rsp + 5648]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5632], rax
                        mov              qword ptr [rsp + 5640], rdx
                        cmp              eax, 104;                            je    n179_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n179_lit_string_α
n178_call_builtin_icon_β:
                                                                              jmp   n179_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_string_α:      mov              qword ptr [rsp + 5600], 2            # result
                        mov              dword ptr [rsp + 5604], 1
                        mov              rax, qword ptr [rip + .Lx631_0]
                        mov              qword ptr [rsp + 5608], rax;         jmp   n180_var_α
.Lx631_0:               .quad            .Lx631_0_s
.Lx631_0_s:             .string          "K"
#-----------------------------------------------------------------------------------------------------------------------
n180_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 5616], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 5624], rax;         jmp   n181_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n181_call_proc_staged_α:
                        lea              rsi, [rsp + 5600]
                        lea              rdx, [rsp + 5616]
                        call             limage_dcα;                          jmp   .Lx635_2
.Lx635_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx635_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 5536], rax
                        mov              qword ptr [rsp + 5544], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5536]
                        mov              rdx, qword ptr [rsp + 5544]
.Lx635_29:              mov              qword ptr [rsp + 5536], rax
                        mov              qword ptr [rsp + 5544], rdx
                        cmp              eax, 104;                            je    n182_var_α
                                                                              jmp   n182_var_α
n181_call_proc_staged_β:
                                                                              jmp   n182_var_α
.Lx635_0:               .quad            .Lx635_0_s
.Lx635_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n182_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 5456], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 5464], rax;         jmp   n183_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_integer_α:     mov              qword ptr [rsp + 5472], 3            # result
                        mov              rax, qword ptr [rip + .Lx638_0]
                        mov              qword ptr [rsp + 5480], rax;         jmp   n184_lit_integer_α
.Lx638_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_integer_α:     mov              qword ptr [rsp + 5488], 3            # result
                        mov              rax, qword ptr [rip + .Lx639_0]
                        mov              qword ptr [rsp + 5496], rax;         jmp   n185_call_builtin_icon_α
.Lx639_0:               .quad            21
#-----------------------------------------------------------------------------------------------------------------------
n185_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 5488]
                        mov              qword ptr [rsp + 5424], rax
                        mov              rax, qword ptr [rsp + 5496]
                        mov              qword ptr [rsp + 5432], rax
                        mov              rax, qword ptr [rsp + 5472]
                        mov              qword ptr [rsp + 5408], rax
                        mov              rax, qword ptr [rsp + 5480]
                        mov              qword ptr [rsp + 5416], rax
                        mov              rax, qword ptr [rsp + 5456]
                        mov              qword ptr [rsp + 5392], rax
                        mov              rax, qword ptr [rsp + 5464]
                        mov              qword ptr [rsp + 5400], rax
                        .section         .rodata
.Lrkfn641:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn641]
                        lea              rsi, [rsp + 5392]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5376], rax
                        mov              qword ptr [rsp + 5384], rdx
                        cmp              eax, 104;                            je    n189_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n186_lit_integer_α
n185_call_builtin_icon_β:
                                                                              jmp   n189_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_integer_α:     mov              qword ptr [rsp + 5504], 3            # result
                        mov              rax, qword ptr [rip + .Lx642_0]
                        mov              qword ptr [rsp + 5512], rax;         jmp   n187_lit_integer_α
.Lx642_0:               .quad            22
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_integer_α:     mov              qword ptr [rsp + 5520], 3            # result
                        mov              rax, qword ptr [rip + .Lx643_0]
                        mov              qword ptr [rsp + 5528], rax;         jmp   n188_call_builtin_icon_α
.Lx643_0:               .quad            23
#-----------------------------------------------------------------------------------------------------------------------
n188_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 5520]
                        mov              qword ptr [rsp + 5344], rax
                        mov              rax, qword ptr [rsp + 5528]
                        mov              qword ptr [rsp + 5352], rax
                        mov              rax, qword ptr [rsp + 5504]
                        mov              qword ptr [rsp + 5328], rax
                        mov              rax, qword ptr [rsp + 5512]
                        mov              qword ptr [rsp + 5336], rax
                        mov              rax, qword ptr [rsp + 5376]
                        mov              qword ptr [rsp + 5312], rax
                        mov              rax, qword ptr [rsp + 5384]
                        mov              qword ptr [rsp + 5320], rax
                        .section         .rodata
.Lrkfn645:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn645]
                        lea              rsi, [rsp + 5312]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5296], rax
                        mov              qword ptr [rsp + 5304], rdx
                        cmp              eax, 104;                            je    n189_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n189_lit_string_α
n188_call_builtin_icon_β:
                                                                              jmp   n189_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_string_α:      mov              qword ptr [rsp + 5264], 2            # result
                        mov              dword ptr [rsp + 5268], 1
                        mov              rax, qword ptr [rip + .Lx646_0]
                        mov              qword ptr [rsp + 5272], rax;         jmp   n190_var_α
.Lx646_0:               .quad            .Lx646_0_s
.Lx646_0_s:             .string          "L"
#-----------------------------------------------------------------------------------------------------------------------
n190_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 5288], rax;         jmp   n191_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n191_call_proc_staged_α:
                        lea              rsi, [rsp + 5264]
                        lea              rdx, [rsp + 5280]
                        call             limage_dcα;                          jmp   .Lx650_2
.Lx650_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx650_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 5200], rax
                        mov              qword ptr [rsp + 5208], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5200]
                        mov              rdx, qword ptr [rsp + 5208]
.Lx650_29:              mov              qword ptr [rsp + 5200], rax
                        mov              qword ptr [rsp + 5208], rdx
                        cmp              eax, 104;                            je    n192_var_ref_α
                                                                              jmp   n192_var_ref_α
n191_call_proc_staged_β:
                                                                              jmp   n192_var_ref_α
.Lx650_0:               .quad            .Lx650_0_s
.Lx650_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n192_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 10464]
                        mov              qword ptr [rsp + 5152], rax
                        mov              qword ptr [rsp + 5160], rdx;         jmp   n193_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n193_iterate_α:         mov              qword ptr [rsp + 5136], 0
.Lx654_0:               mov              rdi, qword ptr [rsp + 5152]
                        mov              rsi, qword ptr [rsp + 5160]
                        mov              rdx, qword ptr [rsp + 5136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_var_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5120], rax
                        mov              qword ptr [rsp + 5128], rdx
                        cmp              rax, 104;                            je    n196_lit_string_α
                                                                              jmp   n194_lit_integer_α
n193_iterate_β:         inc              qword ptr [rsp + 5136];              jmp   .Lx654_0
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_integer_α:     mov              qword ptr [rsp + 5184], 3            # result
                        mov              rax, qword ptr [rip + .Lx655_0]
                        mov              qword ptr [rsp + 5192], rax;         jmp   n195_assign_var_α
.Lx655_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n195_assign_var_α:      mov              rdi, qword ptr [rsp + 5120]
                        mov              rsi, qword ptr [rsp + 5128]
                        mov              rdx, qword ptr [rsp + 5184]
                        mov              rcx, qword ptr [rsp + 5192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n196_lit_string_α
                        mov              qword ptr [rsp + 5168], rax
                        mov              qword ptr [rsp + 5176], rdx;         jmp   n193_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_string_α:      mov              qword ptr [rsp + 5088], 2            # result
                        mov              dword ptr [rsp + 5092], 1
                        mov              rax, qword ptr [rip + .Lx657_0]
                        mov              qword ptr [rsp + 5096], rax;         jmp   n197_var_α
.Lx657_0:               .quad            .Lx657_0_s
.Lx657_0_s:             .string          "M"
#-----------------------------------------------------------------------------------------------------------------------
n197_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 5104], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 5112], rax;         jmp   n198_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n198_call_proc_staged_α:
                        lea              rsi, [rsp + 5088]
                        lea              rdx, [rsp + 5104]
                        call             limage_dcα;                          jmp   .Lx661_2
.Lx661_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx661_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 5024], rax
                        mov              qword ptr [rsp + 5032], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5024]
                        mov              rdx, qword ptr [rsp + 5032]
.Lx661_29:              mov              qword ptr [rsp + 5024], rax
                        mov              qword ptr [rsp + 5032], rdx
                        cmp              eax, 104;                            je    n199_lit_integer_α
                                                                              jmp   n199_lit_integer_α
n198_call_proc_staged_β:
                                                                              jmp   n199_lit_integer_α
.Lx661_0:               .quad            .Lx661_0_s
.Lx661_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_integer_α:     mov              qword ptr [rsp + 4944], 3            # result
                        mov              rax, qword ptr [rip + .Lx662_0]
                        mov              qword ptr [rsp + 4952], rax;         jmp   n200_lit_integer_α
.Lx662_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_integer_α:     mov              qword ptr [rsp + 4960], 3            # result
                        mov              rax, qword ptr [rip + .Lx663_0]
                        mov              qword ptr [rsp + 4968], rax;         jmp   n201_lit_integer_α
.Lx663_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_integer_α:     mov              qword ptr [rsp + 4976], 3            # result
                        mov              rax, qword ptr [rip + .Lx664_0]
                        mov              qword ptr [rsp + 4984], rax;         jmp   n202_lit_integer_α
.Lx664_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_integer_α:     mov              qword ptr [rsp + 4992], 3            # result
                        mov              rax, qword ptr [rip + .Lx665_0]
                        mov              qword ptr [rsp + 5000], rax;         jmp   n203_lit_integer_α
.Lx665_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_integer_α:     mov              qword ptr [rsp + 5008], 3            # result
                        mov              rax, qword ptr [rip + .Lx666_0]
                        mov              qword ptr [rsp + 5016], rax;         jmp   n204_make_list_α
.Lx666_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n204_make_list_α:       mov              rax, qword ptr [rsp + 4944]
                        mov              qword ptr [rsp + 4864], rax
                        mov              rax, qword ptr [rsp + 4952]
                        mov              qword ptr [rsp + 4872], rax
                        mov              rax, qword ptr [rsp + 4960]
                        mov              qword ptr [rsp + 4880], rax
                        mov              rax, qword ptr [rsp + 4968]
                        mov              qword ptr [rsp + 4888], rax
                        mov              rax, qword ptr [rsp + 4976]
                        mov              qword ptr [rsp + 4896], rax
                        mov              rax, qword ptr [rsp + 4984]
                        mov              qword ptr [rsp + 4904], rax
                        mov              rax, qword ptr [rsp + 4992]
                        mov              qword ptr [rsp + 4912], rax
                        mov              rax, qword ptr [rsp + 5000]
                        mov              qword ptr [rsp + 4920], rax
                        mov              rax, qword ptr [rsp + 5008]
                        mov              qword ptr [rsp + 4928], rax
                        mov              rax, qword ptr [rsp + 5016]
                        mov              qword ptr [rsp + 4936], rax
                        lea              rdi, [rsp + 4864]
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4848], rax
                        mov              qword ptr [rsp + 4856], rdx;         jmp   n205_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n205_assign_α:          mov              rax, qword ptr [rsp + 4848]
                        mov              rdx, qword ptr [rsp + 4856]
                        mov              qword ptr [rsp + 10464], rax
                        mov              qword ptr [rsp + 10472], rdx;        jmp   n206_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n206_lit_integer_α:     mov              qword ptr [rsp + 4624], 3            # result
                        mov              rax, qword ptr [rip + .Lx670_0]
                        mov              qword ptr [rsp + 4632], rax;         jmp   n207_var_α
.Lx670_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n207_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 4688], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 4696], rax;         jmp   n208_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n208_unop_α:            mov              rdi, qword ptr [rsp + 10464]
                        mov              rsi, qword ptr [rsp + 10472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4672], rax
                        mov              qword ptr [rsp + 4680], rdx;         jmp   n209_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_integer_α:     mov              qword ptr [rsp + 4704], 3            # result
                        mov              rax, qword ptr [rip + .Lx674_0]
                        mov              qword ptr [rsp + 4712], rax;         jmp   n210_coerce_numeric_α
.Lx674_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n210_coerce_numeric_α:  mov              eax, dword ptr [rsp + 4672]
                        cmp              eax, 5;                              je    .Lx676_1
                        cmp              eax, 3;                              jne   .Lx676_0
                        mov              eax, dword ptr [rsp + 4704]
                        cmp              eax, 3;                              jne   .Lx676_0
.Lx676_1:               mov              rax, qword ptr [rsp + 4672]
                        mov              qword ptr [rsp + 4656], rax
                        mov              rax, qword ptr [rsp + 4680]
                        mov              qword ptr [rsp + 4664], rax;         jmp   n211_binop_α
.Lx676_0:               lea              rdi, [rsp + 4672]
                        lea              rsi, [rsp + 4704]
                        lea              rdx, [rsp + 4656]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n211_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n211_binop_α:           mov              eax, dword ptr [rsp + 4656]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx677_2
                        mov              rax, qword ptr [rsp + 4664]
                        mov              rdx, 3
                        add              rax, rdx
                        mov              qword ptr [rsp + 4640], 3
                        mov              qword ptr [rsp + 4648], rax;         jmp   .Lx677_7
.Lx677_2:               and              edx, 1;                              jz    .Lx677_0
                        mov              rsi, qword ptr [rsp + 4664]
                        mov              rdi, 3
                        cmp              eax, 5;                              je    .Lx677_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx677_4
.Lx677_3:               movq             xmm0, rsi
.Lx677_4:               cmp              ecx, 5;                              je    .Lx677_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx677_6
.Lx677_5:               movq             xmm1, rdi
.Lx677_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 4640], 5
                        mov              qword ptr [rsp + 4648], rax
.Lx677_7:                                                                     jmp   n212_to_α
.Lx677_0:               mov              rdi, qword ptr [rsp + 4656]
                        mov              rsi, qword ptr [rsp + 4664]
                        mov              rdx, qword ptr [rsp + 4704]
                        mov              rcx, qword ptr [rsp + 4712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n221_lit_string_α
                        mov              qword ptr [rsp + 4640], rax
                        mov              qword ptr [rsp + 4648], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n212_to_α
#-----------------------------------------------------------------------------------------------------------------------
n212_to_α:              mov              rdi, qword ptr [rsp + 4624]
                        mov              rsi, qword ptr [rsp + 4632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4624], 3
                        mov              qword ptr [rsp + 4632], rax
                        mov              rdi, qword ptr [rsp + 4640]
                        mov              rsi, qword ptr [rsp + 4648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4640], 3
                        mov              qword ptr [rsp + 4648], rax
                        mov              rax, qword ptr [rsp + 4632]
                        mov              qword ptr [rsp + 4608], rax
.Lx679_0:               mov              rax, qword ptr [rsp + 4608]
                        mov              rcx, qword ptr [rsp + 4648]
                        cmp              rax, rcx;                            jg    n221_lit_string_α
                        mov              qword ptr [rsp + 4592], 3
                        mov              qword ptr [rsp + 4600], rax;         jmp   n213_assign_α
n212_to_β:              inc              qword ptr [rsp + 4608];              jmp   .Lx679_0
#-----------------------------------------------------------------------------------------------------------------------
n213_assign_α:          mov              rax, qword ptr [rsp + 4592]
                        mov              rdx, qword ptr [rsp + 4600]
                        mov              qword ptr [rsp + 10480], rax
                        mov              qword ptr [rsp + 10488], rdx;        jmp   n214_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n214_bound_α:           mov              qword ptr [rsp + 4720], rsp;         jmp   n215_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n215_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 10464]
                        mov              qword ptr [rsp + 4768], rax
                        mov              qword ptr [rsp + 4776], rdx;         jmp   n216_var_α
#-----------------------------------------------------------------------------------------------------------------------
n216_var_α:             mov              rax, qword ptr [rsp + 10480]
                        mov              qword ptr [rsp + 4784], rax
                        mov              rax, qword ptr [rsp + 10488]
                        mov              qword ptr [rsp + 4792], rax;         jmp   n217_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n217_subscript_α:       mov              rdi, qword ptr [rsp + 4768]
                        mov              rsi, qword ptr [rsp + 4776]
                        mov              rdx, qword ptr [rsp + 4784]
                        mov              rcx, qword ptr [rsp + 4792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n220_unmark_α
                        mov              qword ptr [rsp + 4800], rax
                        mov              qword ptr [rsp + 4808], rdx;         jmp   n218_var_α
#-----------------------------------------------------------------------------------------------------------------------
n218_var_α:             mov              rax, qword ptr [rsp + 10480]
                        mov              qword ptr [rsp + 4832], rax
                        mov              rax, qword ptr [rsp + 10488]
                        mov              qword ptr [rsp + 4840], rax;         jmp   n219_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n219_assign_var_α:      mov              rdi, qword ptr [rsp + 4800]
                        mov              rsi, qword ptr [rsp + 4808]
                        mov              rdx, qword ptr [rsp + 4832]
                        mov              rcx, qword ptr [rsp + 4840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n220_unmark_α
                        mov              qword ptr [rsp + 4816], rax
                        mov              qword ptr [rsp + 4824], rdx;         jmp   n220_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n220_unmark_α:          mov              rsp, qword ptr [rsp + 4720];         jmp   n212_to_β
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_string_α:      mov              qword ptr [rsp + 4560], 2            # result
                        mov              dword ptr [rsp + 4564], 1
                        mov              rax, qword ptr [rip + .Lx693_0]
                        mov              qword ptr [rsp + 4568], rax;         jmp   n222_var_α
.Lx693_0:               .quad            .Lx693_0_s
.Lx693_0_s:             .string          "N"
#-----------------------------------------------------------------------------------------------------------------------
n222_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 4576], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 4584], rax;         jmp   n223_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n223_call_proc_staged_α:
                        lea              rsi, [rsp + 4560]
                        lea              rdx, [rsp + 4576]
                        call             limage_dcα;                          jmp   .Lx697_2
.Lx697_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx697_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 4496], rax
                        mov              qword ptr [rsp + 4504], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4496]
                        mov              rdx, qword ptr [rsp + 4504]
.Lx697_29:              mov              qword ptr [rsp + 4496], rax
                        mov              qword ptr [rsp + 4504], rdx
                        cmp              eax, 104;                            je    n224_var_α
                                                                              jmp   n224_var_α
n223_call_proc_staged_β:
                                                                              jmp   n224_var_α
.Lx697_0:               .quad            .Lx697_0_s
.Lx697_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n224_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 4320], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 4328], rax;         jmp   n225_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n225_unop_α:            mov              rdi, qword ptr [rsp + 10464]
                        mov              rsi, qword ptr [rsp + 10472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4304], rax
                        mov              qword ptr [rsp + 4312], rdx;         jmp   n226_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n226_coerce_numeric_α:  mov              eax, dword ptr [rsp + 4304]
                        cmp              eax, 5;                              je    .Lx702_1
                        cmp              eax, 3;                              jne   .Lx702_0
                        mov              eax, dword ptr [rsp + 4304]
                        cmp              eax, 3;                              jne   .Lx702_0
.Lx702_1:               mov              rax, qword ptr [rsp + 4304]
                        mov              qword ptr [rsp + 4288], rax
                        mov              rax, qword ptr [rsp + 4312]
                        mov              qword ptr [rsp + 4296], rax;         jmp   n227_unop_α
.Lx702_0:               lea              rdi, [rsp + 4304]
                        lea              rsi, [rsp + 4304]
                        lea              rdx, [rsp + 4288]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n227_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n227_unop_α:            mov              rdi, qword ptr [rsp + 4288]
                        mov              rsi, qword ptr [rsp + 4296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4272], rax
                        mov              qword ptr [rsp + 4280], rdx;         jmp   n228_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_integer_α:     mov              qword ptr [rsp + 4336], 3            # result
                        mov              rax, qword ptr [rip + .Lx704_0]
                        mov              qword ptr [rsp + 4344], rax;         jmp   n229_coerce_numeric_α
.Lx704_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n229_coerce_numeric_α:  mov              eax, dword ptr [rsp + 4272]
                        cmp              eax, 5;                              je    .Lx706_1
                        cmp              eax, 3;                              jne   .Lx706_0
                        mov              eax, dword ptr [rsp + 4336]
                        cmp              eax, 3;                              jne   .Lx706_0
.Lx706_1:               mov              rax, qword ptr [rsp + 4272]
                        mov              qword ptr [rsp + 4256], rax
                        mov              rax, qword ptr [rsp + 4280]
                        mov              qword ptr [rsp + 4264], rax;         jmp   n230_binop_α
.Lx706_0:               lea              rdi, [rsp + 4272]
                        lea              rsi, [rsp + 4336]
                        lea              rdx, [rsp + 4256]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n230_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n230_binop_α:           mov              eax, dword ptr [rsp + 4256]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx707_2
                        mov              rax, qword ptr [rsp + 4264]
                        mov              rdx, 3
                        sub              rax, rdx
                        mov              qword ptr [rsp + 4240], 3
                        mov              qword ptr [rsp + 4248], rax;         jmp   .Lx707_7
.Lx707_2:               and              edx, 1;                              jz    .Lx707_0
                        mov              rsi, qword ptr [rsp + 4264]
                        mov              rdi, 3
                        cmp              eax, 5;                              je    .Lx707_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx707_4
.Lx707_3:               movq             xmm0, rsi
.Lx707_4:               cmp              ecx, 5;                              je    .Lx707_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx707_6
.Lx707_5:               movq             xmm1, rdi
.Lx707_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 4240], 5
                        mov              qword ptr [rsp + 4248], rax
.Lx707_7:                                                                     jmp   n231_lit_integer_α
.Lx707_0:               mov              rdi, qword ptr [rsp + 4256]
                        mov              rsi, qword ptr [rsp + 4264]
                        mov              rdx, qword ptr [rsp + 4336]
                        mov              rcx, qword ptr [rsp + 4344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n241_lit_string_α
                        mov              qword ptr [rsp + 4240], rax
                        mov              qword ptr [rsp + 4248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n231_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_integer_α:     mov              qword ptr [rsp + 4352], 3            # result
                        mov              rax, qword ptr [rip + .Lx708_0]
                        mov              qword ptr [rsp + 4360], rax;         jmp   n232_to_α
.Lx708_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n232_to_α:              mov              rdi, qword ptr [rsp + 4240]
                        mov              rsi, qword ptr [rsp + 4248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4240], 3
                        mov              qword ptr [rsp + 4248], rax
                        mov              rdi, qword ptr [rsp + 4352]
                        mov              rsi, qword ptr [rsp + 4360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4352], 3
                        mov              qword ptr [rsp + 4360], rax
                        mov              rax, qword ptr [rsp + 4248]
                        mov              qword ptr [rsp + 4224], rax
.Lx710_0:               mov              rax, qword ptr [rsp + 4224]
                        mov              rcx, qword ptr [rsp + 4360]
                        cmp              rax, rcx;                            jg    n241_lit_string_α
                        mov              qword ptr [rsp + 4208], 3
                        mov              qword ptr [rsp + 4216], rax;         jmp   n233_assign_α
n232_to_β:              inc              qword ptr [rsp + 4224];              jmp   .Lx710_0
#-----------------------------------------------------------------------------------------------------------------------
n233_assign_α:          mov              rax, qword ptr [rsp + 4208]
                        mov              rdx, qword ptr [rsp + 4216]
                        mov              qword ptr [rsp + 10480], rax
                        mov              qword ptr [rsp + 10488], rdx;        jmp   n234_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n234_bound_α:           mov              qword ptr [rsp + 4368], rsp;         jmp   n235_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n235_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 10464]
                        mov              qword ptr [rsp + 4416], rax
                        mov              qword ptr [rsp + 4424], rdx;         jmp   n236_var_α
#-----------------------------------------------------------------------------------------------------------------------
n236_var_α:             mov              rax, qword ptr [rsp + 10480]
                        mov              qword ptr [rsp + 4432], rax
                        mov              rax, qword ptr [rsp + 10488]
                        mov              qword ptr [rsp + 4440], rax;         jmp   n237_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n237_subscript_α:       mov              rdi, qword ptr [rsp + 4416]
                        mov              rsi, qword ptr [rsp + 4424]
                        mov              rdx, qword ptr [rsp + 4432]
                        mov              rcx, qword ptr [rsp + 4440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n240_unmark_α
                        mov              qword ptr [rsp + 4448], rax
                        mov              qword ptr [rsp + 4456], rdx;         jmp   n238_var_α
#-----------------------------------------------------------------------------------------------------------------------
n238_var_α:             mov              rax, qword ptr [rsp + 10480]
                        mov              qword ptr [rsp + 4480], rax
                        mov              rax, qword ptr [rsp + 10488]
                        mov              qword ptr [rsp + 4488], rax;         jmp   n239_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n239_assign_var_α:      mov              rdi, qword ptr [rsp + 4448]
                        mov              rsi, qword ptr [rsp + 4456]
                        mov              rdx, qword ptr [rsp + 4480]
                        mov              rcx, qword ptr [rsp + 4488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n240_unmark_α
                        mov              qword ptr [rsp + 4464], rax
                        mov              qword ptr [rsp + 4472], rdx;         jmp   n240_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n240_unmark_α:          mov              rsp, qword ptr [rsp + 4368];         jmp   n232_to_β
#-----------------------------------------------------------------------------------------------------------------------
n241_lit_string_α:      mov              qword ptr [rsp + 4176], 2            # result
                        mov              dword ptr [rsp + 4180], 1
                        mov              rax, qword ptr [rip + .Lx724_0]
                        mov              qword ptr [rsp + 4184], rax;         jmp   n242_var_α
.Lx724_0:               .quad            .Lx724_0_s
.Lx724_0_s:             .string          "O"
#-----------------------------------------------------------------------------------------------------------------------
n242_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 4192], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 4200], rax;         jmp   n243_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n243_call_proc_staged_α:
                        lea              rsi, [rsp + 4176]
                        lea              rdx, [rsp + 4192]
                        call             limage_dcα;                          jmp   .Lx728_2
.Lx728_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx728_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 4112], rax
                        mov              qword ptr [rsp + 4120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4112]
                        mov              rdx, qword ptr [rsp + 4120]
.Lx728_29:              mov              qword ptr [rsp + 4112], rax
                        mov              qword ptr [rsp + 4120], rdx
                        cmp              eax, 104;                            je    n244_lit_integer_α
                                                                              jmp   n244_lit_integer_α
n243_call_proc_staged_β:
                                                                              jmp   n244_lit_integer_α
.Lx728_0:               .quad            .Lx728_0_s
.Lx728_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_integer_α:     mov              qword ptr [rsp + 4096], 3            # result
                        mov              rax, qword ptr [rip + .Lx729_0]
                        mov              qword ptr [rsp + 4104], rax;         jmp   n245_make_list_α
.Lx729_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n245_make_list_α:       mov              rax, qword ptr [rsp + 4096]
                        mov              qword ptr [rsp + 4080], rax
                        mov              rax, qword ptr [rsp + 4104]
                        mov              qword ptr [rsp + 4088], rax
                        lea              rdi, [rsp + 4080]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4064], rax
                        mov              qword ptr [rsp + 4072], rdx;         jmp   n246_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n246_assign_α:          mov              rax, qword ptr [rsp + 4064]
                        mov              rdx, qword ptr [rsp + 4072]
                        mov              qword ptr [rsp + 10464], rax
                        mov              qword ptr [rsp + 10472], rdx;        jmp   n247_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_string_α:      mov              qword ptr [rsp + 4000], 2            # result
                        mov              dword ptr [rsp + 4004], 1
                        mov              rax, qword ptr [rip + .Lx733_0]
                        mov              qword ptr [rsp + 4008], rax;         jmp   n248_var_ref_α
.Lx733_0:               .quad            .Lx733_0_s
.Lx733_0_s:             .string          "\t"
#-----------------------------------------------------------------------------------------------------------------------
n248_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 10464]
                        mov              qword ptr [rsp + 4032], rax
                        mov              qword ptr [rsp + 4040], rdx;         jmp   n249_random_α
#-----------------------------------------------------------------------------------------------------------------------
n249_random_α:          mov              rdi, qword ptr [rsp + 4032]
                        mov              rsi, qword ptr [rsp + 4040]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n252_var_ref_α
                        mov              qword ptr [rsp + 4016], rax
                        mov              qword ptr [rsp + 4024], rdx;         jmp   n250_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n250_deref_α:           mov              rdi, qword ptr [rsp + 4016]
                        mov              rsi, qword ptr [rsp + 4024]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n252_var_ref_α
                        mov              qword ptr [rsp + 4048], rax
                        mov              qword ptr [rsp + 4056], rdx;         jmp   n251_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n251_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4048]
                        mov              qword ptr [rsp + 3968], rax
                        mov              rax, qword ptr [rsp + 4056]
                        mov              qword ptr [rsp + 3976], rax
                        mov              rax, qword ptr [rsp + 4000]
                        mov              qword ptr [rsp + 3952], rax
                        mov              rax, qword ptr [rsp + 4008]
                        mov              qword ptr [rsp + 3960], rax
                        .section         .rodata
.Lrkfn739:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn739]
                        lea              rsi, [rsp + 3952]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3936], rax
                        mov              qword ptr [rsp + 3944], rdx
                        cmp              eax, 104;                            je    n252_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n252_var_ref_α
n251_call_builtin_icon_β:
                                                                              jmp   n252_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n252_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 10464]
                        mov              qword ptr [rsp + 3888], rax
                        mov              qword ptr [rsp + 3896], rdx;         jmp   n253_random_α
#-----------------------------------------------------------------------------------------------------------------------
n253_random_α:          mov              rdi, qword ptr [rsp + 3888]
                        mov              rsi, qword ptr [rsp + 3896]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n256_lit_string_α
                        mov              qword ptr [rsp + 3872], rax
                        mov              qword ptr [rsp + 3880], rdx;         jmp   n254_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n254_lit_integer_α:     mov              qword ptr [rsp + 3920], 3            # result
                        mov              rax, qword ptr [rip + .Lx743_0]
                        mov              qword ptr [rsp + 3928], rax;         jmp   n255_assign_var_α
.Lx743_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n255_assign_var_α:      mov              rdi, qword ptr [rsp + 3872]
                        mov              rsi, qword ptr [rsp + 3880]
                        mov              rdx, qword ptr [rsp + 3920]
                        mov              rcx, qword ptr [rsp + 3928]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n256_lit_string_α
                        mov              qword ptr [rsp + 3904], rax
                        mov              qword ptr [rsp + 3912], rdx;         jmp   n256_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n256_lit_string_α:      mov              qword ptr [rsp + 3840], 2            # result
                        mov              dword ptr [rsp + 3844], 1
                        mov              rax, qword ptr [rip + .Lx745_0]
                        mov              qword ptr [rsp + 3848], rax;         jmp   n257_var_α
.Lx745_0:               .quad            .Lx745_0_s
.Lx745_0_s:             .string          "P"
#-----------------------------------------------------------------------------------------------------------------------
n257_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 3856], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 3864], rax;         jmp   n258_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n258_call_proc_staged_α:
                        lea              rsi, [rsp + 3840]
                        lea              rdx, [rsp + 3856]
                        call             limage_dcα;                          jmp   .Lx749_2
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
                        mov              qword ptr [rsp + 3776], rax
                        mov              qword ptr [rsp + 3784], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3776]
                        mov              rdx, qword ptr [rsp + 3784]
.Lx749_29:              mov              qword ptr [rsp + 3776], rax
                        mov              qword ptr [rsp + 3784], rdx
                        cmp              eax, 104;                            je    n259_disjunction_α
                                                                              jmp   n259_disjunction_α
n258_call_proc_staged_β:
                                                                              jmp   n259_disjunction_α
.Lx749_0:               .quad            .Lx749_0_s
.Lx749_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n259_disjunction_α:     mov              qword ptr [rsp + 3664], 0
                        mov              qword ptr [rsp + 3672], 0
                        mov              dword ptr [rsp + 3680], 0;           jmp   n405_var_ref_α
n259_disjunction_as:    mov              eax, dword ptr [rsp + 3680]
                        cmp              eax, 0;                              jne   .Lx751_0
                        mov              rax, qword ptr [rsp + 3744]
                        mov              qword ptr [rsp + 3664], rax
                        mov              rax, qword ptr [rsp + 3752]
                        mov              qword ptr [rsp + 3672], rax;         jmp   n260_call_builtin_icon_α
.Lx751_0:               cmp              eax, 1;                              jne   .Lx751_1
                        mov              rax, qword ptr [rsp + 3760]
                        mov              qword ptr [rsp + 3664], rax
                        mov              rax, qword ptr [rsp + 3768]
                        mov              qword ptr [rsp + 3672], rax;         jmp   n260_call_builtin_icon_α
.Lx751_1:                                                                     jmp   n260_call_builtin_icon_α
n259_disjunction_β:     mov              eax, dword ptr [rsp + 3680]
                        cmp              eax, 0;                              je    n259_disjunction_af
                                                                              jmp   n259_disjunction_af
n259_disjunction_af:    add              dword ptr [rsp + 3680], 1
                        mov              eax, dword ptr [rsp + 3680]
                        cmp              eax, 1;                              je    n404_lit_string_α
                                                                              jmp   n261_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n260_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3664]
                        mov              qword ptr [rsp + 3632], rax
                        mov              rax, qword ptr [rsp + 3672]
                        mov              qword ptr [rsp + 3640], rax
                        .section         .rodata
.Lrkfn753:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn753]
                        lea              rsi, [rsp + 3632]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3616], rax
                        mov              qword ptr [rsp + 3624], rdx
                        cmp              eax, 104;                            je    n259_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n261_disjunction_α
n260_call_builtin_icon_β:
                                                                              jmp   n259_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n261_disjunction_α:     mov              qword ptr [rsp + 3504], 0
                        mov              qword ptr [rsp + 3512], 0
                        mov              dword ptr [rsp + 3520], 0;           jmp   n400_var_ref_α
n261_disjunction_as:    mov              eax, dword ptr [rsp + 3520]
                        cmp              eax, 0;                              jne   .Lx755_0
                        mov              rax, qword ptr [rsp + 3584]
                        mov              qword ptr [rsp + 3504], rax
                        mov              rax, qword ptr [rsp + 3592]
                        mov              qword ptr [rsp + 3512], rax;         jmp   n262_call_builtin_icon_α
.Lx755_0:               cmp              eax, 1;                              jne   .Lx755_1
                        mov              rax, qword ptr [rsp + 3600]
                        mov              qword ptr [rsp + 3504], rax
                        mov              rax, qword ptr [rsp + 3608]
                        mov              qword ptr [rsp + 3512], rax;         jmp   n262_call_builtin_icon_α
.Lx755_1:                                                                     jmp   n262_call_builtin_icon_α
n261_disjunction_β:     mov              eax, dword ptr [rsp + 3520]
                        cmp              eax, 0;                              je    n261_disjunction_af
                                                                              jmp   n261_disjunction_af
n261_disjunction_af:    add              dword ptr [rsp + 3520], 1
                        mov              eax, dword ptr [rsp + 3520]
                        cmp              eax, 1;                              je    n399_lit_string_α
                                                                              jmp   n263_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n262_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3504]
                        mov              qword ptr [rsp + 3472], rax
                        mov              rax, qword ptr [rsp + 3512]
                        mov              qword ptr [rsp + 3480], rax
                        .section         .rodata
.Lrkfn757:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn757]
                        lea              rsi, [rsp + 3472]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3456], rax
                        mov              qword ptr [rsp + 3464], rdx
                        cmp              eax, 104;                            je    n261_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n263_disjunction_α
n262_call_builtin_icon_β:
                                                                              jmp   n261_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n263_disjunction_α:     mov              qword ptr [rsp + 3344], 0
                        mov              qword ptr [rsp + 3352], 0
                        mov              dword ptr [rsp + 3360], 0;           jmp   n395_var_ref_α
n263_disjunction_as:    mov              eax, dword ptr [rsp + 3360]
                        cmp              eax, 0;                              jne   .Lx759_0
                        mov              rax, qword ptr [rsp + 3424]
                        mov              qword ptr [rsp + 3344], rax
                        mov              rax, qword ptr [rsp + 3432]
                        mov              qword ptr [rsp + 3352], rax;         jmp   n264_call_builtin_icon_α
.Lx759_0:               cmp              eax, 1;                              jne   .Lx759_1
                        mov              rax, qword ptr [rsp + 3440]
                        mov              qword ptr [rsp + 3344], rax
                        mov              rax, qword ptr [rsp + 3448]
                        mov              qword ptr [rsp + 3352], rax;         jmp   n264_call_builtin_icon_α
.Lx759_1:                                                                     jmp   n264_call_builtin_icon_α
n263_disjunction_β:     mov              eax, dword ptr [rsp + 3360]
                        cmp              eax, 0;                              je    n263_disjunction_af
                                                                              jmp   n263_disjunction_af
n263_disjunction_af:    add              dword ptr [rsp + 3360], 1
                        mov              eax, dword ptr [rsp + 3360]
                        cmp              eax, 1;                              je    n394_lit_string_α
                                                                              jmp   n265_var_α
#-----------------------------------------------------------------------------------------------------------------------
n264_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3344]
                        mov              qword ptr [rsp + 3312], rax
                        mov              rax, qword ptr [rsp + 3352]
                        mov              qword ptr [rsp + 3320], rax
                        .section         .rodata
.Lrkfn761:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn761]
                        lea              rsi, [rsp + 3312]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx
                        cmp              eax, 104;                            je    n263_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n265_var_α
n264_call_builtin_icon_β:
                                                                              jmp   n263_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n265_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 3280], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 3288], rax;         jmp   n266_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n266_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3280]
                        mov              qword ptr [rsp + 3248], rax
                        mov              rax, qword ptr [rsp + 3288]
                        mov              qword ptr [rsp + 3256], rax
                        .section         .rodata
.Lrkfn765:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn765]
                        lea              rsi, [rsp + 3248]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3232], rax
                        mov              qword ptr [rsp + 3240], rdx
                        cmp              eax, 104;                            je    n267_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n267_disjunction_α
n266_call_builtin_icon_β:
                                                                              jmp   n267_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n267_disjunction_α:     mov              qword ptr [rsp + 3120], 0
                        mov              qword ptr [rsp + 3128], 0
                        mov              dword ptr [rsp + 3136], 0;           jmp   n392_var_α
n267_disjunction_as:    mov              eax, dword ptr [rsp + 3136]
                        cmp              eax, 0;                              jne   .Lx767_0
                        mov              rax, qword ptr [rsp + 3152]
                        mov              qword ptr [rsp + 3120], rax
                        mov              rax, qword ptr [rsp + 3160]
                        mov              qword ptr [rsp + 3128], rax;         jmp   n268_call_builtin_icon_α
.Lx767_0:               cmp              eax, 1;                              jne   .Lx767_1
                        mov              rax, qword ptr [rsp + 3216]
                        mov              qword ptr [rsp + 3120], rax
                        mov              rax, qword ptr [rsp + 3224]
                        mov              qword ptr [rsp + 3128], rax;         jmp   n268_call_builtin_icon_α
.Lx767_1:                                                                     jmp   n268_call_builtin_icon_α
n267_disjunction_β:     mov              eax, dword ptr [rsp + 3136]
                        cmp              eax, 0;                              je    n267_disjunction_af
                                                                              jmp   n267_disjunction_af
n267_disjunction_af:    add              dword ptr [rsp + 3136], 1
                        mov              eax, dword ptr [rsp + 3136]
                        cmp              eax, 1;                              je    n391_lit_string_α
                                                                              jmp   n269_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n268_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3120]
                        mov              qword ptr [rsp + 3088], rax
                        mov              rax, qword ptr [rsp + 3128]
                        mov              qword ptr [rsp + 3096], rax
                        .section         .rodata
.Lrkfn769:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn769]
                        lea              rsi, [rsp + 3088]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3072], rax
                        mov              qword ptr [rsp + 3080], rdx
                        cmp              eax, 104;                            je    n267_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n269_disjunction_α
n268_call_builtin_icon_β:
                                                                              jmp   n267_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n269_disjunction_α:     mov              qword ptr [rsp + 2960], 0
                        mov              qword ptr [rsp + 2968], 0
                        mov              dword ptr [rsp + 2976], 0;           jmp   n389_var_α
n269_disjunction_as:    mov              eax, dword ptr [rsp + 2976]
                        cmp              eax, 0;                              jne   .Lx771_0
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 2960], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 2968], rax;         jmp   n270_call_builtin_icon_α
.Lx771_0:               cmp              eax, 1;                              jne   .Lx771_1
                        mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 2960], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 2968], rax;         jmp   n270_call_builtin_icon_α
.Lx771_1:                                                                     jmp   n270_call_builtin_icon_α
n269_disjunction_β:     mov              eax, dword ptr [rsp + 2976]
                        cmp              eax, 0;                              je    n269_disjunction_af
                                                                              jmp   n269_disjunction_af
n269_disjunction_af:    add              dword ptr [rsp + 2976], 1
                        mov              eax, dword ptr [rsp + 2976]
                        cmp              eax, 1;                              je    n388_lit_string_α
                                                                              jmp   n271_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n270_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 2928], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 2936], rax
                        .section         .rodata
.Lrkfn773:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn773]
                        lea              rsi, [rsp + 2928]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx
                        cmp              eax, 104;                            je    n269_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n271_disjunction_α
n270_call_builtin_icon_β:
                                                                              jmp   n269_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n271_disjunction_α:     mov              qword ptr [rsp + 2800], 0
                        mov              qword ptr [rsp + 2808], 0
                        mov              dword ptr [rsp + 2816], 0;           jmp   n386_var_α
n271_disjunction_as:    mov              eax, dword ptr [rsp + 2816]
                        cmp              eax, 0;                              jne   .Lx775_0
                        mov              rax, qword ptr [rsp + 2832]
                        mov              qword ptr [rsp + 2800], rax
                        mov              rax, qword ptr [rsp + 2840]
                        mov              qword ptr [rsp + 2808], rax;         jmp   n272_call_builtin_icon_α
.Lx775_0:               cmp              eax, 1;                              jne   .Lx775_1
                        mov              rax, qword ptr [rsp + 2896]
                        mov              qword ptr [rsp + 2800], rax
                        mov              rax, qword ptr [rsp + 2904]
                        mov              qword ptr [rsp + 2808], rax;         jmp   n272_call_builtin_icon_α
.Lx775_1:                                                                     jmp   n272_call_builtin_icon_α
n271_disjunction_β:     mov              eax, dword ptr [rsp + 2816]
                        cmp              eax, 0;                              je    n271_disjunction_af
                                                                              jmp   n271_disjunction_af
n271_disjunction_af:    add              dword ptr [rsp + 2816], 1
                        mov              eax, dword ptr [rsp + 2816]
                        cmp              eax, 1;                              je    n385_lit_string_α
                                                                              jmp   n273_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n272_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2800]
                        mov              qword ptr [rsp + 2768], rax
                        mov              rax, qword ptr [rsp + 2808]
                        mov              qword ptr [rsp + 2776], rax
                        .section         .rodata
.Lrkfn777:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn777]
                        lea              rsi, [rsp + 2768]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2752], rax
                        mov              qword ptr [rsp + 2760], rdx
                        cmp              eax, 104;                            je    n271_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n273_lit_integer_α
n272_call_builtin_icon_β:
                                                                              jmp   n271_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n273_lit_integer_α:     mov              qword ptr [rsp + 2608], 3            # result
                        mov              rax, qword ptr [rip + .Lx778_0]
                        mov              qword ptr [rsp + 2616], rax;         jmp   n274_lit_integer_α
.Lx778_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_integer_α:     mov              qword ptr [rsp + 2624], 3            # result
                        mov              rax, qword ptr [rip + .Lx779_0]
                        mov              qword ptr [rsp + 2632], rax;         jmp   n275_lit_integer_α
.Lx779_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n275_lit_integer_α:     mov              qword ptr [rsp + 2640], 3            # result
                        mov              rax, qword ptr [rip + .Lx780_0]
                        mov              qword ptr [rsp + 2648], rax;         jmp   n276_lit_integer_α
.Lx780_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n276_lit_integer_α:     mov              qword ptr [rsp + 2656], 3            # result
                        mov              rax, qword ptr [rip + .Lx781_0]
                        mov              qword ptr [rsp + 2664], rax;         jmp   n277_lit_integer_α
.Lx781_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n277_lit_integer_α:     mov              qword ptr [rsp + 2672], 3            # result
                        mov              rax, qword ptr [rip + .Lx782_0]
                        mov              qword ptr [rsp + 2680], rax;         jmp   n278_lit_integer_α
.Lx782_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_integer_α:     mov              qword ptr [rsp + 2688], 3            # result
                        mov              rax, qword ptr [rip + .Lx783_0]
                        mov              qword ptr [rsp + 2696], rax;         jmp   n279_lit_integer_α
.Lx783_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_integer_α:     mov              qword ptr [rsp + 2704], 3            # result
                        mov              rax, qword ptr [rip + .Lx784_0]
                        mov              qword ptr [rsp + 2712], rax;         jmp   n280_lit_integer_α
.Lx784_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n280_lit_integer_α:     mov              qword ptr [rsp + 2720], 3            # result
                        mov              rax, qword ptr [rip + .Lx785_0]
                        mov              qword ptr [rsp + 2728], rax;         jmp   n281_lit_integer_α
.Lx785_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n281_lit_integer_α:     mov              qword ptr [rsp + 2736], 3            # result
                        mov              rax, qword ptr [rip + .Lx786_0]
                        mov              qword ptr [rsp + 2744], rax;         jmp   n282_make_list_α
.Lx786_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n282_make_list_α:       mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 2472], rax
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2480], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2488], rax
                        mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 2504], rax
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 2512], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 2520], rax
                        mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 2528], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 2536], rax
                        mov              rax, qword ptr [rsp + 2688]
                        mov              qword ptr [rsp + 2544], rax
                        mov              rax, qword ptr [rsp + 2696]
                        mov              qword ptr [rsp + 2552], rax
                        mov              rax, qword ptr [rsp + 2704]
                        mov              qword ptr [rsp + 2560], rax
                        mov              rax, qword ptr [rsp + 2712]
                        mov              qword ptr [rsp + 2568], rax
                        mov              rax, qword ptr [rsp + 2720]
                        mov              qword ptr [rsp + 2576], rax
                        mov              rax, qword ptr [rsp + 2728]
                        mov              qword ptr [rsp + 2584], rax
                        mov              rax, qword ptr [rsp + 2736]
                        mov              qword ptr [rsp + 2592], rax
                        mov              rax, qword ptr [rsp + 2744]
                        mov              qword ptr [rsp + 2600], rax
                        lea              rdi, [rsp + 2464]
                        mov              esi, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx;         jmp   n283_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n283_assign_α:          mov              rax, qword ptr [rsp + 2448]
                        mov              rdx, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 10464], rax
                        mov              qword ptr [rsp + 10472], rdx;        jmp   n284_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n284_lit_string_α:      mov              qword ptr [rsp + 2416], 2            # result
                        mov              dword ptr [rsp + 2420], 1
                        mov              rax, qword ptr [rip + .Lx790_0]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n285_var_α
.Lx790_0:               .quad            .Lx790_0_s
.Lx790_0_s:             .string          "p"
#-----------------------------------------------------------------------------------------------------------------------
n285_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 2432], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 2440], rax;         jmp   n286_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n286_call_proc_staged_α:
                        lea              rsi, [rsp + 2416]
                        lea              rdx, [rsp + 2432]
                        call             limage_dcα;                          jmp   .Lx794_2
.Lx794_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx794_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2352], rax
                        mov              qword ptr [rsp + 2360], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2352]
                        mov              rdx, qword ptr [rsp + 2360]
.Lx794_29:              mov              qword ptr [rsp + 2352], rax
                        mov              qword ptr [rsp + 2360], rdx
                        cmp              eax, 104;                            je    n287_lit_string_α
                                                                              jmp   n287_lit_string_α
n286_call_proc_staged_β:
                                                                              jmp   n287_lit_string_α
.Lx794_0:               .quad            .Lx794_0_s
.Lx794_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n287_lit_string_α:      mov              qword ptr [rsp + 2272], 2            # result
                        mov              dword ptr [rsp + 2276], 1
                        mov              rax, qword ptr [rip + .Lx795_0]
                        mov              qword ptr [rsp + 2280], rax;         jmp   n288_var_α
.Lx795_0:               .quad            .Lx795_0_s
.Lx795_0_s:             .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n288_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 2304], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 2312], rax;         jmp   n289_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n289_lit_integer_α:     mov              qword ptr [rsp + 2320], 3            # result
                        mov              rax, qword ptr [rip + .Lx798_0]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n290_lit_integer_α
.Lx798_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n290_lit_integer_α:     mov              qword ptr [rsp + 2336], 3            # result
                        mov              rax, qword ptr [rip + .Lx799_0]
                        mov              qword ptr [rsp + 2344], rax;         jmp   n291_subscript_α
.Lx799_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n291_subscript_α:       mov              rdi, qword ptr [rsp + 2304]
                        mov              rsi, qword ptr [rsp + 2312]
                        mov              rdx, qword ptr [rsp + 2320]
                        mov              rcx, qword ptr [rsp + 2328]
                        mov              r8, qword ptr [rsp + 2336]
                        mov              r9, qword ptr [rsp + 2344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n293_lit_string_α
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx;         jmp   n292_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n292_call_proc_staged_α:
                        lea              rsi, [rsp + 2272]
                        lea              rdx, [rsp + 2288]
                        call             limage_dcα;                          jmp   .Lx802_2
.Lx802_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx802_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2208]
                        mov              rdx, qword ptr [rsp + 2216]
.Lx802_29:              mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                        cmp              eax, 104;                            je    n293_lit_string_α
                                                                              jmp   n293_lit_string_α
n292_call_proc_staged_β:
                                                                              jmp   n293_lit_string_α
.Lx802_0:               .quad            .Lx802_0_s
.Lx802_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_string_α:      mov              qword ptr [rsp + 2128], 2            # result
                        mov              dword ptr [rsp + 2132], 1
                        mov              rax, qword ptr [rip + .Lx803_0]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n294_var_α
.Lx803_0:               .quad            .Lx803_0_s
.Lx803_0_s:             .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n294_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 2168], rax;         jmp   n295_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n295_lit_integer_α:     mov              qword ptr [rsp + 2176], 3            # result
                        mov              rax, qword ptr [rip + .Lx806_0]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n296_lit_integer_α
.Lx806_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n296_lit_integer_α:     mov              qword ptr [rsp + 2192], 3            # result
                        mov              rax, qword ptr [rip + .Lx807_0]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n297_subscript_α
.Lx807_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n297_subscript_α:       mov              rdi, qword ptr [rsp + 2160]
                        mov              rsi, qword ptr [rsp + 2168]
                        mov              rdx, qword ptr [rsp + 2176]
                        mov              rcx, qword ptr [rsp + 2184]
                        mov              r8, qword ptr [rsp + 2192]
                        mov              r9, qword ptr [rsp + 2200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n299_lit_string_α
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx;         jmp   n298_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n298_call_proc_staged_α:
                        lea              rsi, [rsp + 2128]
                        lea              rdx, [rsp + 2144]
                        call             limage_dcα;                          jmp   .Lx810_2
.Lx810_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx810_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2064]
                        mov              rdx, qword ptr [rsp + 2072]
.Lx810_29:              mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx
                        cmp              eax, 104;                            je    n299_lit_string_α
                                                                              jmp   n299_lit_string_α
n298_call_proc_staged_β:
                                                                              jmp   n299_lit_string_α
.Lx810_0:               .quad            .Lx810_0_s
.Lx810_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_string_α:      mov              qword ptr [rsp + 1984], 2            # result
                        mov              dword ptr [rsp + 1988], 1
                        mov              rax, qword ptr [rip + .Lx811_0]
                        mov              qword ptr [rsp + 1992], rax;         jmp   n300_var_α
.Lx811_0:               .quad            .Lx811_0_s
.Lx811_0_s:             .string          "s"
#-----------------------------------------------------------------------------------------------------------------------
n300_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 2024], rax;         jmp   n301_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n301_lit_integer_α:     mov              qword ptr [rsp + 2032], 3            # result
                        mov              rax, qword ptr [rip + .Lx814_0]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n302_lit_integer_α
.Lx814_0:               .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n302_lit_integer_α:     mov              qword ptr [rsp + 2048], 3            # result
                        mov              rax, qword ptr [rip + .Lx815_0]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n303_subscript_α
.Lx815_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n303_subscript_α:       mov              rdi, qword ptr [rsp + 2016]
                        mov              rsi, qword ptr [rsp + 2024]
                        mov              rdx, qword ptr [rsp + 2032]
                        mov              rcx, qword ptr [rsp + 2040]
                        mov              r8, qword ptr [rsp + 2048]
                        mov              r9, qword ptr [rsp + 2056]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n305_lit_string_α
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx;         jmp   n304_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n304_call_proc_staged_α:
                        lea              rsi, [rsp + 1984]
                        lea              rdx, [rsp + 2000]
                        call             limage_dcα;                          jmp   .Lx818_2
.Lx818_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx818_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1920]
                        mov              rdx, qword ptr [rsp + 1928]
.Lx818_29:              mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx
                        cmp              eax, 104;                            je    n305_lit_string_α
                                                                              jmp   n305_lit_string_α
n304_call_proc_staged_β:
                                                                              jmp   n305_lit_string_α
.Lx818_0:               .quad            .Lx818_0_s
.Lx818_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_string_α:      mov              qword ptr [rsp + 1840], 2            # result
                        mov              dword ptr [rsp + 1844], 1
                        mov              rax, qword ptr [rip + .Lx819_0]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n306_var_α
.Lx819_0:               .quad            .Lx819_0_s
.Lx819_0_s:             .string          "t"
#-----------------------------------------------------------------------------------------------------------------------
n306_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 1880], rax;         jmp   n307_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n307_lit_integer_α:     mov              qword ptr [rsp + 1888], 3            # result
                        mov              rax, qword ptr [rip + .Lx822_0]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n308_lit_integer_α
.Lx822_0:               .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_integer_α:     mov              qword ptr [rsp + 1904], 3            # result
                        mov              rax, qword ptr [rip + .Lx823_0]
                        mov              qword ptr [rsp + 1912], rax;         jmp   n309_subscript_α
.Lx823_0:               .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n309_subscript_α:       mov              rdi, qword ptr [rsp + 1872]
                        mov              rsi, qword ptr [rsp + 1880]
                        mov              rdx, qword ptr [rsp + 1888]
                        mov              rcx, qword ptr [rsp + 1896]
                        mov              r8, qword ptr [rsp + 1904]
                        mov              r9, qword ptr [rsp + 1912]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n311_disjunction_α
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx;         jmp   n310_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n310_call_proc_staged_α:
                        lea              rsi, [rsp + 1840]
                        lea              rdx, [rsp + 1856]
                        call             limage_dcα;                          jmp   .Lx826_2
.Lx826_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx826_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1776]
                        mov              rdx, qword ptr [rsp + 1784]
.Lx826_29:              mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx
                        cmp              eax, 104;                            je    n311_disjunction_α
                                                                              jmp   n311_disjunction_α
n310_call_proc_staged_β:
                                                                              jmp   n311_disjunction_α
.Lx826_0:               .quad            .Lx826_0_s
.Lx826_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n311_disjunction_α:     mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              dword ptr [rsp + 1552], 0;           jmp   n379_lit_string_α
n311_disjunction_as:    mov              eax, dword ptr [rsp + 1552]
                        cmp              eax, 0;                              jne   .Lx828_0
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n312_disjunction_α
.Lx828_0:               cmp              eax, 1;                              jne   .Lx828_1
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n312_disjunction_α
.Lx828_1:                                                                     jmp   n312_disjunction_α
n311_disjunction_β:     mov              eax, dword ptr [rsp + 1552]
                        cmp              eax, 0;                              je    n311_disjunction_af
                                                                              jmp   n311_disjunction_af
n311_disjunction_af:    add              dword ptr [rsp + 1552], 1
                        mov              eax, dword ptr [rsp + 1552]
                        cmp              eax, 1;                              je    n377_lit_string_α
                                                                              jmp   n312_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n312_disjunction_α:     mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              dword ptr [rsp + 1312], 0;           jmp   n371_lit_string_α
n312_disjunction_as:    mov              eax, dword ptr [rsp + 1312]
                        cmp              eax, 0;                              jne   .Lx830_0
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n313_call_builtin_icon_α
.Lx830_0:               cmp              eax, 1;                              jne   .Lx830_1
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n313_call_builtin_icon_α
.Lx830_1:                                                                     jmp   n313_call_builtin_icon_α
n312_disjunction_β:     mov              eax, dword ptr [rsp + 1312]
                        cmp              eax, 0;                              je    n312_disjunction_af
                                                                              jmp   n312_disjunction_af
n312_disjunction_af:    add              dword ptr [rsp + 1312], 1
                        mov              eax, dword ptr [rsp + 1312]
                        cmp              eax, 1;                              je    n369_lit_string_α
                                                                              jmp   n313_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n313_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn832:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn832]
                        lea              rsi, [rsp + 1280]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        cmp              eax, 104;                            je    n314_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n314_var_α
n313_call_builtin_icon_β:
                                                                              jmp   n314_var_α
#-----------------------------------------------------------------------------------------------------------------------
n314_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n315_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n315_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1224], rax
                        .section         .rodata
.Lrkfn836:              .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn836]
                        lea              rsi, [rsp + 1216]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        cmp              eax, 104;                            je    n317_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n316_assign_α
n315_call_builtin_icon_β:
                                                                              jmp   n317_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n316_assign_α:          mov              rax, qword ptr [rsp + 1200]
                        mov              rdx, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 10448], rax
                        mov              qword ptr [rsp + 10456], rdx;        jmp   n317_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n317_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 10464]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n318_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n318_iterate_α:         mov              qword ptr [rsp + 1104], 0
.Lx841_0:               mov              rdi, qword ptr [rsp + 1120]
                        mov              rsi, qword ptr [rsp + 1128]
                        mov              rdx, qword ptr [rsp + 1104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_var_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        cmp              rax, 104;                            je    n323_var_ref_α
                                                                              jmp   n319_deref_α
n318_iterate_β:         inc              qword ptr [rsp + 1104];              jmp   .Lx841_0
#-----------------------------------------------------------------------------------------------------------------------
n319_deref_α:           mov              rdi, qword ptr [rsp + 1088]
                        mov              rsi, qword ptr [rsp + 1096]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n323_var_ref_α
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n320_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_integer_α:     mov              qword ptr [rsp + 1184], 3            # result
                        mov              rax, qword ptr [rip + .Lx843_0]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n321_binop_α
.Lx843_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n321_binop_α:           mov              eax, dword ptr [rsp + 1168]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx844_2
                        mov              rax, qword ptr [rsp + 1176]
                        mov              rdx, 10
                        add              rax, rdx
                        mov              qword ptr [rsp + 1152], 3
                        mov              qword ptr [rsp + 1160], rax;         jmp   .Lx844_7
.Lx844_2:               and              edx, 1;                              jz    .Lx844_0
                        mov              rsi, qword ptr [rsp + 1176]
                        mov              rdi, 10
                        cmp              eax, 5;                              je    .Lx844_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx844_4
.Lx844_3:               movq             xmm0, rsi
.Lx844_4:               cmp              ecx, 5;                              je    .Lx844_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx844_6
.Lx844_5:               movq             xmm1, rdi
.Lx844_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1152], 5
                        mov              qword ptr [rsp + 1160], rax
.Lx844_7:                                                                     jmp   n322_assign_var_α
.Lx844_0:               mov              rdi, qword ptr [rsp + 1168]
                        mov              rsi, qword ptr [rsp + 1176]
                        mov              rdx, qword ptr [rsp + 1184]
                        mov              rcx, qword ptr [rsp + 1192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n323_var_ref_α
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n322_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n322_assign_var_α:      mov              rdi, qword ptr [rsp + 1088]
                        mov              rsi, qword ptr [rsp + 1096]
                        mov              rdx, qword ptr [rsp + 1152]
                        mov              rcx, qword ptr [rsp + 1160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n323_var_ref_α
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx;         jmp   n318_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n323_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 10448]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n324_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n324_iterate_α:         mov              qword ptr [rsp + 992], 0
.Lx849_0:               mov              rdi, qword ptr [rsp + 1008]
                        mov              rsi, qword ptr [rsp + 1016]
                        mov              rdx, qword ptr [rsp + 992]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_var_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              rax, 104;                            je    n329_lit_string_α
                                                                              jmp   n325_deref_α
n324_iterate_β:         inc              qword ptr [rsp + 992];               jmp   .Lx849_0
#-----------------------------------------------------------------------------------------------------------------------
n325_deref_α:           mov              rdi, qword ptr [rsp + 976]
                        mov              rsi, qword ptr [rsp + 984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n329_lit_string_α
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n326_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n326_lit_integer_α:     mov              qword ptr [rsp + 1072], 3            # result
                        mov              rax, qword ptr [rip + .Lx851_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n327_binop_α
.Lx851_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n327_binop_α:           mov              eax, dword ptr [rsp + 1056]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx852_2
                        mov              rax, qword ptr [rsp + 1064]
                        mov              rdx, 20
                        add              rax, rdx
                        mov              qword ptr [rsp + 1040], 3
                        mov              qword ptr [rsp + 1048], rax;         jmp   .Lx852_7
.Lx852_2:               and              edx, 1;                              jz    .Lx852_0
                        mov              rsi, qword ptr [rsp + 1064]
                        mov              rdi, 20
                        cmp              eax, 5;                              je    .Lx852_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx852_4
.Lx852_3:               movq             xmm0, rsi
.Lx852_4:               cmp              ecx, 5;                              je    .Lx852_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx852_6
.Lx852_5:               movq             xmm1, rdi
.Lx852_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1040], 5
                        mov              qword ptr [rsp + 1048], rax
.Lx852_7:                                                                     jmp   n328_assign_var_α
.Lx852_0:               mov              rdi, qword ptr [rsp + 1056]
                        mov              rsi, qword ptr [rsp + 1064]
                        mov              rdx, qword ptr [rsp + 1072]
                        mov              rcx, qword ptr [rsp + 1080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n329_lit_string_α
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n328_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n328_assign_var_α:      mov              rdi, qword ptr [rsp + 976]
                        mov              rsi, qword ptr [rsp + 984]
                        mov              rdx, qword ptr [rsp + 1040]
                        mov              rcx, qword ptr [rsp + 1048]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n329_lit_string_α
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n324_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n329_lit_string_α:      mov              qword ptr [rsp + 944], 2             # result
                        mov              dword ptr [rsp + 948], 1
                        mov              rax, qword ptr [rip + .Lx854_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n330_var_α
.Lx854_0:               .quad            .Lx854_0_s
.Lx854_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n330_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 968], rax;          jmp   n331_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n331_call_proc_staged_α:
                        lea              rsi, [rsp + 944]
                        lea              rdx, [rsp + 960]
                        call             limage_dcα;                          jmp   .Lx858_2
.Lx858_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx858_29
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
.Lx858_29:              mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              eax, 104;                            je    n332_lit_string_α
                                                                              jmp   n332_lit_string_α
n331_call_proc_staged_β:
                                                                              jmp   n332_lit_string_α
.Lx858_0:               .quad            .Lx858_0_s
.Lx858_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n332_lit_string_α:      mov              qword ptr [rsp + 848], 2             # result
                        mov              dword ptr [rsp + 852], 1
                        mov              rax, qword ptr [rip + .Lx859_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n333_var_α
.Lx859_0:               .quad            .Lx859_0_s
.Lx859_0_s:             .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n333_var_α:             mov              rax, qword ptr [rsp + 10448]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 10456]
                        mov              qword ptr [rsp + 872], rax;          jmp   n334_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n334_call_proc_staged_α:
                        lea              rsi, [rsp + 848]
                        lea              rdx, [rsp + 864]
                        call             limage_dcα;                          jmp   .Lx863_2
.Lx863_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx863_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
.Lx863_29:              mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              eax, 104;                            je    n335_var_α
                                                                              jmp   n335_var_α
n334_call_proc_staged_β:
                                                                              jmp   n335_var_α
.Lx863_0:               .quad            .Lx863_0_s
.Lx863_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n335_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 760], rax;          jmp   n336_var_α
#-----------------------------------------------------------------------------------------------------------------------
n336_var_α:             mov              rax, qword ptr [rsp + 10448]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 10456]
                        mov              qword ptr [rsp + 776], rax;          jmp   n337_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n337_binop_α:           mov              rdi, qword ptr [rsp + 10464]
                        mov              rsi, qword ptr [rsp + 10472]
                        mov              rdx, qword ptr [rsp + 10448]
                        mov              rcx, qword ptr [rsp + 10456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n338_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n338_assign_α:          mov              rax, qword ptr [rsp + 736]
                        mov              rdx, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 10432], rax
                        mov              qword ptr [rsp + 10440], rdx;        jmp   n339_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n339_lit_string_α:      mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 1
                        mov              rax, qword ptr [rip + .Lx870_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n340_var_α
.Lx870_0:               .quad            .Lx870_0_s
.Lx870_0_s:             .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n340_var_α:             mov              rax, qword ptr [rsp + 10432]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 10440]
                        mov              qword ptr [rsp + 712], rax;          jmp   n341_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n341_call_proc_staged_α:
                        lea              rsi, [rsp + 688]
                        lea              rdx, [rsp + 704]
                        call             limage_dcα;                          jmp   .Lx874_2
.Lx874_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx874_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
.Lx874_29:              mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              eax, 104;                            je    n342_var_ref_α
                                                                              jmp   n342_var_ref_α
n341_call_proc_staged_β:
                                                                              jmp   n342_var_ref_α
.Lx874_0:               .quad            .Lx874_0_s
.Lx874_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n342_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 10464]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n343_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n343_iterate_α:         mov              qword ptr [rsp + 528], 0
.Lx878_0:               mov              rdi, qword ptr [rsp + 544]
                        mov              rsi, qword ptr [rsp + 552]
                        mov              rdx, qword ptr [rsp + 528]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_var_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              rax, 104;                            je    n348_var_ref_α
                                                                              jmp   n344_deref_α
n343_iterate_β:         inc              qword ptr [rsp + 528];               jmp   .Lx878_0
#-----------------------------------------------------------------------------------------------------------------------
n344_deref_α:           mov              rdi, qword ptr [rsp + 512]
                        mov              rsi, qword ptr [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n348_var_ref_α
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n345_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n345_lit_integer_α:     mov              qword ptr [rsp + 608], 3             # result
                        mov              rax, qword ptr [rip + .Lx880_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n346_binop_α
.Lx880_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n346_binop_α:           mov              eax, dword ptr [rsp + 592]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx881_2
                        mov              rax, qword ptr [rsp + 600]
                        mov              rdx, 10
                        add              rax, rdx
                        mov              qword ptr [rsp + 576], 3
                        mov              qword ptr [rsp + 584], rax;          jmp   .Lx881_7
.Lx881_2:               and              edx, 1;                              jz    .Lx881_0
                        mov              rsi, qword ptr [rsp + 600]
                        mov              rdi, 10
                        cmp              eax, 5;                              je    .Lx881_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx881_4
.Lx881_3:               movq             xmm0, rsi
.Lx881_4:               cmp              ecx, 5;                              je    .Lx881_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx881_6
.Lx881_5:               movq             xmm1, rdi
.Lx881_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 576], 5
                        mov              qword ptr [rsp + 584], rax
.Lx881_7:                                                                     jmp   n347_assign_var_α
.Lx881_0:               mov              rdi, qword ptr [rsp + 592]
                        mov              rsi, qword ptr [rsp + 600]
                        mov              rdx, qword ptr [rsp + 608]
                        mov              rcx, qword ptr [rsp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n348_var_ref_α
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n347_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n347_assign_var_α:      mov              rdi, qword ptr [rsp + 512]
                        mov              rsi, qword ptr [rsp + 520]
                        mov              rdx, qword ptr [rsp + 576]
                        mov              rcx, qword ptr [rsp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n348_var_ref_α
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n343_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n348_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 10448]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n349_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n349_iterate_α:         mov              qword ptr [rsp + 416], 0
.Lx886_0:               mov              rdi, qword ptr [rsp + 432]
                        mov              rsi, qword ptr [rsp + 440]
                        mov              rdx, qword ptr [rsp + 416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_var_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              rax, 104;                            je    n354_var_ref_α
                                                                              jmp   n350_deref_α
n349_iterate_β:         inc              qword ptr [rsp + 416];               jmp   .Lx886_0
#-----------------------------------------------------------------------------------------------------------------------
n350_deref_α:           mov              rdi, qword ptr [rsp + 400]
                        mov              rsi, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n354_var_ref_α
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n351_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_integer_α:     mov              qword ptr [rsp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Lx888_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n352_binop_α
.Lx888_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n352_binop_α:           mov              eax, dword ptr [rsp + 480]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx889_2
                        mov              rax, qword ptr [rsp + 488]
                        mov              rdx, 20
                        add              rax, rdx
                        mov              qword ptr [rsp + 464], 3
                        mov              qword ptr [rsp + 472], rax;          jmp   .Lx889_7
.Lx889_2:               and              edx, 1;                              jz    .Lx889_0
                        mov              rsi, qword ptr [rsp + 488]
                        mov              rdi, 20
                        cmp              eax, 5;                              je    .Lx889_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx889_4
.Lx889_3:               movq             xmm0, rsi
.Lx889_4:               cmp              ecx, 5;                              je    .Lx889_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx889_6
.Lx889_5:               movq             xmm1, rdi
.Lx889_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 464], 5
                        mov              qword ptr [rsp + 472], rax
.Lx889_7:                                                                     jmp   n353_assign_var_α
.Lx889_0:               mov              rdi, qword ptr [rsp + 480]
                        mov              rsi, qword ptr [rsp + 488]
                        mov              rdx, qword ptr [rsp + 496]
                        mov              rcx, qword ptr [rsp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n354_var_ref_α
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n353_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n353_assign_var_α:      mov              rdi, qword ptr [rsp + 400]
                        mov              rsi, qword ptr [rsp + 408]
                        mov              rdx, qword ptr [rsp + 464]
                        mov              rcx, qword ptr [rsp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n354_var_ref_α
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n349_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n354_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 10432]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n355_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n355_iterate_α:         mov              qword ptr [rsp + 304], 0
.Lx894_0:               mov              rdi, qword ptr [rsp + 320]
                        mov              rsi, qword ptr [rsp + 328]
                        mov              rdx, qword ptr [rsp + 304]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_var_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              rax, 104;                            je    n360_lit_string_α
                                                                              jmp   n356_deref_α
n355_iterate_β:         inc              qword ptr [rsp + 304];               jmp   .Lx894_0
#-----------------------------------------------------------------------------------------------------------------------
n356_deref_α:           mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n360_lit_string_α
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n357_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n357_lit_integer_α:     mov              qword ptr [rsp + 384], 3             # result
                        mov              rax, qword ptr [rip + .Lx896_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n358_binop_α
.Lx896_0:               .quad            50
#-----------------------------------------------------------------------------------------------------------------------
n358_binop_α:           mov              eax, dword ptr [rsp + 368]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx897_2
                        mov              rax, qword ptr [rsp + 376]
                        mov              rdx, 50
                        add              rax, rdx
                        mov              qword ptr [rsp + 352], 3
                        mov              qword ptr [rsp + 360], rax;          jmp   .Lx897_7
.Lx897_2:               and              edx, 1;                              jz    .Lx897_0
                        mov              rsi, qword ptr [rsp + 376]
                        mov              rdi, 50
                        cmp              eax, 5;                              je    .Lx897_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx897_4
.Lx897_3:               movq             xmm0, rsi
.Lx897_4:               cmp              ecx, 5;                              je    .Lx897_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx897_6
.Lx897_5:               movq             xmm1, rdi
.Lx897_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 352], 5
                        mov              qword ptr [rsp + 360], rax
.Lx897_7:                                                                     jmp   n359_assign_var_α
.Lx897_0:               mov              rdi, qword ptr [rsp + 368]
                        mov              rsi, qword ptr [rsp + 376]
                        mov              rdx, qword ptr [rsp + 384]
                        mov              rcx, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n360_lit_string_α
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n359_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n359_assign_var_α:      mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              rdx, qword ptr [rsp + 352]
                        mov              rcx, qword ptr [rsp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n360_lit_string_α
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n355_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n360_lit_string_α:      mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 1
                        mov              rax, qword ptr [rip + .Lx899_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n361_var_α
.Lx899_0:               .quad            .Lx899_0_s
.Lx899_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n361_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 280], rax;          jmp   n362_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n362_call_proc_staged_α:
                        lea              rsi, [rsp + 256]
                        lea              rdx, [rsp + 272]
                        call             limage_dcα;                          jmp   .Lx903_2
.Lx903_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx903_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
.Lx903_29:              mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              eax, 104;                            je    n363_lit_string_α
                                                                              jmp   n363_lit_string_α
n362_call_proc_staged_β:
                                                                              jmp   n363_lit_string_α
.Lx903_0:               .quad            .Lx903_0_s
.Lx903_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n363_lit_string_α:      mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 1
                        mov              rax, qword ptr [rip + .Lx904_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n364_var_α
.Lx904_0:               .quad            .Lx904_0_s
.Lx904_0_s:             .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n364_var_α:             mov              rax, qword ptr [rsp + 10448]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 10456]
                        mov              qword ptr [rsp + 184], rax;          jmp   n365_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n365_call_proc_staged_α:
                        lea              rsi, [rsp + 160]
                        lea              rdx, [rsp + 176]
                        call             limage_dcα;                          jmp   .Lx908_2
.Lx908_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx908_29
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
.Lx908_29:              mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 104;                            je    n366_lit_string_α
                                                                              jmp   n366_lit_string_α
n365_call_proc_staged_β:
                                                                              jmp   n366_lit_string_α
.Lx908_0:               .quad            .Lx908_0_s
.Lx908_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n366_lit_string_α:      mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 1
                        mov              rax, qword ptr [rip + .Lx909_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n367_var_α
.Lx909_0:               .quad            .Lx909_0_s
.Lx909_0_s:             .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n367_var_α:             mov              rax, qword ptr [rsp + 10432]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 10440]
                        mov              qword ptr [rsp + 88], rax;           jmp   n368_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n368_call_proc_staged_α:
                        lea              rsi, [rsp + 64]
                        lea              rdx, [rsp + 80]
                        call             limage_dcα;                          jmp   .Lx913_2
.Lx913_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx913_29
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
.Lx913_29:              mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            je    main_ω
                                                                              jmp   main_γ
n368_call_proc_staged_β:
                                                                              jmp   main_ω
.Lx913_0:               .quad            .Lx913_0_s
.Lx913_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n369_lit_string_α:      mov              qword ptr [rsp + 1520], 2            # result
                        mov              dword ptr [rsp + 1524], 20
                        mov              rax, qword ptr [rip + .Lx914_0]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n370_call_builtin_icon_α
n369_lit_string_β:                                                            jmp   n312_disjunction_af
.Lx914_0:               .quad            .Lx914_0_s
.Lx914_0_s:             .string          "v. wraparound failed"
#-----------------------------------------------------------------------------------------------------------------------
n370_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1496], rax
                        .section         .rodata
.Lrkfn916:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn916]
                        lea              rsi, [rsp + 1488]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx
                        cmp              eax, 104;                            je    n312_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n312_disjunction_as
n370_call_builtin_icon_β:
                                                                              jmp   n312_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_string_α:      mov              qword ptr [rsp + 1392], 2            # result
                        mov              dword ptr [rsp + 1396], 1
                        mov              rax, qword ptr [rip + .Lx917_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n372_var_α
n371_lit_string_β:                                                            jmp   n312_disjunction_af
.Lx917_0:               .quad            .Lx917_0_s
.Lx917_0_s:             .string          "v"
#-----------------------------------------------------------------------------------------------------------------------
n372_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n373_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n373_lit_integer_α:     mov              qword ptr [rsp + 1440], 3            # result
                        mov              rax, qword ptr [rip + .Lx920_0]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n374_lit_integer_α
.Lx920_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n374_lit_integer_α:     mov              qword ptr [rsp + 1456], 3            # result
                        mov              rax, qword ptr [rip + .Lx921_0]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n375_subscript_α
.Lx921_0:               .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n375_subscript_α:       mov              rdi, qword ptr [rsp + 1424]
                        mov              rsi, qword ptr [rsp + 1432]
                        mov              rdx, qword ptr [rsp + 1440]
                        mov              rcx, qword ptr [rsp + 1448]
                        mov              r8, qword ptr [rsp + 1456]
                        mov              r9, qword ptr [rsp + 1464]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2_ext@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n312_disjunction_af
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx;         jmp   n376_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n376_call_proc_staged_α:
                        lea              rsi, [rsp + 1392]
                        lea              rdx, [rsp + 1408]
                        call             limage_dcα;                          jmp   .Lx924_2
.Lx924_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx924_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1328]
                        mov              rdx, qword ptr [rsp + 1336]
.Lx924_29:              mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx
                        cmp              eax, 104;                            je    n312_disjunction_af
                                                                              jmp   n312_disjunction_as
n376_call_proc_staged_β:
                                                                              jmp   n312_disjunction_af
.Lx924_0:               .quad            .Lx924_0_s
.Lx924_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_string_α:      mov              qword ptr [rsp + 1760], 2            # result
                        mov              dword ptr [rsp + 1764], 20
                        mov              rax, qword ptr [rip + .Lx925_0]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n378_call_builtin_icon_α
n377_lit_string_β:                                                            jmp   n311_disjunction_af
.Lx925_0:               .quad            .Lx925_0_s
.Lx925_0_s:             .string          "u. wraparound failed"
#-----------------------------------------------------------------------------------------------------------------------
n378_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1736], rax
                        .section         .rodata
.Lrkfn927:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn927]
                        lea              rsi, [rsp + 1728]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx
                        cmp              eax, 104;                            je    n311_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n311_disjunction_as
n378_call_builtin_icon_β:
                                                                              jmp   n311_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n379_lit_string_α:      mov              qword ptr [rsp + 1632], 2            # result
                        mov              dword ptr [rsp + 1636], 1
                        mov              rax, qword ptr [rip + .Lx928_0]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n380_var_α
n379_lit_string_β:                                                            jmp   n311_disjunction_af
.Lx928_0:               .quad            .Lx928_0_s
.Lx928_0_s:             .string          "u"
#-----------------------------------------------------------------------------------------------------------------------
n380_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n381_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n381_lit_integer_α:     mov              qword ptr [rsp + 1680], 3            # result
                        mov              rax, qword ptr [rip + .Lx931_0]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n382_lit_integer_α
.Lx931_0:               .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n382_lit_integer_α:     mov              qword ptr [rsp + 1696], 3            # result
                        mov              rax, qword ptr [rip + .Lx932_0]
                        mov              qword ptr [rsp + 1704], rax;         jmp   n383_subscript_α
.Lx932_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n383_subscript_α:       mov              rdi, qword ptr [rsp + 1664]
                        mov              rsi, qword ptr [rsp + 1672]
                        mov              rdx, qword ptr [rsp + 1680]
                        mov              rcx, qword ptr [rsp + 1688]
                        mov              r8, qword ptr [rsp + 1696]
                        mov              r9, qword ptr [rsp + 1704]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2_ext@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n311_disjunction_af
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx;         jmp   n384_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n384_call_proc_staged_α:
                        lea              rsi, [rsp + 1632]
                        lea              rdx, [rsp + 1648]
                        call             limage_dcα;                          jmp   .Lx935_2
.Lx935_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx935_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1568]
                        mov              rdx, qword ptr [rsp + 1576]
.Lx935_29:              mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx
                        cmp              eax, 104;                            je    n311_disjunction_af
                                                                              jmp   n311_disjunction_as
n384_call_proc_staged_β:
                                                                              jmp   n311_disjunction_af
.Lx935_0:               .quad            .Lx935_0_s
.Lx935_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n385_lit_string_α:      mov              qword ptr [rsp + 2896], 2            # result
                        mov              dword ptr [rsp + 2900], 18
                        mov              rax, qword ptr [rip + .Lx936_0]
                        mov              qword ptr [rsp + 2904], rax;         jmp   n271_disjunction_as
n385_lit_string_β:                                                            jmp   n271_disjunction_af
.Lx936_0:               .quad            .Lx936_0_s
.Lx936_0_s:             .string          "ok failure on pull"
#-----------------------------------------------------------------------------------------------------------------------
n386_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 2880], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 2888], rax;         jmp   n387_call_builtin_icon_α
n386_var_β:                                                                   jmp   n271_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n387_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2880]
                        mov              qword ptr [rsp + 2848], rax
                        mov              rax, qword ptr [rsp + 2888]
                        mov              qword ptr [rsp + 2856], rax
                        .section         .rodata
.Lrkfn940:              .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn940]
                        lea              rsi, [rsp + 2848]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2832], rax
                        mov              qword ptr [rsp + 2840], rdx
                        cmp              eax, 104;                            je    n271_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n271_disjunction_as
n387_call_builtin_icon_β:
                                                                              jmp   n271_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n388_lit_string_α:      mov              qword ptr [rsp + 3056], 2            # result
                        mov              dword ptr [rsp + 3060], 17
                        mov              rax, qword ptr [rip + .Lx941_0]
                        mov              qword ptr [rsp + 3064], rax;         jmp   n269_disjunction_as
n388_lit_string_β:                                                            jmp   n269_disjunction_af
.Lx941_0:               .quad            .Lx941_0_s
.Lx941_0_s:             .string          "ok failure on pop"
#-----------------------------------------------------------------------------------------------------------------------
n389_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 3040], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 3048], rax;         jmp   n390_call_builtin_icon_α
n389_var_β:                                                                   jmp   n269_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n390_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3040]
                        mov              qword ptr [rsp + 3008], rax
                        mov              rax, qword ptr [rsp + 3048]
                        mov              qword ptr [rsp + 3016], rax
                        .section         .rodata
.Lrkfn945:              .string          "pop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn945]
                        lea              rsi, [rsp + 3008]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2992], rax
                        mov              qword ptr [rsp + 3000], rdx
                        cmp              eax, 104;                            je    n269_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n269_disjunction_as
n390_call_builtin_icon_β:
                                                                              jmp   n269_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n391_lit_string_α:      mov              qword ptr [rsp + 3216], 2            # result
                        mov              dword ptr [rsp + 3220], 17
                        mov              rax, qword ptr [rip + .Lx946_0]
                        mov              qword ptr [rsp + 3224], rax;         jmp   n267_disjunction_as
n391_lit_string_β:                                                            jmp   n267_disjunction_af
.Lx946_0:               .quad            .Lx946_0_s
.Lx946_0_s:             .string          "ok failure on get"
#-----------------------------------------------------------------------------------------------------------------------
n392_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 3200], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 3208], rax;         jmp   n393_call_builtin_icon_α
n392_var_β:                                                                   jmp   n267_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n393_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3200]
                        mov              qword ptr [rsp + 3168], rax
                        mov              rax, qword ptr [rsp + 3208]
                        mov              qword ptr [rsp + 3176], rax
                        .section         .rodata
.Lrkfn950:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn950]
                        lea              rsi, [rsp + 3168]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3152], rax
                        mov              qword ptr [rsp + 3160], rdx
                        cmp              eax, 104;                            je    n267_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n267_disjunction_as
n393_call_builtin_icon_β:
                                                                              jmp   n267_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n394_lit_string_α:      mov              qword ptr [rsp + 3440], 2            # result
                        mov              dword ptr [rsp + 3444], 13
                        mov              rax, qword ptr [rip + .Lx951_0]
                        mov              qword ptr [rsp + 3448], rax;         jmp   n263_disjunction_as
n394_lit_string_β:                                                            jmp   n263_disjunction_af
.Lx951_0:               .quad            .Lx951_0_s
.Lx951_0_s:             .string          "ok failure -2"
#-----------------------------------------------------------------------------------------------------------------------
n395_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 10464]
                        mov              qword ptr [rsp + 3376], rax
                        mov              qword ptr [rsp + 3384], rdx;         jmp   n396_lit_integer_α
n395_var_ref_β:                                                               jmp   n263_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n396_lit_integer_α:     mov              qword ptr [rsp + 3392], 3            # result
                        mov              rax, qword ptr [rip + .Lx954_0]
                        mov              qword ptr [rsp + 3400], rax;         jmp   n397_subscript_α
.Lx954_0:               .quad            18446744073709551614
#-----------------------------------------------------------------------------------------------------------------------
n397_subscript_α:       mov              rdi, qword ptr [rsp + 3376]
                        mov              rsi, qword ptr [rsp + 3384]
                        mov              rdx, qword ptr [rsp + 3392]
                        mov              rcx, qword ptr [rsp + 3400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n263_disjunction_af
                        mov              qword ptr [rsp + 3408], rax
                        mov              qword ptr [rsp + 3416], rdx;         jmp   n398_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n398_deref_α:           mov              rdi, qword ptr [rsp + 3408]
                        mov              rsi, qword ptr [rsp + 3416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n263_disjunction_af
                        mov              qword ptr [rsp + 3424], rax
                        mov              qword ptr [rsp + 3432], rdx;         jmp   n263_disjunction_as
n398_deref_β:                                                                 jmp   n263_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n399_lit_string_α:      mov              qword ptr [rsp + 3600], 2            # result
                        mov              dword ptr [rsp + 3604], 12
                        mov              rax, qword ptr [rip + .Lx957_0]
                        mov              qword ptr [rsp + 3608], rax;         jmp   n261_disjunction_as
n399_lit_string_β:                                                            jmp   n261_disjunction_af
.Lx957_0:               .quad            .Lx957_0_s
.Lx957_0_s:             .string          "ok failure 2"
#-----------------------------------------------------------------------------------------------------------------------
n400_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 10464]
                        mov              qword ptr [rsp + 3536], rax
                        mov              qword ptr [rsp + 3544], rdx;         jmp   n401_lit_integer_α
n400_var_ref_β:                                                               jmp   n261_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n401_lit_integer_α:     mov              qword ptr [rsp + 3552], 3            # result
                        mov              rax, qword ptr [rip + .Lx960_0]
                        mov              qword ptr [rsp + 3560], rax;         jmp   n402_subscript_α
.Lx960_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n402_subscript_α:       mov              rdi, qword ptr [rsp + 3536]
                        mov              rsi, qword ptr [rsp + 3544]
                        mov              rdx, qword ptr [rsp + 3552]
                        mov              rcx, qword ptr [rsp + 3560]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n261_disjunction_af
                        mov              qword ptr [rsp + 3568], rax
                        mov              qword ptr [rsp + 3576], rdx;         jmp   n403_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n403_deref_α:           mov              rdi, qword ptr [rsp + 3568]
                        mov              rsi, qword ptr [rsp + 3576]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n261_disjunction_af
                        mov              qword ptr [rsp + 3584], rax
                        mov              qword ptr [rsp + 3592], rdx;         jmp   n261_disjunction_as
n403_deref_β:                                                                 jmp   n261_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n404_lit_string_α:      mov              qword ptr [rsp + 3760], 2            # result
                        mov              dword ptr [rsp + 3764], 12
                        mov              rax, qword ptr [rip + .Lx963_0]
                        mov              qword ptr [rsp + 3768], rax;         jmp   n259_disjunction_as
n404_lit_string_β:                                                            jmp   n259_disjunction_af
.Lx963_0:               .quad            .Lx963_0_s
.Lx963_0_s:             .string          "ok failure 0"
#-----------------------------------------------------------------------------------------------------------------------
n405_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 10464]
                        mov              qword ptr [rsp + 3696], rax
                        mov              qword ptr [rsp + 3704], rdx;         jmp   n406_lit_integer_α
n405_var_ref_β:                                                               jmp   n259_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n406_lit_integer_α:     mov              qword ptr [rsp + 3712], 3            # result
                        mov              rax, qword ptr [rip + .Lx966_0]
                        mov              qword ptr [rsp + 3720], rax;         jmp   n407_subscript_α
.Lx966_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n407_subscript_α:       mov              rdi, qword ptr [rsp + 3696]
                        mov              rsi, qword ptr [rsp + 3704]
                        mov              rdx, qword ptr [rsp + 3712]
                        mov              rcx, qword ptr [rsp + 3720]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n259_disjunction_af
                        mov              qword ptr [rsp + 3728], rax
                        mov              qword ptr [rsp + 3736], rdx;         jmp   n408_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n408_deref_α:           mov              rdi, qword ptr [rsp + 3728]
                        mov              rsi, qword ptr [rsp + 3736]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n259_disjunction_af
                        mov              qword ptr [rsp + 3744], rax
                        mov              qword ptr [rsp + 3752], rdx;         jmp   n259_disjunction_as
n408_deref_β:                                                                 jmp   n259_disjunction_af
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
.Lstartup_pname0:       .string          "limage"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__limage
                        .quad            limage_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            432
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
