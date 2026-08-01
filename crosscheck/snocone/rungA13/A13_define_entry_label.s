                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_bumpit_α
proc_bumpit_α:
proc_bumpit_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # v
                        mov              rdx, qword ptr [1879052312]                    # v
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx5_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_binop_α
.Lx5_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n2_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx6_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   proc_bumpit_γ
.Lx6_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n3_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # bumpit
                        mov              qword ptr [1879052296], rdx                    # bumpit
                        add              rsp, 48
                                                                                        jmp   proc_bumpit_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_bumpit_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_bumpit_β:
                                                                                        jmp   proc_bumpit_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_bumpit_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_bumpit_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "bumpit"
.Lstartup_pp0_0:        .string          "v"
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
                        lea              rsi, [rip + proc_bumpit_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 64
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "bumpit"
.Lgvan1:                .string          "v"
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
n8_lit_integer_α:
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 64], 6
                        mov              rax, qword ptr [rip + .Lx11_0]
                        mov              qword ptr [rsp + 72], rax
                                                                                        jmp   n9_call_α
.Lx11_0:
                        .quad            41
#-----------------------------------------------------------------------------------------------------------------------
n9_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]                    # v
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]                    # v
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]                    # bumpit
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]                    # bumpit
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx13_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx13_5
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [1879052304], rax                    # v
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [1879052312], rax                    # v
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx13_6]
                        lea              rdx, [rip + .Lx13_7]
                                                                                        jmp   rax
.Lx13_6:
                        mov              rdi, qword ptr [1879052288]                    # bumpit
                        mov              rsi, qword ptr [1879052296]                    # bumpit
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax                    # bumpit
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax                    # bumpit
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # v
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax                    # v
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx13_2
.Lx13_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax                    # bumpit
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax                    # bumpit
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # v
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax                    # v
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx13_2
.Lx13_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx13_20
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx13_21
.Lx13_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        call             rt_arg_stage@PLT
.Lx13_21:
                        mov              rdi, qword ptr [rip + .Lx13_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx13_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx13_3]
                        lea              rdx, [rip + .Lx13_4]
                                                                                        jmp   rax
.Lx13_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx13_2
.Lx13_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx13_2
.Lx13_1:
                        call             rt_faildescr@PLT
.Lx13_2:
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 99
                                                                                        jne   .Lx13_240
                        add              rsp, 80
                                                                                        jmp   main_γ
.Lx13_240:
                                                                                        jmp   n10_assign_α
n9_call_β:
                                                                                        jmp   main_γ
.Lx13_0:
                        .quad            .Lx13_0_s
.Lx13_0_s:
                        .string          "bumpit"
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              rdi, qword ptr [rip + .Lx14_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 80
                                                                                        jmp   main_γ
.Lx14_0:
                        .quad            .Lx14_0_s
.Lx14_0_s:
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
