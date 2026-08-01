                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_make_pair_α
proc_make_pair_α:
proc_make_pair_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                                                                                        jmp   n1_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                                                                                        jmp   n2_call_α
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn7:                .string          "pair"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn7]
                        lea              rsi, [rsp + 32]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_make_pair_γ
                                                                                        jmp   n3_assign_α
n2_call_β:
                                                                                        jmp   proc_make_pair_γ
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   proc_make_pair_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_make_pair_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_make_pair_β:
                                                                                        jmp   proc_make_pair_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_make_pair_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_make_pair_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "pair(first,second)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "make_pair"
.Lstartup_pp0_0:        .string          "a"
.Lstartup_pp0_1:        .string          "b"
                        .align           8
.Lstartup_pnames0:
                        .quad            .Lstartup_pp0_0
                        .quad            .Lstartup_pp0_1
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + .Lstartup_pnames0]
                        mov              edx, 2
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_make_pair_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 112
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "make_pair"
.Lgvan1:                .string          "a"
.Lgvan2:                .string          "b"
.Lgvan3:                .string          "p"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 4
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 4
                        call             gva_register@PLT
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        sub              rsp, 256
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 18
                        mov              rax, qword ptr [rip + .Lx21_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n10_call_α
.Lx21_0:
                        .quad            .Lx21_0_s
.Lx21_0_s:
                        .string          "pair(first,second)"
#-----------------------------------------------------------------------------------------------------------------------
n10_call_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn23:               .string          "DATA"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn23]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n11_lit_string_α
                                                                                        jmp   n11_lit_string_α
n10_call_β:
                                                                                        jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        mov              qword ptr [rsp + 96], 1
                        mov              dword ptr [rsp + 100], 5
                        mov              rax, qword ptr [rip + .Lx24_0]
                        mov              qword ptr [rsp + 104], rax
                                                                                        jmp   n12_lit_string_α
.Lx24_0:
                        .quad            .Lx24_0_s
.Lx24_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        mov              qword ptr [rsp + 112], 1
                        mov              dword ptr [rsp + 116], 5
                        mov              rax, qword ptr [rip + .Lx25_0]
                        mov              qword ptr [rsp + 120], rax
                                                                                        jmp   n13_call_α
.Lx25_0:
                        .quad            .Lx25_0_s
.Lx25_0_s:
                        .string          "world"
#-----------------------------------------------------------------------------------------------------------------------
n13_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052288]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx27_0]
                        mov              esi, 2
                        mov              edx, 2
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx27_5
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [1879052312], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [1879052328], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx27_6]
                        lea              rdx, [rip + .Lx27_7]
                                                                                        jmp   rax
.Lx27_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx27_2
.Lx27_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx27_2
.Lx27_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx27_20
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx27_21
.Lx27_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        call             rt_arg_stage@PLT
.Lx27_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx27_22
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx27_23
.Lx27_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
                        call             rt_arg_stage@PLT
.Lx27_23:
                        mov              rdi, qword ptr [rip + .Lx27_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx27_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx27_3]
                        lea              rdx, [rip + .Lx27_4]
                                                                                        jmp   rax
.Lx27_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx27_2
.Lx27_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx27_2
.Lx27_1:
                        call             rt_faildescr@PLT
.Lx27_2:
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 99
                                                                                        je    n15_var_α
                                                                                        jmp   n14_assign_α
n13_call_β:
                                                                                        jmp   n15_var_α
.Lx27_0:
                        .quad            .Lx27_0_s
.Lx27_0_s:
                        .string          "make_pair"
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                                                                                        jmp   n16_call_α
#-----------------------------------------------------------------------------------------------------------------------
n16_call_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lrkfn31:               .string          "first"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn31]
                        lea              rsi, [rsp + 144]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n18_var_α
                                                                                        jmp   n17_assign_α
n16_call_β:
                                                                                        jmp   n18_var_α
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_α:
                        mov              rsi, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              rdi, qword ptr [rip + .Lx32_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n18_var_α
.Lx32_0:
                        .quad            .Lx32_0_s
.Lx32_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                                                                                        jmp   n19_call_α
#-----------------------------------------------------------------------------------------------------------------------
n19_call_α:
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn35:               .string          "second"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn35]
                        lea              rsi, [rsp + 208]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              eax, 99
                                                                                        jne   .Lx34_240
                        add              rsp, 256
                                                                                        jmp   main_γ
.Lx34_240:
                                                                                        jmp   n20_assign_α
n19_call_β:
                        add              rsp, 256
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:
                        mov              rsi, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              rdi, qword ptr [rip + .Lx36_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 256
                                                                                        jmp   main_γ
.Lx36_0:
                        .quad            .Lx36_0_s
.Lx36_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
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
