                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_bumpit_α
proc_bumpit_α:
proc_bumpit_α_body:
#=======================================================================================================================
#         <stmt 1, line 3: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:                                                         jmp   n1_var_α
n0_statement_begin_β:                                                         jmp   proc_bumpit_γ
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:               sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # v
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx8_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_binop_α
n2_lit_integer_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   proc_bumpit_γ
.Lx8_0:                 .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n3_binop_α:             sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx9_240
                        add              rsp, 16;                             jmp   n2_lit_integer_β
.Lx9_240:               mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n4_assign_α
n3_binop_β:             add              rsp, 16;                             jmp   n2_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:            mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # bumpit
                        mov              qword ptr [r9 + 8], rdx
                        add              rsp, 48;                             jmp   proc_bumpit_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_bumpit_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_bumpit_β:
                                                                              jmp   proc_bumpit_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_bumpit_γ:
                        add              rsp, 0
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
proc_bumpit_ω:
                        add              rsp, 0
                        mov              eax, 104
                        ret
proc_startup:
                        sub              rsp, 8
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
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#=======================================================================================================================
#         <stmt 2, line 4: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n11_statement_begin_α:                                                        jmp   n12_statement_end_α
n11_statement_begin_β:                                                        jmp   n13_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_end_α:                                                          jmp   n13_statement_begin_α
#=======================================================================================================================
#         <stmt 3, line 5: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_begin_α:                                                        jmp   n14_lit_integer_α
n13_statement_begin_β:                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx24_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_call_α
.Lx24_0:                .quad            41
#-----------------------------------------------------------------------------------------------------------------------
n15_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lsig26z]
                        lea              rax, [rip + bumpit_alpha];           jmp   rax
.Lsig26z:               .quad            1
                        .quad            .Lx26_2
                        .quad            .Lx26_2
                        .quad            16
.Lx26_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx26_29
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
.Lx26_29:               mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx26_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n13_statement_begin_β
.Lx26_240:                                                                    jmp   n16_assign_α
n15_call_β:                                                                   jmp   n13_statement_begin_β
.Lx26_0:                .quad            .Lx26_0_s
.Lx26_0_s:              .string          "bumpit"
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:           mov              rsi, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx27_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n17_statement_end_α
.Lx27_0:                .quad            .Lx27_0_s
.Lx27_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_end_α:    add              rsp, 32;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
