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
n0_lit_string_α:
                        sub              rsp, 192
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
                        mov              qword ptr [rbp + 176], 2                       # result
                        mov              dword ptr [rbp + 180], 11
                        mov              rax, qword ptr [rip + .Lx7_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n1_scan_enter_α
.Lx7_0:
                        .quad            .Lx7_0_s
.Lx7_0_s:
                        .string          "hello world"
#-----------------------------------------------------------------------------------------------------------------------
n1_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 176]                     # lo
                        mov              rsi, qword ptr [rbp + 184]                     # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n2_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_charset_α:
                        mov              qword ptr [rbp + 160], 2                       # result
                        mov              dword ptr [rbp + 164], -1
                        mov              rax, qword ptr [rip + .Lx10_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n3_scan_upto_α
.Lx10_0:
                        .quad            .Lx10_0_s
.Lx10_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n3_scan_upto_α:
                        mov              qword ptr [rbp + 144], r14
.Lx12_0:
                        mov              rax, qword ptr [rbp + 144]
                        cmp              rax, r15
                                                                                        jl    .Lx12_240
                        add              rsp, 192
                                                                                        jmp   n6_scan_α
.Lx12_240:
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx12_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx12_1
                        mov              qword ptr [rbp + 128], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n4_call_builtin_icon_α
.Lx12_1:
                        inc              qword ptr [rbp + 144]
                                                                                        jmp   .Lx12_0
n3_scan_upto_β:
                        inc              qword ptr [rbp + 144]
                                                                                        jmp   .Lx12_0
.Lx12_2:
                        .quad            .Lx12_2_s
.Lx12_2_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn14:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn14]                          # fn
                        lea              rsi, [rbp + 96]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    n3_scan_upto_β
                                                                                        jmp   n5_scan_α
n4_call_builtin_icon_β:
                                                                                        jmp   n3_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n5_scan_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        lea              rdi, [rbp + 16]                                # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 16]
                        mov              r14, qword ptr [rbp + 24]
                        mov              r15, qword ptr [rbp + 32]
                        add              rsp, 192
                                                                                        jmp   main_ω
n5_scan_β:
                        add              rsp, 192
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_scan_α:
                        lea              rdi, [rbp + 16]                                # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 16]
                        mov              r14, qword ptr [rbp + 24]
                        mov              r15, qword ptr [rbp + 32]
                                                                                        jmp   main_ω
n6_scan_β:
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
