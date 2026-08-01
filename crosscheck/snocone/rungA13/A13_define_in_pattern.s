                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_upcase_α
proc_upcase_α:
proc_upcase_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                                                                                        jmp   n1_keyword_snobol4_α
#-----------------------------------------------------------------------------------------------------------------------
n1_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx6_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                                                                                        jmp   n2_keyword_snobol4_α
.Lx6_0:
                        .quad            .Lx6_0_s
.Lx6_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n2_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx7_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                                                                                        jmp   n3_call_α
.Lx7_0:
                        .quad            .Lx7_0_s
.Lx7_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n3_call_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn9:                .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn9]
                        lea              rsi, [rsp + 32]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_upcase_γ
                                                                                        jmp   n4_assign_α
n3_call_β:
                                                                                        jmp   proc_upcase_γ
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   proc_upcase_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_upcase_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_upcase_β:
                                                                                        jmp   proc_upcase_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_upcase_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_upcase_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "upcase"
.Lstartup_pp0_0:        .string          "s"
                        .align           8
.Lstartup_pnames0:
                        .quad            .Lstartup_pp0_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + .Lstartup_pnames0]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_upcase_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 144
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "upcase"
.Lgvan1:                .string          "s"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 2
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 2
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
n11_lit_string_α:
                        sub              rsp, 144
                        mov              qword ptr [rsp + 64], 1
                        mov              dword ptr [rsp + 68], 5
                        mov              rax, qword ptr [rip + .Lx17_0]
                        mov              qword ptr [rsp + 72], rax
                                                                                        jmp   n12_call_α
.Lx17_0:
                        .quad            .Lx17_0_s
.Lx17_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n12_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx19_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx19_5
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx19_6]
                        lea              rdx, [rip + .Lx19_7]
                                                                                        jmp   rax
.Lx19_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx19_2
.Lx19_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx19_2
.Lx19_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx19_20
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx19_21
.Lx19_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        call             rt_arg_stage@PLT
.Lx19_21:
                        mov              rdi, qword ptr [rip + .Lx19_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx19_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx19_3]
                        lea              rdx, [rip + .Lx19_4]
                                                                                        jmp   rax
.Lx19_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx19_2
.Lx19_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx19_2
.Lx19_1:
                        call             rt_faildescr@PLT
.Lx19_2:
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n14_lit_string_α
                                                                                        jmp   n13_assign_α
n12_call_β:
                                                                                        jmp   n14_lit_string_α
.Lx19_0:
                        .quad            .Lx19_0_s
.Lx19_0_s:
                        .string          "upcase"
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              rdi, qword ptr [rip + .Lx20_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n14_lit_string_α
.Lx20_0:
                        .quad            .Lx20_0_s
.Lx20_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        mov              qword ptr [rsp + 128], 1
                        mov              dword ptr [rsp + 132], 5
                        mov              rax, qword ptr [rip + .Lx21_0]
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n15_call_α
.Lx21_0:
                        .quad            .Lx21_0_s
.Lx21_0_s:
                        .string          "world"
#-----------------------------------------------------------------------------------------------------------------------
n15_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx23_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx23_5
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx23_6]
                        lea              rdx, [rip + .Lx23_7]
                                                                                        jmp   rax
.Lx23_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx23_2
.Lx23_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx23_2
.Lx23_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx23_20
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx23_21
.Lx23_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        call             rt_arg_stage@PLT
.Lx23_21:
                        mov              rdi, qword ptr [rip + .Lx23_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx23_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx23_3]
                        lea              rdx, [rip + .Lx23_4]
                                                                                        jmp   rax
.Lx23_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx23_2
.Lx23_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx23_2
.Lx23_1:
                        call             rt_faildescr@PLT
.Lx23_2:
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 99
                                                                                        jne   .Lx23_240
                        add              rsp, 144
                                                                                        jmp   main_γ
.Lx23_240:
                                                                                        jmp   n16_assign_α
n15_call_β:
                                                                                        jmp   main_γ
.Lx23_0:
                        .quad            .Lx23_0_s
.Lx23_0_s:
                        .string          "upcase"
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:
                        mov              rsi, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              rdi, qword ptr [rip + .Lx24_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 144
                                                                                        jmp   main_γ
.Lx24_0:
                        .quad            .Lx24_0_s
.Lx24_0_s:
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
