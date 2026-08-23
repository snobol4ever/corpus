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
                        sub              rsp, 944
                        mov              qword ptr [rsp + 920], rcx
                        mov              qword ptr [rsp + 928], rdx
                        mov              rdi, rsp
                        add              rdi, 880
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              r11, 1
                        mov              qword ptr [rsp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n1_lit_integer_α
.Lx39_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       mov              r11, 2
                        mov              qword ptr [rsp + 784], 3             # result
                        mov              rax, qword ptr [rip + .Lx40_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n2_call_builtin_α
.Lx40_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_α:      mov              r11, 3
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 856], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 840], rax
                        .section         .rodata
.Lrkfn42:               .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn42]
                        lea              rsi, [rsp + 832]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    n5_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n3_lit_integer_α
n2_call_builtin_β:      mov              r11, 3;                              jmp   n5_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              r11, 4
                        mov              qword ptr [rsp + 800], 3             # result
                        mov              rax, qword ptr [rip + .Lx43_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n4_assign_α
.Lx43_0:                .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:            mov              r11, 5
                        mov              rax, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n11_var_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       mov              r11, 6
                        mov              qword ptr [rsp + 688], 3             # result
                        mov              rax, qword ptr [rip + .Lx45_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n6_call_builtin_α
.Lx45_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_α:      mov              r11, 7
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 760], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 744], rax
                        .section         .rodata
.Lrkfn47:               .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn47]
                        lea              rsi, [rsp + 736]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              al, 104;                             je    n9_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n7_lit_integer_α
n6_call_builtin_β:      mov              r11, 7;                              jmp   n9_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       mov              r11, 8
                        mov              qword ptr [rsp + 704], 3             # result
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n8_assign_α
.Lx48_0:                .quad            40
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:            mov              r11, 9
                        mov              rax, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n11_var_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       mov              r11, 10
                        mov              qword ptr [rsp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n10_assign_α
.Lx50_0:                .quad            9900
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:           mov              r11, 11
                        mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n11_var_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:              mov              r11, 12
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 648], rax;          jmp   n12_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_icon_α:
                        mov              r11, 13
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 616], rax
                        .section         .rodata
.Lrkfn55:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn55]
                        lea              rsi, [rsp + 608]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n13_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n13_lit_integer_α
n12_call_builtin_icon_β:
                        mov              r11, 13;                             jmp   n13_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:      mov              r11, 14
                        mov              qword ptr [rsp + 368], 3             # result
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n14_lit_integer_α
.Lx56_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:      mov              r11, 15
                        mov              qword ptr [rsp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n15_call_builtin_α
.Lx57_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_α:     mov              r11, 16
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 568], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 552], rax
                        .section         .rodata
.Lrkfn59:               .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn59]
                        lea              rsi, [rsp + 544]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    n18_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n16_lit_integer_α
n15_call_builtin_β:     mov              r11, 16;                             jmp   n18_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:      mov              r11, 17
                        mov              qword ptr [rsp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n17_assign_α
.Lx60_0:                .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_α:           mov              r11, 18
                        mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n24_var_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:      mov              r11, 19
                        mov              qword ptr [rsp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n19_call_builtin_α
.Lx62_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_α:     mov              r11, 20
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lrkfn64:               .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn64]
                        lea              rsi, [rsp + 448]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n22_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n20_lit_integer_α
n19_call_builtin_β:     mov              r11, 20;                             jmp   n22_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:      mov              r11, 21
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n21_assign_α
.Lx65_0:                .quad            40
#-----------------------------------------------------------------------------------------------------------------------
n21_assign_α:           mov              r11, 22
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n24_var_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:      mov              r11, 23
                        mov              qword ptr [rsp + 384], 3             # result
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n23_assign_α
.Lx67_0:                .quad            9900
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:           mov              r11, 24
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n24_var_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:              mov              r11, 25
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 360], rax;          jmp   n25_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n25_call_builtin_icon_α:
                        mov              r11, 26
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax
                        .section         .rodata
.Lrkfn72:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn72]
                        lea              rsi, [rsp + 320]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    n26_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n26_lit_integer_α
n25_call_builtin_icon_β:
                        mov              r11, 26;                             jmp   n26_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:      mov              r11, 27
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n27_lit_integer_α
.Lx73_0:                .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_integer_α:      mov              r11, 28
                        mov              qword ptr [rsp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Lx74_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n28_call_builtin_α
.Lx74_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_α:     mov              r11, 29
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn76:               .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn76]
                        lea              rsi, [rsp + 256]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n31_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n29_lit_integer_α
n28_call_builtin_β:     mov              r11, 29;                             jmp   n31_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:      mov              r11, 30
                        mov              qword ptr [rsp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n30_assign_α
.Lx77_0:                .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_α:           mov              r11, 31
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n37_var_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:      mov              r11, 32
                        mov              qword ptr [rsp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n32_call_builtin_α
.Lx79_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_α:     mov              r11, 33
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn81:               .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn81]
                        lea              rsi, [rsp + 160]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n35_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n33_lit_integer_α
n32_call_builtin_β:     mov              r11, 33;                             jmp   n35_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:      mov              r11, 34
                        mov              qword ptr [rsp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n34_assign_α
.Lx82_0:                .quad            40
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:           mov              r11, 35
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n37_var_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:      mov              r11, 36
                        mov              qword ptr [rsp + 80], 3              # result
                        mov              rax, qword ptr [rip + .Lx84_0]
                        mov              qword ptr [rsp + 88], rax;           jmp   n36_assign_α
.Lx84_0:                .quad            700
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_α:           mov              r11, 37
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n37_var_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:              mov              r11, 38
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 56], rax;           jmp   n38_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_icon_α:
                        mov              r11, 39
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn89:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn89]
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
n38_call_builtin_icon_β:
                        mov              r11, 39;                             jmp   main_ω
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
