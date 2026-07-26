                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        xor              esi, esi
                        call             main_α
                        xor              eax, eax
                        add              rsp, 24
                        ret
main_α:
#=======================================================================================================================
                        .global          main_α
                        .global          main_β
                        .global          main_γ
                        .global          main_ω
                        sub              rsp, 65544
                        mov              rdi, rsp
                        mov              ecx, 65544
                        xor              eax, eax
                        rep stosb
                        mov              qword ptr [rsp + 104], rsp
                        mov              r12, qword ptr [1879048192]
                        mov              [rsp + 65536], rbp
                        mov              rbp, rsp
main_α_body:
# KEYWORD_read
xchain0_n0_α:
                        mov              rdi, qword ptr [rip + .Lx1_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    main_ω
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   xchain0_n1_α
xchain0_n0_β:
                                                                                        jmp   main_ω
.Lx1_0:
                        .quad            .Lx1_0_s
.Lx1_0_s:
                        .string          "&version"
xchain0_n1_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+32]
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn3:                .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn3]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
xchain0_n1_β:
                                                                                        jmp   main_ω
main_β:
                                                                                        jmp   main_ω
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, qword ptr [rbp + 104]
                        mov              rbp, [rsp + 65536]
                        add              rsp, 65544
                        ret
main_ω:
                        mov              rsp, qword ptr [rbp + 104]
                        mov              dword ptr [rsp+0], 99
                        mov              dword ptr [rsp+4], 0
                        mov              qword ptr [rsp+8], 0
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 65536]
                        add              rsp, 65544
                        ret
