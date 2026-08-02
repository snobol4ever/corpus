                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_positive_α
proc_positive_α:
proc_positive_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   n1_var_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx7_0
                                                                                        jmp   proc_positive_ω
.Lx7_0:
                                                                                        jmp   proc_positive_ω
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 48]
                                                                                        jmp   proc_positive_ω
n0_disjunction_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                                                                                        jmp   proc_positive_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n2_lit_integer_α
n1_var_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 112], 3                       # result
                        mov              rax, qword ptr [rip + .Lx10_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n3_binop_test_α
.Lx10_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n3_binop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 112
                                                                                        je    .Lx11_0
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 112
                                                                                        je    .Lx11_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx11_2
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 3
                                                                                        jne   .Lx11_2
.Lx11_1:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rcx, qword ptr [rbp + 120]
                        cmp              rax, rcx
                                                                                        jle   n0_disjunction_af
                        mov              rcx, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rcx
                        mov              rcx, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rcx
                                                                                        jmp   n4_var_α
.Lx11_0:
                        mov              rdi, qword ptr [rbp + 16]                      # a
                        mov              rsi, qword ptr [rbp + 24]                      # a
                        mov              rdx, qword ptr [rbp + 112]                     # b
                        mov              rcx, qword ptr [rbp + 120]                     # b
                        mov              r8d, 7                                         # op
                        lea              r9, [rbp + 80]                                 # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx11_1
                        cmp              eax, 1
                                                                                        je    n0_disjunction_af
                                                                                        jmp   n4_var_α
.Lx11_2:
                        mov              rdi, qword ptr [rbp + 16]                      # lhs
                        mov              rsi, qword ptr [rbp + 24]                      # lhs
                        mov              rdx, qword ptr [rbp + 112]                     # rhs
                        mov              rcx, qword ptr [rbp + 120]                     # rhs
                        mov              r8d, 7                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n0_disjunction_af
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n5_return_α
#-----------------------------------------------------------------------------------------------------------------------
n5_return_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_positive_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_positive_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_positive_β:
                                                                                        jmp   proc_positive_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_positive_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_positive_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_positive_dcα:
                        pop              r11
                        sub              rsp, 192
                        mov              qword ptr [rsp + 168], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 144], r11
                        lea              rax, [rip + .Lx15_2]
                        mov              qword ptr [rbp + 152], rax
                        lea              rax, [rip + .Lx15_3]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp                                       # fb
                        mov              esi, 128                                       # suffix_off
                        mov              edx, 144                                       # region_bytes
                        mov              ecx, 1                                         # np
                        mov              r8d, 1                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_positive_α_body
.Lx15_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -176
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx15_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -176
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "positive"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_positive_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 128
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_positive_dcα]
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
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n16_disjunction_α:
                        mov              qword ptr [rbp + 224], 0
                        mov              qword ptr [rbp + 232], 0
                        mov              dword ptr [rbp + 240], 0
                                                                                        jmp   n17_lit_integer_α
n16_disjunction_as:
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 0
                                                                                        jne   .Lx29_0
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n21_disjunction_α
.Lx29_0:
                                                                                        jmp   n21_disjunction_α
n16_disjunction_β:
                        mov              eax, dword ptr [rbp + 240]
                                                                                        jmp   n21_disjunction_α
n16_disjunction_af:
                        add              dword ptr [rbp + 240], 1
                        mov              eax, dword ptr [rbp + 240]
                                                                                        jmp   n21_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:
                        mov              qword ptr [rbp + 368], 3                       # result
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n18_call_proc_staged_α
n17_lit_integer_β:
                                                                                        jmp   n16_disjunction_af
.Lx30_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n18_call_proc_staged_α:
                        lea              rsi, [rbp + 368]
                        call             proc_positive_dcα
                                                                                        jmp   .Lx32_2
.Lx32_2:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 104
                                                                                        je    n16_disjunction_af
                                                                                        jmp   n19_lit_integer_α
n18_call_proc_staged_β:
                                                                                        jmp   n16_disjunction_af
.Lx32_0:
                        .quad            .Lx32_0_s
.Lx32_0_s:
                        .string          "positive"
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:
                        mov              qword ptr [rbp + 304], 3                       # result
                        mov              rax, qword ptr [rip + .Lx33_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n20_call_builtin_icon_α
.Lx33_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn35:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn35]                          # fn
                        lea              rsi, [rbp + 272]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 104
                                                                                        je    n21_disjunction_α
                                                                                        jmp   n16_disjunction_as
n20_call_builtin_icon_β:
                                                                                        jmp   n21_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n21_disjunction_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              dword ptr [rbp + 16], 0
                                                                                        jmp   n24_lit_integer_α
n21_disjunction_as:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 0
                                                                                        jne   .Lx37_0
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   main_ω
.Lx37_0:
                        cmp              eax, 1
                                                                                        jne   .Lx37_1
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   main_ω
.Lx37_1:
                                                                                        jmp   main_ω
n21_disjunction_β:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 0
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n21_disjunction_af:
                        add              dword ptr [rbp + 16], 1
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 1
                                                                                        je    n22_lit_integer_α
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:
                        mov              qword ptr [rbp + 208], 3                       # result
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n23_call_builtin_icon_α
n22_lit_integer_β:
                                                                                        jmp   main_ω
.Lx38_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn40:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn40]                          # fn
                        lea              rsi, [rbp + 176]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   n21_disjunction_as
n23_call_builtin_icon_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:
                        mov              qword ptr [rbp + 144], 3                       # result
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n25_call_proc_staged_α
n24_lit_integer_β:
                                                                                        jmp   n21_disjunction_af
.Lx41_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n25_call_proc_staged_α:
                        lea              rsi, [rbp + 144]
                        call             proc_positive_dcα
                                                                                        jmp   .Lx43_2
.Lx43_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    n21_disjunction_af
                                                                                        jmp   n26_lit_integer_α
n25_call_proc_staged_β:
                                                                                        jmp   n21_disjunction_af
.Lx43_0:
                        .quad            .Lx43_0_s
.Lx43_0_s:
                        .string          "positive"
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:
                        mov              qword ptr [rbp + 80], 3                        # result
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n27_call_builtin_icon_α
.Lx44_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lrkfn46:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn46]                          # fn
                        lea              rsi, [rbp + 48]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   n21_disjunction_as
n27_call_builtin_icon_β:
                                                                                        jmp   main_ω
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
