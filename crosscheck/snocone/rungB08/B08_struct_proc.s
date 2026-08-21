                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__make_pair:
make_pair_α_body:
                        sub              rsp, 160
                        mov              qword ptr [rsp + 136], rcx
                        mov              qword ptr [rsp + 144], rdx
                        mov              qword ptr [rsp + 152], rbp
#=======================================================================================================================
#         <stmt 2, line 4: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:                                                         jmp   n1_var_α
n0_statement_begin_β:                                                         jmp   make_pair_γ
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n3_call_α
n2_var_β:               add              rsp, 16
                        add              rsp, 16;                             jmp   make_pair_γ
#-----------------------------------------------------------------------------------------------------------------------
n3_call_α:              sub              rsp, 16
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lrkfnzd10:             .string          "pair"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd10]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              eax, 104;                            jne   .Lx9_240
                        add              rsp, 16;                             jmp   n2_var_β
.Lx9_240:               mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n4_assign_α
n3_call_β:              add              rsp, 16;                             jmp   n2_var_β
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:            mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # make_pair
                        mov              qword ptr [r9 + 8], rdx
                        add              rsp, 48;                             jmp   make_pair_γ
#-----------------------------------------------------------------------------------------------------------------------
make_pair_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
make_pair_β:
                                                                              jmp   make_pair_ω
#-----------------------------------------------------------------------------------------------------------------------
make_pair_γ:
                        add              rsp, 160
                        add              rsp, 0
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
make_pair_ω:
                        add              rsp, 160
                        add              rsp, 0
                        mov              eax, 104
                        ret
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 4
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 4
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
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
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#=======================================================================================================================
#         <stmt 1, line 2: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_begin_α:                                                        jmp   n13_lit_string_α
n12_statement_begin_β:                                                        jmp   n16_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 18
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n14_call_α
.Lx36_0:                .quad            .Lx36_0_s
.Lx36_0_s:              .string          "pair(first,second)"
#-----------------------------------------------------------------------------------------------------------------------
n14_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd38:             .string          "DATA"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd38]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx37_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n12_statement_begin_β
.Lx37_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n15_statement_end_α
n14_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n12_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n15_statement_end_α:    add              rsp, 32;                             jmp   n16_statement_begin_α
#=======================================================================================================================
#         <stmt 3, line 5: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_begin_α:                                                        jmp   n17_statement_end_α
n16_statement_begin_β:                                                        jmp   n18_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_end_α:                                                          jmp   n18_statement_begin_α
#=======================================================================================================================
#         <stmt 4, line 6: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_begin_α:                                                        jmp   n19_lit_string_α
n18_statement_begin_β:                                                        jmp   n24_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n20_lit_string_α
.Lx47_0:                .quad            .Lx47_0_s
.Lx47_0_s:              .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n21_call_α
n20_lit_string_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n18_statement_begin_β
.Lx48_0:                .quad            .Lx48_0_s
.Lx48_0_s:              .string          "world"
#-----------------------------------------------------------------------------------------------------------------------
n21_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lsig50z]
                        lea              rax, [rip + make_pair_α];            jmp   rax
.Lsig50z:               .quad            2
                        .quad            .Lx50_2
                        .quad            .Lx50_2
                        .quad            32
                        .quad            16
.Lx50_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx50_29
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
.Lx50_29:               mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx50_240
                        add              rsp, 16;                             jmp   n20_lit_string_β
.Lx50_240:                                                                    jmp   n22_assign_α
n21_call_β:                                                                   jmp   n20_lit_string_β
.Lx50_0:                .quad            .Lx50_0_s
.Lx50_0_s:              .string          "make_pair"
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # p
                        mov              qword ptr [r9 + 56], rdx;            jmp   n23_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_end_α:    add              rsp, 48;                             jmp   n24_statement_begin_α
#=======================================================================================================================
#         <stmt 5, line 7: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_begin_α:                                                        jmp   n25_var_α
n24_statement_begin_β:                                                        jmp   n29_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # p
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n26_call_α
#-----------------------------------------------------------------------------------------------------------------------
n26_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd58:             .string          "first"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd58]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx57_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n24_statement_begin_β
.Lx57_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n27_assign_α
n26_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n24_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:           mov              rsi, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n28_statement_end_α
.Lx59_0:                .quad            .Lx59_0_s
.Lx59_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_end_α:    add              rsp, 32;                             jmp   n29_statement_begin_α
#=======================================================================================================================
#         <stmt 6, line 8: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n29_statement_begin_α:                                                        jmp   n30_var_α
n29_statement_begin_β:                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # p
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n31_call_α
#-----------------------------------------------------------------------------------------------------------------------
n31_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd66:             .string          "second"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd66]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx65_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n29_statement_begin_β
.Lx65_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n32_assign_α
n31_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n29_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:           mov              rsi, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n33_statement_end_α
.Lx67_0:                .quad            .Lx67_0_s
.Lx67_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_end_α:    add              rsp, 32;                             jmp   main_γ
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
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "pair(first,second)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lseala0:               .string          "make_pair"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            make_pair_α
                        lea              rdi, [rip + .Lseala0]
                        mov              rsi, qword ptr [rip + make_pair_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
