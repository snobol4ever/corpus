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
                        sub              rsp, 688
                        mov              rdi, rsp
                        add              rdi, 608
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              r11, 1
                        mov              qword ptr [rsp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Lx22_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n1_call_builtin_icon_α
.Lx22_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_icon_α: mov              r11, 2
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                        .section         .rodata
.Lrkfn24:               .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn24]
                        lea              rsi, [rsp + 560]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    n3_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n2_assign_α
n1_call_builtin_icon_β: mov              r11, 2;                              jmp   n3_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:            mov              r11, 3
                        mov              rax, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx;          jmp   n3_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n3_var_ref_α:           mov              r11, 4
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 608]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n4_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:       mov              r11, 5
                        mov              qword ptr [rsp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Lx28_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n5_subscript_α
.Lx28_0:                .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n5_subscript_α:         mov              r11, 6
                        mov              rdi, qword ptr [rsp + 448]
                        mov              rsi, qword ptr [rsp + 456]
                        mov              rdx, qword ptr [rsp + 464]
                        mov              rcx, qword ptr [rsp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n8_disjunction_α
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n6_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       mov              r11, 7
                        mov              qword ptr [rsp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n7_assign_var_α
.Lx30_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_var_α:        mov              r11, 8
                        mov              rdi, qword ptr [rsp + 480]
                        mov              rsi, qword ptr [rsp + 488]
                        mov              rdx, qword ptr [rsp + 512]
                        mov              rcx, qword ptr [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n8_disjunction_α
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n8_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n8_disjunction_α:       sub              rsp, 16
                        mov              r11, 9
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 272], 0;            jmp   n9_var_α
n8_disjunction_as:      mov              r11, 9
                        mov              eax, dword ptr [rsp + 272]
                        cmp              eax, 0;                              jne   .Lx33_0
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 8], rax;            jmp   n14_disjunction_α
.Lx33_0:                                                                      jmp   n14_disjunction_α
n8_disjunction_β:       mov              r11, 9
                        mov              eax, dword ptr [rsp + 272];          jmp   n14_disjunction_α
n8_disjunction_af:      mov              r11, 9
                        add              dword ptr [rsp + 272], 1
                        mov              eax, dword ptr [rsp + 272]
                        add              rsp, 16;                             jmp   n14_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:               mov              r11, 10
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 424], rax;          jmp   n10_lit_integer_α
n9_var_β:               mov              r11, 10;                             jmp   n8_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      mov              r11, 11
                        mov              qword ptr [rsp + 432], 3             # result
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n11_call_builtin_icon_α
.Lx36_0:                .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        mov              r11, 12
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 392], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 376], rax
                        .section         .rodata
.Lrkfn38:               .string          "member"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn38]
                        lea              rsi, [rsp + 368]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393354
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n8_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n12_lit_integer_α
n11_call_builtin_icon_β:
                        mov              r11, 12;                             jmp   n8_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      mov              r11, 13
                        mov              qword ptr [rsp + 336], 3             # result
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n13_call_builtin_icon_α
.Lx39_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_icon_α:
                        mov              r11, 14
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lrkfn41:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn41]
                        lea              rsi, [rsp + 304]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n14_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n8_disjunction_as
n13_call_builtin_icon_β:
                        mov              r11, 14;                             jmp   n14_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n14_disjunction_α:      sub              rsp, 16
                        mov              r11, 15
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 80], 0;             jmp   n15_var_α
n14_disjunction_as:     mov              r11, 15
                        mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 0;                              jne   .Lx43_0
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], rax;            jmp   n20_lit_integer_α
.Lx43_0:                                                                      jmp   n20_lit_integer_α
n14_disjunction_β:      mov              r11, 15
                        mov              eax, dword ptr [rsp + 80];           jmp   n20_lit_integer_α
n14_disjunction_af:     mov              r11, 15
                        add              dword ptr [rsp + 80], 1
                        mov              eax, dword ptr [rsp + 80]
                        add              rsp, 16;                             jmp   n20_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:              mov              r11, 16
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 232], rax;          jmp   n16_lit_integer_α
n15_var_β:              mov              r11, 16;                             jmp   n14_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:      mov              r11, 17
                        mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n17_call_builtin_icon_α
.Lx46_0:                .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_icon_α:
                        mov              r11, 18
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lrkfn48:               .string          "member"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn48]
                        lea              rsi, [rsp + 176]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393354
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n14_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n18_lit_integer_α
n17_call_builtin_icon_β:
                        mov              r11, 18;                             jmp   n14_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:      mov              r11, 19
                        mov              qword ptr [rsp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n19_call_builtin_icon_α
.Lx49_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_icon_α:
                        mov              r11, 20
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn51:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn51]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n20_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n14_disjunction_as
n19_call_builtin_icon_β:
                        mov              r11, 20;                             jmp   n20_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:      mov              r11, 21
                        mov              qword ptr [rsp + 48], 3              # result
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n21_call_builtin_icon_α
.Lx52_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_icon_α:
                        mov              r11, 22
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn54:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn54]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_γ
n21_call_builtin_icon_β:
                        mov              r11, 22;                             jmp   main_ω
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
