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
n0_lit_integer_α:
                        sub              rsp, 224
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
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rbp + 256], 3                       # result
                        mov              rax, qword ptr [rip + .Lx13_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n1_assign_α
.Lx13_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 224], 2                       # result
                        mov              dword ptr [rbp + 228], 3
                        mov              rax, qword ptr [rip + .Lx15_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n3_scan_enter_α
.Lx15_0:
                        .quad            .Lx15_0_s
.Lx15_0_s:
                        .string          "xyz"
#-----------------------------------------------------------------------------------------------------------------------
n3_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 224]                     # lo
                        mov              rsi, qword ptr [rbp + 232]                     # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n4_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_charset_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], -1
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n5_scan_any_α
.Lx18_0:
                        .quad            .Lx18_0_s
.Lx18_0_s:
                        .string          "aeiou"
#-----------------------------------------------------------------------------------------------------------------------
n5_scan_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jl    .Lx20_239
                        add              rsp, 224
                                                                                        jmp   n10_scan_α
.Lx20_239:
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx20_0]
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                                                                                        jne   .Lx20_240
                        add              rsp, 224
                                                                                        jmp   n10_scan_α
.Lx20_240:
                        mov              qword ptr [rbp + 192], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n6_lit_integer_α
.Lx20_0:
                        .quad            .Lx20_0_s
.Lx20_0_s:
                        .string          "aeiou"
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        mov              qword ptr [rbp + 176], 3                       # result
                        mov              rax, qword ptr [rip + .Lx21_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n7_assign_α
.Lx21_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n8_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n8_conjunction_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n9_scan_α
n8_conjunction_β:
                                                                                        jmp   n10_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n9_scan_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        lea              rdi, [rbp + 80]                                # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 80]
                        mov              r14, qword ptr [rbp + 88]
                        mov              r15, qword ptr [rbp + 96]
                                                                                        jmp   n11_var_α
n9_scan_β:
                                                                                        jmp   n11_var_α
#-----------------------------------------------------------------------------------------------------------------------
n10_scan_α:
                        lea              rdi, [rbp + 80]                                # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 80]
                        mov              r14, qword ptr [rbp + 88]
                        mov              r15, qword ptr [rbp + 96]
                                                                                        jmp   n11_var_α
n10_scan_β:
                                                                                        jmp   n11_var_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n12_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn31:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn31]                          # fn
                        lea              rsi, [rbp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx30_240
                        add              rsp, 224
                                                                                        jmp   main_ω
.Lx30_240:
                        add              rsp, 224
                                                                                        jmp   main_ω
n12_call_builtin_icon_β:
                        add              rsp, 224
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
