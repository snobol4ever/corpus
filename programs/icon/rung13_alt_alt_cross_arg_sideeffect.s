                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_noisy_α
proc_noisy_α:
proc_noisy_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 80
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
                        mov              qword ptr [rsp + 64], 2                        # result
                        mov              dword ptr [rsp + 68], 6
                        mov              rax, qword ptr [rip + .Lx4_0]
                        mov              qword ptr [rsp + 72], rax
                                                                                        jmp   n1_call_builtin_icon_α
.Lx4_0:
                        .quad            .Lx4_0_s
.Lx4_0_s:
                        .string          "[eval]"
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lrkfn6:                .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn6]                           # fn
                        lea              rsi, [rsp + 32]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 104
                                                                                        je    n2_lit_string_α
                                                                                        jmp   n2_lit_string_α
n1_call_builtin_icon_β:
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx7_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n3_return_α
.Lx7_0:
                        .quad            .Lx7_0_s
.Lx7_0_s:
                        .string          "X"
#-----------------------------------------------------------------------------------------------------------------------
n3_return_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80
                                                                                        jmp   proc_noisy_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_noisy_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_noisy_β:
                                                                                        jmp   proc_noisy_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_noisy_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_noisy_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_noisy_dcα:
                        pop              r11
                        sub              rsp, 160
                        mov              qword ptr [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 112], r11
                        lea              rax, [rip + .Lx9_2]
                        mov              qword ptr [rsp + 120], rax
                        lea              rax, [rip + .Lx9_3]
                        mov              qword ptr [rsp + 128], rax
                        mov              rdi, rbp                                       # fb
                        mov              esi, 96                                        # suffix_off
                        mov              edx, 112                                       # region_bytes
                        mov              ecx, 0                                         # np
                        mov              r8d, 0                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_noisy_α_body
.Lx9_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -144
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx9_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -144
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "noisy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_noisy_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 96
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_noisy_dcα]
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
n10_disjunction_α:
                        mov              qword ptr [rbp + 80], 0
                        mov              qword ptr [rbp + 88], 0
                        mov              dword ptr [rbp + 96], 0
                                                                                        jmp   n17_lit_integer_α
n10_disjunction_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        jne   .Lx19_0
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n11_call_proc_staged_α
.Lx19_0:
                        cmp              eax, 1
                                                                                        jne   .Lx19_1
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n11_call_proc_staged_α
.Lx19_1:
                                                                                        jmp   n11_call_proc_staged_α
n10_disjunction_β:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        je    n10_disjunction_af
                                                                                        jmp   n10_disjunction_af
n10_disjunction_af:
                        add              dword ptr [rbp + 96], 1
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 1
                                                                                        je    n16_lit_integer_α
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n11_call_proc_staged_α:
                        call             proc_noisy_dcα
                                                                                        jmp   .Lx21_2
.Lx21_2:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n10_disjunction_β
                                                                                        jmp   n12_disjunction_α
n11_call_proc_staged_β:
                                                                                        jmp   n10_disjunction_β
.Lx21_0:
                        .quad            .Lx21_0_s
.Lx21_0_s:
                        .string          "noisy"
#-----------------------------------------------------------------------------------------------------------------------
n12_disjunction_α:
                        mov              qword ptr [rbp + 176], 0
                        mov              qword ptr [rbp + 184], 0
                        mov              dword ptr [rbp + 192], 0
                                                                                        jmp   n15_lit_integer_α
n12_disjunction_as:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 0
                                                                                        jne   .Lx23_0
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n13_call_builtin_icon_α
.Lx23_0:
                        cmp              eax, 1
                                                                                        jne   .Lx23_1
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n13_call_builtin_icon_α
.Lx23_1:
                                                                                        jmp   n13_call_builtin_icon_α
n12_disjunction_β:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 0
                                                                                        je    n12_disjunction_af
                                                                                        jmp   n12_disjunction_af
n12_disjunction_af:
                        add              dword ptr [rbp + 192], 1
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 1
                                                                                        je    n14_lit_integer_α
                                                                                        jmp   n10_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 24], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 40], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lrkfn25:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn25]                          # fn
                        lea              rsi, [rbp + 16]                                # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 104
                                                                                        je    n12_disjunction_β
                                                                                        jmp   n12_disjunction_β
n13_call_builtin_icon_β:
                                                                                        jmp   n12_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:
                        mov              qword ptr [rbp + 224], 3                       # result
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n12_disjunction_as
n14_lit_integer_β:
                                                                                        jmp   n12_disjunction_af
.Lx26_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:
                        mov              qword ptr [rbp + 208], 3                       # result
                        mov              rax, qword ptr [rip + .Lx27_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n12_disjunction_as
n15_lit_integer_β:
                                                                                        jmp   n12_disjunction_af
.Lx27_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:
                        mov              qword ptr [rbp + 128], 3                       # result
                        mov              rax, qword ptr [rip + .Lx28_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n10_disjunction_as
n16_lit_integer_β:
                                                                                        jmp   n10_disjunction_af
.Lx28_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:
                        mov              qword ptr [rbp + 112], 3                       # result
                        mov              rax, qword ptr [rip + .Lx29_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n10_disjunction_as
n17_lit_integer_β:
                                                                                        jmp   n10_disjunction_af
.Lx29_0:
                        .quad            1
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
