                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_limage_α
proc_limage_α:
                        sub              rsp, 512
                        mov              qword ptr [rsp + 488], rcx
                        mov              qword ptr [rsp + 496], rdx
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
proc_limage_α_body:
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
                        mov              qword ptr [rsp + 8], 0;              jmp   proc_limage_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_limage_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_limage_β:
                                                                              jmp   proc_limage_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_limage_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 488]
                        add              rsp, 512;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_limage_ω:
                        mov              rcx, qword ptr [rsp + 496]
                        add              rsp, 512;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_limage_dcα:
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
                        lea              rdx, [rip + .Lx34_3];                jmp   proc_limage_α
.Lx34_2:                pop              r11
                        pop              r11;                                 jmp   r11
.Lx34_3:                pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "limage"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_limage_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_limage_dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 10640
                        mov              qword ptr [rsp + 10616], rcx
                        mov              qword ptr [rsp + 10624], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 4
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n35_proc_value_α:       mov              rdi, qword ptr [rip + .Lx412_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 10448], rax
                        mov              qword ptr [rsp + 10456], rdx;        jmp   n36_call_builtin_icon_α
.Lx412_0:               .quad            .Lx412_0_s
.Lx412_0_s:             .string          "push"
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 10448]
                        mov              qword ptr [rsp + 10416], rax
                        mov              rax, qword ptr [rsp + 10456]
                        mov              qword ptr [rsp + 10424], rax
                        .section         .rodata
.Lrkfn414:              .string          "args"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn414]
                        lea              rsi, [rsp + 10416]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 10400], rax
                        mov              qword ptr [rsp + 10408], rdx
                        cmp              eax, 104;                            je    n38_proc_value_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n37_call_builtin_icon_α
n36_call_builtin_icon_β:
                                                                              jmp   n38_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n37_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 10400]
                        mov              qword ptr [rsp + 10368], rax
                        mov              rax, qword ptr [rsp + 10408]
                        mov              qword ptr [rsp + 10376], rax
                        .section         .rodata
.Lrkfn416:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn416]
                        lea              rsi, [rsp + 10368]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 10352], rax
                        mov              qword ptr [rsp + 10360], rdx
                        cmp              eax, 104;                            je    n38_proc_value_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n38_proc_value_α
n37_call_builtin_icon_β:
                                                                              jmp   n38_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n38_proc_value_α:       mov              rdi, qword ptr [rip + .Lx418_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 10336], rax
                        mov              qword ptr [rsp + 10344], rdx;        jmp   n39_call_builtin_icon_α
.Lx418_0:               .quad            .Lx418_0_s
.Lx418_0_s:             .string          "put"
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 10336]
                        mov              qword ptr [rsp + 10304], rax
                        mov              rax, qword ptr [rsp + 10344]
                        mov              qword ptr [rsp + 10312], rax
                        .section         .rodata
.Lrkfn420:              .string          "args"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn420]
                        lea              rsi, [rsp + 10304]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 10288], rax
                        mov              qword ptr [rsp + 10296], rdx
                        cmp              eax, 104;                            je    n41_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n40_call_builtin_icon_α
n39_call_builtin_icon_β:
                                                                              jmp   n41_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 10288]
                        mov              qword ptr [rsp + 10256], rax
                        mov              rax, qword ptr [rsp + 10296]
                        mov              qword ptr [rsp + 10264], rax
                        .section         .rodata
.Lrkfn422:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn422]
                        lea              rsi, [rsp + 10256]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 10240], rax
                        mov              qword ptr [rsp + 10248], rdx
                        cmp              eax, 104;                            je    n41_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n41_lit_string_α
n40_call_builtin_icon_β:
                                                                              jmp   n41_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:       mov              qword ptr [rsp + 10192], 2           # result
                        mov              dword ptr [rsp + 10196], 1
                        mov              rax, qword ptr [rip + .Lx423_0]
                        mov              qword ptr [rsp + 10200], rax;        jmp   n42_call_builtin_icon_α
.Lx423_0:               .quad            .Lx423_0_s
.Lx423_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n42_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn425:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn425]
                        lea              rsi, [rsp + 10224]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 10208], rax
                        mov              qword ptr [rsp + 10216], rdx
                        cmp              eax, 104;                            je    n44_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n43_call_proc_staged_α
n42_call_builtin_icon_β:
                                                                              jmp   n44_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n43_call_proc_staged_α: lea              rsi, [rsp + 10192]
                        lea              rdx, [rsp + 10208]
                        call             proc_limage_dcα;                     jmp   .Lx427_2
.Lx427_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx427_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 10128], rax
                        mov              qword ptr [rsp + 10136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 10128]
                        mov              rdx, qword ptr [rsp + 10136]
.Lx427_29:              mov              qword ptr [rsp + 10128], rax
                        mov              qword ptr [rsp + 10136], rdx
                        cmp              eax, 104;                            je    n44_lit_string_α
                                                                              jmp   n44_lit_string_α
n43_call_proc_staged_β:                                                       jmp   n44_lit_string_α
.Lx427_0:               .quad            .Lx427_0_s
.Lx427_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:       mov              qword ptr [rsp + 10048], 2           # result
                        mov              dword ptr [rsp + 10052], 1
                        mov              rax, qword ptr [rip + .Lx428_0]
                        mov              qword ptr [rsp + 10056], rax;        jmp   n45_lit_integer_α
.Lx428_0:               .quad            .Lx428_0_s
.Lx428_0_s:             .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:      mov              qword ptr [rsp + 10112], 3           # result
                        mov              rax, qword ptr [rip + .Lx429_0]
                        mov              qword ptr [rsp + 10120], rax;        jmp   n46_call_builtin_icon_α
.Lx429_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n46_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 10112]
                        mov              qword ptr [rsp + 10080], rax
                        mov              rax, qword ptr [rsp + 10120]
                        mov              qword ptr [rsp + 10088], rax
                        .section         .rodata
.Lrkfn431:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn431]
                        lea              rsi, [rsp + 10080]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 10064], rax
                        mov              qword ptr [rsp + 10072], rdx
                        cmp              eax, 104;                            je    n48_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n47_call_proc_staged_α
n46_call_builtin_icon_β:
                                                                              jmp   n48_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n47_call_proc_staged_α: lea              rsi, [rsp + 10048]
                        lea              rdx, [rsp + 10064]
                        call             proc_limage_dcα;                     jmp   .Lx433_2
.Lx433_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx433_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 9984], rax
                        mov              qword ptr [rsp + 9992], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 9984]
                        mov              rdx, qword ptr [rsp + 9992]
.Lx433_29:              mov              qword ptr [rsp + 9984], rax
                        mov              qword ptr [rsp + 9992], rdx
                        cmp              eax, 104;                            je    n48_lit_string_α
                                                                              jmp   n48_lit_string_α
n47_call_proc_staged_β:                                                       jmp   n48_lit_string_α
.Lx433_0:               .quad            .Lx433_0_s
.Lx433_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:       mov              qword ptr [rsp + 9856], 2            # result
                        mov              dword ptr [rsp + 9860], 1
                        mov              rax, qword ptr [rip + .Lx434_0]
                        mov              qword ptr [rsp + 9864], rax;         jmp   n49_keyword_icon_α
.Lx434_0:               .quad            .Lx434_0_s
.Lx434_0_s:             .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n49_keyword_icon_α:     mov              qword ptr [rsp + 9936], 0
                        mov              qword ptr [rsp + 9944], 0;           jmp   n50_lit_integer_α
n49_keyword_icon_β:                                                           jmp   n53_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:      mov              qword ptr [rsp + 9968], 3            # result
                        mov              rax, qword ptr [rip + .Lx436_0]
                        mov              qword ptr [rsp + 9976], rax;         jmp   n51_call_builtin_icon_α
.Lx436_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n51_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 9968]
                        mov              qword ptr [rsp + 9904], rax
                        mov              rax, qword ptr [rsp + 9976]
                        mov              qword ptr [rsp + 9912], rax
                        mov              rax, qword ptr [rsp + 9936]
                        mov              qword ptr [rsp + 9888], rax
                        mov              rax, qword ptr [rsp + 9944]
                        mov              qword ptr [rsp + 9896], rax
                        .section         .rodata
.Lrkfn438:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn438]
                        lea              rsi, [rsp + 9888]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 9872], rax
                        mov              qword ptr [rsp + 9880], rdx
                        cmp              eax, 104;                            je    n53_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n52_call_proc_staged_α
n51_call_builtin_icon_β:
                                                                              jmp   n53_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n52_call_proc_staged_α: lea              rsi, [rsp + 9856]
                        lea              rdx, [rsp + 9872]
                        call             proc_limage_dcα;                     jmp   .Lx440_2
.Lx440_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx440_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 9792], rax
                        mov              qword ptr [rsp + 9800], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 9792]
                        mov              rdx, qword ptr [rsp + 9800]
.Lx440_29:              mov              qword ptr [rsp + 9792], rax
                        mov              qword ptr [rsp + 9800], rdx
                        cmp              eax, 104;                            je    n53_lit_string_α
                                                                              jmp   n53_lit_string_α
n52_call_proc_staged_β:                                                       jmp   n53_lit_string_α
.Lx440_0:               .quad            .Lx440_0_s
.Lx440_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:       mov              qword ptr [rsp + 9680], 2            # result
                        mov              dword ptr [rsp + 9684], 1
                        mov              rax, qword ptr [rip + .Lx441_0]
                        mov              qword ptr [rsp + 9688], rax;         jmp   n54_lit_integer_α
.Lx441_0:               .quad            .Lx441_0_s
.Lx441_0_s:             .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:      mov              qword ptr [rsp + 9760], 3            # result
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rsp + 9768], rax;         jmp   n55_lit_integer_α
.Lx442_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:      mov              qword ptr [rsp + 9776], 3            # result
                        mov              rax, qword ptr [rip + .Lx443_0]
                        mov              qword ptr [rsp + 9784], rax;         jmp   n56_call_builtin_icon_α
.Lx443_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n56_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 9776]
                        mov              qword ptr [rsp + 9728], rax
                        mov              rax, qword ptr [rsp + 9784]
                        mov              qword ptr [rsp + 9736], rax
                        mov              rax, qword ptr [rsp + 9760]
                        mov              qword ptr [rsp + 9712], rax
                        mov              rax, qword ptr [rsp + 9768]
                        mov              qword ptr [rsp + 9720], rax
                        .section         .rodata
.Lrkfn445:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn445]
                        lea              rsi, [rsp + 9712]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 9696], rax
                        mov              qword ptr [rsp + 9704], rdx
                        cmp              eax, 104;                            je    n58_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n57_call_proc_staged_α
n56_call_builtin_icon_β:
                                                                              jmp   n58_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n57_call_proc_staged_α: lea              rsi, [rsp + 9680]
                        lea              rdx, [rsp + 9696]
                        call             proc_limage_dcα;                     jmp   .Lx447_2
.Lx447_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx447_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 9616], rax
                        mov              qword ptr [rsp + 9624], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 9616]
                        mov              rdx, qword ptr [rsp + 9624]
.Lx447_29:              mov              qword ptr [rsp + 9616], rax
                        mov              qword ptr [rsp + 9624], rdx
                        cmp              eax, 104;                            je    n58_lit_string_α
                                                                              jmp   n58_lit_string_α
n57_call_proc_staged_β:                                                       jmp   n58_lit_string_α
.Lx447_0:               .quad            .Lx447_0_s
.Lx447_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:       mov              qword ptr [rsp + 9472], 2            # result
                        mov              dword ptr [rsp + 9476], 1
                        mov              rax, qword ptr [rip + .Lx448_0]
                        mov              qword ptr [rsp + 9480], rax;         jmp   n59_lit_integer_α
.Lx448_0:               .quad            .Lx448_0_s
.Lx448_0_s:             .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_integer_α:      mov              qword ptr [rsp + 9568], 3            # result
                        mov              rax, qword ptr [rip + .Lx449_0]
                        mov              qword ptr [rsp + 9576], rax;         jmp   n60_lit_integer_α
.Lx449_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_integer_α:      mov              qword ptr [rsp + 9584], 3            # result
                        mov              rax, qword ptr [rip + .Lx450_0]
                        mov              qword ptr [rsp + 9592], rax;         jmp   n61_lit_integer_α
.Lx450_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_integer_α:      mov              qword ptr [rsp + 9600], 3            # result
                        mov              rax, qword ptr [rip + .Lx451_0]
                        mov              qword ptr [rsp + 9608], rax;         jmp   n62_call_builtin_icon_α
.Lx451_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n62_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 9600]
                        mov              qword ptr [rsp + 9536], rax
                        mov              rax, qword ptr [rsp + 9608]
                        mov              qword ptr [rsp + 9544], rax
                        mov              rax, qword ptr [rsp + 9584]
                        mov              qword ptr [rsp + 9520], rax
                        mov              rax, qword ptr [rsp + 9592]
                        mov              qword ptr [rsp + 9528], rax
                        mov              rax, qword ptr [rsp + 9568]
                        mov              qword ptr [rsp + 9504], rax
                        mov              rax, qword ptr [rsp + 9576]
                        mov              qword ptr [rsp + 9512], rax
                        .section         .rodata
.Lrkfn453:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn453]
                        lea              rsi, [rsp + 9504]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 9488], rax
                        mov              qword ptr [rsp + 9496], rdx
                        cmp              eax, 104;                            je    n64_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n63_call_proc_staged_α
n62_call_builtin_icon_β:
                                                                              jmp   n64_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n63_call_proc_staged_α: lea              rsi, [rsp + 9472]
                        lea              rdx, [rsp + 9488]
                        call             proc_limage_dcα;                     jmp   .Lx455_2
.Lx455_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx455_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 9408], rax
                        mov              qword ptr [rsp + 9416], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 9408]
                        mov              rdx, qword ptr [rsp + 9416]
.Lx455_29:              mov              qword ptr [rsp + 9408], rax
                        mov              qword ptr [rsp + 9416], rdx
                        cmp              eax, 104;                            je    n64_lit_string_α
                                                                              jmp   n64_lit_string_α
n63_call_proc_staged_β:                                                       jmp   n64_lit_string_α
.Lx455_0:               .quad            .Lx455_0_s
.Lx455_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:       mov              qword ptr [rsp + 9376], 2            # result
                        mov              dword ptr [rsp + 9380], 1
                        mov              rax, qword ptr [rip + .Lx456_0]
                        mov              qword ptr [rsp + 9384], rax;         jmp   n65_make_list_α
.Lx456_0:               .quad            .Lx456_0_s
.Lx456_0_s:             .string          "e"
#-----------------------------------------------------------------------------------------------------------------------
n65_make_list_α:        lea              rdi, [rsp + 9408]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 9392], rax
                        mov              qword ptr [rsp + 9400], rdx;         jmp   n66_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n66_call_proc_staged_α: lea              rsi, [rsp + 9376]
                        lea              rdx, [rsp + 9392]
                        call             proc_limage_dcα;                     jmp   .Lx460_2
.Lx460_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx460_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 9312], rax
                        mov              qword ptr [rsp + 9320], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 9312]
                        mov              rdx, qword ptr [rsp + 9320]
.Lx460_29:              mov              qword ptr [rsp + 9312], rax
                        mov              qword ptr [rsp + 9320], rdx
                        cmp              eax, 104;                            je    n67_lit_string_α
                                                                              jmp   n67_lit_string_α
n66_call_proc_staged_β:                                                       jmp   n67_lit_string_α
.Lx460_0:               .quad            .Lx460_0_s
.Lx460_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:       mov              qword ptr [rsp + 9232], 2            # result
                        mov              dword ptr [rsp + 9236], 1
                        mov              rax, qword ptr [rip + .Lx461_0]
                        mov              qword ptr [rsp + 9240], rax;         jmp   n68_keyword_icon_α
.Lx461_0:               .quad            .Lx461_0_s
.Lx461_0_s:             .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n68_keyword_icon_α:     mov              qword ptr [rsp + 9280], 0
                        mov              qword ptr [rsp + 9288], 0;           jmp   n69_make_list_α
n68_keyword_icon_β:                                                           jmp   n71_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n69_make_list_α:        mov              rax, qword ptr [rsp + 9280]
                        mov              qword ptr [rsp + 9264], rax
                        mov              rax, qword ptr [rsp + 9288]
                        mov              qword ptr [rsp + 9272], rax
                        lea              rdi, [rsp + 9264]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 9248], rax
                        mov              qword ptr [rsp + 9256], rdx;         jmp   n70_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n70_call_proc_staged_α: lea              rsi, [rsp + 9232]
                        lea              rdx, [rsp + 9248]
                        call             proc_limage_dcα;                     jmp   .Lx466_2
.Lx466_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx466_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 9168], rax
                        mov              qword ptr [rsp + 9176], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 9168]
                        mov              rdx, qword ptr [rsp + 9176]
.Lx466_29:              mov              qword ptr [rsp + 9168], rax
                        mov              qword ptr [rsp + 9176], rdx
                        cmp              eax, 104;                            je    n71_lit_string_α
                                                                              jmp   n71_lit_string_α
n70_call_proc_staged_β:                                                       jmp   n71_lit_string_α
.Lx466_0:               .quad            .Lx466_0_s
.Lx466_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:       mov              qword ptr [rsp + 9104], 2            # result
                        mov              dword ptr [rsp + 9108], 1
                        mov              rax, qword ptr [rip + .Lx467_0]
                        mov              qword ptr [rsp + 9112], rax;         jmp   n72_lit_integer_α
.Lx467_0:               .quad            .Lx467_0_s
.Lx467_0_s:             .string          "g"
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_integer_α:      mov              qword ptr [rsp + 9152], 3            # result
                        mov              rax, qword ptr [rip + .Lx468_0]
                        mov              qword ptr [rsp + 9160], rax;         jmp   n73_make_list_α
.Lx468_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n73_make_list_α:        mov              rax, qword ptr [rsp + 9152]
                        mov              qword ptr [rsp + 9136], rax
                        mov              rax, qword ptr [rsp + 9160]
                        mov              qword ptr [rsp + 9144], rax
                        lea              rdi, [rsp + 9136]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 9120], rax
                        mov              qword ptr [rsp + 9128], rdx;         jmp   n74_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n74_call_proc_staged_α: lea              rsi, [rsp + 9104]
                        lea              rdx, [rsp + 9120]
                        call             proc_limage_dcα;                     jmp   .Lx472_2
.Lx472_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx472_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 9040], rax
                        mov              qword ptr [rsp + 9048], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 9040]
                        mov              rdx, qword ptr [rsp + 9048]
.Lx472_29:              mov              qword ptr [rsp + 9040], rax
                        mov              qword ptr [rsp + 9048], rdx
                        cmp              eax, 104;                            je    n75_lit_string_α
                                                                              jmp   n75_lit_string_α
n74_call_proc_staged_β:                                                       jmp   n75_lit_string_α
.Lx472_0:               .quad            .Lx472_0_s
.Lx472_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:       mov              qword ptr [rsp + 8880], 2            # result
                        mov              dword ptr [rsp + 8884], 1
                        mov              rax, qword ptr [rip + .Lx473_0]
                        mov              qword ptr [rsp + 8888], rax;         jmp   n76_lit_integer_α
.Lx473_0:               .quad            .Lx473_0_s
.Lx473_0_s:             .string          "h"
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_integer_α:      mov              qword ptr [rsp + 8976], 3            # result
                        mov              rax, qword ptr [rip + .Lx474_0]
                        mov              qword ptr [rsp + 8984], rax;         jmp   n77_lit_integer_α
.Lx474_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_integer_α:      mov              qword ptr [rsp + 8992], 3            # result
                        mov              rax, qword ptr [rip + .Lx475_0]
                        mov              qword ptr [rsp + 9000], rax;         jmp   n78_lit_integer_α
.Lx475_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_integer_α:      mov              qword ptr [rsp + 9008], 3            # result
                        mov              rax, qword ptr [rip + .Lx476_0]
                        mov              qword ptr [rsp + 9016], rax;         jmp   n79_lit_integer_α
.Lx476_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_integer_α:      mov              qword ptr [rsp + 9024], 3            # result
                        mov              rax, qword ptr [rip + .Lx477_0]
                        mov              qword ptr [rsp + 9032], rax;         jmp   n80_make_list_α
.Lx477_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n80_make_list_α:        mov              rax, qword ptr [rsp + 8976]
                        mov              qword ptr [rsp + 8912], rax
                        mov              rax, qword ptr [rsp + 8984]
                        mov              qword ptr [rsp + 8920], rax
                        mov              rax, qword ptr [rsp + 8992]
                        mov              qword ptr [rsp + 8928], rax
                        mov              rax, qword ptr [rsp + 9000]
                        mov              qword ptr [rsp + 8936], rax
                        mov              rax, qword ptr [rsp + 9008]
                        mov              qword ptr [rsp + 8944], rax
                        mov              rax, qword ptr [rsp + 9016]
                        mov              qword ptr [rsp + 8952], rax
                        mov              rax, qword ptr [rsp + 9024]
                        mov              qword ptr [rsp + 8960], rax
                        mov              rax, qword ptr [rsp + 9032]
                        mov              qword ptr [rsp + 8968], rax
                        lea              rdi, [rsp + 8912]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 8896], rax
                        mov              qword ptr [rsp + 8904], rdx;         jmp   n81_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n81_call_proc_staged_α: lea              rsi, [rsp + 8880]
                        lea              rdx, [rsp + 8896]
                        call             proc_limage_dcα;                     jmp   .Lx481_2
.Lx481_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx481_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 8816], rax
                        mov              qword ptr [rsp + 8824], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8816]
                        mov              rdx, qword ptr [rsp + 8824]
.Lx481_29:              mov              qword ptr [rsp + 8816], rax
                        mov              qword ptr [rsp + 8824], rdx
                        cmp              eax, 104;                            je    n82_lit_string_α
                                                                              jmp   n82_lit_string_α
n81_call_proc_staged_β:                                                       jmp   n82_lit_string_α
.Lx481_0:               .quad            .Lx481_0_s
.Lx481_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:       mov              qword ptr [rsp + 8496], 2            # result
                        mov              dword ptr [rsp + 8500], 1
                        mov              rax, qword ptr [rip + .Lx482_0]
                        mov              qword ptr [rsp + 8504], rax;         jmp   n83_lit_integer_α
.Lx482_0:               .quad            .Lx482_0_s
.Lx482_0_s:             .string          "i"
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:      mov              qword ptr [rsp + 8592], 3            # result
                        mov              rax, qword ptr [rip + .Lx483_0]
                        mov              qword ptr [rsp + 8600], rax;         jmp   n84_lit_integer_α
.Lx483_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_integer_α:      mov              qword ptr [rsp + 8608], 3            # result
                        mov              rax, qword ptr [rip + .Lx484_0]
                        mov              qword ptr [rsp + 8616], rax;         jmp   n85_lit_integer_α
.Lx484_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:      mov              qword ptr [rsp + 8624], 3            # result
                        mov              rax, qword ptr [rip + .Lx485_0]
                        mov              qword ptr [rsp + 8632], rax;         jmp   n86_make_list_α
.Lx485_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n86_make_list_α:        mov              rax, qword ptr [rsp + 8592]
                        mov              qword ptr [rsp + 8544], rax
                        mov              rax, qword ptr [rsp + 8600]
                        mov              qword ptr [rsp + 8552], rax
                        mov              rax, qword ptr [rsp + 8608]
                        mov              qword ptr [rsp + 8560], rax
                        mov              rax, qword ptr [rsp + 8616]
                        mov              qword ptr [rsp + 8568], rax
                        mov              rax, qword ptr [rsp + 8624]
                        mov              qword ptr [rsp + 8576], rax
                        mov              rax, qword ptr [rsp + 8632]
                        mov              qword ptr [rsp + 8584], rax
                        lea              rdi, [rsp + 8544]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 8528], rax
                        mov              qword ptr [rsp + 8536], rdx;         jmp   n87_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_integer_α:      mov              qword ptr [rsp + 8736], 3            # result
                        mov              rax, qword ptr [rip + .Lx488_0]
                        mov              qword ptr [rsp + 8744], rax;         jmp   n88_lit_integer_α
.Lx488_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:      mov              qword ptr [rsp + 8752], 3            # result
                        mov              rax, qword ptr [rip + .Lx489_0]
                        mov              qword ptr [rsp + 8760], rax;         jmp   n89_lit_integer_α
.Lx489_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_integer_α:      mov              qword ptr [rsp + 8768], 3            # result
                        mov              rax, qword ptr [rip + .Lx490_0]
                        mov              qword ptr [rsp + 8776], rax;         jmp   n90_lit_integer_α
.Lx490_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_integer_α:      mov              qword ptr [rsp + 8784], 3            # result
                        mov              rax, qword ptr [rip + .Lx491_0]
                        mov              qword ptr [rsp + 8792], rax;         jmp   n91_lit_integer_α
.Lx491_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:      mov              qword ptr [rsp + 8800], 3            # result
                        mov              rax, qword ptr [rip + .Lx492_0]
                        mov              qword ptr [rsp + 8808], rax;         jmp   n92_make_list_α
.Lx492_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n92_make_list_α:        mov              rax, qword ptr [rsp + 8736]
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
                        mov              rax, qword ptr [rsp + 8784]
                        mov              qword ptr [rsp + 8704], rax
                        mov              rax, qword ptr [rsp + 8792]
                        mov              qword ptr [rsp + 8712], rax
                        mov              rax, qword ptr [rsp + 8800]
                        mov              qword ptr [rsp + 8720], rax
                        mov              rax, qword ptr [rsp + 8808]
                        mov              qword ptr [rsp + 8728], rax
                        lea              rdi, [rsp + 8656]
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 8640], rax
                        mov              qword ptr [rsp + 8648], rdx;         jmp   n93_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n93_binop_α:            mov              rdi, qword ptr [rsp + 8528]
                        mov              rsi, qword ptr [rsp + 8536]
                        mov              rdx, qword ptr [rsp + 8640]
                        mov              rcx, qword ptr [rsp + 8648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 8512], rax
                        mov              qword ptr [rsp + 8520], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n94_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n94_call_proc_staged_α: lea              rsi, [rsp + 8496]
                        lea              rdx, [rsp + 8512]
                        call             proc_limage_dcα;                     jmp   .Lx497_2
.Lx497_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx497_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 8432], rax
                        mov              qword ptr [rsp + 8440], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8432]
                        mov              rdx, qword ptr [rsp + 8440]
.Lx497_29:              mov              qword ptr [rsp + 8432], rax
                        mov              qword ptr [rsp + 8440], rdx
                        cmp              eax, 104;                            je    n95_lit_integer_α
                                                                              jmp   n95_lit_integer_α
n94_call_proc_staged_β:                                                       jmp   n95_lit_integer_α
.Lx497_0:               .quad            .Lx497_0_s
.Lx497_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:      mov              qword ptr [rsp + 8384], 3            # result
                        mov              rax, qword ptr [rip + .Lx498_0]
                        mov              qword ptr [rsp + 8392], rax;         jmp   n96_lit_integer_α
.Lx498_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:      mov              qword ptr [rsp + 8400], 3            # result
                        mov              rax, qword ptr [rip + .Lx499_0]
                        mov              qword ptr [rsp + 8408], rax;         jmp   n97_lit_integer_α
.Lx499_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_integer_α:      mov              qword ptr [rsp + 8416], 3            # result
                        mov              rax, qword ptr [rip + .Lx500_0]
                        mov              qword ptr [rsp + 8424], rax;         jmp   n98_make_list_α
.Lx500_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n98_make_list_α:        mov              rax, qword ptr [rsp + 8384]
                        mov              qword ptr [rsp + 8336], rax
                        mov              rax, qword ptr [rsp + 8392]
                        mov              qword ptr [rsp + 8344], rax
                        mov              rax, qword ptr [rsp + 8400]
                        mov              qword ptr [rsp + 8352], rax
                        mov              rax, qword ptr [rsp + 8408]
                        mov              qword ptr [rsp + 8360], rax
                        mov              rax, qword ptr [rsp + 8416]
                        mov              qword ptr [rsp + 8368], rax
                        mov              rax, qword ptr [rsp + 8424]
                        mov              qword ptr [rsp + 8376], rax
                        lea              rdi, [rsp + 8336]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 8320], rax
                        mov              qword ptr [rsp + 8328], rdx;         jmp   n99_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n99_assign_α:           mov              rax, qword ptr [rsp + 8320]
                        mov              rdx, qword ptr [rsp + 8328]
                        mov              qword ptr [rsp + 10496], rax
                        mov              qword ptr [rsp + 10504], rdx;        jmp   n100_var_α
#-----------------------------------------------------------------------------------------------------------------------
n100_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 8304], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 8312], rax;         jmp   n101_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n101_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 8304]
                        mov              qword ptr [rsp + 8272], rax
                        mov              rax, qword ptr [rsp + 8312]
                        mov              qword ptr [rsp + 8280], rax
                        .section         .rodata
.Lrkfn507:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn507]
                        lea              rsi, [rsp + 8272]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 8256], rax
                        mov              qword ptr [rsp + 8264], rdx
                        cmp              eax, 104;                            je    n102_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n102_lit_string_α
n101_call_builtin_icon_β:
                                                                              jmp   n102_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:      mov              qword ptr [rsp + 8224], 2            # result
                        mov              dword ptr [rsp + 8228], 1
                        mov              rax, qword ptr [rip + .Lx508_0]
                        mov              qword ptr [rsp + 8232], rax;         jmp   n103_var_α
.Lx508_0:               .quad            .Lx508_0_s
.Lx508_0_s:             .string          "A"
#-----------------------------------------------------------------------------------------------------------------------
n103_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 8240], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 8248], rax;         jmp   n104_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n104_call_proc_staged_α:
                        lea              rsi, [rsp + 8224]
                        lea              rdx, [rsp + 8240]
                        call             proc_limage_dcα;                     jmp   .Lx512_2
.Lx512_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx512_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 8160], rax
                        mov              qword ptr [rsp + 8168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8160]
                        mov              rdx, qword ptr [rsp + 8168]
.Lx512_29:              mov              qword ptr [rsp + 8160], rax
                        mov              qword ptr [rsp + 8168], rdx
                        cmp              eax, 104;                            je    n105_var_α
                                                                              jmp   n105_var_α
n104_call_proc_staged_β:
                                                                              jmp   n105_var_α
.Lx512_0:               .quad            .Lx512_0_s
.Lx512_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n105_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 8144], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 8152], rax;         jmp   n106_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n106_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 8144]
                        mov              qword ptr [rsp + 8112], rax
                        mov              rax, qword ptr [rsp + 8152]
                        mov              qword ptr [rsp + 8120], rax
                        .section         .rodata
.Lrkfn516:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn516]
                        lea              rsi, [rsp + 8112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 8096], rax
                        mov              qword ptr [rsp + 8104], rdx
                        cmp              eax, 104;                            je    n107_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n107_lit_string_α
n106_call_builtin_icon_β:
                                                                              jmp   n107_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:      mov              qword ptr [rsp + 8064], 2            # result
                        mov              dword ptr [rsp + 8068], 1
                        mov              rax, qword ptr [rip + .Lx517_0]
                        mov              qword ptr [rsp + 8072], rax;         jmp   n108_var_α
.Lx517_0:               .quad            .Lx517_0_s
.Lx517_0_s:             .string          "B"
#-----------------------------------------------------------------------------------------------------------------------
n108_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 8080], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 8088], rax;         jmp   n109_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n109_call_proc_staged_α:
                        lea              rsi, [rsp + 8064]
                        lea              rdx, [rsp + 8080]
                        call             proc_limage_dcα;                     jmp   .Lx521_2
.Lx521_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx521_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 8000], rax
                        mov              qword ptr [rsp + 8008], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8000]
                        mov              rdx, qword ptr [rsp + 8008]
.Lx521_29:              mov              qword ptr [rsp + 8000], rax
                        mov              qword ptr [rsp + 8008], rdx
                        cmp              eax, 104;                            je    n110_lit_string_α
                                                                              jmp   n110_lit_string_α
n109_call_proc_staged_β:
                                                                              jmp   n110_lit_string_α
.Lx521_0:               .quad            .Lx521_0_s
.Lx521_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:      mov              qword ptr [rsp + 7872], 2            # result
                        mov              dword ptr [rsp + 7876], 1
                        mov              rax, qword ptr [rip + .Lx522_0]
                        mov              qword ptr [rsp + 7880], rax;         jmp   n111_var_α
.Lx522_0:               .quad            .Lx522_0_s
.Lx522_0_s:             .string          "\t"
#-----------------------------------------------------------------------------------------------------------------------
n111_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 7984], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 7992], rax;         jmp   n112_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n112_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 7984]
                        mov              qword ptr [rsp + 7952], rax
                        mov              rax, qword ptr [rsp + 7992]
                        mov              qword ptr [rsp + 7960], rax
                        .section         .rodata
.Lrkfn526:              .string          "pop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn526]
                        lea              rsi, [rsp + 7952]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7936], rax
                        mov              qword ptr [rsp + 7944], rdx
                        cmp              eax, 104;                            je    n115_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n113_call_builtin_icon_α
n112_call_builtin_icon_β:
                                                                              jmp   n115_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n113_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 7936]
                        mov              qword ptr [rsp + 7904], rax
                        mov              rax, qword ptr [rsp + 7944]
                        mov              qword ptr [rsp + 7912], rax
                        .section         .rodata
.Lrkfn528:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn528]
                        lea              rsi, [rsp + 7904]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7888], rax
                        mov              qword ptr [rsp + 7896], rdx
                        cmp              eax, 104;                            je    n115_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n114_call_builtin_icon_α
n113_call_builtin_icon_β:
                                                                              jmp   n115_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n114_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 7888]
                        mov              qword ptr [rsp + 7840], rax
                        mov              rax, qword ptr [rsp + 7896]
                        mov              qword ptr [rsp + 7848], rax
                        mov              rax, qword ptr [rsp + 7872]
                        mov              qword ptr [rsp + 7824], rax
                        mov              rax, qword ptr [rsp + 7880]
                        mov              qword ptr [rsp + 7832], rax
                        .section         .rodata
.Lrkfn530:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn530]
                        lea              rsi, [rsp + 7824]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7808], rax
                        mov              qword ptr [rsp + 7816], rdx
                        cmp              eax, 104;                            je    n115_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n115_lit_string_α
n114_call_builtin_icon_β:
                                                                              jmp   n115_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_string_α:      mov              qword ptr [rsp + 7776], 2            # result
                        mov              dword ptr [rsp + 7780], 1
                        mov              rax, qword ptr [rip + .Lx531_0]
                        mov              qword ptr [rsp + 7784], rax;         jmp   n116_var_α
.Lx531_0:               .quad            .Lx531_0_s
.Lx531_0_s:             .string          "C"
#-----------------------------------------------------------------------------------------------------------------------
n116_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 7792], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 7800], rax;         jmp   n117_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n117_call_proc_staged_α:
                        lea              rsi, [rsp + 7776]
                        lea              rdx, [rsp + 7792]
                        call             proc_limage_dcα;                     jmp   .Lx535_2
.Lx535_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx535_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 7712], rax
                        mov              qword ptr [rsp + 7720], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 7712]
                        mov              rdx, qword ptr [rsp + 7720]
.Lx535_29:              mov              qword ptr [rsp + 7712], rax
                        mov              qword ptr [rsp + 7720], rdx
                        cmp              eax, 104;                            je    n118_lit_string_α
                                                                              jmp   n118_lit_string_α
n117_call_proc_staged_β:
                                                                              jmp   n118_lit_string_α
.Lx535_0:               .quad            .Lx535_0_s
.Lx535_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:      mov              qword ptr [rsp + 7584], 2            # result
                        mov              dword ptr [rsp + 7588], 1
                        mov              rax, qword ptr [rip + .Lx536_0]
                        mov              qword ptr [rsp + 7592], rax;         jmp   n119_var_α
.Lx536_0:               .quad            .Lx536_0_s
.Lx536_0_s:             .string          "\t"
#-----------------------------------------------------------------------------------------------------------------------
n119_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 7696], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 7704], rax;         jmp   n120_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n120_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 7696]
                        mov              qword ptr [rsp + 7664], rax
                        mov              rax, qword ptr [rsp + 7704]
                        mov              qword ptr [rsp + 7672], rax
                        .section         .rodata
.Lrkfn540:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn540]
                        lea              rsi, [rsp + 7664]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7648], rax
                        mov              qword ptr [rsp + 7656], rdx
                        cmp              eax, 104;                            je    n123_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n121_call_builtin_icon_α
n120_call_builtin_icon_β:
                                                                              jmp   n123_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n121_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 7616], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 7624], rax
                        .section         .rodata
.Lrkfn542:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn542]
                        lea              rsi, [rsp + 7616]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7600], rax
                        mov              qword ptr [rsp + 7608], rdx
                        cmp              eax, 104;                            je    n123_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n122_call_builtin_icon_α
n121_call_builtin_icon_β:
                                                                              jmp   n123_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n122_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 7600]
                        mov              qword ptr [rsp + 7552], rax
                        mov              rax, qword ptr [rsp + 7608]
                        mov              qword ptr [rsp + 7560], rax
                        mov              rax, qword ptr [rsp + 7584]
                        mov              qword ptr [rsp + 7536], rax
                        mov              rax, qword ptr [rsp + 7592]
                        mov              qword ptr [rsp + 7544], rax
                        .section         .rodata
.Lrkfn544:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn544]
                        lea              rsi, [rsp + 7536]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7520], rax
                        mov              qword ptr [rsp + 7528], rdx
                        cmp              eax, 104;                            je    n123_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n123_lit_string_α
n122_call_builtin_icon_β:
                                                                              jmp   n123_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:      mov              qword ptr [rsp + 7488], 2            # result
                        mov              dword ptr [rsp + 7492], 1
                        mov              rax, qword ptr [rip + .Lx545_0]
                        mov              qword ptr [rsp + 7496], rax;         jmp   n124_var_α
.Lx545_0:               .quad            .Lx545_0_s
.Lx545_0_s:             .string          "D"
#-----------------------------------------------------------------------------------------------------------------------
n124_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 7504], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 7512], rax;         jmp   n125_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n125_call_proc_staged_α:
                        lea              rsi, [rsp + 7488]
                        lea              rdx, [rsp + 7504]
                        call             proc_limage_dcα;                     jmp   .Lx549_2
.Lx549_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx549_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 7424], rax
                        mov              qword ptr [rsp + 7432], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 7424]
                        mov              rdx, qword ptr [rsp + 7432]
.Lx549_29:              mov              qword ptr [rsp + 7424], rax
                        mov              qword ptr [rsp + 7432], rdx
                        cmp              eax, 104;                            je    n126_lit_string_α
                                                                              jmp   n126_lit_string_α
n125_call_proc_staged_β:
                                                                              jmp   n126_lit_string_α
.Lx549_0:               .quad            .Lx549_0_s
.Lx549_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:      mov              qword ptr [rsp + 7296], 2            # result
                        mov              dword ptr [rsp + 7300], 1
                        mov              rax, qword ptr [rip + .Lx550_0]
                        mov              qword ptr [rsp + 7304], rax;         jmp   n127_var_α
.Lx550_0:               .quad            .Lx550_0_s
.Lx550_0_s:             .string          "\t"
#-----------------------------------------------------------------------------------------------------------------------
n127_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 7408], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 7416], rax;         jmp   n128_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n128_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 7408]
                        mov              qword ptr [rsp + 7376], rax
                        mov              rax, qword ptr [rsp + 7416]
                        mov              qword ptr [rsp + 7384], rax
                        .section         .rodata
.Lrkfn554:              .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn554]
                        lea              rsi, [rsp + 7376]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7360], rax
                        mov              qword ptr [rsp + 7368], rdx
                        cmp              eax, 104;                            je    n131_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n129_call_builtin_icon_α
n128_call_builtin_icon_β:
                                                                              jmp   n131_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n129_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 7360]
                        mov              qword ptr [rsp + 7328], rax
                        mov              rax, qword ptr [rsp + 7368]
                        mov              qword ptr [rsp + 7336], rax
                        .section         .rodata
.Lrkfn556:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn556]
                        lea              rsi, [rsp + 7328]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7312], rax
                        mov              qword ptr [rsp + 7320], rdx
                        cmp              eax, 104;                            je    n131_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n130_call_builtin_icon_α
n129_call_builtin_icon_β:
                                                                              jmp   n131_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n130_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 7312]
                        mov              qword ptr [rsp + 7264], rax
                        mov              rax, qword ptr [rsp + 7320]
                        mov              qword ptr [rsp + 7272], rax
                        mov              rax, qword ptr [rsp + 7296]
                        mov              qword ptr [rsp + 7248], rax
                        mov              rax, qword ptr [rsp + 7304]
                        mov              qword ptr [rsp + 7256], rax
                        .section         .rodata
.Lrkfn558:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn558]
                        lea              rsi, [rsp + 7248]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7232], rax
                        mov              qword ptr [rsp + 7240], rdx
                        cmp              eax, 104;                            je    n131_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n131_lit_string_α
n130_call_builtin_icon_β:
                                                                              jmp   n131_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:      mov              qword ptr [rsp + 7200], 2            # result
                        mov              dword ptr [rsp + 7204], 1
                        mov              rax, qword ptr [rip + .Lx559_0]
                        mov              qword ptr [rsp + 7208], rax;         jmp   n132_var_α
.Lx559_0:               .quad            .Lx559_0_s
.Lx559_0_s:             .string          "E"
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 7216], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 7224], rax;         jmp   n133_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n133_call_proc_staged_α:
                        lea              rsi, [rsp + 7200]
                        lea              rdx, [rsp + 7216]
                        call             proc_limage_dcα;                     jmp   .Lx563_2
.Lx563_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx563_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 7136], rax
                        mov              qword ptr [rsp + 7144], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 7136]
                        mov              rdx, qword ptr [rsp + 7144]
.Lx563_29:              mov              qword ptr [rsp + 7136], rax
                        mov              qword ptr [rsp + 7144], rdx
                        cmp              eax, 104;                            je    n134_var_α
                                                                              jmp   n134_var_α
n133_call_proc_staged_β:
                                                                              jmp   n134_var_α
.Lx563_0:               .quad            .Lx563_0_s
.Lx563_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n134_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 7104], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 7112], rax;         jmp   n135_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_integer_α:     mov              qword ptr [rsp + 7120], 3            # result
                        mov              rax, qword ptr [rip + .Lx566_0]
                        mov              qword ptr [rsp + 7128], rax;         jmp   n136_call_builtin_icon_α
.Lx566_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n136_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 7120]
                        mov              qword ptr [rsp + 7072], rax
                        mov              rax, qword ptr [rsp + 7128]
                        mov              qword ptr [rsp + 7080], rax
                        mov              rax, qword ptr [rsp + 7104]
                        mov              qword ptr [rsp + 7056], rax
                        mov              rax, qword ptr [rsp + 7112]
                        mov              qword ptr [rsp + 7064], rax
                        .section         .rodata
.Lrkfn568:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn568]
                        lea              rsi, [rsp + 7056]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7040], rax
                        mov              qword ptr [rsp + 7048], rdx
                        cmp              eax, 104;                            je    n137_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n137_lit_string_α
n136_call_builtin_icon_β:
                                                                              jmp   n137_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:      mov              qword ptr [rsp + 7008], 2            # result
                        mov              dword ptr [rsp + 7012], 1
                        mov              rax, qword ptr [rip + .Lx569_0]
                        mov              qword ptr [rsp + 7016], rax;         jmp   n138_var_α
.Lx569_0:               .quad            .Lx569_0_s
.Lx569_0_s:             .string          "F"
#-----------------------------------------------------------------------------------------------------------------------
n138_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 7024], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 7032], rax;         jmp   n139_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n139_call_proc_staged_α:
                        lea              rsi, [rsp + 7008]
                        lea              rdx, [rsp + 7024]
                        call             proc_limage_dcα;                     jmp   .Lx573_2
.Lx573_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx573_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 6944], rax
                        mov              qword ptr [rsp + 6952], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 6944]
                        mov              rdx, qword ptr [rsp + 6952]
.Lx573_29:              mov              qword ptr [rsp + 6944], rax
                        mov              qword ptr [rsp + 6952], rdx
                        cmp              eax, 104;                            je    n140_var_α
                                                                              jmp   n140_var_α
n139_call_proc_staged_β:
                                                                              jmp   n140_var_α
.Lx573_0:               .quad            .Lx573_0_s
.Lx573_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n140_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 6880], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 6888], rax;         jmp   n141_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_integer_α:     mov              qword ptr [rsp + 6896], 3            # result
                        mov              rax, qword ptr [rip + .Lx576_0]
                        mov              qword ptr [rsp + 6904], rax;         jmp   n142_lit_integer_α
.Lx576_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_integer_α:     mov              qword ptr [rsp + 6912], 3            # result
                        mov              rax, qword ptr [rip + .Lx577_0]
                        mov              qword ptr [rsp + 6920], rax;         jmp   n143_lit_integer_α
.Lx577_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_integer_α:     mov              qword ptr [rsp + 6928], 3            # result
                        mov              rax, qword ptr [rip + .Lx578_0]
                        mov              qword ptr [rsp + 6936], rax;         jmp   n144_call_builtin_icon_α
.Lx578_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n144_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 6928]
                        mov              qword ptr [rsp + 6848], rax
                        mov              rax, qword ptr [rsp + 6936]
                        mov              qword ptr [rsp + 6856], rax
                        mov              rax, qword ptr [rsp + 6912]
                        mov              qword ptr [rsp + 6832], rax
                        mov              rax, qword ptr [rsp + 6920]
                        mov              qword ptr [rsp + 6840], rax
                        mov              rax, qword ptr [rsp + 6896]
                        mov              qword ptr [rsp + 6816], rax
                        mov              rax, qword ptr [rsp + 6904]
                        mov              qword ptr [rsp + 6824], rax
                        mov              rax, qword ptr [rsp + 6880]
                        mov              qword ptr [rsp + 6800], rax
                        mov              rax, qword ptr [rsp + 6888]
                        mov              qword ptr [rsp + 6808], rax
                        .section         .rodata
.Lrkfn580:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn580]
                        lea              rsi, [rsp + 6800]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6784], rax
                        mov              qword ptr [rsp + 6792], rdx
                        cmp              eax, 104;                            je    n145_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n145_lit_string_α
n144_call_builtin_icon_β:
                                                                              jmp   n145_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_string_α:      mov              qword ptr [rsp + 6752], 2            # result
                        mov              dword ptr [rsp + 6756], 1
                        mov              rax, qword ptr [rip + .Lx581_0]
                        mov              qword ptr [rsp + 6760], rax;         jmp   n146_var_α
.Lx581_0:               .quad            .Lx581_0_s
.Lx581_0_s:             .string          "G"
#-----------------------------------------------------------------------------------------------------------------------
n146_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 6768], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 6776], rax;         jmp   n147_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n147_call_proc_staged_α:
                        lea              rsi, [rsp + 6752]
                        lea              rdx, [rsp + 6768]
                        call             proc_limage_dcα;                     jmp   .Lx585_2
.Lx585_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx585_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 6688], rax
                        mov              qword ptr [rsp + 6696], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 6688]
                        mov              rdx, qword ptr [rsp + 6696]
.Lx585_29:              mov              qword ptr [rsp + 6688], rax
                        mov              qword ptr [rsp + 6696], rdx
                        cmp              eax, 104;                            je    n148_var_α
                                                                              jmp   n148_var_α
n147_call_proc_staged_β:
                                                                              jmp   n148_var_α
.Lx585_0:               .quad            .Lx585_0_s
.Lx585_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n148_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 6608], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 6616], rax;         jmp   n149_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_integer_α:     mov              qword ptr [rsp + 6624], 3            # result
                        mov              rax, qword ptr [rip + .Lx588_0]
                        mov              qword ptr [rsp + 6632], rax;         jmp   n150_lit_integer_α
.Lx588_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_integer_α:     mov              qword ptr [rsp + 6640], 3            # result
                        mov              rax, qword ptr [rip + .Lx589_0]
                        mov              qword ptr [rsp + 6648], rax;         jmp   n151_call_builtin_icon_α
.Lx589_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n151_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 6640]
                        mov              qword ptr [rsp + 6576], rax
                        mov              rax, qword ptr [rsp + 6648]
                        mov              qword ptr [rsp + 6584], rax
                        mov              rax, qword ptr [rsp + 6624]
                        mov              qword ptr [rsp + 6560], rax
                        mov              rax, qword ptr [rsp + 6632]
                        mov              qword ptr [rsp + 6568], rax
                        mov              rax, qword ptr [rsp + 6608]
                        mov              qword ptr [rsp + 6544], rax
                        mov              rax, qword ptr [rsp + 6616]
                        mov              qword ptr [rsp + 6552], rax
                        .section         .rodata
.Lrkfn591:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn591]
                        lea              rsi, [rsp + 6544]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6528], rax
                        mov              qword ptr [rsp + 6536], rdx
                        cmp              eax, 104;                            je    n155_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n152_lit_integer_α
n151_call_builtin_icon_β:
                                                                              jmp   n155_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_integer_α:     mov              qword ptr [rsp + 6656], 3            # result
                        mov              rax, qword ptr [rip + .Lx592_0]
                        mov              qword ptr [rsp + 6664], rax;         jmp   n153_lit_integer_α
.Lx592_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:     mov              qword ptr [rsp + 6672], 3            # result
                        mov              rax, qword ptr [rip + .Lx593_0]
                        mov              qword ptr [rsp + 6680], rax;         jmp   n154_call_builtin_icon_α
.Lx593_0:               .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n154_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 6672]
                        mov              qword ptr [rsp + 6496], rax
                        mov              rax, qword ptr [rsp + 6680]
                        mov              qword ptr [rsp + 6504], rax
                        mov              rax, qword ptr [rsp + 6656]
                        mov              qword ptr [rsp + 6480], rax
                        mov              rax, qword ptr [rsp + 6664]
                        mov              qword ptr [rsp + 6488], rax
                        mov              rax, qword ptr [rsp + 6528]
                        mov              qword ptr [rsp + 6464], rax
                        mov              rax, qword ptr [rsp + 6536]
                        mov              qword ptr [rsp + 6472], rax
                        .section         .rodata
.Lrkfn595:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn595]
                        lea              rsi, [rsp + 6464]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6448], rax
                        mov              qword ptr [rsp + 6456], rdx
                        cmp              eax, 104;                            je    n155_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n155_lit_string_α
n154_call_builtin_icon_β:
                                                                              jmp   n155_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_string_α:      mov              qword ptr [rsp + 6416], 2            # result
                        mov              dword ptr [rsp + 6420], 1
                        mov              rax, qword ptr [rip + .Lx596_0]
                        mov              qword ptr [rsp + 6424], rax;         jmp   n156_var_α
.Lx596_0:               .quad            .Lx596_0_s
.Lx596_0_s:             .string          "H"
#-----------------------------------------------------------------------------------------------------------------------
n156_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 6432], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 6440], rax;         jmp   n157_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n157_call_proc_staged_α:
                        lea              rsi, [rsp + 6416]
                        lea              rdx, [rsp + 6432]
                        call             proc_limage_dcα;                     jmp   .Lx600_2
.Lx600_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx600_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 6352], rax
                        mov              qword ptr [rsp + 6360], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 6352]
                        mov              rdx, qword ptr [rsp + 6360]
.Lx600_29:              mov              qword ptr [rsp + 6352], rax
                        mov              qword ptr [rsp + 6360], rdx
                        cmp              eax, 104;                            je    n158_var_α
                                                                              jmp   n158_var_α
n157_call_proc_staged_β:
                                                                              jmp   n158_var_α
.Lx600_0:               .quad            .Lx600_0_s
.Lx600_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n158_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 6320], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 6328], rax;         jmp   n159_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_integer_α:     mov              qword ptr [rsp + 6336], 3            # result
                        mov              rax, qword ptr [rip + .Lx603_0]
                        mov              qword ptr [rsp + 6344], rax;         jmp   n160_call_builtin_icon_α
.Lx603_0:               .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n160_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 6336]
                        mov              qword ptr [rsp + 6288], rax
                        mov              rax, qword ptr [rsp + 6344]
                        mov              qword ptr [rsp + 6296], rax
                        mov              rax, qword ptr [rsp + 6320]
                        mov              qword ptr [rsp + 6272], rax
                        mov              rax, qword ptr [rsp + 6328]
                        mov              qword ptr [rsp + 6280], rax
                        .section         .rodata
.Lrkfn605:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn605]
                        lea              rsi, [rsp + 6272]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6256], rax
                        mov              qword ptr [rsp + 6264], rdx
                        cmp              eax, 104;                            je    n161_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n161_lit_string_α
n160_call_builtin_icon_β:
                                                                              jmp   n161_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_string_α:      mov              qword ptr [rsp + 6224], 2            # result
                        mov              dword ptr [rsp + 6228], 1
                        mov              rax, qword ptr [rip + .Lx606_0]
                        mov              qword ptr [rsp + 6232], rax;         jmp   n162_var_α
.Lx606_0:               .quad            .Lx606_0_s
.Lx606_0_s:             .string          "I"
#-----------------------------------------------------------------------------------------------------------------------
n162_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 6240], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 6248], rax;         jmp   n163_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n163_call_proc_staged_α:
                        lea              rsi, [rsp + 6224]
                        lea              rdx, [rsp + 6240]
                        call             proc_limage_dcα;                     jmp   .Lx610_2
.Lx610_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx610_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 6160], rax
                        mov              qword ptr [rsp + 6168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 6160]
                        mov              rdx, qword ptr [rsp + 6168]
.Lx610_29:              mov              qword ptr [rsp + 6160], rax
                        mov              qword ptr [rsp + 6168], rdx
                        cmp              eax, 104;                            je    n164_var_α
                                                                              jmp   n164_var_α
n163_call_proc_staged_β:
                                                                              jmp   n164_var_α
.Lx610_0:               .quad            .Lx610_0_s
.Lx610_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n164_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 6096], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 6104], rax;         jmp   n165_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_integer_α:     mov              qword ptr [rsp + 6112], 3            # result
                        mov              rax, qword ptr [rip + .Lx613_0]
                        mov              qword ptr [rsp + 6120], rax;         jmp   n166_lit_integer_α
.Lx613_0:               .quad            13
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_integer_α:     mov              qword ptr [rsp + 6128], 3            # result
                        mov              rax, qword ptr [rip + .Lx614_0]
                        mov              qword ptr [rsp + 6136], rax;         jmp   n167_lit_integer_α
.Lx614_0:               .quad            14
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_integer_α:     mov              qword ptr [rsp + 6144], 3            # result
                        mov              rax, qword ptr [rip + .Lx615_0]
                        mov              qword ptr [rsp + 6152], rax;         jmp   n168_call_builtin_icon_α
.Lx615_0:               .quad            15
#-----------------------------------------------------------------------------------------------------------------------
n168_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 6144]
                        mov              qword ptr [rsp + 6064], rax
                        mov              rax, qword ptr [rsp + 6152]
                        mov              qword ptr [rsp + 6072], rax
                        mov              rax, qword ptr [rsp + 6128]
                        mov              qword ptr [rsp + 6048], rax
                        mov              rax, qword ptr [rsp + 6136]
                        mov              qword ptr [rsp + 6056], rax
                        mov              rax, qword ptr [rsp + 6112]
                        mov              qword ptr [rsp + 6032], rax
                        mov              rax, qword ptr [rsp + 6120]
                        mov              qword ptr [rsp + 6040], rax
                        mov              rax, qword ptr [rsp + 6096]
                        mov              qword ptr [rsp + 6016], rax
                        mov              rax, qword ptr [rsp + 6104]
                        mov              qword ptr [rsp + 6024], rax
                        .section         .rodata
.Lrkfn617:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn617]
                        lea              rsi, [rsp + 6016]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6000], rax
                        mov              qword ptr [rsp + 6008], rdx
                        cmp              eax, 104;                            je    n169_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n169_lit_string_α
n168_call_builtin_icon_β:
                                                                              jmp   n169_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_string_α:      mov              qword ptr [rsp + 5968], 2            # result
                        mov              dword ptr [rsp + 5972], 1
                        mov              rax, qword ptr [rip + .Lx618_0]
                        mov              qword ptr [rsp + 5976], rax;         jmp   n170_var_α
.Lx618_0:               .quad            .Lx618_0_s
.Lx618_0_s:             .string          "J"
#-----------------------------------------------------------------------------------------------------------------------
n170_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 5984], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 5992], rax;         jmp   n171_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n171_call_proc_staged_α:
                        lea              rsi, [rsp + 5968]
                        lea              rdx, [rsp + 5984]
                        call             proc_limage_dcα;                     jmp   .Lx622_2
.Lx622_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx622_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 5904], rax
                        mov              qword ptr [rsp + 5912], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5904]
                        mov              rdx, qword ptr [rsp + 5912]
.Lx622_29:              mov              qword ptr [rsp + 5904], rax
                        mov              qword ptr [rsp + 5912], rdx
                        cmp              eax, 104;                            je    n172_var_α
                                                                              jmp   n172_var_α
n171_call_proc_staged_β:
                                                                              jmp   n172_var_α
.Lx622_0:               .quad            .Lx622_0_s
.Lx622_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n172_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 5824], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 5832], rax;         jmp   n173_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_integer_α:     mov              qword ptr [rsp + 5840], 3            # result
                        mov              rax, qword ptr [rip + .Lx625_0]
                        mov              qword ptr [rsp + 5848], rax;         jmp   n174_lit_integer_α
.Lx625_0:               .quad            16
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_integer_α:     mov              qword ptr [rsp + 5856], 3            # result
                        mov              rax, qword ptr [rip + .Lx626_0]
                        mov              qword ptr [rsp + 5864], rax;         jmp   n175_call_builtin_icon_α
.Lx626_0:               .quad            17
#-----------------------------------------------------------------------------------------------------------------------
n175_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 5856]
                        mov              qword ptr [rsp + 5792], rax
                        mov              rax, qword ptr [rsp + 5864]
                        mov              qword ptr [rsp + 5800], rax
                        mov              rax, qword ptr [rsp + 5840]
                        mov              qword ptr [rsp + 5776], rax
                        mov              rax, qword ptr [rsp + 5848]
                        mov              qword ptr [rsp + 5784], rax
                        mov              rax, qword ptr [rsp + 5824]
                        mov              qword ptr [rsp + 5760], rax
                        mov              rax, qword ptr [rsp + 5832]
                        mov              qword ptr [rsp + 5768], rax
                        .section         .rodata
.Lrkfn628:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn628]
                        lea              rsi, [rsp + 5760]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5744], rax
                        mov              qword ptr [rsp + 5752], rdx
                        cmp              eax, 104;                            je    n179_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n176_lit_integer_α
n175_call_builtin_icon_β:
                                                                              jmp   n179_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_integer_α:     mov              qword ptr [rsp + 5872], 3            # result
                        mov              rax, qword ptr [rip + .Lx629_0]
                        mov              qword ptr [rsp + 5880], rax;         jmp   n177_lit_integer_α
.Lx629_0:               .quad            18
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_integer_α:     mov              qword ptr [rsp + 5888], 3            # result
                        mov              rax, qword ptr [rip + .Lx630_0]
                        mov              qword ptr [rsp + 5896], rax;         jmp   n178_call_builtin_icon_α
.Lx630_0:               .quad            19
#-----------------------------------------------------------------------------------------------------------------------
n178_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 5888]
                        mov              qword ptr [rsp + 5712], rax
                        mov              rax, qword ptr [rsp + 5896]
                        mov              qword ptr [rsp + 5720], rax
                        mov              rax, qword ptr [rsp + 5872]
                        mov              qword ptr [rsp + 5696], rax
                        mov              rax, qword ptr [rsp + 5880]
                        mov              qword ptr [rsp + 5704], rax
                        mov              rax, qword ptr [rsp + 5744]
                        mov              qword ptr [rsp + 5680], rax
                        mov              rax, qword ptr [rsp + 5752]
                        mov              qword ptr [rsp + 5688], rax
                        .section         .rodata
.Lrkfn632:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn632]
                        lea              rsi, [rsp + 5680]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5664], rax
                        mov              qword ptr [rsp + 5672], rdx
                        cmp              eax, 104;                            je    n179_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n179_lit_string_α
n178_call_builtin_icon_β:
                                                                              jmp   n179_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_string_α:      mov              qword ptr [rsp + 5632], 2            # result
                        mov              dword ptr [rsp + 5636], 1
                        mov              rax, qword ptr [rip + .Lx633_0]
                        mov              qword ptr [rsp + 5640], rax;         jmp   n180_var_α
.Lx633_0:               .quad            .Lx633_0_s
.Lx633_0_s:             .string          "K"
#-----------------------------------------------------------------------------------------------------------------------
n180_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 5648], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 5656], rax;         jmp   n181_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n181_call_proc_staged_α:
                        lea              rsi, [rsp + 5632]
                        lea              rdx, [rsp + 5648]
                        call             proc_limage_dcα;                     jmp   .Lx637_2
.Lx637_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx637_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 5568], rax
                        mov              qword ptr [rsp + 5576], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5568]
                        mov              rdx, qword ptr [rsp + 5576]
.Lx637_29:              mov              qword ptr [rsp + 5568], rax
                        mov              qword ptr [rsp + 5576], rdx
                        cmp              eax, 104;                            je    n182_var_α
                                                                              jmp   n182_var_α
n181_call_proc_staged_β:
                                                                              jmp   n182_var_α
.Lx637_0:               .quad            .Lx637_0_s
.Lx637_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n182_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 5488], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 5496], rax;         jmp   n183_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_integer_α:     mov              qword ptr [rsp + 5504], 3            # result
                        mov              rax, qword ptr [rip + .Lx640_0]
                        mov              qword ptr [rsp + 5512], rax;         jmp   n184_lit_integer_α
.Lx640_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_integer_α:     mov              qword ptr [rsp + 5520], 3            # result
                        mov              rax, qword ptr [rip + .Lx641_0]
                        mov              qword ptr [rsp + 5528], rax;         jmp   n185_call_builtin_icon_α
.Lx641_0:               .quad            21
#-----------------------------------------------------------------------------------------------------------------------
n185_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 5520]
                        mov              qword ptr [rsp + 5456], rax
                        mov              rax, qword ptr [rsp + 5528]
                        mov              qword ptr [rsp + 5464], rax
                        mov              rax, qword ptr [rsp + 5504]
                        mov              qword ptr [rsp + 5440], rax
                        mov              rax, qword ptr [rsp + 5512]
                        mov              qword ptr [rsp + 5448], rax
                        mov              rax, qword ptr [rsp + 5488]
                        mov              qword ptr [rsp + 5424], rax
                        mov              rax, qword ptr [rsp + 5496]
                        mov              qword ptr [rsp + 5432], rax
                        .section         .rodata
.Lrkfn643:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn643]
                        lea              rsi, [rsp + 5424]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5408], rax
                        mov              qword ptr [rsp + 5416], rdx
                        cmp              eax, 104;                            je    n189_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n186_lit_integer_α
n185_call_builtin_icon_β:
                                                                              jmp   n189_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_integer_α:     mov              qword ptr [rsp + 5536], 3            # result
                        mov              rax, qword ptr [rip + .Lx644_0]
                        mov              qword ptr [rsp + 5544], rax;         jmp   n187_lit_integer_α
.Lx644_0:               .quad            22
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_integer_α:     mov              qword ptr [rsp + 5552], 3            # result
                        mov              rax, qword ptr [rip + .Lx645_0]
                        mov              qword ptr [rsp + 5560], rax;         jmp   n188_call_builtin_icon_α
.Lx645_0:               .quad            23
#-----------------------------------------------------------------------------------------------------------------------
n188_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 5552]
                        mov              qword ptr [rsp + 5376], rax
                        mov              rax, qword ptr [rsp + 5560]
                        mov              qword ptr [rsp + 5384], rax
                        mov              rax, qword ptr [rsp + 5536]
                        mov              qword ptr [rsp + 5360], rax
                        mov              rax, qword ptr [rsp + 5544]
                        mov              qword ptr [rsp + 5368], rax
                        mov              rax, qword ptr [rsp + 5408]
                        mov              qword ptr [rsp + 5344], rax
                        mov              rax, qword ptr [rsp + 5416]
                        mov              qword ptr [rsp + 5352], rax
                        .section         .rodata
.Lrkfn647:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn647]
                        lea              rsi, [rsp + 5344]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5328], rax
                        mov              qword ptr [rsp + 5336], rdx
                        cmp              eax, 104;                            je    n189_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n189_lit_string_α
n188_call_builtin_icon_β:
                                                                              jmp   n189_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_string_α:      mov              qword ptr [rsp + 5296], 2            # result
                        mov              dword ptr [rsp + 5300], 1
                        mov              rax, qword ptr [rip + .Lx648_0]
                        mov              qword ptr [rsp + 5304], rax;         jmp   n190_var_α
.Lx648_0:               .quad            .Lx648_0_s
.Lx648_0_s:             .string          "L"
#-----------------------------------------------------------------------------------------------------------------------
n190_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 5312], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 5320], rax;         jmp   n191_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n191_call_proc_staged_α:
                        lea              rsi, [rsp + 5296]
                        lea              rdx, [rsp + 5312]
                        call             proc_limage_dcα;                     jmp   .Lx652_2
.Lx652_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx652_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 5232], rax
                        mov              qword ptr [rsp + 5240], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5232]
                        mov              rdx, qword ptr [rsp + 5240]
.Lx652_29:              mov              qword ptr [rsp + 5232], rax
                        mov              qword ptr [rsp + 5240], rdx
                        cmp              eax, 104;                            je    n192_var_ref_α
                                                                              jmp   n192_var_ref_α
n191_call_proc_staged_β:
                                                                              jmp   n192_var_ref_α
.Lx652_0:               .quad            .Lx652_0_s
.Lx652_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n192_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 10496]
                        mov              qword ptr [rsp + 5184], rax
                        mov              qword ptr [rsp + 5192], rdx;         jmp   n193_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n193_iterate_α:         mov              qword ptr [rsp + 5168], 0
.Lx656_0:               mov              rdi, qword ptr [rsp + 5184]
                        mov              rsi, qword ptr [rsp + 5192]
                        mov              rdx, qword ptr [rsp + 5168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_var_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5152], rax
                        mov              qword ptr [rsp + 5160], rdx
                        cmp              rax, 104;                            je    n196_lit_string_α
                                                                              jmp   n194_lit_integer_α
n193_iterate_β:         inc              qword ptr [rsp + 5168];              jmp   .Lx656_0
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_integer_α:     mov              qword ptr [rsp + 5216], 3            # result
                        mov              rax, qword ptr [rip + .Lx657_0]
                        mov              qword ptr [rsp + 5224], rax;         jmp   n195_assign_var_α
.Lx657_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n195_assign_var_α:      mov              rdi, qword ptr [rsp + 5152]
                        mov              rsi, qword ptr [rsp + 5160]
                        mov              rdx, qword ptr [rsp + 5216]
                        mov              rcx, qword ptr [rsp + 5224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n196_lit_string_α
                        mov              qword ptr [rsp + 5200], rax
                        mov              qword ptr [rsp + 5208], rdx;         jmp   n193_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_string_α:      mov              qword ptr [rsp + 5120], 2            # result
                        mov              dword ptr [rsp + 5124], 1
                        mov              rax, qword ptr [rip + .Lx659_0]
                        mov              qword ptr [rsp + 5128], rax;         jmp   n197_var_α
.Lx659_0:               .quad            .Lx659_0_s
.Lx659_0_s:             .string          "M"
#-----------------------------------------------------------------------------------------------------------------------
n197_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 5136], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 5144], rax;         jmp   n198_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n198_call_proc_staged_α:
                        lea              rsi, [rsp + 5120]
                        lea              rdx, [rsp + 5136]
                        call             proc_limage_dcα;                     jmp   .Lx663_2
.Lx663_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx663_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 5056], rax
                        mov              qword ptr [rsp + 5064], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5056]
                        mov              rdx, qword ptr [rsp + 5064]
.Lx663_29:              mov              qword ptr [rsp + 5056], rax
                        mov              qword ptr [rsp + 5064], rdx
                        cmp              eax, 104;                            je    n199_lit_integer_α
                                                                              jmp   n199_lit_integer_α
n198_call_proc_staged_β:
                                                                              jmp   n199_lit_integer_α
.Lx663_0:               .quad            .Lx663_0_s
.Lx663_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_integer_α:     mov              qword ptr [rsp + 4976], 3            # result
                        mov              rax, qword ptr [rip + .Lx664_0]
                        mov              qword ptr [rsp + 4984], rax;         jmp   n200_lit_integer_α
.Lx664_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_integer_α:     mov              qword ptr [rsp + 4992], 3            # result
                        mov              rax, qword ptr [rip + .Lx665_0]
                        mov              qword ptr [rsp + 5000], rax;         jmp   n201_lit_integer_α
.Lx665_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_integer_α:     mov              qword ptr [rsp + 5008], 3            # result
                        mov              rax, qword ptr [rip + .Lx666_0]
                        mov              qword ptr [rsp + 5016], rax;         jmp   n202_lit_integer_α
.Lx666_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_integer_α:     mov              qword ptr [rsp + 5024], 3            # result
                        mov              rax, qword ptr [rip + .Lx667_0]
                        mov              qword ptr [rsp + 5032], rax;         jmp   n203_lit_integer_α
.Lx667_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_integer_α:     mov              qword ptr [rsp + 5040], 3            # result
                        mov              rax, qword ptr [rip + .Lx668_0]
                        mov              qword ptr [rsp + 5048], rax;         jmp   n204_make_list_α
.Lx668_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n204_make_list_α:       mov              rax, qword ptr [rsp + 4976]
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
                        mov              rax, qword ptr [rsp + 5024]
                        mov              qword ptr [rsp + 4944], rax
                        mov              rax, qword ptr [rsp + 5032]
                        mov              qword ptr [rsp + 4952], rax
                        mov              rax, qword ptr [rsp + 5040]
                        mov              qword ptr [rsp + 4960], rax
                        mov              rax, qword ptr [rsp + 5048]
                        mov              qword ptr [rsp + 4968], rax
                        lea              rdi, [rsp + 4896]
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4880], rax
                        mov              qword ptr [rsp + 4888], rdx;         jmp   n205_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n205_assign_α:          mov              rax, qword ptr [rsp + 4880]
                        mov              rdx, qword ptr [rsp + 4888]
                        mov              qword ptr [rsp + 10496], rax
                        mov              qword ptr [rsp + 10504], rdx;        jmp   n206_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n206_lit_integer_α:     mov              qword ptr [rsp + 4656], 3            # result
                        mov              rax, qword ptr [rip + .Lx672_0]
                        mov              qword ptr [rsp + 4664], rax;         jmp   n207_var_α
.Lx672_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n207_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 4720], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 4728], rax;         jmp   n208_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n208_unop_α:            mov              rdi, qword ptr [rsp + 10496]
                        mov              rsi, qword ptr [rsp + 10504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4704], rax
                        mov              qword ptr [rsp + 4712], rdx;         jmp   n209_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_integer_α:     mov              qword ptr [rsp + 4736], 3            # result
                        mov              rax, qword ptr [rip + .Lx676_0]
                        mov              qword ptr [rsp + 4744], rax;         jmp   n210_coerce_numeric_α
.Lx676_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n210_coerce_numeric_α:  mov              eax, dword ptr [rsp + 4704]
                        cmp              eax, 5;                              je    .Lx678_1
                        cmp              eax, 3;                              jne   .Lx678_0
                        mov              eax, dword ptr [rsp + 4736]
                        cmp              eax, 3;                              jne   .Lx678_0
.Lx678_1:               mov              rax, qword ptr [rsp + 4704]
                        mov              qword ptr [rsp + 4688], rax
                        mov              rax, qword ptr [rsp + 4712]
                        mov              qword ptr [rsp + 4696], rax;         jmp   n211_binop_α
.Lx678_0:               lea              rdi, [rsp + 4704]
                        lea              rsi, [rsp + 4736]
                        lea              rdx, [rsp + 4688]
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
n211_binop_α:           mov              eax, dword ptr [rsp + 4688]
                        cmp              eax, 3;                              jne   .Lx679_0
                        mov              rax, qword ptr [rsp + 4696]
                        mov              rcx, 3
                        add              rax, rcx
                        mov              qword ptr [rsp + 4672], 3
                        mov              qword ptr [rsp + 4680], rax;         jmp   n212_to_α
.Lx679_0:               mov              rdi, qword ptr [rsp + 4688]
                        mov              rsi, qword ptr [rsp + 4696]
                        mov              rdx, qword ptr [rsp + 4736]
                        mov              rcx, qword ptr [rsp + 4744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n221_lit_string_α
                        mov              qword ptr [rsp + 4672], rax
                        mov              qword ptr [rsp + 4680], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n212_to_α
#-----------------------------------------------------------------------------------------------------------------------
n212_to_α:              mov              rdi, qword ptr [rsp + 4656]
                        mov              rsi, qword ptr [rsp + 4664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4656], 3
                        mov              qword ptr [rsp + 4664], rax
                        mov              rdi, qword ptr [rsp + 4672]
                        mov              rsi, qword ptr [rsp + 4680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4672], 3
                        mov              qword ptr [rsp + 4680], rax
                        mov              rax, qword ptr [rsp + 4664]
                        mov              qword ptr [rsp + 4640], rax
.Lx681_0:               mov              rax, qword ptr [rsp + 4640]
                        mov              rcx, qword ptr [rsp + 4680]
                        cmp              rax, rcx;                            jg    n221_lit_string_α
                        mov              qword ptr [rsp + 4624], 3
                        mov              qword ptr [rsp + 4632], rax;         jmp   n213_assign_α
n212_to_β:              inc              qword ptr [rsp + 4640];              jmp   .Lx681_0
#-----------------------------------------------------------------------------------------------------------------------
n213_assign_α:          mov              rax, qword ptr [rsp + 4624]
                        mov              rdx, qword ptr [rsp + 4632]
                        mov              qword ptr [rsp + 10512], rax
                        mov              qword ptr [rsp + 10520], rdx;        jmp   n214_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n214_bound_α:           mov              qword ptr [rsp + 4752], rsp;         jmp   n215_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n215_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 10496]
                        mov              qword ptr [rsp + 4800], rax
                        mov              qword ptr [rsp + 4808], rdx;         jmp   n216_var_α
#-----------------------------------------------------------------------------------------------------------------------
n216_var_α:             mov              rax, qword ptr [rsp + 10512]
                        mov              qword ptr [rsp + 4816], rax
                        mov              rax, qword ptr [rsp + 10520]
                        mov              qword ptr [rsp + 4824], rax;         jmp   n217_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n217_subscript_α:       mov              rdi, qword ptr [rsp + 4800]
                        mov              rsi, qword ptr [rsp + 4808]
                        mov              rdx, qword ptr [rsp + 4816]
                        mov              rcx, qword ptr [rsp + 4824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n220_unmark_α
                        mov              qword ptr [rsp + 4832], rax
                        mov              qword ptr [rsp + 4840], rdx;         jmp   n218_var_α
#-----------------------------------------------------------------------------------------------------------------------
n218_var_α:             mov              rax, qword ptr [rsp + 10512]
                        mov              qword ptr [rsp + 4864], rax
                        mov              rax, qword ptr [rsp + 10520]
                        mov              qword ptr [rsp + 4872], rax;         jmp   n219_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n219_assign_var_α:      mov              rdi, qword ptr [rsp + 4832]
                        mov              rsi, qword ptr [rsp + 4840]
                        mov              rdx, qword ptr [rsp + 4864]
                        mov              rcx, qword ptr [rsp + 4872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n220_unmark_α
                        mov              qword ptr [rsp + 4848], rax
                        mov              qword ptr [rsp + 4856], rdx;         jmp   n220_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n220_unmark_α:          mov              rsp, qword ptr [rsp + 4752];         jmp   n212_to_β
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_string_α:      mov              qword ptr [rsp + 4592], 2            # result
                        mov              dword ptr [rsp + 4596], 1
                        mov              rax, qword ptr [rip + .Lx695_0]
                        mov              qword ptr [rsp + 4600], rax;         jmp   n222_var_α
.Lx695_0:               .quad            .Lx695_0_s
.Lx695_0_s:             .string          "N"
#-----------------------------------------------------------------------------------------------------------------------
n222_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 4608], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 4616], rax;         jmp   n223_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n223_call_proc_staged_α:
                        lea              rsi, [rsp + 4592]
                        lea              rdx, [rsp + 4608]
                        call             proc_limage_dcα;                     jmp   .Lx699_2
.Lx699_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx699_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 4528], rax
                        mov              qword ptr [rsp + 4536], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4528]
                        mov              rdx, qword ptr [rsp + 4536]
.Lx699_29:              mov              qword ptr [rsp + 4528], rax
                        mov              qword ptr [rsp + 4536], rdx
                        cmp              eax, 104;                            je    n224_var_α
                                                                              jmp   n224_var_α
n223_call_proc_staged_β:
                                                                              jmp   n224_var_α
.Lx699_0:               .quad            .Lx699_0_s
.Lx699_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n224_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 4352], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 4360], rax;         jmp   n225_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n225_unop_α:            mov              rdi, qword ptr [rsp + 10496]
                        mov              rsi, qword ptr [rsp + 10504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4336], rax
                        mov              qword ptr [rsp + 4344], rdx;         jmp   n226_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n226_coerce_numeric_α:  mov              eax, dword ptr [rsp + 4336]
                        cmp              eax, 5;                              je    .Lx704_1
                        cmp              eax, 3;                              jne   .Lx704_0
                        mov              eax, dword ptr [rsp + 4336]
                        cmp              eax, 3;                              jne   .Lx704_0
.Lx704_1:               mov              rax, qword ptr [rsp + 4336]
                        mov              qword ptr [rsp + 4320], rax
                        mov              rax, qword ptr [rsp + 4344]
                        mov              qword ptr [rsp + 4328], rax;         jmp   n227_unop_α
.Lx704_0:               lea              rdi, [rsp + 4336]
                        lea              rsi, [rsp + 4336]
                        lea              rdx, [rsp + 4320]
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
n227_unop_α:            mov              rdi, qword ptr [rsp + 4320]
                        mov              rsi, qword ptr [rsp + 4328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4304], rax
                        mov              qword ptr [rsp + 4312], rdx;         jmp   n228_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_integer_α:     mov              qword ptr [rsp + 4368], 3            # result
                        mov              rax, qword ptr [rip + .Lx706_0]
                        mov              qword ptr [rsp + 4376], rax;         jmp   n229_coerce_numeric_α
.Lx706_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n229_coerce_numeric_α:  mov              eax, dword ptr [rsp + 4304]
                        cmp              eax, 5;                              je    .Lx708_1
                        cmp              eax, 3;                              jne   .Lx708_0
                        mov              eax, dword ptr [rsp + 4368]
                        cmp              eax, 3;                              jne   .Lx708_0
.Lx708_1:               mov              rax, qword ptr [rsp + 4304]
                        mov              qword ptr [rsp + 4288], rax
                        mov              rax, qword ptr [rsp + 4312]
                        mov              qword ptr [rsp + 4296], rax;         jmp   n230_binop_α
.Lx708_0:               lea              rdi, [rsp + 4304]
                        lea              rsi, [rsp + 4368]
                        lea              rdx, [rsp + 4288]
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
n230_binop_α:           mov              eax, dword ptr [rsp + 4288]
                        cmp              eax, 3;                              jne   .Lx709_0
                        mov              rax, qword ptr [rsp + 4296]
                        mov              rcx, 3
                        sub              rax, rcx
                        mov              qword ptr [rsp + 4272], 3
                        mov              qword ptr [rsp + 4280], rax;         jmp   n231_lit_integer_α
.Lx709_0:               mov              rdi, qword ptr [rsp + 4288]
                        mov              rsi, qword ptr [rsp + 4296]
                        mov              rdx, qword ptr [rsp + 4368]
                        mov              rcx, qword ptr [rsp + 4376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n241_lit_string_α
                        mov              qword ptr [rsp + 4272], rax
                        mov              qword ptr [rsp + 4280], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n231_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_integer_α:     mov              qword ptr [rsp + 4384], 3            # result
                        mov              rax, qword ptr [rip + .Lx710_0]
                        mov              qword ptr [rsp + 4392], rax;         jmp   n232_to_α
.Lx710_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n232_to_α:              mov              rdi, qword ptr [rsp + 4272]
                        mov              rsi, qword ptr [rsp + 4280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4272], 3
                        mov              qword ptr [rsp + 4280], rax
                        mov              rdi, qword ptr [rsp + 4384]
                        mov              rsi, qword ptr [rsp + 4392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4384], 3
                        mov              qword ptr [rsp + 4392], rax
                        mov              rax, qword ptr [rsp + 4280]
                        mov              qword ptr [rsp + 4256], rax
.Lx712_0:               mov              rax, qword ptr [rsp + 4256]
                        mov              rcx, qword ptr [rsp + 4392]
                        cmp              rax, rcx;                            jg    n241_lit_string_α
                        mov              qword ptr [rsp + 4240], 3
                        mov              qword ptr [rsp + 4248], rax;         jmp   n233_assign_α
n232_to_β:              inc              qword ptr [rsp + 4256];              jmp   .Lx712_0
#-----------------------------------------------------------------------------------------------------------------------
n233_assign_α:          mov              rax, qword ptr [rsp + 4240]
                        mov              rdx, qword ptr [rsp + 4248]
                        mov              qword ptr [rsp + 10512], rax
                        mov              qword ptr [rsp + 10520], rdx;        jmp   n234_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n234_bound_α:           mov              qword ptr [rsp + 4400], rsp;         jmp   n235_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n235_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 10496]
                        mov              qword ptr [rsp + 4448], rax
                        mov              qword ptr [rsp + 4456], rdx;         jmp   n236_var_α
#-----------------------------------------------------------------------------------------------------------------------
n236_var_α:             mov              rax, qword ptr [rsp + 10512]
                        mov              qword ptr [rsp + 4464], rax
                        mov              rax, qword ptr [rsp + 10520]
                        mov              qword ptr [rsp + 4472], rax;         jmp   n237_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n237_subscript_α:       mov              rdi, qword ptr [rsp + 4448]
                        mov              rsi, qword ptr [rsp + 4456]
                        mov              rdx, qword ptr [rsp + 4464]
                        mov              rcx, qword ptr [rsp + 4472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n240_unmark_α
                        mov              qword ptr [rsp + 4480], rax
                        mov              qword ptr [rsp + 4488], rdx;         jmp   n238_var_α
#-----------------------------------------------------------------------------------------------------------------------
n238_var_α:             mov              rax, qword ptr [rsp + 10512]
                        mov              qword ptr [rsp + 4512], rax
                        mov              rax, qword ptr [rsp + 10520]
                        mov              qword ptr [rsp + 4520], rax;         jmp   n239_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n239_assign_var_α:      mov              rdi, qword ptr [rsp + 4480]
                        mov              rsi, qword ptr [rsp + 4488]
                        mov              rdx, qword ptr [rsp + 4512]
                        mov              rcx, qword ptr [rsp + 4520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n240_unmark_α
                        mov              qword ptr [rsp + 4496], rax
                        mov              qword ptr [rsp + 4504], rdx;         jmp   n240_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n240_unmark_α:          mov              rsp, qword ptr [rsp + 4400];         jmp   n232_to_β
#-----------------------------------------------------------------------------------------------------------------------
n241_lit_string_α:      mov              qword ptr [rsp + 4208], 2            # result
                        mov              dword ptr [rsp + 4212], 1
                        mov              rax, qword ptr [rip + .Lx726_0]
                        mov              qword ptr [rsp + 4216], rax;         jmp   n242_var_α
.Lx726_0:               .quad            .Lx726_0_s
.Lx726_0_s:             .string          "O"
#-----------------------------------------------------------------------------------------------------------------------
n242_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 4224], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 4232], rax;         jmp   n243_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n243_call_proc_staged_α:
                        lea              rsi, [rsp + 4208]
                        lea              rdx, [rsp + 4224]
                        call             proc_limage_dcα;                     jmp   .Lx730_2
.Lx730_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx730_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 4144], rax
                        mov              qword ptr [rsp + 4152], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4144]
                        mov              rdx, qword ptr [rsp + 4152]
.Lx730_29:              mov              qword ptr [rsp + 4144], rax
                        mov              qword ptr [rsp + 4152], rdx
                        cmp              eax, 104;                            je    n244_lit_integer_α
                                                                              jmp   n244_lit_integer_α
n243_call_proc_staged_β:
                                                                              jmp   n244_lit_integer_α
.Lx730_0:               .quad            .Lx730_0_s
.Lx730_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_integer_α:     mov              qword ptr [rsp + 4128], 3            # result
                        mov              rax, qword ptr [rip + .Lx731_0]
                        mov              qword ptr [rsp + 4136], rax;         jmp   n245_make_list_α
.Lx731_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n245_make_list_α:       mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 4112], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 4120], rax
                        lea              rdi, [rsp + 4112]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4096], rax
                        mov              qword ptr [rsp + 4104], rdx;         jmp   n246_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n246_assign_α:          mov              rax, qword ptr [rsp + 4096]
                        mov              rdx, qword ptr [rsp + 4104]
                        mov              qword ptr [rsp + 10496], rax
                        mov              qword ptr [rsp + 10504], rdx;        jmp   n247_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_string_α:      mov              qword ptr [rsp + 4032], 2            # result
                        mov              dword ptr [rsp + 4036], 1
                        mov              rax, qword ptr [rip + .Lx735_0]
                        mov              qword ptr [rsp + 4040], rax;         jmp   n248_var_ref_α
.Lx735_0:               .quad            .Lx735_0_s
.Lx735_0_s:             .string          "\t"
#-----------------------------------------------------------------------------------------------------------------------
n248_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 10496]
                        mov              qword ptr [rsp + 4064], rax
                        mov              qword ptr [rsp + 4072], rdx;         jmp   n249_random_α
#-----------------------------------------------------------------------------------------------------------------------
n249_random_α:          mov              rdi, qword ptr [rsp + 4064]
                        mov              rsi, qword ptr [rsp + 4072]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n252_var_ref_α
                        mov              qword ptr [rsp + 4048], rax
                        mov              qword ptr [rsp + 4056], rdx;         jmp   n250_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n250_deref_α:           mov              rdi, qword ptr [rsp + 4048]
                        mov              rsi, qword ptr [rsp + 4056]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n252_var_ref_α
                        mov              qword ptr [rsp + 4080], rax
                        mov              qword ptr [rsp + 4088], rdx;         jmp   n251_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n251_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 4000], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 4008], rax
                        mov              rax, qword ptr [rsp + 4032]
                        mov              qword ptr [rsp + 3984], rax
                        mov              rax, qword ptr [rsp + 4040]
                        mov              qword ptr [rsp + 3992], rax
                        .section         .rodata
.Lrkfn741:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn741]
                        lea              rsi, [rsp + 3984]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3968], rax
                        mov              qword ptr [rsp + 3976], rdx
                        cmp              eax, 104;                            je    n252_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n252_var_ref_α
n251_call_builtin_icon_β:
                                                                              jmp   n252_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n252_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 10496]
                        mov              qword ptr [rsp + 3920], rax
                        mov              qword ptr [rsp + 3928], rdx;         jmp   n253_random_α
#-----------------------------------------------------------------------------------------------------------------------
n253_random_α:          mov              rdi, qword ptr [rsp + 3920]
                        mov              rsi, qword ptr [rsp + 3928]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n256_lit_string_α
                        mov              qword ptr [rsp + 3904], rax
                        mov              qword ptr [rsp + 3912], rdx;         jmp   n254_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n254_lit_integer_α:     mov              qword ptr [rsp + 3952], 3            # result
                        mov              rax, qword ptr [rip + .Lx745_0]
                        mov              qword ptr [rsp + 3960], rax;         jmp   n255_assign_var_α
.Lx745_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n255_assign_var_α:      mov              rdi, qword ptr [rsp + 3904]
                        mov              rsi, qword ptr [rsp + 3912]
                        mov              rdx, qword ptr [rsp + 3952]
                        mov              rcx, qword ptr [rsp + 3960]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n256_lit_string_α
                        mov              qword ptr [rsp + 3936], rax
                        mov              qword ptr [rsp + 3944], rdx;         jmp   n256_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n256_lit_string_α:      mov              qword ptr [rsp + 3872], 2            # result
                        mov              dword ptr [rsp + 3876], 1
                        mov              rax, qword ptr [rip + .Lx747_0]
                        mov              qword ptr [rsp + 3880], rax;         jmp   n257_var_α
.Lx747_0:               .quad            .Lx747_0_s
.Lx747_0_s:             .string          "P"
#-----------------------------------------------------------------------------------------------------------------------
n257_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 3888], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 3896], rax;         jmp   n258_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n258_call_proc_staged_α:
                        lea              rsi, [rsp + 3872]
                        lea              rdx, [rsp + 3888]
                        call             proc_limage_dcα;                     jmp   .Lx751_2
.Lx751_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx751_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 3808], rax
                        mov              qword ptr [rsp + 3816], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3808]
                        mov              rdx, qword ptr [rsp + 3816]
.Lx751_29:              mov              qword ptr [rsp + 3808], rax
                        mov              qword ptr [rsp + 3816], rdx
                        cmp              eax, 104;                            je    n259_disjunction_α
                                                                              jmp   n259_disjunction_α
n258_call_proc_staged_β:
                                                                              jmp   n259_disjunction_α
.Lx751_0:               .quad            .Lx751_0_s
.Lx751_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n259_disjunction_α:     mov              qword ptr [rsp + 3696], 0
                        mov              qword ptr [rsp + 3704], 0
                        mov              dword ptr [rsp + 3712], 0;           jmp   n407_var_ref_α
n259_disjunction_as:    mov              eax, dword ptr [rsp + 3712]
                        cmp              eax, 0;                              jne   .Lx753_0
                        mov              rax, qword ptr [rsp + 3776]
                        mov              qword ptr [rsp + 3696], rax
                        mov              rax, qword ptr [rsp + 3784]
                        mov              qword ptr [rsp + 3704], rax;         jmp   n260_call_builtin_icon_α
.Lx753_0:               cmp              eax, 1;                              jne   .Lx753_1
                        mov              rax, qword ptr [rsp + 3792]
                        mov              qword ptr [rsp + 3696], rax
                        mov              rax, qword ptr [rsp + 3800]
                        mov              qword ptr [rsp + 3704], rax;         jmp   n260_call_builtin_icon_α
.Lx753_1:                                                                     jmp   n260_call_builtin_icon_α
n259_disjunction_β:     mov              eax, dword ptr [rsp + 3712]
                        cmp              eax, 0;                              je    n259_disjunction_af
                                                                              jmp   n259_disjunction_af
n259_disjunction_af:    add              dword ptr [rsp + 3712], 1
                        mov              eax, dword ptr [rsp + 3712]
                        cmp              eax, 1;                              je    n406_lit_string_α
                                                                              jmp   n261_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n260_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3696]
                        mov              qword ptr [rsp + 3664], rax
                        mov              rax, qword ptr [rsp + 3704]
                        mov              qword ptr [rsp + 3672], rax
                        .section         .rodata
.Lrkfn755:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn755]
                        lea              rsi, [rsp + 3664]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3648], rax
                        mov              qword ptr [rsp + 3656], rdx
                        cmp              eax, 104;                            je    n259_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n261_disjunction_α
n260_call_builtin_icon_β:
                                                                              jmp   n259_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n261_disjunction_α:     mov              qword ptr [rsp + 3536], 0
                        mov              qword ptr [rsp + 3544], 0
                        mov              dword ptr [rsp + 3552], 0;           jmp   n402_var_ref_α
n261_disjunction_as:    mov              eax, dword ptr [rsp + 3552]
                        cmp              eax, 0;                              jne   .Lx757_0
                        mov              rax, qword ptr [rsp + 3616]
                        mov              qword ptr [rsp + 3536], rax
                        mov              rax, qword ptr [rsp + 3624]
                        mov              qword ptr [rsp + 3544], rax;         jmp   n262_call_builtin_icon_α
.Lx757_0:               cmp              eax, 1;                              jne   .Lx757_1
                        mov              rax, qword ptr [rsp + 3632]
                        mov              qword ptr [rsp + 3536], rax
                        mov              rax, qword ptr [rsp + 3640]
                        mov              qword ptr [rsp + 3544], rax;         jmp   n262_call_builtin_icon_α
.Lx757_1:                                                                     jmp   n262_call_builtin_icon_α
n261_disjunction_β:     mov              eax, dword ptr [rsp + 3552]
                        cmp              eax, 0;                              je    n261_disjunction_af
                                                                              jmp   n261_disjunction_af
n261_disjunction_af:    add              dword ptr [rsp + 3552], 1
                        mov              eax, dword ptr [rsp + 3552]
                        cmp              eax, 1;                              je    n401_lit_string_α
                                                                              jmp   n263_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n262_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3536]
                        mov              qword ptr [rsp + 3504], rax
                        mov              rax, qword ptr [rsp + 3544]
                        mov              qword ptr [rsp + 3512], rax
                        .section         .rodata
.Lrkfn759:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn759]
                        lea              rsi, [rsp + 3504]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3488], rax
                        mov              qword ptr [rsp + 3496], rdx
                        cmp              eax, 104;                            je    n261_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n263_disjunction_α
n262_call_builtin_icon_β:
                                                                              jmp   n261_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n263_disjunction_α:     mov              qword ptr [rsp + 3376], 0
                        mov              qword ptr [rsp + 3384], 0
                        mov              dword ptr [rsp + 3392], 0;           jmp   n397_var_ref_α
n263_disjunction_as:    mov              eax, dword ptr [rsp + 3392]
                        cmp              eax, 0;                              jne   .Lx761_0
                        mov              rax, qword ptr [rsp + 3456]
                        mov              qword ptr [rsp + 3376], rax
                        mov              rax, qword ptr [rsp + 3464]
                        mov              qword ptr [rsp + 3384], rax;         jmp   n264_call_builtin_icon_α
.Lx761_0:               cmp              eax, 1;                              jne   .Lx761_1
                        mov              rax, qword ptr [rsp + 3472]
                        mov              qword ptr [rsp + 3376], rax
                        mov              rax, qword ptr [rsp + 3480]
                        mov              qword ptr [rsp + 3384], rax;         jmp   n264_call_builtin_icon_α
.Lx761_1:                                                                     jmp   n264_call_builtin_icon_α
n263_disjunction_β:     mov              eax, dword ptr [rsp + 3392]
                        cmp              eax, 0;                              je    n263_disjunction_af
                                                                              jmp   n263_disjunction_af
n263_disjunction_af:    add              dword ptr [rsp + 3392], 1
                        mov              eax, dword ptr [rsp + 3392]
                        cmp              eax, 1;                              je    n396_lit_string_α
                                                                              jmp   n265_var_α
#-----------------------------------------------------------------------------------------------------------------------
n264_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3376]
                        mov              qword ptr [rsp + 3344], rax
                        mov              rax, qword ptr [rsp + 3384]
                        mov              qword ptr [rsp + 3352], rax
                        .section         .rodata
.Lrkfn763:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn763]
                        lea              rsi, [rsp + 3344]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3328], rax
                        mov              qword ptr [rsp + 3336], rdx
                        cmp              eax, 104;                            je    n263_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n265_var_α
n264_call_builtin_icon_β:
                                                                              jmp   n263_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n265_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 3312], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 3320], rax;         jmp   n266_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n266_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3312]
                        mov              qword ptr [rsp + 3280], rax
                        mov              rax, qword ptr [rsp + 3320]
                        mov              qword ptr [rsp + 3288], rax
                        .section         .rodata
.Lrkfn767:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn767]
                        lea              rsi, [rsp + 3280]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3264], rax
                        mov              qword ptr [rsp + 3272], rdx
                        cmp              eax, 104;                            je    n267_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n267_disjunction_α
n266_call_builtin_icon_β:
                                                                              jmp   n267_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n267_disjunction_α:     mov              qword ptr [rsp + 3152], 0
                        mov              qword ptr [rsp + 3160], 0
                        mov              dword ptr [rsp + 3168], 0;           jmp   n394_var_α
n267_disjunction_as:    mov              eax, dword ptr [rsp + 3168]
                        cmp              eax, 0;                              jne   .Lx769_0
                        mov              rax, qword ptr [rsp + 3184]
                        mov              qword ptr [rsp + 3152], rax
                        mov              rax, qword ptr [rsp + 3192]
                        mov              qword ptr [rsp + 3160], rax;         jmp   n268_call_builtin_icon_α
.Lx769_0:               cmp              eax, 1;                              jne   .Lx769_1
                        mov              rax, qword ptr [rsp + 3248]
                        mov              qword ptr [rsp + 3152], rax
                        mov              rax, qword ptr [rsp + 3256]
                        mov              qword ptr [rsp + 3160], rax;         jmp   n268_call_builtin_icon_α
.Lx769_1:                                                                     jmp   n268_call_builtin_icon_α
n267_disjunction_β:     mov              eax, dword ptr [rsp + 3168]
                        cmp              eax, 0;                              je    n267_disjunction_af
                                                                              jmp   n267_disjunction_af
n267_disjunction_af:    add              dword ptr [rsp + 3168], 1
                        mov              eax, dword ptr [rsp + 3168]
                        cmp              eax, 1;                              je    n393_lit_string_α
                                                                              jmp   n269_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n268_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3152]
                        mov              qword ptr [rsp + 3120], rax
                        mov              rax, qword ptr [rsp + 3160]
                        mov              qword ptr [rsp + 3128], rax
                        .section         .rodata
.Lrkfn771:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn771]
                        lea              rsi, [rsp + 3120]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3104], rax
                        mov              qword ptr [rsp + 3112], rdx
                        cmp              eax, 104;                            je    n267_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n269_disjunction_α
n268_call_builtin_icon_β:
                                                                              jmp   n267_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n269_disjunction_α:     mov              qword ptr [rsp + 2992], 0
                        mov              qword ptr [rsp + 3000], 0
                        mov              dword ptr [rsp + 3008], 0;           jmp   n391_var_α
n269_disjunction_as:    mov              eax, dword ptr [rsp + 3008]
                        cmp              eax, 0;                              jne   .Lx773_0
                        mov              rax, qword ptr [rsp + 3024]
                        mov              qword ptr [rsp + 2992], rax
                        mov              rax, qword ptr [rsp + 3032]
                        mov              qword ptr [rsp + 3000], rax;         jmp   n270_call_builtin_icon_α
.Lx773_0:               cmp              eax, 1;                              jne   .Lx773_1
                        mov              rax, qword ptr [rsp + 3088]
                        mov              qword ptr [rsp + 2992], rax
                        mov              rax, qword ptr [rsp + 3096]
                        mov              qword ptr [rsp + 3000], rax;         jmp   n270_call_builtin_icon_α
.Lx773_1:                                                                     jmp   n270_call_builtin_icon_α
n269_disjunction_β:     mov              eax, dword ptr [rsp + 3008]
                        cmp              eax, 0;                              je    n269_disjunction_af
                                                                              jmp   n269_disjunction_af
n269_disjunction_af:    add              dword ptr [rsp + 3008], 1
                        mov              eax, dword ptr [rsp + 3008]
                        cmp              eax, 1;                              je    n390_lit_string_α
                                                                              jmp   n271_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n270_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 2960], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 2968], rax
                        .section         .rodata
.Lrkfn775:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn775]
                        lea              rsi, [rsp + 2960]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2944], rax
                        mov              qword ptr [rsp + 2952], rdx
                        cmp              eax, 104;                            je    n269_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n271_disjunction_α
n270_call_builtin_icon_β:
                                                                              jmp   n269_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n271_disjunction_α:     mov              qword ptr [rsp + 2832], 0
                        mov              qword ptr [rsp + 2840], 0
                        mov              dword ptr [rsp + 2848], 0;           jmp   n388_var_α
n271_disjunction_as:    mov              eax, dword ptr [rsp + 2848]
                        cmp              eax, 0;                              jne   .Lx777_0
                        mov              rax, qword ptr [rsp + 2864]
                        mov              qword ptr [rsp + 2832], rax
                        mov              rax, qword ptr [rsp + 2872]
                        mov              qword ptr [rsp + 2840], rax;         jmp   n272_call_builtin_icon_α
.Lx777_0:               cmp              eax, 1;                              jne   .Lx777_1
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 2832], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 2840], rax;         jmp   n272_call_builtin_icon_α
.Lx777_1:                                                                     jmp   n272_call_builtin_icon_α
n271_disjunction_β:     mov              eax, dword ptr [rsp + 2848]
                        cmp              eax, 0;                              je    n271_disjunction_af
                                                                              jmp   n271_disjunction_af
n271_disjunction_af:    add              dword ptr [rsp + 2848], 1
                        mov              eax, dword ptr [rsp + 2848]
                        cmp              eax, 1;                              je    n387_lit_string_α
                                                                              jmp   n273_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n272_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2832]
                        mov              qword ptr [rsp + 2800], rax
                        mov              rax, qword ptr [rsp + 2840]
                        mov              qword ptr [rsp + 2808], rax
                        .section         .rodata
.Lrkfn779:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn779]
                        lea              rsi, [rsp + 2800]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx
                        cmp              eax, 104;                            je    n271_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n273_lit_integer_α
n272_call_builtin_icon_β:
                                                                              jmp   n271_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n273_lit_integer_α:     mov              qword ptr [rsp + 2640], 3            # result
                        mov              rax, qword ptr [rip + .Lx780_0]
                        mov              qword ptr [rsp + 2648], rax;         jmp   n274_lit_integer_α
.Lx780_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_integer_α:     mov              qword ptr [rsp + 2656], 3            # result
                        mov              rax, qword ptr [rip + .Lx781_0]
                        mov              qword ptr [rsp + 2664], rax;         jmp   n275_lit_integer_α
.Lx781_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n275_lit_integer_α:     mov              qword ptr [rsp + 2672], 3            # result
                        mov              rax, qword ptr [rip + .Lx782_0]
                        mov              qword ptr [rsp + 2680], rax;         jmp   n276_lit_integer_α
.Lx782_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n276_lit_integer_α:     mov              qword ptr [rsp + 2688], 3            # result
                        mov              rax, qword ptr [rip + .Lx783_0]
                        mov              qword ptr [rsp + 2696], rax;         jmp   n277_lit_integer_α
.Lx783_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n277_lit_integer_α:     mov              qword ptr [rsp + 2704], 3            # result
                        mov              rax, qword ptr [rip + .Lx784_0]
                        mov              qword ptr [rsp + 2712], rax;         jmp   n278_lit_integer_α
.Lx784_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_integer_α:     mov              qword ptr [rsp + 2720], 3            # result
                        mov              rax, qword ptr [rip + .Lx785_0]
                        mov              qword ptr [rsp + 2728], rax;         jmp   n279_lit_integer_α
.Lx785_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_integer_α:     mov              qword ptr [rsp + 2736], 3            # result
                        mov              rax, qword ptr [rip + .Lx786_0]
                        mov              qword ptr [rsp + 2744], rax;         jmp   n280_lit_integer_α
.Lx786_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n280_lit_integer_α:     mov              qword ptr [rsp + 2752], 3            # result
                        mov              rax, qword ptr [rip + .Lx787_0]
                        mov              qword ptr [rsp + 2760], rax;         jmp   n281_lit_integer_α
.Lx787_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n281_lit_integer_α:     mov              qword ptr [rsp + 2768], 3            # result
                        mov              rax, qword ptr [rip + .Lx788_0]
                        mov              qword ptr [rsp + 2776], rax;         jmp   n282_make_list_α
.Lx788_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n282_make_list_α:       mov              rax, qword ptr [rsp + 2640]
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
                        mov              rax, qword ptr [rsp + 2752]
                        mov              qword ptr [rsp + 2608], rax
                        mov              rax, qword ptr [rsp + 2760]
                        mov              qword ptr [rsp + 2616], rax
                        mov              rax, qword ptr [rsp + 2768]
                        mov              qword ptr [rsp + 2624], rax
                        mov              rax, qword ptr [rsp + 2776]
                        mov              qword ptr [rsp + 2632], rax
                        lea              rdi, [rsp + 2496]
                        mov              esi, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2480], rax
                        mov              qword ptr [rsp + 2488], rdx;         jmp   n283_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n283_assign_α:          mov              rax, qword ptr [rsp + 2480]
                        mov              rdx, qword ptr [rsp + 2488]
                        mov              qword ptr [rsp + 10496], rax
                        mov              qword ptr [rsp + 10504], rdx;        jmp   n284_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n284_lit_string_α:      mov              qword ptr [rsp + 2448], 2            # result
                        mov              dword ptr [rsp + 2452], 1
                        mov              rax, qword ptr [rip + .Lx792_0]
                        mov              qword ptr [rsp + 2456], rax;         jmp   n285_var_α
.Lx792_0:               .quad            .Lx792_0_s
.Lx792_0_s:             .string          "p"
#-----------------------------------------------------------------------------------------------------------------------
n285_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 2472], rax;         jmp   n286_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n286_call_proc_staged_α:
                        lea              rsi, [rsp + 2448]
                        lea              rdx, [rsp + 2464]
                        call             proc_limage_dcα;                     jmp   .Lx796_2
.Lx796_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx796_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2384]
                        mov              rdx, qword ptr [rsp + 2392]
.Lx796_29:              mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx
                        cmp              eax, 104;                            je    n287_lit_string_α
                                                                              jmp   n287_lit_string_α
n286_call_proc_staged_β:
                                                                              jmp   n287_lit_string_α
.Lx796_0:               .quad            .Lx796_0_s
.Lx796_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n287_lit_string_α:      mov              qword ptr [rsp + 2304], 2            # result
                        mov              dword ptr [rsp + 2308], 1
                        mov              rax, qword ptr [rip + .Lx797_0]
                        mov              qword ptr [rsp + 2312], rax;         jmp   n288_var_α
.Lx797_0:               .quad            .Lx797_0_s
.Lx797_0_s:             .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n288_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 2336], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 2344], rax;         jmp   n289_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n289_lit_integer_α:     mov              qword ptr [rsp + 2352], 3            # result
                        mov              rax, qword ptr [rip + .Lx800_0]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n290_lit_integer_α
.Lx800_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n290_lit_integer_α:     mov              qword ptr [rsp + 2368], 3            # result
                        mov              rax, qword ptr [rip + .Lx801_0]
                        mov              qword ptr [rsp + 2376], rax;         jmp   n291_subscript_α
.Lx801_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n291_subscript_α:       mov              rdi, qword ptr [rsp + 2336]
                        mov              rsi, qword ptr [rsp + 2344]
                        mov              rdx, qword ptr [rsp + 2352]
                        mov              rcx, qword ptr [rsp + 2360]
                        mov              r8, qword ptr [rsp + 2368]
                        mov              r9, qword ptr [rsp + 2376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n293_lit_string_α
                        mov              qword ptr [rsp + 2320], rax
                        mov              qword ptr [rsp + 2328], rdx;         jmp   n292_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n292_call_proc_staged_α:
                        lea              rsi, [rsp + 2304]
                        lea              rdx, [rsp + 2320]
                        call             proc_limage_dcα;                     jmp   .Lx804_2
.Lx804_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx804_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2240]
                        mov              rdx, qword ptr [rsp + 2248]
.Lx804_29:              mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx
                        cmp              eax, 104;                            je    n293_lit_string_α
                                                                              jmp   n293_lit_string_α
n292_call_proc_staged_β:
                                                                              jmp   n293_lit_string_α
.Lx804_0:               .quad            .Lx804_0_s
.Lx804_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_string_α:      mov              qword ptr [rsp + 2160], 2            # result
                        mov              dword ptr [rsp + 2164], 1
                        mov              rax, qword ptr [rip + .Lx805_0]
                        mov              qword ptr [rsp + 2168], rax;         jmp   n294_var_α
.Lx805_0:               .quad            .Lx805_0_s
.Lx805_0_s:             .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n294_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n295_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n295_lit_integer_α:     mov              qword ptr [rsp + 2208], 3            # result
                        mov              rax, qword ptr [rip + .Lx808_0]
                        mov              qword ptr [rsp + 2216], rax;         jmp   n296_lit_integer_α
.Lx808_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n296_lit_integer_α:     mov              qword ptr [rsp + 2224], 3            # result
                        mov              rax, qword ptr [rip + .Lx809_0]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n297_subscript_α
.Lx809_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n297_subscript_α:       mov              rdi, qword ptr [rsp + 2192]
                        mov              rsi, qword ptr [rsp + 2200]
                        mov              rdx, qword ptr [rsp + 2208]
                        mov              rcx, qword ptr [rsp + 2216]
                        mov              r8, qword ptr [rsp + 2224]
                        mov              r9, qword ptr [rsp + 2232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n299_lit_string_α
                        mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2184], rdx;         jmp   n298_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n298_call_proc_staged_α:
                        lea              rsi, [rsp + 2160]
                        lea              rdx, [rsp + 2176]
                        call             proc_limage_dcα;                     jmp   .Lx812_2
.Lx812_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx812_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2096]
                        mov              rdx, qword ptr [rsp + 2104]
.Lx812_29:              mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx
                        cmp              eax, 104;                            je    n299_lit_string_α
                                                                              jmp   n299_lit_string_α
n298_call_proc_staged_β:
                                                                              jmp   n299_lit_string_α
.Lx812_0:               .quad            .Lx812_0_s
.Lx812_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_string_α:      mov              qword ptr [rsp + 2016], 2            # result
                        mov              dword ptr [rsp + 2020], 1
                        mov              rax, qword ptr [rip + .Lx813_0]
                        mov              qword ptr [rsp + 2024], rax;         jmp   n300_var_α
.Lx813_0:               .quad            .Lx813_0_s
.Lx813_0_s:             .string          "s"
#-----------------------------------------------------------------------------------------------------------------------
n300_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n301_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n301_lit_integer_α:     mov              qword ptr [rsp + 2064], 3            # result
                        mov              rax, qword ptr [rip + .Lx816_0]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n302_lit_integer_α
.Lx816_0:               .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n302_lit_integer_α:     mov              qword ptr [rsp + 2080], 3            # result
                        mov              rax, qword ptr [rip + .Lx817_0]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n303_subscript_α
.Lx817_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n303_subscript_α:       mov              rdi, qword ptr [rsp + 2048]
                        mov              rsi, qword ptr [rsp + 2056]
                        mov              rdx, qword ptr [rsp + 2064]
                        mov              rcx, qword ptr [rsp + 2072]
                        mov              r8, qword ptr [rsp + 2080]
                        mov              r9, qword ptr [rsp + 2088]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n305_lit_string_α
                        mov              qword ptr [rsp + 2032], rax
                        mov              qword ptr [rsp + 2040], rdx;         jmp   n304_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n304_call_proc_staged_α:
                        lea              rsi, [rsp + 2016]
                        lea              rdx, [rsp + 2032]
                        call             proc_limage_dcα;                     jmp   .Lx820_2
.Lx820_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx820_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1952]
                        mov              rdx, qword ptr [rsp + 1960]
.Lx820_29:              mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx
                        cmp              eax, 104;                            je    n305_lit_string_α
                                                                              jmp   n305_lit_string_α
n304_call_proc_staged_β:
                                                                              jmp   n305_lit_string_α
.Lx820_0:               .quad            .Lx820_0_s
.Lx820_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_string_α:      mov              qword ptr [rsp + 1872], 2            # result
                        mov              dword ptr [rsp + 1876], 1
                        mov              rax, qword ptr [rip + .Lx821_0]
                        mov              qword ptr [rsp + 1880], rax;         jmp   n306_var_α
.Lx821_0:               .quad            .Lx821_0_s
.Lx821_0_s:             .string          "t"
#-----------------------------------------------------------------------------------------------------------------------
n306_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 1912], rax;         jmp   n307_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n307_lit_integer_α:     mov              qword ptr [rsp + 1920], 3            # result
                        mov              rax, qword ptr [rip + .Lx824_0]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n308_lit_integer_α
.Lx824_0:               .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_integer_α:     mov              qword ptr [rsp + 1936], 3            # result
                        mov              rax, qword ptr [rip + .Lx825_0]
                        mov              qword ptr [rsp + 1944], rax;         jmp   n309_subscript_α
.Lx825_0:               .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n309_subscript_α:       mov              rdi, qword ptr [rsp + 1904]
                        mov              rsi, qword ptr [rsp + 1912]
                        mov              rdx, qword ptr [rsp + 1920]
                        mov              rcx, qword ptr [rsp + 1928]
                        mov              r8, qword ptr [rsp + 1936]
                        mov              r9, qword ptr [rsp + 1944]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n311_disjunction_α
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx;         jmp   n310_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n310_call_proc_staged_α:
                        lea              rsi, [rsp + 1872]
                        lea              rdx, [rsp + 1888]
                        call             proc_limage_dcα;                     jmp   .Lx828_2
.Lx828_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx828_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1808]
                        mov              rdx, qword ptr [rsp + 1816]
.Lx828_29:              mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx
                        cmp              eax, 104;                            je    n311_disjunction_α
                                                                              jmp   n311_disjunction_α
n310_call_proc_staged_β:
                                                                              jmp   n311_disjunction_α
.Lx828_0:               .quad            .Lx828_0_s
.Lx828_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n311_disjunction_α:     mov              qword ptr [rsp + 1552], 0
                        mov              qword ptr [rsp + 1560], 0
                        mov              dword ptr [rsp + 1568], 0;           jmp   n380_lit_string_α
n311_disjunction_as:    mov              eax, dword ptr [rsp + 1568]
                        cmp              eax, 0;                              jne   .Lx830_0
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n312_disjunction_α
.Lx830_0:               cmp              eax, 1;                              jne   .Lx830_1
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n312_disjunction_α
.Lx830_1:                                                                     jmp   n312_disjunction_α
n311_disjunction_β:     mov              eax, dword ptr [rsp + 1568]
                        cmp              eax, 0;                              je    n311_disjunction_af
                                                                              jmp   n311_disjunction_af
n311_disjunction_af:    add              dword ptr [rsp + 1568], 1
                        mov              eax, dword ptr [rsp + 1568]
                        cmp              eax, 1;                              je    n378_lit_string_α
                                                                              jmp   n312_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n312_disjunction_α:     mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              dword ptr [rsp + 1312], 0;           jmp   n371_lit_string_α
n312_disjunction_as:    mov              eax, dword ptr [rsp + 1312]
                        cmp              eax, 0;                              jne   .Lx832_0
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n313_call_builtin_icon_α
.Lx832_0:               cmp              eax, 1;                              jne   .Lx832_1
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n313_call_builtin_icon_α
.Lx832_1:                                                                     jmp   n313_call_builtin_icon_α
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
.Lrkfn834:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn834]
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
n314_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n315_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n315_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1224], rax
                        .section         .rodata
.Lrkfn838:              .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn838]
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
                        mov              qword ptr [rsp + 10480], rax
                        mov              qword ptr [rsp + 10488], rdx;        jmp   n317_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n317_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 10496]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n318_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n318_iterate_α:         mov              qword ptr [rsp + 1104], 0
.Lx843_0:               mov              rdi, qword ptr [rsp + 1120]
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
n318_iterate_β:         inc              qword ptr [rsp + 1104];              jmp   .Lx843_0
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
                        mov              rax, qword ptr [rip + .Lx845_0]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n321_binop_α
.Lx845_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n321_binop_α:           mov              eax, dword ptr [rsp + 1168]
                        cmp              eax, 3;                              jne   .Lx846_0
                        mov              rax, qword ptr [rsp + 1176]
                        mov              rcx, 10
                        add              rax, rcx
                        mov              qword ptr [rsp + 1152], 3
                        mov              qword ptr [rsp + 1160], rax;         jmp   n322_assign_var_α
.Lx846_0:               mov              rdi, qword ptr [rsp + 1168]
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
                        lea              rdx, [rsp + 10480]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n324_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n324_iterate_α:         mov              qword ptr [rsp + 992], 0
.Lx851_0:               mov              rdi, qword ptr [rsp + 1008]
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
n324_iterate_β:         inc              qword ptr [rsp + 992];               jmp   .Lx851_0
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
                        mov              rax, qword ptr [rip + .Lx853_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n327_binop_α
.Lx853_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n327_binop_α:           mov              eax, dword ptr [rsp + 1056]
                        cmp              eax, 3;                              jne   .Lx854_0
                        mov              rax, qword ptr [rsp + 1064]
                        mov              rcx, 20
                        add              rax, rcx
                        mov              qword ptr [rsp + 1040], 3
                        mov              qword ptr [rsp + 1048], rax;         jmp   n328_assign_var_α
.Lx854_0:               mov              rdi, qword ptr [rsp + 1056]
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
                        mov              rax, qword ptr [rip + .Lx856_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n330_var_α
.Lx856_0:               .quad            .Lx856_0_s
.Lx856_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n330_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 968], rax;          jmp   n331_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n331_call_proc_staged_α:
                        lea              rsi, [rsp + 944]
                        lea              rdx, [rsp + 960]
                        call             proc_limage_dcα;                     jmp   .Lx860_2
.Lx860_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx860_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 880]
                        mov              rdx, qword ptr [rsp + 888]
.Lx860_29:              mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              eax, 104;                            je    n332_lit_string_α
                                                                              jmp   n332_lit_string_α
n331_call_proc_staged_β:
                                                                              jmp   n332_lit_string_α
.Lx860_0:               .quad            .Lx860_0_s
.Lx860_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n332_lit_string_α:      mov              qword ptr [rsp + 848], 2             # result
                        mov              dword ptr [rsp + 852], 1
                        mov              rax, qword ptr [rip + .Lx861_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n333_var_α
.Lx861_0:               .quad            .Lx861_0_s
.Lx861_0_s:             .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n333_var_α:             mov              rax, qword ptr [rsp + 10480]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 10488]
                        mov              qword ptr [rsp + 872], rax;          jmp   n334_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n334_call_proc_staged_α:
                        lea              rsi, [rsp + 848]
                        lea              rdx, [rsp + 864]
                        call             proc_limage_dcα;                     jmp   .Lx865_2
.Lx865_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx865_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
.Lx865_29:              mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              eax, 104;                            je    n335_var_α
                                                                              jmp   n335_var_α
n334_call_proc_staged_β:
                                                                              jmp   n335_var_α
.Lx865_0:               .quad            .Lx865_0_s
.Lx865_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n335_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 760], rax;          jmp   n336_var_α
#-----------------------------------------------------------------------------------------------------------------------
n336_var_α:             mov              rax, qword ptr [rsp + 10480]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 10488]
                        mov              qword ptr [rsp + 776], rax;          jmp   n337_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n337_binop_α:           mov              rdi, qword ptr [rsp + 10496]
                        mov              rsi, qword ptr [rsp + 10504]
                        mov              rdx, qword ptr [rsp + 10480]
                        mov              rcx, qword ptr [rsp + 10488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n338_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n338_assign_α:          mov              rax, qword ptr [rsp + 736]
                        mov              rdx, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 10464], rax
                        mov              qword ptr [rsp + 10472], rdx;        jmp   n339_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n339_lit_string_α:      mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 1
                        mov              rax, qword ptr [rip + .Lx872_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n340_var_α
.Lx872_0:               .quad            .Lx872_0_s
.Lx872_0_s:             .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n340_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 712], rax;          jmp   n341_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n341_call_proc_staged_α:
                        lea              rsi, [rsp + 688]
                        lea              rdx, [rsp + 704]
                        call             proc_limage_dcα;                     jmp   .Lx876_2
.Lx876_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx876_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
.Lx876_29:              mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              eax, 104;                            je    n342_var_ref_α
                                                                              jmp   n342_var_ref_α
n341_call_proc_staged_β:
                                                                              jmp   n342_var_ref_α
.Lx876_0:               .quad            .Lx876_0_s
.Lx876_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n342_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 10496]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n343_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n343_iterate_α:         mov              qword ptr [rsp + 528], 0
.Lx880_0:               mov              rdi, qword ptr [rsp + 544]
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
n343_iterate_β:         inc              qword ptr [rsp + 528];               jmp   .Lx880_0
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
                        mov              rax, qword ptr [rip + .Lx882_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n346_binop_α
.Lx882_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n346_binop_α:           mov              eax, dword ptr [rsp + 592]
                        cmp              eax, 3;                              jne   .Lx883_0
                        mov              rax, qword ptr [rsp + 600]
                        mov              rcx, 10
                        add              rax, rcx
                        mov              qword ptr [rsp + 576], 3
                        mov              qword ptr [rsp + 584], rax;          jmp   n347_assign_var_α
.Lx883_0:               mov              rdi, qword ptr [rsp + 592]
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
                        lea              rdx, [rsp + 10480]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n349_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n349_iterate_α:         mov              qword ptr [rsp + 416], 0
.Lx888_0:               mov              rdi, qword ptr [rsp + 432]
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
n349_iterate_β:         inc              qword ptr [rsp + 416];               jmp   .Lx888_0
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
                        mov              rax, qword ptr [rip + .Lx890_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n352_binop_α
.Lx890_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n352_binop_α:           mov              eax, dword ptr [rsp + 480]
                        cmp              eax, 3;                              jne   .Lx891_0
                        mov              rax, qword ptr [rsp + 488]
                        mov              rcx, 20
                        add              rax, rcx
                        mov              qword ptr [rsp + 464], 3
                        mov              qword ptr [rsp + 472], rax;          jmp   n353_assign_var_α
.Lx891_0:               mov              rdi, qword ptr [rsp + 480]
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
                        lea              rdx, [rsp + 10464]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n355_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n355_iterate_α:         mov              qword ptr [rsp + 304], 0
.Lx896_0:               mov              rdi, qword ptr [rsp + 320]
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
n355_iterate_β:         inc              qword ptr [rsp + 304];               jmp   .Lx896_0
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
                        mov              rax, qword ptr [rip + .Lx898_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n358_binop_α
.Lx898_0:               .quad            50
#-----------------------------------------------------------------------------------------------------------------------
n358_binop_α:           mov              eax, dword ptr [rsp + 368]
                        cmp              eax, 3;                              jne   .Lx899_0
                        mov              rax, qword ptr [rsp + 376]
                        mov              rcx, 50
                        add              rax, rcx
                        mov              qword ptr [rsp + 352], 3
                        mov              qword ptr [rsp + 360], rax;          jmp   n359_assign_var_α
.Lx899_0:               mov              rdi, qword ptr [rsp + 368]
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
                        mov              rax, qword ptr [rip + .Lx901_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n361_var_α
.Lx901_0:               .quad            .Lx901_0_s
.Lx901_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n361_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 280], rax;          jmp   n362_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n362_call_proc_staged_α:
                        lea              rsi, [rsp + 256]
                        lea              rdx, [rsp + 272]
                        call             proc_limage_dcα;                     jmp   .Lx905_2
.Lx905_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx905_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
.Lx905_29:              mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              eax, 104;                            je    n363_lit_string_α
                                                                              jmp   n363_lit_string_α
n362_call_proc_staged_β:
                                                                              jmp   n363_lit_string_α
.Lx905_0:               .quad            .Lx905_0_s
.Lx905_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n363_lit_string_α:      mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 1
                        mov              rax, qword ptr [rip + .Lx906_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n364_var_α
.Lx906_0:               .quad            .Lx906_0_s
.Lx906_0_s:             .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n364_var_α:             mov              rax, qword ptr [rsp + 10480]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 10488]
                        mov              qword ptr [rsp + 184], rax;          jmp   n365_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n365_call_proc_staged_α:
                        lea              rsi, [rsp + 160]
                        lea              rdx, [rsp + 176]
                        call             proc_limage_dcα;                     jmp   .Lx910_2
.Lx910_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx910_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
.Lx910_29:              mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 104;                            je    n366_lit_string_α
                                                                              jmp   n366_lit_string_α
n365_call_proc_staged_β:
                                                                              jmp   n366_lit_string_α
.Lx910_0:               .quad            .Lx910_0_s
.Lx910_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n366_lit_string_α:      mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 1
                        mov              rax, qword ptr [rip + .Lx911_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n367_var_α
.Lx911_0:               .quad            .Lx911_0_s
.Lx911_0_s:             .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n367_var_α:             mov              rax, qword ptr [rsp + 10464]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 10472]
                        mov              qword ptr [rsp + 88], rax;           jmp   n368_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n368_call_proc_staged_α:
                        lea              rsi, [rsp + 64]
                        lea              rdx, [rsp + 80]
                        call             proc_limage_dcα;                     jmp   .Lx915_2
.Lx915_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx915_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx915_29:              mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            je    main_ω
                                                                              jmp   main_γ
n368_call_proc_staged_β:
                                                                              jmp   main_ω
.Lx915_0:               .quad            .Lx915_0_s
.Lx915_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n369_lit_string_α:      mov              qword ptr [rsp + 1536], 2            # result
                        mov              dword ptr [rsp + 1540], 20
                        mov              rax, qword ptr [rip + .Lx916_0]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n370_call_builtin_icon_α
n369_lit_string_β:                                                            jmp   n312_disjunction_af
.Lx916_0:               .quad            .Lx916_0_s
.Lx916_0_s:             .string          "v. wraparound failed"
#-----------------------------------------------------------------------------------------------------------------------
n370_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1512], rax
                        .section         .rodata
.Lrkfn918:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn918]
                        lea              rsi, [rsp + 1504]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx
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
                        mov              rax, qword ptr [rip + .Lx919_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n372_var_α
n371_lit_string_β:                                                            jmp   n312_disjunction_af
.Lx919_0:               .quad            .Lx919_0_s
.Lx919_0_s:             .string          "v"
#-----------------------------------------------------------------------------------------------------------------------
n372_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n373_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n373_lit_integer_α:     mov              qword ptr [rsp + 1440], 3            # result
                        mov              rax, qword ptr [rip + .Lx922_0]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n374_lit_integer_α
.Lx922_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n374_lit_integer_α:     mov              qword ptr [rsp + 1456], 3            # result
                        mov              rax, qword ptr [rip + .Lx923_0]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n375_binop_α
.Lx923_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n375_binop_α:           mov              rdi, qword ptr [rsp + 1440]
                        mov              rsi, qword ptr [rsp + 1448]
                        mov              rdx, qword ptr [rsp + 1456]
                        mov              rcx, qword ptr [rsp + 1464]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n312_disjunction_af
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n376_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n376_subscript_α:       mov              rdi, qword ptr [rsp + 1424]
                        mov              rsi, qword ptr [rsp + 1432]
                        mov              rdx, qword ptr [rsp + 1440]
                        mov              rcx, qword ptr [rsp + 1448]
                        mov              r8, qword ptr [rsp + 1472]
                        mov              r9, qword ptr [rsp + 1480]
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
                        mov              qword ptr [rsp + 1416], rdx;         jmp   n377_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n377_call_proc_staged_α:
                        lea              rsi, [rsp + 1392]
                        lea              rdx, [rsp + 1408]
                        call             proc_limage_dcα;                     jmp   .Lx927_2
.Lx927_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx927_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1328]
                        mov              rdx, qword ptr [rsp + 1336]
.Lx927_29:              mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx
                        cmp              eax, 104;                            je    n312_disjunction_af
                                                                              jmp   n312_disjunction_as
n377_call_proc_staged_β:
                                                                              jmp   n312_disjunction_af
.Lx927_0:               .quad            .Lx927_0_s
.Lx927_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_string_α:      mov              qword ptr [rsp + 1792], 2            # result
                        mov              dword ptr [rsp + 1796], 20
                        mov              rax, qword ptr [rip + .Lx928_0]
                        mov              qword ptr [rsp + 1800], rax;         jmp   n379_call_builtin_icon_α
n378_lit_string_β:                                                            jmp   n311_disjunction_af
.Lx928_0:               .quad            .Lx928_0_s
.Lx928_0_s:             .string          "u. wraparound failed"
#-----------------------------------------------------------------------------------------------------------------------
n379_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1768], rax
                        .section         .rodata
.Lrkfn930:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn930]
                        lea              rsi, [rsp + 1760]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                        cmp              eax, 104;                            je    n311_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n311_disjunction_as
n379_call_builtin_icon_β:
                                                                              jmp   n311_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n380_lit_string_α:      mov              qword ptr [rsp + 1648], 2            # result
                        mov              dword ptr [rsp + 1652], 1
                        mov              rax, qword ptr [rip + .Lx931_0]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n381_var_α
n380_lit_string_β:                                                            jmp   n311_disjunction_af
.Lx931_0:               .quad            .Lx931_0_s
.Lx931_0_s:             .string          "u"
#-----------------------------------------------------------------------------------------------------------------------
n381_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n382_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n382_lit_integer_α:     mov              qword ptr [rsp + 1696], 3            # result
                        mov              rax, qword ptr [rip + .Lx934_0]
                        mov              qword ptr [rsp + 1704], rax;         jmp   n383_lit_integer_α
.Lx934_0:               .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n383_lit_integer_α:     mov              qword ptr [rsp + 1712], 3            # result
                        mov              rax, qword ptr [rip + .Lx935_0]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n384_binop_α
.Lx935_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n384_binop_α:           mov              rdi, qword ptr [rsp + 1696]
                        mov              rsi, qword ptr [rsp + 1704]
                        mov              rdx, qword ptr [rsp + 1712]
                        mov              rcx, qword ptr [rsp + 1720]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n311_disjunction_af
                        mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n385_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n385_subscript_α:       mov              rdi, qword ptr [rsp + 1680]
                        mov              rsi, qword ptr [rsp + 1688]
                        mov              rdx, qword ptr [rsp + 1696]
                        mov              rcx, qword ptr [rsp + 1704]
                        mov              r8, qword ptr [rsp + 1728]
                        mov              r9, qword ptr [rsp + 1736]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2_ext@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n311_disjunction_af
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx;         jmp   n386_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n386_call_proc_staged_α:
                        lea              rsi, [rsp + 1648]
                        lea              rdx, [rsp + 1664]
                        call             proc_limage_dcα;                     jmp   .Lx939_2
.Lx939_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx939_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1584]
                        mov              rdx, qword ptr [rsp + 1592]
.Lx939_29:              mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                        cmp              eax, 104;                            je    n311_disjunction_af
                                                                              jmp   n311_disjunction_as
n386_call_proc_staged_β:
                                                                              jmp   n311_disjunction_af
.Lx939_0:               .quad            .Lx939_0_s
.Lx939_0_s:             .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n387_lit_string_α:      mov              qword ptr [rsp + 2928], 2            # result
                        mov              dword ptr [rsp + 2932], 18
                        mov              rax, qword ptr [rip + .Lx940_0]
                        mov              qword ptr [rsp + 2936], rax;         jmp   n271_disjunction_as
n387_lit_string_β:                                                            jmp   n271_disjunction_af
.Lx940_0:               .quad            .Lx940_0_s
.Lx940_0_s:             .string          "ok failure on pull"
#-----------------------------------------------------------------------------------------------------------------------
n388_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 2912], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 2920], rax;         jmp   n389_call_builtin_icon_α
n388_var_β:                                                                   jmp   n271_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n389_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 2880], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 2888], rax
                        .section         .rodata
.Lrkfn944:              .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn944]
                        lea              rsi, [rsp + 2880]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx
                        cmp              eax, 104;                            je    n271_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n271_disjunction_as
n389_call_builtin_icon_β:
                                                                              jmp   n271_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n390_lit_string_α:      mov              qword ptr [rsp + 3088], 2            # result
                        mov              dword ptr [rsp + 3092], 17
                        mov              rax, qword ptr [rip + .Lx945_0]
                        mov              qword ptr [rsp + 3096], rax;         jmp   n269_disjunction_as
n390_lit_string_β:                                                            jmp   n269_disjunction_af
.Lx945_0:               .quad            .Lx945_0_s
.Lx945_0_s:             .string          "ok failure on pop"
#-----------------------------------------------------------------------------------------------------------------------
n391_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 3072], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 3080], rax;         jmp   n392_call_builtin_icon_α
n391_var_β:                                                                   jmp   n269_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n392_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3072]
                        mov              qword ptr [rsp + 3040], rax
                        mov              rax, qword ptr [rsp + 3080]
                        mov              qword ptr [rsp + 3048], rax
                        .section         .rodata
.Lrkfn949:              .string          "pop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn949]
                        lea              rsi, [rsp + 3040]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3024], rax
                        mov              qword ptr [rsp + 3032], rdx
                        cmp              eax, 104;                            je    n269_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n269_disjunction_as
n392_call_builtin_icon_β:
                                                                              jmp   n269_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n393_lit_string_α:      mov              qword ptr [rsp + 3248], 2            # result
                        mov              dword ptr [rsp + 3252], 17
                        mov              rax, qword ptr [rip + .Lx950_0]
                        mov              qword ptr [rsp + 3256], rax;         jmp   n267_disjunction_as
n393_lit_string_β:                                                            jmp   n267_disjunction_af
.Lx950_0:               .quad            .Lx950_0_s
.Lx950_0_s:             .string          "ok failure on get"
#-----------------------------------------------------------------------------------------------------------------------
n394_var_α:             mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 3232], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 3240], rax;         jmp   n395_call_builtin_icon_α
n394_var_β:                                                                   jmp   n267_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n395_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3232]
                        mov              qword ptr [rsp + 3200], rax
                        mov              rax, qword ptr [rsp + 3240]
                        mov              qword ptr [rsp + 3208], rax
                        .section         .rodata
.Lrkfn954:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn954]
                        lea              rsi, [rsp + 3200]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3184], rax
                        mov              qword ptr [rsp + 3192], rdx
                        cmp              eax, 104;                            je    n267_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n267_disjunction_as
n395_call_builtin_icon_β:
                                                                              jmp   n267_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n396_lit_string_α:      mov              qword ptr [rsp + 3472], 2            # result
                        mov              dword ptr [rsp + 3476], 13
                        mov              rax, qword ptr [rip + .Lx955_0]
                        mov              qword ptr [rsp + 3480], rax;         jmp   n263_disjunction_as
n396_lit_string_β:                                                            jmp   n263_disjunction_af
.Lx955_0:               .quad            .Lx955_0_s
.Lx955_0_s:             .string          "ok failure -2"
#-----------------------------------------------------------------------------------------------------------------------
n397_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 10496]
                        mov              qword ptr [rsp + 3408], rax
                        mov              qword ptr [rsp + 3416], rdx;         jmp   n398_lit_integer_α
n397_var_ref_β:                                                               jmp   n263_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n398_lit_integer_α:     mov              qword ptr [rsp + 3424], 3            # result
                        mov              rax, qword ptr [rip + .Lx958_0]
                        mov              qword ptr [rsp + 3432], rax;         jmp   n399_subscript_α
.Lx958_0:               .quad            18446744073709551614
#-----------------------------------------------------------------------------------------------------------------------
n399_subscript_α:       mov              rdi, qword ptr [rsp + 3408]
                        mov              rsi, qword ptr [rsp + 3416]
                        mov              rdx, qword ptr [rsp + 3424]
                        mov              rcx, qword ptr [rsp + 3432]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n263_disjunction_af
                        mov              qword ptr [rsp + 3440], rax
                        mov              qword ptr [rsp + 3448], rdx;         jmp   n400_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n400_deref_α:           mov              rdi, qword ptr [rsp + 3440]
                        mov              rsi, qword ptr [rsp + 3448]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n263_disjunction_af
                        mov              qword ptr [rsp + 3456], rax
                        mov              qword ptr [rsp + 3464], rdx;         jmp   n263_disjunction_as
n400_deref_β:                                                                 jmp   n263_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n401_lit_string_α:      mov              qword ptr [rsp + 3632], 2            # result
                        mov              dword ptr [rsp + 3636], 12
                        mov              rax, qword ptr [rip + .Lx961_0]
                        mov              qword ptr [rsp + 3640], rax;         jmp   n261_disjunction_as
n401_lit_string_β:                                                            jmp   n261_disjunction_af
.Lx961_0:               .quad            .Lx961_0_s
.Lx961_0_s:             .string          "ok failure 2"
#-----------------------------------------------------------------------------------------------------------------------
n402_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 10496]
                        mov              qword ptr [rsp + 3568], rax
                        mov              qword ptr [rsp + 3576], rdx;         jmp   n403_lit_integer_α
n402_var_ref_β:                                                               jmp   n261_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n403_lit_integer_α:     mov              qword ptr [rsp + 3584], 3            # result
                        mov              rax, qword ptr [rip + .Lx964_0]
                        mov              qword ptr [rsp + 3592], rax;         jmp   n404_subscript_α
.Lx964_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n404_subscript_α:       mov              rdi, qword ptr [rsp + 3568]
                        mov              rsi, qword ptr [rsp + 3576]
                        mov              rdx, qword ptr [rsp + 3584]
                        mov              rcx, qword ptr [rsp + 3592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n261_disjunction_af
                        mov              qword ptr [rsp + 3600], rax
                        mov              qword ptr [rsp + 3608], rdx;         jmp   n405_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n405_deref_α:           mov              rdi, qword ptr [rsp + 3600]
                        mov              rsi, qword ptr [rsp + 3608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n261_disjunction_af
                        mov              qword ptr [rsp + 3616], rax
                        mov              qword ptr [rsp + 3624], rdx;         jmp   n261_disjunction_as
n405_deref_β:                                                                 jmp   n261_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n406_lit_string_α:      mov              qword ptr [rsp + 3792], 2            # result
                        mov              dword ptr [rsp + 3796], 12
                        mov              rax, qword ptr [rip + .Lx967_0]
                        mov              qword ptr [rsp + 3800], rax;         jmp   n259_disjunction_as
n406_lit_string_β:                                                            jmp   n259_disjunction_af
.Lx967_0:               .quad            .Lx967_0_s
.Lx967_0_s:             .string          "ok failure 0"
#-----------------------------------------------------------------------------------------------------------------------
n407_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 10496]
                        mov              qword ptr [rsp + 3728], rax
                        mov              qword ptr [rsp + 3736], rdx;         jmp   n408_lit_integer_α
n407_var_ref_β:                                                               jmp   n259_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n408_lit_integer_α:     mov              qword ptr [rsp + 3744], 3            # result
                        mov              rax, qword ptr [rip + .Lx970_0]
                        mov              qword ptr [rsp + 3752], rax;         jmp   n409_subscript_α
.Lx970_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n409_subscript_α:       mov              rdi, qword ptr [rsp + 3728]
                        mov              rsi, qword ptr [rsp + 3736]
                        mov              rdx, qword ptr [rsp + 3744]
                        mov              rcx, qword ptr [rsp + 3752]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n259_disjunction_af
                        mov              qword ptr [rsp + 3760], rax
                        mov              qword ptr [rsp + 3768], rdx;         jmp   n410_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n410_deref_α:           mov              rdi, qword ptr [rsp + 3760]
                        mov              rsi, qword ptr [rsp + 3768]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n259_disjunction_af
                        mov              qword ptr [rsp + 3776], rax
                        mov              qword ptr [rsp + 3784], rdx;         jmp   n259_disjunction_as
n410_deref_β:                                                                 jmp   n259_disjunction_af
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
                        .section         .note.GNU-stack,"",@progbits
