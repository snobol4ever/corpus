                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_foo_α
proc_foo_α:
proc_foo_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        sub              rsp, 144
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              rax, qword ptr [1879052288]                    # foo__STATIC__a
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 128], rax                     # result
                        mov              qword ptr [rsp + 136], rdx
                                                                                        jmp   n1_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn7:                .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn7]                           # fn
                        lea              rsi, [rsp + 96]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 104
                                                                                        je    n3_lit_integer_α
                                                                                        jmp   n2_call_builtin_icon_α
n1_call_builtin_icon_β:
                                                                                        jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn9:                .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn9]                           # fn
                        lea              rsi, [rsp + 48]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104
                                                                                        je    n3_lit_integer_α
                                                                                        jmp   n3_lit_integer_α
n2_call_builtin_icon_β:
                                                                                        jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rsp + 16], 3                        # result
                        mov              rax, qword ptr [rip + .Lx10_0]
                        mov              qword ptr [rsp + 24], rax
                                                                                        jmp   n4_assign_α
.Lx10_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [1879052288], rax                    # foo__STATIC__a
                        mov              qword ptr [1879052296], rdx
                        add              rsp, 144
                                                                                        jmp   proc_foo_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_foo_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_foo_β:
                                                                                        jmp   proc_foo_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_foo_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_foo_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_foo_dcα:
                        pop              r11
                        sub              rsp, 208
                        mov              qword ptr [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 160], r11
                        lea              rax, [rip + .Lx12_2]
                        mov              qword ptr [rsp + 168], rax
                        lea              rax, [rip + .Lx12_3]
                        mov              qword ptr [rsp + 176], rax
                        mov              rdi, rbp                                       # fb
                        mov              esi, 144                                       # suffix_off
                        mov              edx, 160                                       # region_bytes
                        mov              ecx, 0                                         # np
                        mov              r8d, 0                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_foo_α_body
.Lx12_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -192
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx12_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -192
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_p_α
proc_p_α:
proc_p_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n13_disjunction_α:
                        mov              qword ptr [rbp + 144], 0
                        mov              qword ptr [rbp + 152], 0
                        mov              dword ptr [rbp + 160], 0
                                                                                        jmp   n21_var_ref_α
n13_disjunction_as:
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 0
                                                                                        jne   .Lx28_0
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n14_var_α
.Lx28_0:
                                                                                        jmp   n14_var_α
n13_disjunction_β:
                        mov              eax, dword ptr [rbp + 160]
                                                                                        jmp   n14_var_α
n13_disjunction_af:
                        add              dword ptr [rbp + 160], 1
                        mov              eax, dword ptr [rbp + 160]
                                                                                        jmp   n14_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:
                        mov              rax, qword ptr [1879052304]                    # p__STATIC__c
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 112], rax                     # result
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n15_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:
                        mov              qword ptr [rbp + 128], 3                       # result
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n16_coerce_numeric_α
.Lx30_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n16_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 5
                                                                                        je    .Lx32_1
                        cmp              eax, 3
                                                                                        jne   .Lx32_0
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 3
                                                                                        jne   .Lx32_0
.Lx32_1:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n17_binop_α
.Lx32_0:
                        lea              rdi, [rbp + 112]                               # self
                        lea              rsi, [rbp + 128]                               # other
                        lea              rdx, [rbp + 96]                                # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n17_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n17_binop_α:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 3
                                                                                        jne   .Lx33_0
                        mov              rax, qword ptr [rbp + 104]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n18_assign_α
.Lx33_0:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 136]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n19_var_α
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n18_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [1879052304], rax                    # p__STATIC__c
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n19_var_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:
                        mov              rax, qword ptr [1879052304]                    # p__STATIC__c
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 48], rax                      # result
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n20_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn37:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn37]                          # fn
                        lea              rsi, [rbp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx36_240
                        add              rsp, 176
                                                                                        jmp   proc_p_ω
.Lx36_240:
                        add              rsp, 176
                                                                                        jmp   proc_p_ω
n20_call_builtin_icon_β:
                        add              rsp, 176
                                                                                        jmp   proc_p_ω
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052320                                # p__INITFLAG__0
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n22_nulltest_var_α
n21_var_ref_β:
                                                                                        jmp   n13_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n22_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 104
                                                                                        je    n13_disjunction_af
                        mov              rdi, qword ptr [rbp + 208]                     # d
                        mov              rsi, qword ptr [rbp + 216]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n13_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n13_disjunction_af
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n23_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_integer_α:
                        mov              qword ptr [rbp + 256], 3                       # result
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n24_assign_var_α
.Lx41_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_var_α:
                        mov              rdi, qword ptr [rbp + 224]                     # var
                        mov              rsi, qword ptr [rbp + 232]                     # var
                        mov              rdx, qword ptr [rbp + 256]                     # val
                        mov              rcx, qword ptr [rbp + 264]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n13_disjunction_af
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n25_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:
                        mov              qword ptr [rbp + 192], 3                       # result
                        mov              rax, qword ptr [rip + .Lx43_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n26_assign_α
.Lx43_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n26_assign_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        mov              qword ptr [1879052304], rax                    # p__STATIC__c
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n13_disjunction_as
n26_assign_β:
                                                                                        jmp   n14_var_α
#-----------------------------------------------------------------------------------------------------------------------
proc_p_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_p_β:
                                                                                        jmp   proc_p_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_p_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_p_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_p_dcα:
                        pop              r11
                        sub              rsp, 336
                        mov              qword ptr [rsp + 312], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 288], r11
                        lea              rax, [rip + .Lx45_2]
                        mov              qword ptr [rbp + 296], rax
                        lea              rax, [rip + .Lx45_3]
                        mov              qword ptr [rbp + 304], rax
                        mov              rdi, rbp                                       # fb
                        mov              esi, 272                                       # suffix_off
                        mov              edx, 288                                       # region_bytes
                        mov              ecx, 0                                         # np
                        mov              r8d, 0                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_p_α_body
.Lx45_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -320
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx45_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -320
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "foo"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_foo_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 144
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_foo_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "p"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_p_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_p_dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "foo__STATIC__a"
.Lgvan1:                .string          "p__STATIC__c"
.Lgvan2:                .string          "p__INITFLAG__0"
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
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n46_call_proc_staged_α:
                        call             proc_foo_dcα
                                                                                        jmp   .Lx51_2
.Lx51_2:
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 104
                                                                                        je    n47_call_proc_staged_α
                                                                                        jmp   n47_call_proc_staged_α
n46_call_proc_staged_β:
                                                                                        jmp   n47_call_proc_staged_α
.Lx51_0:
                        .quad            .Lx51_0_s
.Lx51_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n47_call_proc_staged_α:
                        call             proc_foo_dcα
                                                                                        jmp   .Lx53_2
.Lx53_2:
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 104
                                                                                        je    n48_call_proc_staged_α
                                                                                        jmp   n48_call_proc_staged_α
n47_call_proc_staged_β:
                                                                                        jmp   n48_call_proc_staged_α
.Lx53_0:
                        .quad            .Lx53_0_s
.Lx53_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n48_call_proc_staged_α:
                        call             proc_p_dcα
                                                                                        jmp   .Lx55_2
.Lx55_2:
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104
                                                                                        je    n49_call_proc_staged_α
                                                                                        jmp   n49_call_proc_staged_α
n48_call_proc_staged_β:
                                                                                        jmp   n49_call_proc_staged_α
.Lx55_0:
                        .quad            .Lx55_0_s
.Lx55_0_s:
                        .string          "p"
#-----------------------------------------------------------------------------------------------------------------------
n49_call_proc_staged_α:
                        call             proc_p_dcα
                                                                                        jmp   .Lx57_2
.Lx57_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n49_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx57_0:
                        .quad            .Lx57_0_s
.Lx57_0_s:
                        .string          "p"
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
