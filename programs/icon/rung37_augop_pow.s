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
                        sub              rsp, 384
                        mov              qword ptr [rsp + 360], rcx
                        mov              qword ptr [rsp + 368], rdx
                        mov              rdi, rsp
                        add              rdi, 304
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              qword ptr [rsp + 288], 3             # result
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n1_assign_α
.Lx18_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:               mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 264], rax;          jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              qword ptr [rsp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Lx22_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n4_coerce_numeric_α
.Lx22_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n4_coerce_numeric_α:    mov              eax, dword ptr [rsp + 304]
                        cmp              al, 5;                               je    .Lx24_1
                        cmp              al, 3;                               jne   .Lx24_0
                        mov              eax, dword ptr [rsp + 272]
                        cmp              al, 3;                               jne   .Lx24_0
.Lx24_1:                mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 248], rax;          jmp   n5_binop_α
.Lx24_0:                lea              rdi, [rsp + 304]
                        lea              rsi, [rsp + 272]
                        lea              rdx, [rsp + 240]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n5_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n5_binop_α:             mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              rcx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pow@PLT
                        cmp              al, 104;                             je    n7_var_α
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n6_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n7_var_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:               mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 216], rax;          jmp   n8_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_icon_α: mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lrkfn30:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn30]
                        lea              rsi, [rsp + 176]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n9_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n9_lit_integer_α
n8_call_builtin_icon_β:                                                       jmp   n9_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       mov              qword ptr [rsp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Lx31_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n10_assign_α
.Lx31_0:                .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:           mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n11_var_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:              mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 120], rax;          jmp   n12_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      mov              qword ptr [rsp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Lx35_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n13_coerce_numeric_α
.Lx35_0:                .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n13_coerce_numeric_α:   mov              eax, dword ptr [rsp + 304]
                        cmp              al, 5;                               je    .Lx37_1
                        cmp              al, 3;                               jne   .Lx37_0
                        mov              eax, dword ptr [rsp + 128]
                        cmp              al, 3;                               jne   .Lx37_0
.Lx37_1:                mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 104], rax;          jmp   n14_binop_α
.Lx37_0:                lea              rdi, [rsp + 304]
                        lea              rsi, [rsp + 128]
                        lea              rdx, [rsp + 96]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n14_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n14_binop_α:            mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 128]
                        mov              rcx, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pow@PLT
                        cmp              al, 104;                             je    n16_var_α
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n15_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:           mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n16_var_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:              mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 56], rax;           jmp   n17_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn43:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn43]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   main_γ
n17_call_builtin_icon_β:
                                                                              jmp   main_ω
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
