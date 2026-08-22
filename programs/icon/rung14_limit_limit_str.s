                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 224
                        mov              qword ptr [rsp + 200], rcx
                        mov              qword ptr [rsp + 208], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
                        mov              qword ptr [rsp + 64], 0
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              r11, 1
                        mov              qword ptr [rsp + 80], 3              # result
                        mov              rax, qword ptr [rip + .Lx8_0]
                        mov              qword ptr [rsp + 88], rax;           jmp   n1_disjunction_α
.Lx8_0:                 .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1_disjunction_α:       mov              r11, 2
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              dword ptr [rsp + 112], 0;            jmp   n6_lit_string_α
n1_disjunction_as:      mov              r11, 2
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 0;                              jne   .Lx10_0
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax;          jmp   n2_limit_α
.Lx10_0:                cmp              eax, 1;                              jne   .Lx10_1
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 104], rax;          jmp   n2_limit_α
.Lx10_1:                cmp              eax, 2;                              jne   .Lx10_2
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 104], rax;          jmp   n2_limit_α
.Lx10_2:                                                                      jmp   n2_limit_α
n1_disjunction_β:       mov              r11, 2
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 0;                              je    n1_disjunction_af
                        cmp              eax, 1;                              je    n1_disjunction_af
                                                                              jmp   n1_disjunction_af
n1_disjunction_af:      mov              r11, 2
                        add              dword ptr [rsp + 112], 1
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 1;                              je    n5_lit_string_α
                        cmp              eax, 2;                              je    n4_lit_string_α
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n2_limit_α:             mov              r11, 3
                        mov              rax, qword ptr [rsp + 64]
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              rax, rcx;                            jge   main_ω
                        inc              qword ptr [rsp + 64]
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 56], rax;           jmp   n3_call_builtin_icon_α
n2_limit_β:             mov              r11, 3;                              jmp   n1_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_icon_α: mov              r11, 4
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn14:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn14]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    n1_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_disjunction_β
n3_call_builtin_icon_β: mov              r11, 4;                              jmp   n1_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:        mov              r11, 5
                        mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 1
                        mov              rax, qword ptr [rip + .Lx15_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n1_disjunction_as
n4_lit_string_β:        mov              r11, 5;                              jmp   n1_disjunction_af
.Lx15_0:                .quad            .Lx15_0_s
.Lx15_0_s:              .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              r11, 6
                        mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 1
                        mov              rax, qword ptr [rip + .Lx16_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n1_disjunction_as
n5_lit_string_β:        mov              r11, 6;                              jmp   n1_disjunction_af
.Lx16_0:                .quad            .Lx16_0_s
.Lx16_0_s:              .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              r11, 7
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 1
                        mov              rax, qword ptr [rip + .Lx17_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n1_disjunction_as
n6_lit_string_β:        mov              r11, 7;                              jmp   n1_disjunction_af
.Lx17_0:                .quad            .Lx17_0_s
.Lx17_0_s:              .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        and              rsp, -16
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
