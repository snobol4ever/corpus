                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_add_α
proc_add_α:
proc_add_α_body:
#=======================================================================================================================
#         <stmt 1, line 3: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:                                                         jmp   n1_var_α
n0_statement_begin_β:                                                         jmp   proc_add_γ
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:               sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # a
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:               sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # b
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n3_binop_α
n2_var_β:               add              rsp, 16
                        add              rsp, 16;                             jmp   proc_add_γ
#-----------------------------------------------------------------------------------------------------------------------
n3_binop_α:             sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx9_240
                        add              rsp, 16;                             jmp   n2_var_β
.Lx9_240:               mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n4_assign_α
n3_binop_β:             add              rsp, 16;                             jmp   n2_var_β
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:            mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # add
                        mov              qword ptr [r9 + 8], rdx
                        add              rsp, 48;                             jmp   proc_add_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_add_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_add_β:
                                                                              jmp   proc_add_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_add_γ:
                        add              rsp, 0
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
proc_add_ω:
                        add              rsp, 0
                        mov              eax, 104
                        ret
proc_startup:
                        sub              rsp, 8
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "add"
.Lgvan1:                .string          "a"
.Lgvan2:                .string          "b"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 3
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 3
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
n13_statement_begin_β:                                                        jmp   n19_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx31_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_lit_integer_α
.Lx31_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx32_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n16_call_α
n15_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n13_statement_begin_β
.Lx32_0:                .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n16_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lsig34z]
                        lea              rax, [rip + add_alpha];              jmp   rax
.Lsig34z:               .quad            2
                        .quad            .Lx34_2
                        .quad            .Lx34_2
                        .quad            32
                        .quad            16
.Lx34_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx34_29
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
.Lx34_29:               mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx34_240
                        add              rsp, 16;                             jmp   n15_lit_integer_β
.Lx34_240:                                                                    jmp   n17_assign_α
n16_call_β:                                                                   jmp   n15_lit_integer_β
.Lx34_0:                .quad            .Lx34_0_s
.Lx34_0_s:              .string          "add"
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_α:           mov              rsi, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx35_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n18_statement_end_α
.Lx35_0:                .quad            .Lx35_0_s
.Lx35_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_end_α:    add              rsp, 48;                             jmp   n19_statement_begin_α
#=======================================================================================================================
#         <stmt 4, line 6: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_begin_α:                                                        jmp   n20_lit_integer_α
n19_statement_begin_β:                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx40_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n21_lit_integer_α
.Lx40_0:                .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n22_call_α
n21_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n19_statement_begin_β
.Lx41_0:                .quad            32
#-----------------------------------------------------------------------------------------------------------------------
n22_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lsig43z]
                        lea              rax, [rip + add_alpha];              jmp   rax
.Lsig43z:               .quad            2
                        .quad            .Lx43_2
                        .quad            .Lx43_2
                        .quad            32
                        .quad            16
.Lx43_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx43_29
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
.Lx43_29:               mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx43_240
                        add              rsp, 16;                             jmp   n21_lit_integer_β
.Lx43_240:                                                                    jmp   n23_assign_α
n22_call_β:                                                                   jmp   n21_lit_integer_β
.Lx43_0:                .quad            .Lx43_0_s
.Lx43_0_s:              .string          "add"
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:           mov              rsi, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n24_statement_end_α
.Lx44_0:                .quad            .Lx44_0_s
.Lx44_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_end_α:    add              rsp, 48;                             jmp   main_γ
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
