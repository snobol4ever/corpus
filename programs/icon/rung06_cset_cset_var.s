                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_charset_α:
                        sub              rsp, 208
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
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rbp + 192], 2                       # result
                        mov              dword ptr [rbp + 196], -1
                        mov              rax, qword ptr [rip + .Lx9_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n1_assign_α
.Lx9_0:
                        .quad            .Lx9_0_s
.Lx9_0_s:
                        .string          "aeiou"
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 160], 2                       # result
                        mov              dword ptr [rbp + 164], 4
                        mov              rax, qword ptr [rip + .Lx11_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n3_scan_enter_α
.Lx11_0:
                        .quad            .Lx11_0_s
.Lx11_0_s:
                        .string          "icon"
#-----------------------------------------------------------------------------------------------------------------------
n3_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 160]                     # lo
                        mov              rsi, qword ptr [rbp + 168]                     # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n5_scan_any_α
#-----------------------------------------------------------------------------------------------------------------------
n5_scan_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jl    .Lx17_239
                        add              rsp, 208
                                                                                        jmp   n8_scan_α
.Lx17_239:
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rbp + 152]
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                                                                                        jne   .Lx17_240
                        add              rsp, 208
                                                                                        jmp   n8_scan_α
.Lx17_240:
                        mov              qword ptr [rbp + 128], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n6_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn19:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn19]                          # fn
                        lea              rsi, [rbp + 96]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx18_240
                        add              rsp, 208
                                                                                        jmp   n8_scan_α
.Lx18_240:
                                                                                        jmp   n7_scan_α
n6_call_builtin_icon_β:
                        add              rsp, 208
                                                                                        jmp   n8_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n7_scan_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        lea              rdi, [rbp + 16]                                # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 16]
                        mov              r14, qword ptr [rbp + 24]
                        mov              r15, qword ptr [rbp + 32]
                        add              rsp, 208
                                                                                        jmp   main_ω
n7_scan_β:
                        add              rsp, 208
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n8_scan_α:
                        lea              rdi, [rbp + 16]                                # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 16]
                        mov              r14, qword ptr [rbp + 24]
                        mov              r15, qword ptr [rbp + 32]
                                                                                        jmp   main_ω
n8_scan_β:
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
