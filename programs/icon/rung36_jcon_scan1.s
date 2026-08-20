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
                        sub              rsp, 11232
                        mov              qword ptr [rsp + 11208], rcx
                        mov              qword ptr [rsp + 11216], rdx
                        mov              rdi, rsp
                        add              rdi, 11088
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:       mov              qword ptr [rsp + 10880], 0
                        mov              qword ptr [rsp + 10888], 0
                        mov              dword ptr [rsp + 10896], 0;          jmp   n117_lit_charset_α
n0_disjunction_as:      mov              eax, dword ptr [rsp + 10896]
                        cmp              eax, 0;                              jne   .Lx393_0
                        mov              rax, qword ptr [rsp + 10912]
                        mov              qword ptr [rsp + 10880], rax
                        mov              rax, qword ptr [rsp + 10920]
                        mov              qword ptr [rsp + 10888], rax;        jmp   n1_call_builtin_icon_α
.Lx393_0:               cmp              eax, 1;                              jne   .Lx393_1
                        mov              rax, qword ptr [rsp + 11072]
                        mov              qword ptr [rsp + 10880], rax
                        mov              rax, qword ptr [rsp + 11080]
                        mov              qword ptr [rsp + 10888], rax;        jmp   n1_call_builtin_icon_α
.Lx393_1:                                                                     jmp   n1_call_builtin_icon_α
n0_disjunction_β:       mov              eax, dword ptr [rsp + 10896]
                        cmp              eax, 0;                              je    n0_disjunction_af
                                                                              jmp   n0_disjunction_af
n0_disjunction_af:      add              dword ptr [rsp + 10896], 1
                        mov              eax, dword ptr [rsp + 10896]
                        cmp              eax, 1;                              je    n116_lit_string_α
                                                                              jmp   n2_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_icon_α: mov              rax, qword ptr [rsp + 10880]
                        mov              qword ptr [rsp + 10848], rax
                        mov              rax, qword ptr [rsp + 10888]
                        mov              qword ptr [rsp + 10856], rax
                        .section         .rodata
.Lrkfn395:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn395]
                        lea              rsi, [rsp + 10848]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 10832], rax
                        mov              qword ptr [rsp + 10840], rdx
                        cmp              eax, 104;                            je    n0_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n2_disjunction_α
n1_call_builtin_icon_β:                                                       jmp   n0_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n2_disjunction_α:       mov              qword ptr [rsp + 10624], 0
                        mov              qword ptr [rsp + 10632], 0
                        mov              dword ptr [rsp + 10640], 0;          jmp   n111_lit_charset_α
n2_disjunction_as:      mov              eax, dword ptr [rsp + 10640]
                        cmp              eax, 0;                              jne   .Lx397_0
                        mov              rax, qword ptr [rsp + 10656]
                        mov              qword ptr [rsp + 10624], rax
                        mov              rax, qword ptr [rsp + 10664]
                        mov              qword ptr [rsp + 10632], rax;        jmp   n3_call_builtin_icon_α
.Lx397_0:               cmp              eax, 1;                              jne   .Lx397_1
                        mov              rax, qword ptr [rsp + 10816]
                        mov              qword ptr [rsp + 10624], rax
                        mov              rax, qword ptr [rsp + 10824]
                        mov              qword ptr [rsp + 10632], rax;        jmp   n3_call_builtin_icon_α
.Lx397_1:                                                                     jmp   n3_call_builtin_icon_α
n2_disjunction_β:       mov              eax, dword ptr [rsp + 10640]
                        cmp              eax, 0;                              je    n2_disjunction_af
                                                                              jmp   n2_disjunction_af
n2_disjunction_af:      add              dword ptr [rsp + 10640], 1
                        mov              eax, dword ptr [rsp + 10640]
                        cmp              eax, 1;                              je    n110_lit_string_α
                                                                              jmp   n4_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_icon_α: mov              rax, qword ptr [rsp + 10624]
                        mov              qword ptr [rsp + 10592], rax
                        mov              rax, qword ptr [rsp + 10632]
                        mov              qword ptr [rsp + 10600], rax
                        .section         .rodata
.Lrkfn399:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn399]
                        lea              rsi, [rsp + 10592]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 10576], rax
                        mov              qword ptr [rsp + 10584], rdx
                        cmp              eax, 104;                            je    n2_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n4_disjunction_α
n3_call_builtin_icon_β:                                                       jmp   n2_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n4_disjunction_α:       mov              qword ptr [rsp + 10368], 0
                        mov              qword ptr [rsp + 10376], 0
                        mov              dword ptr [rsp + 10384], 0;          jmp   n105_lit_charset_α
n4_disjunction_as:      mov              eax, dword ptr [rsp + 10384]
                        cmp              eax, 0;                              jne   .Lx401_0
                        mov              rax, qword ptr [rsp + 10400]
                        mov              qword ptr [rsp + 10368], rax
                        mov              rax, qword ptr [rsp + 10408]
                        mov              qword ptr [rsp + 10376], rax;        jmp   n5_call_builtin_icon_α
.Lx401_0:               cmp              eax, 1;                              jne   .Lx401_1
                        mov              rax, qword ptr [rsp + 10560]
                        mov              qword ptr [rsp + 10368], rax
                        mov              rax, qword ptr [rsp + 10568]
                        mov              qword ptr [rsp + 10376], rax;        jmp   n5_call_builtin_icon_α
.Lx401_1:                                                                     jmp   n5_call_builtin_icon_α
n4_disjunction_β:       mov              eax, dword ptr [rsp + 10384]
                        cmp              eax, 0;                              je    n4_disjunction_af
                                                                              jmp   n4_disjunction_af
n4_disjunction_af:      add              dword ptr [rsp + 10384], 1
                        mov              eax, dword ptr [rsp + 10384]
                        cmp              eax, 1;                              je    n104_lit_string_α
                                                                              jmp   n6_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α: mov              rax, qword ptr [rsp + 10368]
                        mov              qword ptr [rsp + 10336], rax
                        mov              rax, qword ptr [rsp + 10376]
                        mov              qword ptr [rsp + 10344], rax
                        .section         .rodata
.Lrkfn403:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn403]
                        lea              rsi, [rsp + 10336]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 10320], rax
                        mov              qword ptr [rsp + 10328], rdx
                        cmp              eax, 104;                            je    n4_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n6_disjunction_α
n5_call_builtin_icon_β:                                                       jmp   n4_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n6_disjunction_α:       mov              qword ptr [rsp + 10144], 0
                        mov              qword ptr [rsp + 10152], 0
                        mov              dword ptr [rsp + 10160], 0;          jmp   n100_lit_charset_α
n6_disjunction_as:      mov              eax, dword ptr [rsp + 10160]
                        cmp              eax, 0;                              jne   .Lx405_0
                        mov              rax, qword ptr [rsp + 10176]
                        mov              qword ptr [rsp + 10144], rax
                        mov              rax, qword ptr [rsp + 10184]
                        mov              qword ptr [rsp + 10152], rax;        jmp   n7_call_builtin_icon_α
.Lx405_0:               cmp              eax, 1;                              jne   .Lx405_1
                        mov              rax, qword ptr [rsp + 10304]
                        mov              qword ptr [rsp + 10144], rax
                        mov              rax, qword ptr [rsp + 10312]
                        mov              qword ptr [rsp + 10152], rax;        jmp   n7_call_builtin_icon_α
.Lx405_1:                                                                     jmp   n7_call_builtin_icon_α
n6_disjunction_β:       mov              eax, dword ptr [rsp + 10160]
                        cmp              eax, 0;                              je    n6_disjunction_af
                                                                              jmp   n6_disjunction_af
n6_disjunction_af:      add              dword ptr [rsp + 10160], 1
                        mov              eax, dword ptr [rsp + 10160]
                        cmp              eax, 1;                              je    n99_lit_string_α
                                                                              jmp   n8_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_icon_α: mov              rax, qword ptr [rsp + 10144]
                        mov              qword ptr [rsp + 10112], rax
                        mov              rax, qword ptr [rsp + 10152]
                        mov              qword ptr [rsp + 10120], rax
                        .section         .rodata
.Lrkfn407:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn407]
                        lea              rsi, [rsp + 10112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 10096], rax
                        mov              qword ptr [rsp + 10104], rdx
                        cmp              eax, 104;                            je    n6_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n8_disjunction_α
n7_call_builtin_icon_β:                                                       jmp   n6_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n8_disjunction_α:       mov              qword ptr [rsp + 9952], 0
                        mov              qword ptr [rsp + 9960], 0
                        mov              dword ptr [rsp + 9968], 0;           jmp   n96_lit_charset_α
n8_disjunction_as:      mov              eax, dword ptr [rsp + 9968]
                        cmp              eax, 0;                              jne   .Lx409_0
                        mov              rax, qword ptr [rsp + 9984]
                        mov              qword ptr [rsp + 9952], rax
                        mov              rax, qword ptr [rsp + 9992]
                        mov              qword ptr [rsp + 9960], rax;         jmp   n9_call_builtin_icon_α
.Lx409_0:               cmp              eax, 1;                              jne   .Lx409_1
                        mov              rax, qword ptr [rsp + 10080]
                        mov              qword ptr [rsp + 9952], rax
                        mov              rax, qword ptr [rsp + 10088]
                        mov              qword ptr [rsp + 9960], rax;         jmp   n9_call_builtin_icon_α
.Lx409_1:                                                                     jmp   n9_call_builtin_icon_α
n8_disjunction_β:       mov              eax, dword ptr [rsp + 9968]
                        cmp              eax, 0;                              je    n8_disjunction_af
                                                                              jmp   n8_disjunction_af
n8_disjunction_af:      add              dword ptr [rsp + 9968], 1
                        mov              eax, dword ptr [rsp + 9968]
                        cmp              eax, 1;                              je    n95_lit_string_α
                                                                              jmp   n10_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_icon_α: mov              rax, qword ptr [rsp + 9952]
                        mov              qword ptr [rsp + 9920], rax
                        mov              rax, qword ptr [rsp + 9960]
                        mov              qword ptr [rsp + 9928], rax
                        .section         .rodata
.Lrkfn411:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn411]
                        lea              rsi, [rsp + 9920]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 9904], rax
                        mov              qword ptr [rsp + 9912], rdx
                        cmp              eax, 104;                            je    n8_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n10_lit_string_α
n9_call_builtin_icon_β:                                                       jmp   n8_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       mov              qword ptr [rsp + 9888], 2            # result
                        mov              dword ptr [rsp + 9892], 6
                        mov              rax, qword ptr [rip + .Lx412_0]
                        mov              qword ptr [rsp + 9896], rax;         jmp   n11_scan_enter_α
.Lx412_0:               .quad            .Lx412_0_s
.Lx412_0_s:             .string          "1234ab"
#-----------------------------------------------------------------------------------------------------------------------
n11_scan_enter_α:       mov              rdi, qword ptr [rsp + 9888]
                        mov              rsi, qword ptr [rsp + 9896]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n12_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n12_disjunction_α:      mov              qword ptr [rsp + 9744], 0
                        mov              qword ptr [rsp + 9752], 0
                        mov              dword ptr [rsp + 9760], 0;           jmp   n92_lit_charset_α
n12_disjunction_as:     mov              eax, dword ptr [rsp + 9760]
                        cmp              eax, 0;                              jne   .Lx416_0
                        mov              rax, qword ptr [rsp + 9776]
                        mov              qword ptr [rsp + 9744], rax
                        mov              rax, qword ptr [rsp + 9784]
                        mov              qword ptr [rsp + 9752], rax;         jmp   n13_call_builtin_icon_α
.Lx416_0:               cmp              eax, 1;                              jne   .Lx416_1
                        mov              rax, qword ptr [rsp + 9872]
                        mov              qword ptr [rsp + 9744], rax
                        mov              rax, qword ptr [rsp + 9880]
                        mov              qword ptr [rsp + 9752], rax;         jmp   n13_call_builtin_icon_α
.Lx416_1:                                                                     jmp   n13_call_builtin_icon_α
n12_disjunction_β:      mov              eax, dword ptr [rsp + 9760]
                        cmp              eax, 0;                              je    n12_disjunction_af
                                                                              jmp   n12_disjunction_af
n12_disjunction_af:     add              dword ptr [rsp + 9760], 1
                        mov              eax, dword ptr [rsp + 9760]
                        cmp              eax, 1;                              je    n91_lit_string_α
                                                                              jmp   n122_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 9744]
                        mov              qword ptr [rsp + 9712], rax
                        mov              rax, qword ptr [rsp + 9752]
                        mov              qword ptr [rsp + 9720], rax
                        .section         .rodata
.Lrkfn418:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn418]
                        lea              rsi, [rsp + 9712]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 9696], rax
                        mov              qword ptr [rsp + 9704], rdx
                        cmp              eax, 104;                            je    n12_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n14_scan_α
n13_call_builtin_icon_β:
                                                                              jmp   n12_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n14_scan_α:             mov              rax, qword ptr [rsp + 9696]
                        mov              qword ptr [rsp + 9664], rax
                        mov              rax, qword ptr [rsp + 9704]
                        mov              qword ptr [rsp + 9672], rax
                        lea              rdi, [rsp + 9632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 9632]
                        mov              r14, qword ptr [rsp + 9640]
                        mov              r15, qword ptr [rsp + 9648];         jmp   n15_lit_string_α
n14_scan_β:                                                                   jmp   n15_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       mov              qword ptr [rsp + 9600], 2            # result
                        mov              dword ptr [rsp + 9604], 6
                        mov              rax, qword ptr [rip + .Lx421_0]
                        mov              qword ptr [rsp + 9608], rax;         jmp   n16_scan_enter_α
.Lx421_0:               .quad            .Lx421_0_s
.Lx421_0_s:             .string          "1234ab"
#-----------------------------------------------------------------------------------------------------------------------
n16_scan_enter_α:       mov              rdi, qword ptr [rsp + 9600]
                        mov              rsi, qword ptr [rsp + 9608]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n17_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n17_disjunction_α:      mov              qword ptr [rsp + 9520], 0
                        mov              qword ptr [rsp + 9528], 0
                        mov              dword ptr [rsp + 9536], 0;           jmp   n89_lit_charset_α
n17_disjunction_as:     mov              eax, dword ptr [rsp + 9536]
                        cmp              eax, 0;                              jne   .Lx425_0
                        mov              rax, qword ptr [rsp + 9552]
                        mov              qword ptr [rsp + 9520], rax
                        mov              rax, qword ptr [rsp + 9560]
                        mov              qword ptr [rsp + 9528], rax;         jmp   n18_call_builtin_icon_α
.Lx425_0:               cmp              eax, 1;                              jne   .Lx425_1
                        mov              rax, qword ptr [rsp + 9584]
                        mov              qword ptr [rsp + 9520], rax
                        mov              rax, qword ptr [rsp + 9592]
                        mov              qword ptr [rsp + 9528], rax;         jmp   n18_call_builtin_icon_α
.Lx425_1:                                                                     jmp   n18_call_builtin_icon_α
n17_disjunction_β:      mov              eax, dword ptr [rsp + 9536]
                        cmp              eax, 0;                              je    n17_disjunction_af
                                                                              jmp   n17_disjunction_af
n17_disjunction_af:     add              dword ptr [rsp + 9536], 1
                        mov              eax, dword ptr [rsp + 9536]
                        cmp              eax, 1;                              je    n88_lit_string_α
                                                                              jmp   n123_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 9520]
                        mov              qword ptr [rsp + 9488], rax
                        mov              rax, qword ptr [rsp + 9528]
                        mov              qword ptr [rsp + 9496], rax
                        .section         .rodata
.Lrkfn427:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn427]
                        lea              rsi, [rsp + 9488]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 9472], rax
                        mov              qword ptr [rsp + 9480], rdx
                        cmp              eax, 104;                            je    n17_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n19_scan_α
n18_call_builtin_icon_β:
                                                                              jmp   n17_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n19_scan_α:             mov              rax, qword ptr [rsp + 9472]
                        mov              qword ptr [rsp + 9440], rax
                        mov              rax, qword ptr [rsp + 9480]
                        mov              qword ptr [rsp + 9448], rax
                        lea              rdi, [rsp + 9408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 9408]
                        mov              r14, qword ptr [rsp + 9416]
                        mov              r15, qword ptr [rsp + 9424];         jmp   n20_lit_string_α
n19_scan_β:                                                                   jmp   n20_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:       mov              qword ptr [rsp + 9376], 2            # result
                        mov              dword ptr [rsp + 9380], 6
                        mov              rax, qword ptr [rip + .Lx430_0]
                        mov              qword ptr [rsp + 9384], rax;         jmp   n21_scan_enter_α
.Lx430_0:               .quad            .Lx430_0_s
.Lx430_0_s:             .string          "1234ab"
#-----------------------------------------------------------------------------------------------------------------------
n21_scan_enter_α:       mov              rdi, qword ptr [rsp + 9376]
                        mov              rsi, qword ptr [rsp + 9384]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n22_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:      mov              qword ptr [rsp + 9360], 3            # result
                        mov              rax, qword ptr [rip + .Lx433_0]
                        mov              qword ptr [rsp + 9368], rax;         jmp   n23_keyword_assign_α
.Lx433_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n23_keyword_assign_α:   mov              rdi, qword ptr [rsp + 9360]
                        mov              rsi, qword ptr [rsp + 9368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_pos_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n31_scan_α
                        mov              qword ptr [rsp + 9344], rax
                        mov              qword ptr [rsp + 9352], rdx
                        mov              r14, rdx
                        sub              r14, 1;                              jmp   n24_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n24_disjunction_α:      mov              qword ptr [rsp + 9264], 0
                        mov              qword ptr [rsp + 9272], 0
                        mov              dword ptr [rsp + 9280], 0;           jmp   n29_lit_charset_α
n24_disjunction_as:     mov              eax, dword ptr [rsp + 9280]
                        cmp              eax, 0;                              jne   .Lx436_0
                        mov              rax, qword ptr [rsp + 9296]
                        mov              qword ptr [rsp + 9264], rax
                        mov              rax, qword ptr [rsp + 9304]
                        mov              qword ptr [rsp + 9272], rax;         jmp   n25_call_builtin_icon_α
.Lx436_0:               cmp              eax, 1;                              jne   .Lx436_1
                        mov              rax, qword ptr [rsp + 9328]
                        mov              qword ptr [rsp + 9264], rax
                        mov              rax, qword ptr [rsp + 9336]
                        mov              qword ptr [rsp + 9272], rax;         jmp   n25_call_builtin_icon_α
.Lx436_1:                                                                     jmp   n25_call_builtin_icon_α
n24_disjunction_β:      mov              eax, dword ptr [rsp + 9280]
                        cmp              eax, 0;                              je    n24_disjunction_af
                                                                              jmp   n24_disjunction_af
n24_disjunction_af:     add              dword ptr [rsp + 9280], 1
                        mov              eax, dword ptr [rsp + 9280]
                        cmp              eax, 1;                              je    n28_lit_string_α
                                                                              jmp   n31_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n25_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 9264]
                        mov              qword ptr [rsp + 9232], rax
                        mov              rax, qword ptr [rsp + 9272]
                        mov              qword ptr [rsp + 9240], rax
                        .section         .rodata
.Lrkfn438:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn438]
                        lea              rsi, [rsp + 9232]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 9216], rax
                        mov              qword ptr [rsp + 9224], rdx
                        cmp              eax, 104;                            je    n24_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n26_conjunction_α
n25_call_builtin_icon_β:
                                                                              jmp   n24_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n26_conjunction_α:      mov              rax, qword ptr [rsp + 9216]
                        mov              qword ptr [rsp + 9200], rax
                        mov              rax, qword ptr [rsp + 9224]
                        mov              qword ptr [rsp + 9208], rax;         jmp   n27_scan_α
n26_conjunction_β:                                                            jmp   n31_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n27_scan_α:             mov              rax, qword ptr [rsp + 9200]
                        mov              qword ptr [rsp + 9168], rax
                        mov              rax, qword ptr [rsp + 9208]
                        mov              qword ptr [rsp + 9176], rax
                        lea              rdi, [rsp + 9136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 9136]
                        mov              r14, qword ptr [rsp + 9144]
                        mov              r15, qword ptr [rsp + 9152];         jmp   n32_call_builtin_icon_α
n27_scan_β:                                                                   jmp   n32_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:       mov              qword ptr [rsp + 9328], 2            # result
                        mov              dword ptr [rsp + 9332], 4
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rsp + 9336], rax;         jmp   n24_disjunction_as
n28_lit_string_β:                                                             jmp   n24_disjunction_af
.Lx442_0:               .quad            .Lx442_0_s
.Lx442_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_charset_α:      mov              qword ptr [rsp + 9312], 2            # result
                        mov              dword ptr [rsp + 9316], -1
                        mov              rax, qword ptr [rip + .Lx443_0]
                        mov              qword ptr [rsp + 9320], rax;         jmp   n30_scan_any_α
n29_lit_charset_β:                                                            jmp   n24_disjunction_af
.Lx443_0:               .quad            .Lx443_0_s
.Lx443_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n30_scan_any_α:         mov              eax, r14d
                        cmp              eax, r15d;                           jge   n24_disjunction_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx445_0]
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             rax, rax;                            je    n24_disjunction_af
                        mov              qword ptr [rsp + 9296], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 9304], rax;         jmp   n24_disjunction_as
n30_scan_any_β:                                                               jmp   n24_disjunction_af
.Lx445_0:               .quad            .Lx445_0_s
.Lx445_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n31_scan_α:             lea              rdi, [rsp + 9136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 9136]
                        mov              r14, qword ptr [rsp + 9144]
                        mov              r15, qword ptr [rsp + 9152];         jmp   n32_call_builtin_icon_α
n31_scan_β:                                                                   jmp   n32_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn449:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn449]
                        lea              rsi, [rsp + 9104]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 9088], rax
                        mov              qword ptr [rsp + 9096], rdx
                        cmp              eax, 104;                            je    n33_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n33_disjunction_α
n32_call_builtin_icon_β:
                                                                              jmp   n33_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n33_disjunction_α:      mov              qword ptr [rsp + 8944], 0
                        mov              qword ptr [rsp + 8952], 0
                        mov              dword ptr [rsp + 8960], 0;           jmp   n85_lit_charset_α
n33_disjunction_as:     mov              eax, dword ptr [rsp + 8960]
                        cmp              eax, 0;                              jne   .Lx451_0
                        mov              rax, qword ptr [rsp + 8976]
                        mov              qword ptr [rsp + 8944], rax
                        mov              rax, qword ptr [rsp + 8984]
                        mov              qword ptr [rsp + 8952], rax;         jmp   n34_call_builtin_icon_α
.Lx451_0:               cmp              eax, 1;                              jne   .Lx451_1
                        mov              rax, qword ptr [rsp + 9072]
                        mov              qword ptr [rsp + 8944], rax
                        mov              rax, qword ptr [rsp + 9080]
                        mov              qword ptr [rsp + 8952], rax;         jmp   n34_call_builtin_icon_α
.Lx451_1:                                                                     jmp   n34_call_builtin_icon_α
n33_disjunction_β:      mov              eax, dword ptr [rsp + 8960]
                        cmp              eax, 0;                              je    n33_disjunction_af
                                                                              jmp   n33_disjunction_af
n33_disjunction_af:     add              dword ptr [rsp + 8960], 1
                        mov              eax, dword ptr [rsp + 8960]
                        cmp              eax, 1;                              je    n84_lit_string_α
                                                                              jmp   n35_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 8944]
                        mov              qword ptr [rsp + 8912], rax
                        mov              rax, qword ptr [rsp + 8952]
                        mov              qword ptr [rsp + 8920], rax
                        .section         .rodata
.Lrkfn453:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn453]
                        lea              rsi, [rsp + 8912]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 8896], rax
                        mov              qword ptr [rsp + 8904], rdx
                        cmp              eax, 104;                            je    n33_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n35_disjunction_α
n34_call_builtin_icon_β:
                                                                              jmp   n33_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n35_disjunction_α:      mov              qword ptr [rsp + 8752], 0
                        mov              qword ptr [rsp + 8760], 0
                        mov              dword ptr [rsp + 8768], 0;           jmp   n81_lit_charset_α
n35_disjunction_as:     mov              eax, dword ptr [rsp + 8768]
                        cmp              eax, 0;                              jne   .Lx455_0
                        mov              rax, qword ptr [rsp + 8784]
                        mov              qword ptr [rsp + 8752], rax
                        mov              rax, qword ptr [rsp + 8792]
                        mov              qword ptr [rsp + 8760], rax;         jmp   n36_call_builtin_icon_α
.Lx455_0:               cmp              eax, 1;                              jne   .Lx455_1
                        mov              rax, qword ptr [rsp + 8880]
                        mov              qword ptr [rsp + 8752], rax
                        mov              rax, qword ptr [rsp + 8888]
                        mov              qword ptr [rsp + 8760], rax;         jmp   n36_call_builtin_icon_α
.Lx455_1:                                                                     jmp   n36_call_builtin_icon_α
n35_disjunction_β:      mov              eax, dword ptr [rsp + 8768]
                        cmp              eax, 0;                              je    n35_disjunction_af
                                                                              jmp   n35_disjunction_af
n35_disjunction_af:     add              dword ptr [rsp + 8768], 1
                        mov              eax, dword ptr [rsp + 8768]
                        cmp              eax, 1;                              je    n80_lit_string_α
                                                                              jmp   n37_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 8752]
                        mov              qword ptr [rsp + 8720], rax
                        mov              rax, qword ptr [rsp + 8760]
                        mov              qword ptr [rsp + 8728], rax
                        .section         .rodata
.Lrkfn457:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn457]
                        lea              rsi, [rsp + 8720]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 8704], rax
                        mov              qword ptr [rsp + 8712], rdx
                        cmp              eax, 104;                            je    n35_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n37_disjunction_α
n36_call_builtin_icon_β:
                                                                              jmp   n35_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n37_disjunction_α:      mov              qword ptr [rsp + 8560], 0
                        mov              qword ptr [rsp + 8568], 0
                        mov              dword ptr [rsp + 8576], 0;           jmp   n77_lit_charset_α
n37_disjunction_as:     mov              eax, dword ptr [rsp + 8576]
                        cmp              eax, 0;                              jne   .Lx459_0
                        mov              rax, qword ptr [rsp + 8592]
                        mov              qword ptr [rsp + 8560], rax
                        mov              rax, qword ptr [rsp + 8600]
                        mov              qword ptr [rsp + 8568], rax;         jmp   n38_call_builtin_icon_α
.Lx459_0:               cmp              eax, 1;                              jne   .Lx459_1
                        mov              rax, qword ptr [rsp + 8688]
                        mov              qword ptr [rsp + 8560], rax
                        mov              rax, qword ptr [rsp + 8696]
                        mov              qword ptr [rsp + 8568], rax;         jmp   n38_call_builtin_icon_α
.Lx459_1:                                                                     jmp   n38_call_builtin_icon_α
n37_disjunction_β:      mov              eax, dword ptr [rsp + 8576]
                        cmp              eax, 0;                              je    n37_disjunction_af
                                                                              jmp   n37_disjunction_af
n37_disjunction_af:     add              dword ptr [rsp + 8576], 1
                        mov              eax, dword ptr [rsp + 8576]
                        cmp              eax, 1;                              je    n76_lit_string_α
                                                                              jmp   n39_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 8560]
                        mov              qword ptr [rsp + 8528], rax
                        mov              rax, qword ptr [rsp + 8568]
                        mov              qword ptr [rsp + 8536], rax
                        .section         .rodata
.Lrkfn461:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn461]
                        lea              rsi, [rsp + 8528]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 8512], rax
                        mov              qword ptr [rsp + 8520], rdx
                        cmp              eax, 104;                            je    n37_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n39_call_builtin_icon_α
n38_call_builtin_icon_β:
                                                                              jmp   n37_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn463:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn463]
                        lea              rsi, [rsp + 8496]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 8480], rax
                        mov              qword ptr [rsp + 8488], rdx
                        cmp              eax, 104;                            je    n40_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n40_disjunction_α
n39_call_builtin_icon_β:
                                                                              jmp   n40_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n40_disjunction_α:      mov              qword ptr [rsp + 8336], 0
                        mov              qword ptr [rsp + 8344], 0
                        mov              dword ptr [rsp + 8352], 0;           jmp   n73_lit_string_α
n40_disjunction_as:     mov              eax, dword ptr [rsp + 8352]
                        cmp              eax, 0;                              jne   .Lx465_0
                        mov              rax, qword ptr [rsp + 8368]
                        mov              qword ptr [rsp + 8336], rax
                        mov              rax, qword ptr [rsp + 8376]
                        mov              qword ptr [rsp + 8344], rax;         jmp   n41_call_builtin_icon_α
.Lx465_0:               cmp              eax, 1;                              jne   .Lx465_1
                        mov              rax, qword ptr [rsp + 8464]
                        mov              qword ptr [rsp + 8336], rax
                        mov              rax, qword ptr [rsp + 8472]
                        mov              qword ptr [rsp + 8344], rax;         jmp   n41_call_builtin_icon_α
.Lx465_1:                                                                     jmp   n41_call_builtin_icon_α
n40_disjunction_β:      mov              eax, dword ptr [rsp + 8352]
                        cmp              eax, 0;                              je    n40_disjunction_af
                                                                              jmp   n40_disjunction_af
n40_disjunction_af:     add              dword ptr [rsp + 8352], 1
                        mov              eax, dword ptr [rsp + 8352]
                        cmp              eax, 1;                              je    n72_lit_string_α
                                                                              jmp   n42_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n41_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 8336]
                        mov              qword ptr [rsp + 8304], rax
                        mov              rax, qword ptr [rsp + 8344]
                        mov              qword ptr [rsp + 8312], rax
                        .section         .rodata
.Lrkfn467:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn467]
                        lea              rsi, [rsp + 8304]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 8288], rax
                        mov              qword ptr [rsp + 8296], rdx
                        cmp              eax, 104;                            je    n40_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n42_disjunction_α
n41_call_builtin_icon_β:
                                                                              jmp   n40_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n42_disjunction_α:      mov              qword ptr [rsp + 8144], 0
                        mov              qword ptr [rsp + 8152], 0
                        mov              dword ptr [rsp + 8160], 0;           jmp   n69_lit_string_α
n42_disjunction_as:     mov              eax, dword ptr [rsp + 8160]
                        cmp              eax, 0;                              jne   .Lx469_0
                        mov              rax, qword ptr [rsp + 8176]
                        mov              qword ptr [rsp + 8144], rax
                        mov              rax, qword ptr [rsp + 8184]
                        mov              qword ptr [rsp + 8152], rax;         jmp   n43_call_builtin_icon_α
.Lx469_0:               cmp              eax, 1;                              jne   .Lx469_1
                        mov              rax, qword ptr [rsp + 8272]
                        mov              qword ptr [rsp + 8144], rax
                        mov              rax, qword ptr [rsp + 8280]
                        mov              qword ptr [rsp + 8152], rax;         jmp   n43_call_builtin_icon_α
.Lx469_1:                                                                     jmp   n43_call_builtin_icon_α
n42_disjunction_β:      mov              eax, dword ptr [rsp + 8160]
                        cmp              eax, 0;                              je    n42_disjunction_af
                                                                              jmp   n42_disjunction_af
n42_disjunction_af:     add              dword ptr [rsp + 8160], 1
                        mov              eax, dword ptr [rsp + 8160]
                        cmp              eax, 1;                              je    n68_lit_string_α
                                                                              jmp   n44_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n43_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 8144]
                        mov              qword ptr [rsp + 8112], rax
                        mov              rax, qword ptr [rsp + 8152]
                        mov              qword ptr [rsp + 8120], rax
                        .section         .rodata
.Lrkfn471:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn471]
                        lea              rsi, [rsp + 8112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 8096], rax
                        mov              qword ptr [rsp + 8104], rdx
                        cmp              eax, 104;                            je    n42_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n44_disjunction_α
n43_call_builtin_icon_β:
                                                                              jmp   n42_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n44_disjunction_α:      mov              qword ptr [rsp + 7952], 0
                        mov              qword ptr [rsp + 7960], 0
                        mov              dword ptr [rsp + 7968], 0;           jmp   n65_lit_string_α
n44_disjunction_as:     mov              eax, dword ptr [rsp + 7968]
                        cmp              eax, 0;                              jne   .Lx473_0
                        mov              rax, qword ptr [rsp + 7984]
                        mov              qword ptr [rsp + 7952], rax
                        mov              rax, qword ptr [rsp + 7992]
                        mov              qword ptr [rsp + 7960], rax;         jmp   n45_call_builtin_icon_α
.Lx473_0:               cmp              eax, 1;                              jne   .Lx473_1
                        mov              rax, qword ptr [rsp + 8080]
                        mov              qword ptr [rsp + 7952], rax
                        mov              rax, qword ptr [rsp + 8088]
                        mov              qword ptr [rsp + 7960], rax;         jmp   n45_call_builtin_icon_α
.Lx473_1:                                                                     jmp   n45_call_builtin_icon_α
n44_disjunction_β:      mov              eax, dword ptr [rsp + 7968]
                        cmp              eax, 0;                              je    n44_disjunction_af
                                                                              jmp   n44_disjunction_af
n44_disjunction_af:     add              dword ptr [rsp + 7968], 1
                        mov              eax, dword ptr [rsp + 7968]
                        cmp              eax, 1;                              je    n64_lit_string_α
                                                                              jmp   n46_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n45_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 7952]
                        mov              qword ptr [rsp + 7920], rax
                        mov              rax, qword ptr [rsp + 7960]
                        mov              qword ptr [rsp + 7928], rax
                        .section         .rodata
.Lrkfn475:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn475]
                        lea              rsi, [rsp + 7920]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7904], rax
                        mov              qword ptr [rsp + 7912], rdx
                        cmp              eax, 104;                            je    n44_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n46_disjunction_α
n45_call_builtin_icon_β:
                                                                              jmp   n44_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n46_disjunction_α:      mov              qword ptr [rsp + 7760], 0
                        mov              qword ptr [rsp + 7768], 0
                        mov              dword ptr [rsp + 7776], 0;           jmp   n61_lit_string_α
n46_disjunction_as:     mov              eax, dword ptr [rsp + 7776]
                        cmp              eax, 0;                              jne   .Lx477_0
                        mov              rax, qword ptr [rsp + 7792]
                        mov              qword ptr [rsp + 7760], rax
                        mov              rax, qword ptr [rsp + 7800]
                        mov              qword ptr [rsp + 7768], rax;         jmp   n47_call_builtin_icon_α
.Lx477_0:               cmp              eax, 1;                              jne   .Lx477_1
                        mov              rax, qword ptr [rsp + 7888]
                        mov              qword ptr [rsp + 7760], rax
                        mov              rax, qword ptr [rsp + 7896]
                        mov              qword ptr [rsp + 7768], rax;         jmp   n47_call_builtin_icon_α
.Lx477_1:                                                                     jmp   n47_call_builtin_icon_α
n46_disjunction_β:      mov              eax, dword ptr [rsp + 7776]
                        cmp              eax, 0;                              je    n46_disjunction_af
                                                                              jmp   n46_disjunction_af
n46_disjunction_af:     add              dword ptr [rsp + 7776], 1
                        mov              eax, dword ptr [rsp + 7776]
                        cmp              eax, 1;                              je    n60_lit_string_α
                                                                              jmp   n48_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n47_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 7760]
                        mov              qword ptr [rsp + 7728], rax
                        mov              rax, qword ptr [rsp + 7768]
                        mov              qword ptr [rsp + 7736], rax
                        .section         .rodata
.Lrkfn479:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn479]
                        lea              rsi, [rsp + 7728]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7712], rax
                        mov              qword ptr [rsp + 7720], rdx
                        cmp              eax, 104;                            je    n46_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n48_call_builtin_icon_α
n47_call_builtin_icon_β:
                                                                              jmp   n46_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn481:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn481]
                        lea              rsi, [rsp + 7696]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7680], rax
                        mov              qword ptr [rsp + 7688], rdx
                        cmp              eax, 104;                            je    n49_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n49_disjunction_α
n48_call_builtin_icon_β:
                                                                              jmp   n49_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n49_disjunction_α:      mov              qword ptr [rsp + 7440], 0
                        mov              qword ptr [rsp + 7448], 0
                        mov              dword ptr [rsp + 7456], 0;           jmp   n52_lit_string_α
n49_disjunction_as:     mov              eax, dword ptr [rsp + 7456]
                        cmp              eax, 0;                              jne   .Lx483_0
                        mov              rax, qword ptr [rsp + 7472]
                        mov              qword ptr [rsp + 7440], rax
                        mov              rax, qword ptr [rsp + 7480]
                        mov              qword ptr [rsp + 7448], rax;         jmp   n50_call_builtin_icon_α
.Lx483_0:               cmp              eax, 1;                              jne   .Lx483_1
                        mov              rax, qword ptr [rsp + 7664]
                        mov              qword ptr [rsp + 7440], rax
                        mov              rax, qword ptr [rsp + 7672]
                        mov              qword ptr [rsp + 7448], rax;         jmp   n50_call_builtin_icon_α
.Lx483_1:                                                                     jmp   n50_call_builtin_icon_α
n49_disjunction_β:      mov              eax, dword ptr [rsp + 7456]
                        cmp              eax, 0;                              je    n54_call_builtin_gen_β
                                                                              jmp   n49_disjunction_af
n49_disjunction_af:     add              dword ptr [rsp + 7456], 1
                        mov              eax, dword ptr [rsp + 7456]
                        cmp              eax, 1;                              je    n51_lit_string_α
                                                                              jmp   n124_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n50_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 7440]
                        mov              qword ptr [rsp + 7408], rax
                        mov              rax, qword ptr [rsp + 7448]
                        mov              qword ptr [rsp + 7416], rax
                        .section         .rodata
.Lrkfn485:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn485]
                        lea              rsi, [rsp + 7408]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7392], rax
                        mov              qword ptr [rsp + 7400], rdx
                        cmp              eax, 104;                            je    n49_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n49_disjunction_β
n50_call_builtin_icon_β:
                                                                              jmp   n49_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:       mov              qword ptr [rsp + 7664], 2            # result
                        mov              dword ptr [rsp + 7668], 4
                        mov              rax, qword ptr [rip + .Lx486_0]
                        mov              qword ptr [rsp + 7672], rax;         jmp   n49_disjunction_as
n51_lit_string_β:                                                             jmp   n49_disjunction_af
.Lx486_0:               .quad            .Lx486_0_s
.Lx486_0_s:             .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:       mov              qword ptr [rsp + 7536], 2            # result
                        mov              dword ptr [rsp + 7540], 2
                        mov              rax, qword ptr [rip + .Lx487_0]
                        mov              qword ptr [rsp + 7544], rax;         jmp   n53_disjunction_α
n52_lit_string_β:                                                             jmp   n49_disjunction_af
.Lx487_0:               .quad            .Lx487_0_s
.Lx487_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n53_disjunction_α:      mov              qword ptr [rsp + 7552], 0
                        mov              qword ptr [rsp + 7560], 0
                        mov              dword ptr [rsp + 7568], 0;           jmp   n59_lit_string_α
n53_disjunction_as:     mov              eax, dword ptr [rsp + 7568]
                        cmp              eax, 0;                              jne   .Lx489_0
                        mov              rax, qword ptr [rsp + 7584]
                        mov              qword ptr [rsp + 7552], rax
                        mov              rax, qword ptr [rsp + 7592]
                        mov              qword ptr [rsp + 7560], rax;         jmp   n54_call_builtin_gen_α
.Lx489_0:               cmp              eax, 1;                              jne   .Lx489_1
                        mov              rax, qword ptr [rsp + 7600]
                        mov              qword ptr [rsp + 7552], rax
                        mov              rax, qword ptr [rsp + 7608]
                        mov              qword ptr [rsp + 7560], rax;         jmp   n54_call_builtin_gen_α
.Lx489_1:               cmp              eax, 2;                              jne   .Lx489_2
                        mov              rax, qword ptr [rsp + 7616]
                        mov              qword ptr [rsp + 7552], rax
                        mov              rax, qword ptr [rsp + 7624]
                        mov              qword ptr [rsp + 7560], rax;         jmp   n54_call_builtin_gen_α
.Lx489_2:               cmp              eax, 3;                              jne   .Lx489_3
                        mov              rax, qword ptr [rsp + 7632]
                        mov              qword ptr [rsp + 7552], rax
                        mov              rax, qword ptr [rsp + 7640]
                        mov              qword ptr [rsp + 7560], rax;         jmp   n54_call_builtin_gen_α
.Lx489_3:               cmp              eax, 4;                              jne   .Lx489_4
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 7552], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 7560], rax;         jmp   n54_call_builtin_gen_α
.Lx489_4:                                                                     jmp   n54_call_builtin_gen_α
n53_disjunction_β:      mov              eax, dword ptr [rsp + 7568]
                        cmp              eax, 0;                              je    n53_disjunction_af
                        cmp              eax, 1;                              je    n53_disjunction_af
                        cmp              eax, 2;                              je    n53_disjunction_af
                        cmp              eax, 3;                              je    n53_disjunction_af
                                                                              jmp   n53_disjunction_af
n53_disjunction_af:     add              dword ptr [rsp + 7568], 1
                        mov              eax, dword ptr [rsp + 7568]
                        cmp              eax, 1;                              je    n58_lit_string_α
                        cmp              eax, 2;                              je    n57_lit_string_α
                        cmp              eax, 3;                              je    n56_lit_string_α
                        cmp              eax, 4;                              je    n55_lit_string_α
                                                                              jmp   n49_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n54_call_builtin_gen_α: mov              rax, qword ptr [rsp + 7552]
                        mov              qword ptr [rsp + 7504], rax
                        mov              rax, qword ptr [rsp + 7560]
                        mov              qword ptr [rsp + 7512], rax
                        mov              rax, qword ptr [rsp + 7536]
                        mov              qword ptr [rsp + 7488], rax
                        mov              rax, qword ptr [rsp + 7544]
                        mov              qword ptr [rsp + 7496], rax
                        mov              qword ptr [rsp + 7520], 0
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx490_60:              .section         .rodata
.Lbynamegenfn55:        .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn55]
                        lea              rsi, [rsp + 7488]
                        mov              edx, 2
                        lea              rcx, [rsp + 7520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 7472], rax
                        mov              qword ptr [rsp + 7480], rdx
                        cmp              eax, 104;                            je    n53_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n49_disjunction_as
n54_call_builtin_gen_β:                                                       jmp   .Lx490_60
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:       mov              qword ptr [rsp + 7648], 2            # result
                        mov              dword ptr [rsp + 7652], 0
                        mov              rax, qword ptr [rip + .Lx491_0]
                        mov              qword ptr [rsp + 7656], rax;         jmp   n53_disjunction_as
n55_lit_string_β:                                                             jmp   n53_disjunction_af
.Lx491_0:               .quad            .Lx491_0_s
.Lx491_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:       mov              qword ptr [rsp + 7632], 2            # result
                        mov              dword ptr [rsp + 7636], 1
                        mov              rax, qword ptr [rip + .Lx492_0]
                        mov              qword ptr [rsp + 7640], rax;         jmp   n53_disjunction_as
n56_lit_string_β:                                                             jmp   n53_disjunction_af
.Lx492_0:               .quad            .Lx492_0_s
.Lx492_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:       mov              qword ptr [rsp + 7616], 2            # result
                        mov              dword ptr [rsp + 7620], 2
                        mov              rax, qword ptr [rip + .Lx493_0]
                        mov              qword ptr [rsp + 7624], rax;         jmp   n53_disjunction_as
n57_lit_string_β:                                                             jmp   n53_disjunction_af
.Lx493_0:               .quad            .Lx493_0_s
.Lx493_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:       mov              qword ptr [rsp + 7600], 2            # result
                        mov              dword ptr [rsp + 7604], 5
                        mov              rax, qword ptr [rip + .Lx494_0]
                        mov              qword ptr [rsp + 7608], rax;         jmp   n53_disjunction_as
n58_lit_string_β:                                                             jmp   n53_disjunction_af
.Lx494_0:               .quad            .Lx494_0_s
.Lx494_0_s:             .string          "ababa"
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:       mov              qword ptr [rsp + 7584], 2            # result
                        mov              dword ptr [rsp + 7588], 6
                        mov              rax, qword ptr [rip + .Lx495_0]
                        mov              qword ptr [rsp + 7592], rax;         jmp   n53_disjunction_as
n59_lit_string_β:                                                             jmp   n53_disjunction_af
.Lx495_0:               .quad            .Lx495_0_s
.Lx495_0_s:             .string          "ababab"
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:       mov              qword ptr [rsp + 7888], 2            # result
                        mov              dword ptr [rsp + 7892], 4
                        mov              rax, qword ptr [rip + .Lx496_0]
                        mov              qword ptr [rsp + 7896], rax;         jmp   n46_disjunction_as
n60_lit_string_β:                                                             jmp   n46_disjunction_af
.Lx496_0:               .quad            .Lx496_0_s
.Lx496_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:       mov              qword ptr [rsp + 7856], 2            # result
                        mov              dword ptr [rsp + 7860], 2
                        mov              rax, qword ptr [rip + .Lx497_0]
                        mov              qword ptr [rsp + 7864], rax;         jmp   n62_lit_string_α
n61_lit_string_β:                                                             jmp   n46_disjunction_af
.Lx497_0:               .quad            .Lx497_0_s
.Lx497_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:       mov              qword ptr [rsp + 7872], 2            # result
                        mov              dword ptr [rsp + 7876], 1
                        mov              rax, qword ptr [rip + .Lx498_0]
                        mov              qword ptr [rsp + 7880], rax;         jmp   n63_call_α
.Lx498_0:               .quad            .Lx498_0_s
.Lx498_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n63_call_α:             mov              rax, qword ptr [rsp + 7872]
                        mov              qword ptr [rsp + 7824], rax
                        mov              rax, qword ptr [rsp + 7880]
                        mov              qword ptr [rsp + 7832], rax
                        mov              rax, qword ptr [rsp + 7856]
                        mov              qword ptr [rsp + 7808], rax
                        mov              rax, qword ptr [rsp + 7864]
                        mov              qword ptr [rsp + 7816], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn64:           .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn64]
                        lea              rsi, [rsp + 7808]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7792], rax
                        mov              qword ptr [rsp + 7800], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n46_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n46_disjunction_as
n63_call_β:                                                                   jmp   n46_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:       mov              qword ptr [rsp + 8080], 2            # result
                        mov              dword ptr [rsp + 8084], 4
                        mov              rax, qword ptr [rip + .Lx500_0]
                        mov              qword ptr [rsp + 8088], rax;         jmp   n44_disjunction_as
n64_lit_string_β:                                                             jmp   n44_disjunction_af
.Lx500_0:               .quad            .Lx500_0_s
.Lx500_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:       mov              qword ptr [rsp + 8048], 2            # result
                        mov              dword ptr [rsp + 8052], 2
                        mov              rax, qword ptr [rip + .Lx501_0]
                        mov              qword ptr [rsp + 8056], rax;         jmp   n66_lit_string_α
n65_lit_string_β:                                                             jmp   n44_disjunction_af
.Lx501_0:               .quad            .Lx501_0_s
.Lx501_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:       mov              qword ptr [rsp + 8064], 2            # result
                        mov              dword ptr [rsp + 8068], 2
                        mov              rax, qword ptr [rip + .Lx502_0]
                        mov              qword ptr [rsp + 8072], rax;         jmp   n67_call_α
.Lx502_0:               .quad            .Lx502_0_s
.Lx502_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n67_call_α:             mov              rax, qword ptr [rsp + 8064]
                        mov              qword ptr [rsp + 8016], rax
                        mov              rax, qword ptr [rsp + 8072]
                        mov              qword ptr [rsp + 8024], rax
                        mov              rax, qword ptr [rsp + 8048]
                        mov              qword ptr [rsp + 8000], rax
                        mov              rax, qword ptr [rsp + 8056]
                        mov              qword ptr [rsp + 8008], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn68:           .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn68]
                        lea              rsi, [rsp + 8000]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7984], rax
                        mov              qword ptr [rsp + 7992], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n44_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n44_disjunction_as
n67_call_β:                                                                   jmp   n44_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:       mov              qword ptr [rsp + 8272], 2            # result
                        mov              dword ptr [rsp + 8276], 4
                        mov              rax, qword ptr [rip + .Lx504_0]
                        mov              qword ptr [rsp + 8280], rax;         jmp   n42_disjunction_as
n68_lit_string_β:                                                             jmp   n42_disjunction_af
.Lx504_0:               .quad            .Lx504_0_s
.Lx504_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:       mov              qword ptr [rsp + 8240], 2            # result
                        mov              dword ptr [rsp + 8244], 2
                        mov              rax, qword ptr [rip + .Lx505_0]
                        mov              qword ptr [rsp + 8248], rax;         jmp   n70_lit_string_α
n69_lit_string_β:                                                             jmp   n42_disjunction_af
.Lx505_0:               .quad            .Lx505_0_s
.Lx505_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:       mov              qword ptr [rsp + 8256], 2            # result
                        mov              dword ptr [rsp + 8260], 6
                        mov              rax, qword ptr [rip + .Lx506_0]
                        mov              qword ptr [rsp + 8264], rax;         jmp   n71_call_α
.Lx506_0:               .quad            .Lx506_0_s
.Lx506_0_s:             .string          "bbabab"
#-----------------------------------------------------------------------------------------------------------------------
n71_call_α:             mov              rax, qword ptr [rsp + 8256]
                        mov              qword ptr [rsp + 8208], rax
                        mov              rax, qword ptr [rsp + 8264]
                        mov              qword ptr [rsp + 8216], rax
                        mov              rax, qword ptr [rsp + 8240]
                        mov              qword ptr [rsp + 8192], rax
                        mov              rax, qword ptr [rsp + 8248]
                        mov              qword ptr [rsp + 8200], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn72:           .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn72]
                        lea              rsi, [rsp + 8192]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 8176], rax
                        mov              qword ptr [rsp + 8184], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n42_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n42_disjunction_as
n71_call_β:                                                                   jmp   n42_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:       mov              qword ptr [rsp + 8464], 2            # result
                        mov              dword ptr [rsp + 8468], 4
                        mov              rax, qword ptr [rip + .Lx508_0]
                        mov              qword ptr [rsp + 8472], rax;         jmp   n40_disjunction_as
n72_lit_string_β:                                                             jmp   n40_disjunction_af
.Lx508_0:               .quad            .Lx508_0_s
.Lx508_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:       mov              qword ptr [rsp + 8432], 2            # result
                        mov              dword ptr [rsp + 8436], 2
                        mov              rax, qword ptr [rip + .Lx509_0]
                        mov              qword ptr [rsp + 8440], rax;         jmp   n74_lit_string_α
n73_lit_string_β:                                                             jmp   n40_disjunction_af
.Lx509_0:               .quad            .Lx509_0_s
.Lx509_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:       mov              qword ptr [rsp + 8448], 2            # result
                        mov              dword ptr [rsp + 8452], 6
                        mov              rax, qword ptr [rip + .Lx510_0]
                        mov              qword ptr [rsp + 8456], rax;         jmp   n75_call_α
.Lx510_0:               .quad            .Lx510_0_s
.Lx510_0_s:             .string          "ababab"
#-----------------------------------------------------------------------------------------------------------------------
n75_call_α:             mov              rax, qword ptr [rsp + 8448]
                        mov              qword ptr [rsp + 8400], rax
                        mov              rax, qword ptr [rsp + 8456]
                        mov              qword ptr [rsp + 8408], rax
                        mov              rax, qword ptr [rsp + 8432]
                        mov              qword ptr [rsp + 8384], rax
                        mov              rax, qword ptr [rsp + 8440]
                        mov              qword ptr [rsp + 8392], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn76:           .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn76]
                        lea              rsi, [rsp + 8384]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 8368], rax
                        mov              qword ptr [rsp + 8376], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n40_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n40_disjunction_as
n75_call_β:                                                                   jmp   n40_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:       mov              qword ptr [rsp + 8688], 2            # result
                        mov              dword ptr [rsp + 8692], 4
                        mov              rax, qword ptr [rip + .Lx512_0]
                        mov              qword ptr [rsp + 8696], rax;         jmp   n37_disjunction_as
n76_lit_string_β:                                                             jmp   n37_disjunction_af
.Lx512_0:               .quad            .Lx512_0_s
.Lx512_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_charset_α:      mov              qword ptr [rsp + 8656], 2            # result
                        mov              dword ptr [rsp + 8660], -1
                        mov              rax, qword ptr [rip + .Lx513_0]
                        mov              qword ptr [rsp + 8664], rax;         jmp   n78_lit_string_α
n77_lit_charset_β:                                                            jmp   n37_disjunction_af
.Lx513_0:               .quad            .Lx513_0_s
.Lx513_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:       mov              qword ptr [rsp + 8672], 2            # result
                        mov              dword ptr [rsp + 8676], 7
                        mov              rax, qword ptr [rip + .Lx514_0]
                        mov              qword ptr [rsp + 8680], rax;         jmp   n79_call_builtin_icon_α
.Lx514_0:               .quad            .Lx514_0_s
.Lx514_0_s:             .string          "cababab"
#-----------------------------------------------------------------------------------------------------------------------
n79_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 8672]
                        mov              qword ptr [rsp + 8624], rax
                        mov              rax, qword ptr [rsp + 8680]
                        mov              qword ptr [rsp + 8632], rax
                        mov              rax, qword ptr [rsp + 8656]
                        mov              qword ptr [rsp + 8608], rax
                        mov              rax, qword ptr [rsp + 8664]
                        mov              qword ptr [rsp + 8616], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn80:           .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn80]
                        lea              rsi, [rsp + 8608]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 8592], rax
                        mov              qword ptr [rsp + 8600], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n37_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n37_disjunction_as
n79_call_builtin_icon_β:
                                                                              jmp   n37_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:       mov              qword ptr [rsp + 8880], 2            # result
                        mov              dword ptr [rsp + 8884], 4
                        mov              rax, qword ptr [rip + .Lx516_0]
                        mov              qword ptr [rsp + 8888], rax;         jmp   n35_disjunction_as
n80_lit_string_β:                                                             jmp   n35_disjunction_af
.Lx516_0:               .quad            .Lx516_0_s
.Lx516_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_charset_α:      mov              qword ptr [rsp + 8848], 2            # result
                        mov              dword ptr [rsp + 8852], -1
                        mov              rax, qword ptr [rip + .Lx517_0]
                        mov              qword ptr [rsp + 8856], rax;         jmp   n82_lit_string_α
n81_lit_charset_β:                                                            jmp   n35_disjunction_af
.Lx517_0:               .quad            .Lx517_0_s
.Lx517_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:       mov              qword ptr [rsp + 8864], 2            # result
                        mov              dword ptr [rsp + 8868], 6
                        mov              rax, qword ptr [rip + .Lx518_0]
                        mov              qword ptr [rsp + 8872], rax;         jmp   n83_call_builtin_icon_α
.Lx518_0:               .quad            .Lx518_0_s
.Lx518_0_s:             .string          "ababab"
#-----------------------------------------------------------------------------------------------------------------------
n83_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 8864]
                        mov              qword ptr [rsp + 8816], rax
                        mov              rax, qword ptr [rsp + 8872]
                        mov              qword ptr [rsp + 8824], rax
                        mov              rax, qword ptr [rsp + 8848]
                        mov              qword ptr [rsp + 8800], rax
                        mov              rax, qword ptr [rsp + 8856]
                        mov              qword ptr [rsp + 8808], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn84:           .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn84]
                        lea              rsi, [rsp + 8800]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 8784], rax
                        mov              qword ptr [rsp + 8792], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n35_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n35_disjunction_as
n83_call_builtin_icon_β:
                                                                              jmp   n35_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:       mov              qword ptr [rsp + 9072], 2            # result
                        mov              dword ptr [rsp + 9076], 4
                        mov              rax, qword ptr [rip + .Lx520_0]
                        mov              qword ptr [rsp + 9080], rax;         jmp   n33_disjunction_as
n84_lit_string_β:                                                             jmp   n33_disjunction_af
.Lx520_0:               .quad            .Lx520_0_s
.Lx520_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_charset_α:      mov              qword ptr [rsp + 9040], 2            # result
                        mov              dword ptr [rsp + 9044], -1
                        mov              rax, qword ptr [rip + .Lx521_0]
                        mov              qword ptr [rsp + 9048], rax;         jmp   n86_lit_string_α
n85_lit_charset_β:                                                            jmp   n33_disjunction_af
.Lx521_0:               .quad            .Lx521_0_s
.Lx521_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:       mov              qword ptr [rsp + 9056], 2            # result
                        mov              dword ptr [rsp + 9060], 6
                        mov              rax, qword ptr [rip + .Lx522_0]
                        mov              qword ptr [rsp + 9064], rax;         jmp   n87_call_builtin_icon_α
.Lx522_0:               .quad            .Lx522_0_s
.Lx522_0_s:             .string          "ababac"
#-----------------------------------------------------------------------------------------------------------------------
n87_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 9056]
                        mov              qword ptr [rsp + 9008], rax
                        mov              rax, qword ptr [rsp + 9064]
                        mov              qword ptr [rsp + 9016], rax
                        mov              rax, qword ptr [rsp + 9040]
                        mov              qword ptr [rsp + 8992], rax
                        mov              rax, qword ptr [rsp + 9048]
                        mov              qword ptr [rsp + 9000], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn88:           .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn88]
                        lea              rsi, [rsp + 8992]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 8976], rax
                        mov              qword ptr [rsp + 8984], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n33_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n33_disjunction_as
n87_call_builtin_icon_β:
                                                                              jmp   n33_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:       mov              qword ptr [rsp + 9584], 2            # result
                        mov              dword ptr [rsp + 9588], 4
                        mov              rax, qword ptr [rip + .Lx524_0]
                        mov              qword ptr [rsp + 9592], rax;         jmp   n17_disjunction_as
n88_lit_string_β:                                                             jmp   n17_disjunction_af
.Lx524_0:               .quad            .Lx524_0_s
.Lx524_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_charset_α:      mov              qword ptr [rsp + 9568], 2            # result
                        mov              dword ptr [rsp + 9572], -1
                        mov              rax, qword ptr [rip + .Lx525_0]
                        mov              qword ptr [rsp + 9576], rax;         jmp   n90_scan_any_α
n89_lit_charset_β:                                                            jmp   n17_disjunction_af
.Lx525_0:               .quad            .Lx525_0_s
.Lx525_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n90_scan_any_α:         mov              eax, r14d
                        cmp              eax, r15d;                           jge   n17_disjunction_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx527_0]
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             rax, rax;                            je    n17_disjunction_af
                        mov              qword ptr [rsp + 9552], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 9560], rax;         jmp   n17_disjunction_as
n90_scan_any_β:                                                               jmp   n17_disjunction_af
.Lx527_0:               .quad            .Lx527_0_s
.Lx527_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:       mov              qword ptr [rsp + 9872], 2            # result
                        mov              dword ptr [rsp + 9876], 4
                        mov              rax, qword ptr [rip + .Lx528_0]
                        mov              qword ptr [rsp + 9880], rax;         jmp   n12_disjunction_as
n91_lit_string_β:                                                             jmp   n12_disjunction_af
.Lx528_0:               .quad            .Lx528_0_s
.Lx528_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_charset_α:      mov              qword ptr [rsp + 9840], 2            # result
                        mov              dword ptr [rsp + 9844], -1
                        mov              rax, qword ptr [rip + .Lx529_0]
                        mov              qword ptr [rsp + 9848], rax;         jmp   n93_lit_string_α
n92_lit_charset_β:                                                            jmp   n12_disjunction_af
.Lx529_0:               .quad            .Lx529_0_s
.Lx529_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:       mov              qword ptr [rsp + 9856], 2            # result
                        mov              dword ptr [rsp + 9860], 6
                        mov              rax, qword ptr [rip + .Lx530_0]
                        mov              qword ptr [rsp + 9864], rax;         jmp   n94_call_builtin_icon_α
.Lx530_0:               .quad            .Lx530_0_s
.Lx530_0_s:             .string          "1234ab"
#-----------------------------------------------------------------------------------------------------------------------
n94_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 9856]
                        mov              qword ptr [rsp + 9808], rax
                        mov              rax, qword ptr [rsp + 9864]
                        mov              qword ptr [rsp + 9816], rax
                        mov              rax, qword ptr [rsp + 9840]
                        mov              qword ptr [rsp + 9792], rax
                        mov              rax, qword ptr [rsp + 9848]
                        mov              qword ptr [rsp + 9800], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn95:           .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn95]
                        lea              rsi, [rsp + 9792]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 9776], rax
                        mov              qword ptr [rsp + 9784], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n12_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n12_disjunction_as
n94_call_builtin_icon_β:
                                                                              jmp   n12_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:       mov              qword ptr [rsp + 10080], 2           # result
                        mov              dword ptr [rsp + 10084], 4
                        mov              rax, qword ptr [rip + .Lx532_0]
                        mov              qword ptr [rsp + 10088], rax;        jmp   n8_disjunction_as
n95_lit_string_β:                                                             jmp   n8_disjunction_af
.Lx532_0:               .quad            .Lx532_0_s
.Lx532_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_charset_α:      mov              qword ptr [rsp + 10048], 2           # result
                        mov              dword ptr [rsp + 10052], -1
                        mov              rax, qword ptr [rip + .Lx533_0]
                        mov              qword ptr [rsp + 10056], rax;        jmp   n97_lit_string_α
n96_lit_charset_β:                                                            jmp   n8_disjunction_af
.Lx533_0:               .quad            .Lx533_0_s
.Lx533_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:       mov              qword ptr [rsp + 10064], 2           # result
                        mov              dword ptr [rsp + 10068], 6
                        mov              rax, qword ptr [rip + .Lx534_0]
                        mov              qword ptr [rsp + 10072], rax;        jmp   n98_call_builtin_icon_α
.Lx534_0:               .quad            .Lx534_0_s
.Lx534_0_s:             .string          "1234ab"
#-----------------------------------------------------------------------------------------------------------------------
n98_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 10064]
                        mov              qword ptr [rsp + 10016], rax
                        mov              rax, qword ptr [rsp + 10072]
                        mov              qword ptr [rsp + 10024], rax
                        mov              rax, qword ptr [rsp + 10048]
                        mov              qword ptr [rsp + 10000], rax
                        mov              rax, qword ptr [rsp + 10056]
                        mov              qword ptr [rsp + 10008], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn99:           .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn99]
                        lea              rsi, [rsp + 10000]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 9984], rax
                        mov              qword ptr [rsp + 9992], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n8_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n8_disjunction_as
n98_call_builtin_icon_β:
                                                                              jmp   n8_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:       mov              qword ptr [rsp + 10304], 2           # result
                        mov              dword ptr [rsp + 10308], 4
                        mov              rax, qword ptr [rip + .Lx536_0]
                        mov              qword ptr [rsp + 10312], rax;        jmp   n6_disjunction_as
n99_lit_string_β:                                                             jmp   n6_disjunction_af
.Lx536_0:               .quad            .Lx536_0_s
.Lx536_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_charset_α:     mov              qword ptr [rsp + 10256], 2           # result
                        mov              dword ptr [rsp + 10260], -1
                        mov              rax, qword ptr [rip + .Lx537_0]
                        mov              qword ptr [rsp + 10264], rax;        jmp   n101_lit_string_α
n100_lit_charset_β:                                                           jmp   n6_disjunction_af
.Lx537_0:               .quad            .Lx537_0_s
.Lx537_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:      mov              qword ptr [rsp + 10272], 2           # result
                        mov              dword ptr [rsp + 10276], 6
                        mov              rax, qword ptr [rip + .Lx538_0]
                        mov              qword ptr [rsp + 10280], rax;        jmp   n102_lit_integer_α
.Lx538_0:               .quad            .Lx538_0_s
.Lx538_0_s:             .string          "1234ab"
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_integer_α:     mov              qword ptr [rsp + 10288], 3           # result
                        mov              rax, qword ptr [rip + .Lx539_0]
                        mov              qword ptr [rsp + 10296], rax;        jmp   n103_call_builtin_icon_α
.Lx539_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n103_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 10288]
                        mov              qword ptr [rsp + 10224], rax
                        mov              rax, qword ptr [rsp + 10296]
                        mov              qword ptr [rsp + 10232], rax
                        mov              rax, qword ptr [rsp + 10272]
                        mov              qword ptr [rsp + 10208], rax
                        mov              rax, qword ptr [rsp + 10280]
                        mov              qword ptr [rsp + 10216], rax
                        mov              rax, qword ptr [rsp + 10256]
                        mov              qword ptr [rsp + 10192], rax
                        mov              rax, qword ptr [rsp + 10264]
                        mov              qword ptr [rsp + 10200], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn104:          .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn104]
                        lea              rsi, [rsp + 10192]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 10176], rax
                        mov              qword ptr [rsp + 10184], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n6_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n6_disjunction_as
n103_call_builtin_icon_β:
                                                                              jmp   n6_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:      mov              qword ptr [rsp + 10560], 2           # result
                        mov              dword ptr [rsp + 10564], 4
                        mov              rax, qword ptr [rip + .Lx541_0]
                        mov              qword ptr [rsp + 10568], rax;        jmp   n4_disjunction_as
n104_lit_string_β:                                                            jmp   n4_disjunction_af
.Lx541_0:               .quad            .Lx541_0_s
.Lx541_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_charset_α:     mov              qword ptr [rsp + 10496], 2           # result
                        mov              dword ptr [rsp + 10500], -1
                        mov              rax, qword ptr [rip + .Lx542_0]
                        mov              qword ptr [rsp + 10504], rax;        jmp   n106_lit_string_α
n105_lit_charset_β:                                                           jmp   n4_disjunction_af
.Lx542_0:               .quad            .Lx542_0_s
.Lx542_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:      mov              qword ptr [rsp + 10512], 2           # result
                        mov              dword ptr [rsp + 10516], 6
                        mov              rax, qword ptr [rip + .Lx543_0]
                        mov              qword ptr [rsp + 10520], rax;        jmp   n107_lit_integer_α
.Lx543_0:               .quad            .Lx543_0_s
.Lx543_0_s:             .string          "1234ab"
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_integer_α:     mov              qword ptr [rsp + 10528], 3           # result
                        mov              rax, qword ptr [rip + .Lx544_0]
                        mov              qword ptr [rsp + 10536], rax;        jmp   n108_lit_integer_α
.Lx544_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_integer_α:     mov              qword ptr [rsp + 10544], 3           # result
                        mov              rax, qword ptr [rip + .Lx545_0]
                        mov              qword ptr [rsp + 10552], rax;        jmp   n109_call_builtin_icon_α
.Lx545_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n109_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 10544]
                        mov              qword ptr [rsp + 10464], rax
                        mov              rax, qword ptr [rsp + 10552]
                        mov              qword ptr [rsp + 10472], rax
                        mov              rax, qword ptr [rsp + 10528]
                        mov              qword ptr [rsp + 10448], rax
                        mov              rax, qword ptr [rsp + 10536]
                        mov              qword ptr [rsp + 10456], rax
                        mov              rax, qword ptr [rsp + 10512]
                        mov              qword ptr [rsp + 10432], rax
                        mov              rax, qword ptr [rsp + 10520]
                        mov              qword ptr [rsp + 10440], rax
                        mov              rax, qword ptr [rsp + 10496]
                        mov              qword ptr [rsp + 10416], rax
                        mov              rax, qword ptr [rsp + 10504]
                        mov              qword ptr [rsp + 10424], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn110:          .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn110]
                        lea              rsi, [rsp + 10416]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 10400], rax
                        mov              qword ptr [rsp + 10408], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n4_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n4_disjunction_as
n109_call_builtin_icon_β:
                                                                              jmp   n4_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:      mov              qword ptr [rsp + 10816], 2           # result
                        mov              dword ptr [rsp + 10820], 4
                        mov              rax, qword ptr [rip + .Lx547_0]
                        mov              qword ptr [rsp + 10824], rax;        jmp   n2_disjunction_as
n110_lit_string_β:                                                            jmp   n2_disjunction_af
.Lx547_0:               .quad            .Lx547_0_s
.Lx547_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_charset_α:     mov              qword ptr [rsp + 10752], 2           # result
                        mov              dword ptr [rsp + 10756], -1
                        mov              rax, qword ptr [rip + .Lx548_0]
                        mov              qword ptr [rsp + 10760], rax;        jmp   n112_lit_string_α
n111_lit_charset_β:                                                           jmp   n2_disjunction_af
.Lx548_0:               .quad            .Lx548_0_s
.Lx548_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_string_α:      mov              qword ptr [rsp + 10768], 2           # result
                        mov              dword ptr [rsp + 10772], 6
                        mov              rax, qword ptr [rip + .Lx549_0]
                        mov              qword ptr [rsp + 10776], rax;        jmp   n113_lit_integer_α
.Lx549_0:               .quad            .Lx549_0_s
.Lx549_0_s:             .string          "1234ab"
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_integer_α:     mov              qword ptr [rsp + 10784], 3           # result
                        mov              rax, qword ptr [rip + .Lx550_0]
                        mov              qword ptr [rsp + 10792], rax;        jmp   n114_lit_integer_α
.Lx550_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_integer_α:     mov              qword ptr [rsp + 10800], 3           # result
                        mov              rax, qword ptr [rip + .Lx551_0]
                        mov              qword ptr [rsp + 10808], rax;        jmp   n115_call_builtin_icon_α
.Lx551_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n115_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 10800]
                        mov              qword ptr [rsp + 10720], rax
                        mov              rax, qword ptr [rsp + 10808]
                        mov              qword ptr [rsp + 10728], rax
                        mov              rax, qword ptr [rsp + 10784]
                        mov              qword ptr [rsp + 10704], rax
                        mov              rax, qword ptr [rsp + 10792]
                        mov              qword ptr [rsp + 10712], rax
                        mov              rax, qword ptr [rsp + 10768]
                        mov              qword ptr [rsp + 10688], rax
                        mov              rax, qword ptr [rsp + 10776]
                        mov              qword ptr [rsp + 10696], rax
                        mov              rax, qword ptr [rsp + 10752]
                        mov              qword ptr [rsp + 10672], rax
                        mov              rax, qword ptr [rsp + 10760]
                        mov              qword ptr [rsp + 10680], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn116:          .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn116]
                        lea              rsi, [rsp + 10672]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 10656], rax
                        mov              qword ptr [rsp + 10664], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n2_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n2_disjunction_as
n115_call_builtin_icon_β:
                                                                              jmp   n2_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:      mov              qword ptr [rsp + 11072], 2           # result
                        mov              dword ptr [rsp + 11076], 4
                        mov              rax, qword ptr [rip + .Lx553_0]
                        mov              qword ptr [rsp + 11080], rax;        jmp   n0_disjunction_as
n116_lit_string_β:                                                            jmp   n0_disjunction_af
.Lx553_0:               .quad            .Lx553_0_s
.Lx553_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_charset_α:     mov              qword ptr [rsp + 11008], 2           # result
                        mov              dword ptr [rsp + 11012], -1
                        mov              rax, qword ptr [rip + .Lx554_0]
                        mov              qword ptr [rsp + 11016], rax;        jmp   n118_lit_string_α
n117_lit_charset_β:                                                           jmp   n0_disjunction_af
.Lx554_0:               .quad            .Lx554_0_s
.Lx554_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:      mov              qword ptr [rsp + 11024], 2           # result
                        mov              dword ptr [rsp + 11028], 6
                        mov              rax, qword ptr [rip + .Lx555_0]
                        mov              qword ptr [rsp + 11032], rax;        jmp   n119_lit_integer_α
.Lx555_0:               .quad            .Lx555_0_s
.Lx555_0_s:             .string          "1234ab"
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_integer_α:     mov              qword ptr [rsp + 11040], 3           # result
                        mov              rax, qword ptr [rip + .Lx556_0]
                        mov              qword ptr [rsp + 11048], rax;        jmp   n120_lit_integer_α
.Lx556_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_integer_α:     mov              qword ptr [rsp + 11056], 3           # result
                        mov              rax, qword ptr [rip + .Lx557_0]
                        mov              qword ptr [rsp + 11064], rax;        jmp   n121_call_builtin_icon_α
.Lx557_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n121_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 11056]
                        mov              qword ptr [rsp + 10976], rax
                        mov              rax, qword ptr [rsp + 11064]
                        mov              qword ptr [rsp + 10984], rax
                        mov              rax, qword ptr [rsp + 11040]
                        mov              qword ptr [rsp + 10960], rax
                        mov              rax, qword ptr [rsp + 11048]
                        mov              qword ptr [rsp + 10968], rax
                        mov              rax, qword ptr [rsp + 11024]
                        mov              qword ptr [rsp + 10944], rax
                        mov              rax, qword ptr [rsp + 11032]
                        mov              qword ptr [rsp + 10952], rax
                        mov              rax, qword ptr [rsp + 11008]
                        mov              qword ptr [rsp + 10928], rax
                        mov              rax, qword ptr [rsp + 11016]
                        mov              qword ptr [rsp + 10936], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn122:          .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn122]
                        lea              rsi, [rsp + 10928]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 10912], rax
                        mov              qword ptr [rsp + 10920], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n0_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n0_disjunction_as
n121_call_builtin_icon_β:
                                                                              jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n122_scan_α:            lea              rdi, [rsp + 9632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 9632]
                        mov              r14, qword ptr [rsp + 9640]
                        mov              r15, qword ptr [rsp + 9648];         jmp   n15_lit_string_α
n122_scan_β:                                                                  jmp   n15_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n123_scan_α:            lea              rdi, [rsp + 9408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 9408]
                        mov              r14, qword ptr [rsp + 9416]
                        mov              r15, qword ptr [rsp + 9424];         jmp   n20_lit_string_α
n123_scan_β:                                                                  jmp   n20_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n124_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn564:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn564]
                        lea              rsi, [rsp + 7376]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7360], rax
                        mov              qword ptr [rsp + 7368], rdx
                        cmp              eax, 104;                            je    n125_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n125_disjunction_α
n124_call_builtin_icon_β:
                                                                              jmp   n125_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n125_disjunction_α:     mov              qword ptr [rsp + 7120], 0
                        mov              qword ptr [rsp + 7128], 0
                        mov              dword ptr [rsp + 7136], 0;           jmp   n128_lit_charset_α
n125_disjunction_as:    mov              eax, dword ptr [rsp + 7136]
                        cmp              eax, 0;                              jne   .Lx566_0
                        mov              rax, qword ptr [rsp + 7152]
                        mov              qword ptr [rsp + 7120], rax
                        mov              rax, qword ptr [rsp + 7160]
                        mov              qword ptr [rsp + 7128], rax;         jmp   n126_call_builtin_icon_α
.Lx566_0:               cmp              eax, 1;                              jne   .Lx566_1
                        mov              rax, qword ptr [rsp + 7344]
                        mov              qword ptr [rsp + 7120], rax
                        mov              rax, qword ptr [rsp + 7352]
                        mov              qword ptr [rsp + 7128], rax;         jmp   n126_call_builtin_icon_α
.Lx566_1:                                                                     jmp   n126_call_builtin_icon_α
n125_disjunction_β:     mov              eax, dword ptr [rsp + 7136]
                        cmp              eax, 0;                              je    n130_call_builtin_gen_β
                                                                              jmp   n125_disjunction_af
n125_disjunction_af:    add              dword ptr [rsp + 7136], 1
                        mov              eax, dword ptr [rsp + 7136]
                        cmp              eax, 1;                              je    n127_lit_string_α
                                                                              jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n126_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 7120]
                        mov              qword ptr [rsp + 7088], rax
                        mov              rax, qword ptr [rsp + 7128]
                        mov              qword ptr [rsp + 7096], rax
                        .section         .rodata
.Lrkfn568:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn568]
                        lea              rsi, [rsp + 7088]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7072], rax
                        mov              qword ptr [rsp + 7080], rdx
                        cmp              eax, 104;                            je    n125_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n125_disjunction_β
n126_call_builtin_icon_β:
                                                                              jmp   n125_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:      mov              qword ptr [rsp + 7344], 2            # result
                        mov              dword ptr [rsp + 7348], 4
                        mov              rax, qword ptr [rip + .Lx569_0]
                        mov              qword ptr [rsp + 7352], rax;         jmp   n125_disjunction_as
n127_lit_string_β:                                                            jmp   n125_disjunction_af
.Lx569_0:               .quad            .Lx569_0_s
.Lx569_0_s:             .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_charset_α:     mov              qword ptr [rsp + 7216], 2            # result
                        mov              dword ptr [rsp + 7220], -1
                        mov              rax, qword ptr [rip + .Lx570_0]
                        mov              qword ptr [rsp + 7224], rax;         jmp   n129_disjunction_α
n128_lit_charset_β:                                                           jmp   n125_disjunction_af
.Lx570_0:               .quad            .Lx570_0_s
.Lx570_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n129_disjunction_α:     mov              qword ptr [rsp + 7232], 0
                        mov              qword ptr [rsp + 7240], 0
                        mov              dword ptr [rsp + 7248], 0;           jmp   n135_lit_string_α
n129_disjunction_as:    mov              eax, dword ptr [rsp + 7248]
                        cmp              eax, 0;                              jne   .Lx572_0
                        mov              rax, qword ptr [rsp + 7264]
                        mov              qword ptr [rsp + 7232], rax
                        mov              rax, qword ptr [rsp + 7272]
                        mov              qword ptr [rsp + 7240], rax;         jmp   n130_call_builtin_gen_α
.Lx572_0:               cmp              eax, 1;                              jne   .Lx572_1
                        mov              rax, qword ptr [rsp + 7280]
                        mov              qword ptr [rsp + 7232], rax
                        mov              rax, qword ptr [rsp + 7288]
                        mov              qword ptr [rsp + 7240], rax;         jmp   n130_call_builtin_gen_α
.Lx572_1:               cmp              eax, 2;                              jne   .Lx572_2
                        mov              rax, qword ptr [rsp + 7296]
                        mov              qword ptr [rsp + 7232], rax
                        mov              rax, qword ptr [rsp + 7304]
                        mov              qword ptr [rsp + 7240], rax;         jmp   n130_call_builtin_gen_α
.Lx572_2:               cmp              eax, 3;                              jne   .Lx572_3
                        mov              rax, qword ptr [rsp + 7312]
                        mov              qword ptr [rsp + 7232], rax
                        mov              rax, qword ptr [rsp + 7320]
                        mov              qword ptr [rsp + 7240], rax;         jmp   n130_call_builtin_gen_α
.Lx572_3:               cmp              eax, 4;                              jne   .Lx572_4
                        mov              rax, qword ptr [rsp + 7328]
                        mov              qword ptr [rsp + 7232], rax
                        mov              rax, qword ptr [rsp + 7336]
                        mov              qword ptr [rsp + 7240], rax;         jmp   n130_call_builtin_gen_α
.Lx572_4:                                                                     jmp   n130_call_builtin_gen_α
n129_disjunction_β:     mov              eax, dword ptr [rsp + 7248]
                        cmp              eax, 0;                              je    n129_disjunction_af
                        cmp              eax, 1;                              je    n129_disjunction_af
                        cmp              eax, 2;                              je    n129_disjunction_af
                        cmp              eax, 3;                              je    n129_disjunction_af
                                                                              jmp   n129_disjunction_af
n129_disjunction_af:    add              dword ptr [rsp + 7248], 1
                        mov              eax, dword ptr [rsp + 7248]
                        cmp              eax, 1;                              je    n134_lit_string_α
                        cmp              eax, 2;                              je    n133_lit_string_α
                        cmp              eax, 3;                              je    n132_lit_string_α
                        cmp              eax, 4;                              je    n131_lit_string_α
                                                                              jmp   n125_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n130_call_builtin_gen_α:
                        mov              rax, qword ptr [rsp + 7232]
                        mov              qword ptr [rsp + 7184], rax
                        mov              rax, qword ptr [rsp + 7240]
                        mov              qword ptr [rsp + 7192], rax
                        mov              rax, qword ptr [rsp + 7216]
                        mov              qword ptr [rsp + 7168], rax
                        mov              rax, qword ptr [rsp + 7224]
                        mov              qword ptr [rsp + 7176], rax
                        mov              qword ptr [rsp + 7200], 0
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx573_60:              .section         .rodata
.Lbynamegenfn131:       .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn131]
                        lea              rsi, [rsp + 7168]
                        mov              edx, 2
                        lea              rcx, [rsp + 7200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 7152], rax
                        mov              qword ptr [rsp + 7160], rdx
                        cmp              eax, 104;                            je    n129_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n125_disjunction_as
n130_call_builtin_gen_β:
                                                                              jmp   .Lx573_60
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:      mov              qword ptr [rsp + 7328], 2            # result
                        mov              dword ptr [rsp + 7332], 0
                        mov              rax, qword ptr [rip + .Lx574_0]
                        mov              qword ptr [rsp + 7336], rax;         jmp   n129_disjunction_as
n131_lit_string_β:                                                            jmp   n129_disjunction_af
.Lx574_0:               .quad            .Lx574_0_s
.Lx574_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:      mov              qword ptr [rsp + 7312], 2            # result
                        mov              dword ptr [rsp + 7316], 1
                        mov              rax, qword ptr [rip + .Lx575_0]
                        mov              qword ptr [rsp + 7320], rax;         jmp   n129_disjunction_as
n132_lit_string_β:                                                            jmp   n129_disjunction_af
.Lx575_0:               .quad            .Lx575_0_s
.Lx575_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_string_α:      mov              qword ptr [rsp + 7296], 2            # result
                        mov              dword ptr [rsp + 7300], 2
                        mov              rax, qword ptr [rip + .Lx576_0]
                        mov              qword ptr [rsp + 7304], rax;         jmp   n129_disjunction_as
n133_lit_string_β:                                                            jmp   n129_disjunction_af
.Lx576_0:               .quad            .Lx576_0_s
.Lx576_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_string_α:      mov              qword ptr [rsp + 7280], 2            # result
                        mov              dword ptr [rsp + 7284], 5
                        mov              rax, qword ptr [rip + .Lx577_0]
                        mov              qword ptr [rsp + 7288], rax;         jmp   n129_disjunction_as
n134_lit_string_β:                                                            jmp   n129_disjunction_af
.Lx577_0:               .quad            .Lx577_0_s
.Lx577_0_s:             .string          "cbabc"
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:      mov              qword ptr [rsp + 7264], 2            # result
                        mov              dword ptr [rsp + 7268], 6
                        mov              rax, qword ptr [rip + .Lx578_0]
                        mov              qword ptr [rsp + 7272], rax;         jmp   n129_disjunction_as
n135_lit_string_β:                                                            jmp   n129_disjunction_af
.Lx578_0:               .quad            .Lx578_0_s
.Lx578_0_s:             .string          "abccab"
#-----------------------------------------------------------------------------------------------------------------------
n136_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn580:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn580]
                        lea              rsi, [rsp + 7056]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7040], rax
                        mov              qword ptr [rsp + 7048], rdx
                        cmp              eax, 104;                            je    n137_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n137_lit_string_α
n136_call_builtin_icon_β:
                                                                              jmp   n137_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:      mov              qword ptr [rsp + 7024], 2            # result
                        mov              dword ptr [rsp + 7028], 6
                        mov              rax, qword ptr [rip + .Lx581_0]
                        mov              qword ptr [rsp + 7032], rax;         jmp   n138_scan_enter_α
.Lx581_0:               .quad            .Lx581_0_s
.Lx581_0_s:             .string          "123456"
#-----------------------------------------------------------------------------------------------------------------------
n138_scan_enter_α:      mov              rdi, qword ptr [rsp + 7024]
                        mov              rsi, qword ptr [rsp + 7032]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n139_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_integer_α:     mov              qword ptr [rsp + 6944], 3            # result
                        mov              rax, qword ptr [rip + .Lx584_0]
                        mov              qword ptr [rsp + 6952], rax;         jmp   n140_scan_move_α
.Lx584_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n140_scan_move_α:       mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n146_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n146_scan_α
                        mov              qword ptr [rsp + 6928], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 6912], rax
                        mov              qword ptr [rsp + 6920], rdx;         jmp   n141_lit_string_α
n140_scan_move_β:       mov              r14, qword ptr [rsp + 6928];         jmp   n146_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:      mov              qword ptr [rsp + 6960], 2            # result
                        mov              dword ptr [rsp + 6964], 1
                        mov              rax, qword ptr [rip + .Lx587_0]
                        mov              qword ptr [rsp + 6968], rax;         jmp   n142_lit_integer_α
.Lx587_0:               .quad            .Lx587_0_s
.Lx587_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_integer_α:     mov              qword ptr [rsp + 7008], 3            # result
                        mov              rax, qword ptr [rip + .Lx588_0]
                        mov              qword ptr [rsp + 7016], rax;         jmp   n143_scan_move_α
.Lx588_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n143_scan_move_α:       mov              rax, 2
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n146_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n146_scan_α
                        mov              qword ptr [rsp + 6992], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 6976], rax
                        mov              qword ptr [rsp + 6984], rdx;         jmp   n144_call_builtin_icon_α
n143_scan_move_β:       mov              r14, qword ptr [rsp + 6992];         jmp   n146_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n144_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 6976]
                        mov              qword ptr [rsp + 6880], rax
                        mov              rax, qword ptr [rsp + 6984]
                        mov              qword ptr [rsp + 6888], rax
                        mov              rax, qword ptr [rsp + 6960]
                        mov              qword ptr [rsp + 6864], rax
                        mov              rax, qword ptr [rsp + 6968]
                        mov              qword ptr [rsp + 6872], rax
                        mov              rax, qword ptr [rsp + 6912]
                        mov              qword ptr [rsp + 6848], rax
                        mov              rax, qword ptr [rsp + 6920]
                        mov              qword ptr [rsp + 6856], rax
                        .section         .rodata
.Lrkfn592:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn592]
                        lea              rsi, [rsp + 6848]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6832], rax
                        mov              qword ptr [rsp + 6840], rdx
                        cmp              eax, 104;                            je    n146_scan_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n145_scan_α
n144_call_builtin_icon_β:
                                                                              jmp   n146_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n145_scan_α:            mov              rax, qword ptr [rsp + 6832]
                        mov              qword ptr [rsp + 6800], rax
                        mov              rax, qword ptr [rsp + 6840]
                        mov              qword ptr [rsp + 6808], rax
                        lea              rdi, [rsp + 6768]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 6768]
                        mov              r14, qword ptr [rsp + 6776]
                        mov              r15, qword ptr [rsp + 6784];         jmp   n147_lit_string_α
n145_scan_β:                                                                  jmp   n147_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n146_scan_α:            lea              rdi, [rsp + 6768]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 6768]
                        mov              r14, qword ptr [rsp + 6776]
                        mov              r15, qword ptr [rsp + 6784];         jmp   n147_lit_string_α
n146_scan_β:                                                                  jmp   n147_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_string_α:      mov              qword ptr [rsp + 6736], 2            # result
                        mov              dword ptr [rsp + 6740], 6
                        mov              rax, qword ptr [rip + .Lx597_0]
                        mov              qword ptr [rsp + 6744], rax;         jmp   n148_scan_enter_α
.Lx597_0:               .quad            .Lx597_0_s
.Lx597_0_s:             .string          "123456"
#-----------------------------------------------------------------------------------------------------------------------
n148_scan_enter_α:      mov              rdi, qword ptr [rsp + 6736]
                        mov              rsi, qword ptr [rsp + 6744]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n149_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_integer_α:     mov              qword ptr [rsp + 6720], 3            # result
                        mov              rax, qword ptr [rip + .Lx600_0]
                        mov              qword ptr [rsp + 6728], rax;         jmp   n150_scan_move_α
.Lx600_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n150_scan_move_α:       mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n152_lit_integer_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n152_lit_integer_α
                        mov              qword ptr [rsp + 6704], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 6688], rax
                        mov              qword ptr [rsp + 6696], rdx;         jmp   n151_call_builtin_icon_α
n150_scan_move_β:       mov              r14, qword ptr [rsp + 6704];         jmp   n152_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n151_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 6688]
                        mov              qword ptr [rsp + 6656], rax
                        mov              rax, qword ptr [rsp + 6696]
                        mov              qword ptr [rsp + 6664], rax
                        .section         .rodata
.Lrkfn604:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn604]
                        lea              rsi, [rsp + 6656]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6640], rax
                        mov              qword ptr [rsp + 6648], rdx
                        cmp              eax, 104;                            je    n152_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n152_lit_integer_α
n151_call_builtin_icon_β:
                                                                              jmp   n152_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_integer_α:     mov              qword ptr [rsp + 6624], 3            # result
                        mov              rax, qword ptr [rip + .Lx605_0]
                        mov              qword ptr [rsp + 6632], rax;         jmp   n153_scan_move_α
.Lx605_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n153_scan_move_α:       mov              rax, 2
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n155_lit_integer_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n155_lit_integer_α
                        mov              qword ptr [rsp + 6608], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 6592], rax
                        mov              qword ptr [rsp + 6600], rdx;         jmp   n154_call_builtin_icon_α
n153_scan_move_β:       mov              r14, qword ptr [rsp + 6608];         jmp   n155_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n154_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 6592]
                        mov              qword ptr [rsp + 6560], rax
                        mov              rax, qword ptr [rsp + 6600]
                        mov              qword ptr [rsp + 6568], rax
                        .section         .rodata
.Lrkfn609:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn609]
                        lea              rsi, [rsp + 6560]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6544], rax
                        mov              qword ptr [rsp + 6552], rdx
                        cmp              eax, 104;                            je    n155_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n155_lit_integer_α
n154_call_builtin_icon_β:
                                                                              jmp   n155_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_integer_α:     mov              qword ptr [rsp + 6528], 3            # result
                        mov              rax, qword ptr [rip + .Lx610_0]
                        mov              qword ptr [rsp + 6536], rax;         jmp   n156_scan_move_α
.Lx610_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n156_scan_move_α:       mov              rax, 3
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n158_lit_integer_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n158_lit_integer_α
                        mov              qword ptr [rsp + 6512], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 6496], rax
                        mov              qword ptr [rsp + 6504], rdx;         jmp   n157_call_builtin_icon_α
n156_scan_move_β:       mov              r14, qword ptr [rsp + 6512];         jmp   n158_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n157_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 6496]
                        mov              qword ptr [rsp + 6464], rax
                        mov              rax, qword ptr [rsp + 6504]
                        mov              qword ptr [rsp + 6472], rax
                        .section         .rodata
.Lrkfn614:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn614]
                        lea              rsi, [rsp + 6464]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6448], rax
                        mov              qword ptr [rsp + 6456], rdx
                        cmp              eax, 104;                            je    n158_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n158_lit_integer_α
n157_call_builtin_icon_β:
                                                                              jmp   n158_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_integer_α:     mov              qword ptr [rsp + 6432], 3            # result
                        mov              rax, qword ptr [rip + .Lx615_0]
                        mov              qword ptr [rsp + 6440], rax;         jmp   n159_scan_move_α
.Lx615_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n159_scan_move_α:       mov              rax, 4
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n161_lit_integer_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n161_lit_integer_α
                        mov              qword ptr [rsp + 6416], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 6400], rax
                        mov              qword ptr [rsp + 6408], rdx;         jmp   n160_call_builtin_icon_α
n159_scan_move_β:       mov              r14, qword ptr [rsp + 6416];         jmp   n161_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n160_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 6400]
                        mov              qword ptr [rsp + 6368], rax
                        mov              rax, qword ptr [rsp + 6408]
                        mov              qword ptr [rsp + 6376], rax
                        .section         .rodata
.Lrkfn619:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn619]
                        lea              rsi, [rsp + 6368]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6352], rax
                        mov              qword ptr [rsp + 6360], rdx
                        cmp              eax, 104;                            je    n161_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n161_lit_integer_α
n160_call_builtin_icon_β:
                                                                              jmp   n161_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_integer_α:     mov              qword ptr [rsp + 6336], 3            # result
                        mov              rax, qword ptr [rip + .Lx620_0]
                        mov              qword ptr [rsp + 6344], rax;         jmp   n162_scan_move_α
.Lx620_0:               .quad            18446744073709551612
#-----------------------------------------------------------------------------------------------------------------------
n162_scan_move_α:       mov              rax, -4
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n166_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n166_scan_α
                        mov              qword ptr [rsp + 6320], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 6304], rax
                        mov              qword ptr [rsp + 6312], rdx;         jmp   n163_call_builtin_icon_α
n162_scan_move_β:       mov              r14, qword ptr [rsp + 6320];         jmp   n166_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n163_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 6304]
                        mov              qword ptr [rsp + 6272], rax
                        mov              rax, qword ptr [rsp + 6312]
                        mov              qword ptr [rsp + 6280], rax
                        .section         .rodata
.Lrkfn624:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn624]
                        lea              rsi, [rsp + 6272]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6256], rax
                        mov              qword ptr [rsp + 6264], rdx
                        cmp              eax, 104;                            je    n166_scan_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n164_conjunction_α
n163_call_builtin_icon_β:
                                                                              jmp   n166_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n164_conjunction_α:     mov              rax, qword ptr [rsp + 6256]
                        mov              qword ptr [rsp + 6240], rax
                        mov              rax, qword ptr [rsp + 6264]
                        mov              qword ptr [rsp + 6248], rax;         jmp   n165_scan_α
n164_conjunction_β:                                                           jmp   n166_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n165_scan_α:            mov              rax, qword ptr [rsp + 6240]
                        mov              qword ptr [rsp + 6208], rax
                        mov              rax, qword ptr [rsp + 6248]
                        mov              qword ptr [rsp + 6216], rax
                        lea              rdi, [rsp + 6176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 6176]
                        mov              r14, qword ptr [rsp + 6184]
                        mov              r15, qword ptr [rsp + 6192];         jmp   n167_call_builtin_icon_α
n165_scan_β:                                                                  jmp   n167_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n166_scan_α:            lea              rdi, [rsp + 6176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 6176]
                        mov              r14, qword ptr [rsp + 6184]
                        mov              r15, qword ptr [rsp + 6192];         jmp   n167_call_builtin_icon_α
n166_scan_β:                                                                  jmp   n167_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n167_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn631:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn631]
                        lea              rsi, [rsp + 6144]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6128], rax
                        mov              qword ptr [rsp + 6136], rdx
                        cmp              eax, 104;                            je    n168_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n168_lit_string_α
n167_call_builtin_icon_β:
                                                                              jmp   n168_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_string_α:      mov              qword ptr [rsp + 6112], 2            # result
                        mov              dword ptr [rsp + 6116], 6
                        mov              rax, qword ptr [rip + .Lx632_0]
                        mov              qword ptr [rsp + 6120], rax;         jmp   n169_scan_enter_α
.Lx632_0:               .quad            .Lx632_0_s
.Lx632_0_s:             .string          "123456"
#-----------------------------------------------------------------------------------------------------------------------
n169_scan_enter_α:      mov              rdi, qword ptr [rsp + 6112]
                        mov              rsi, qword ptr [rsp + 6120]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n170_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n170_lit_integer_α:     mov              qword ptr [rsp + 6032], 3            # result
                        mov              rax, qword ptr [rip + .Lx635_0]
                        mov              qword ptr [rsp + 6040], rax;         jmp   n171_scan_tab_α
.Lx635_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n171_scan_tab_α:        mov              rax, 1
                        cmp              rax, 1;                              jge   .Lx637_0
                        add              rax, r15
                        add              rax, 1
.Lx637_0:               cmp              rax, 1;                              jl    n177_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n177_scan_α
                        mov              qword ptr [rsp + 6016], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 6000], rax
                        mov              qword ptr [rsp + 6008], rdx;         jmp   n172_lit_string_α
n171_scan_tab_β:        mov              r14, qword ptr [rsp + 6016];         jmp   n177_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_string_α:      mov              qword ptr [rsp + 6048], 2            # result
                        mov              dword ptr [rsp + 6052], 1
                        mov              rax, qword ptr [rip + .Lx638_0]
                        mov              qword ptr [rsp + 6056], rax;         jmp   n173_lit_integer_α
.Lx638_0:               .quad            .Lx638_0_s
.Lx638_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_integer_α:     mov              qword ptr [rsp + 6096], 3            # result
                        mov              rax, qword ptr [rip + .Lx639_0]
                        mov              qword ptr [rsp + 6104], rax;         jmp   n174_scan_tab_α
.Lx639_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n174_scan_tab_α:        mov              rax, 2
                        cmp              rax, 1;                              jge   .Lx641_0
                        add              rax, r15
                        add              rax, 1
.Lx641_0:               cmp              rax, 1;                              jl    n177_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n177_scan_α
                        mov              qword ptr [rsp + 6080], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 6064], rax
                        mov              qword ptr [rsp + 6072], rdx;         jmp   n175_call_builtin_icon_α
n174_scan_tab_β:        mov              r14, qword ptr [rsp + 6080];         jmp   n177_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n175_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 6064]
                        mov              qword ptr [rsp + 5968], rax
                        mov              rax, qword ptr [rsp + 6072]
                        mov              qword ptr [rsp + 5976], rax
                        mov              rax, qword ptr [rsp + 6048]
                        mov              qword ptr [rsp + 5952], rax
                        mov              rax, qword ptr [rsp + 6056]
                        mov              qword ptr [rsp + 5960], rax
                        mov              rax, qword ptr [rsp + 6000]
                        mov              qword ptr [rsp + 5936], rax
                        mov              rax, qword ptr [rsp + 6008]
                        mov              qword ptr [rsp + 5944], rax
                        .section         .rodata
.Lrkfn643:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn643]
                        lea              rsi, [rsp + 5936]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5920], rax
                        mov              qword ptr [rsp + 5928], rdx
                        cmp              eax, 104;                            je    n177_scan_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n176_scan_α
n175_call_builtin_icon_β:
                                                                              jmp   n177_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n176_scan_α:            mov              rax, qword ptr [rsp + 5920]
                        mov              qword ptr [rsp + 5888], rax
                        mov              rax, qword ptr [rsp + 5928]
                        mov              qword ptr [rsp + 5896], rax
                        lea              rdi, [rsp + 5856]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 5856]
                        mov              r14, qword ptr [rsp + 5864]
                        mov              r15, qword ptr [rsp + 5872];         jmp   n178_lit_string_α
n176_scan_β:                                                                  jmp   n178_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n177_scan_α:            lea              rdi, [rsp + 5856]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 5856]
                        mov              r14, qword ptr [rsp + 5864]
                        mov              r15, qword ptr [rsp + 5872];         jmp   n178_lit_string_α
n177_scan_β:                                                                  jmp   n178_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_string_α:      mov              qword ptr [rsp + 5824], 2            # result
                        mov              dword ptr [rsp + 5828], 6
                        mov              rax, qword ptr [rip + .Lx648_0]
                        mov              qword ptr [rsp + 5832], rax;         jmp   n179_scan_enter_α
.Lx648_0:               .quad            .Lx648_0_s
.Lx648_0_s:             .string          "123456"
#-----------------------------------------------------------------------------------------------------------------------
n179_scan_enter_α:      mov              rdi, qword ptr [rsp + 5824]
                        mov              rsi, qword ptr [rsp + 5832]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n180_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_integer_α:     mov              qword ptr [rsp + 5808], 3            # result
                        mov              rax, qword ptr [rip + .Lx651_0]
                        mov              qword ptr [rsp + 5816], rax;         jmp   n181_scan_tab_α
.Lx651_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n181_scan_tab_α:        mov              rax, 2
                        cmp              rax, 1;                              jge   .Lx653_0
                        add              rax, r15
                        add              rax, 1
.Lx653_0:               cmp              rax, 1;                              jl    n183_lit_integer_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n183_lit_integer_α
                        mov              qword ptr [rsp + 5792], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 5776], rax
                        mov              qword ptr [rsp + 5784], rdx;         jmp   n182_call_builtin_icon_α
n181_scan_tab_β:        mov              r14, qword ptr [rsp + 5792];         jmp   n183_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n182_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 5776]
                        mov              qword ptr [rsp + 5744], rax
                        mov              rax, qword ptr [rsp + 5784]
                        mov              qword ptr [rsp + 5752], rax
                        .section         .rodata
.Lrkfn655:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn655]
                        lea              rsi, [rsp + 5744]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5728], rax
                        mov              qword ptr [rsp + 5736], rdx
                        cmp              eax, 104;                            je    n183_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n183_lit_integer_α
n182_call_builtin_icon_β:
                                                                              jmp   n183_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_integer_α:     mov              qword ptr [rsp + 5712], 3            # result
                        mov              rax, qword ptr [rip + .Lx656_0]
                        mov              qword ptr [rsp + 5720], rax;         jmp   n184_scan_tab_α
.Lx656_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n184_scan_tab_α:        mov              rax, 4
                        cmp              rax, 1;                              jge   .Lx658_0
                        add              rax, r15
                        add              rax, 1
.Lx658_0:               cmp              rax, 1;                              jl    n186_lit_integer_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n186_lit_integer_α
                        mov              qword ptr [rsp + 5696], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 5680], rax
                        mov              qword ptr [rsp + 5688], rdx;         jmp   n185_call_builtin_icon_α
n184_scan_tab_β:        mov              r14, qword ptr [rsp + 5696];         jmp   n186_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n185_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 5680]
                        mov              qword ptr [rsp + 5648], rax
                        mov              rax, qword ptr [rsp + 5688]
                        mov              qword ptr [rsp + 5656], rax
                        .section         .rodata
.Lrkfn660:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn660]
                        lea              rsi, [rsp + 5648]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5632], rax
                        mov              qword ptr [rsp + 5640], rdx
                        cmp              eax, 104;                            je    n186_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n186_lit_integer_α
n185_call_builtin_icon_β:
                                                                              jmp   n186_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_integer_α:     mov              qword ptr [rsp + 5616], 3            # result
                        mov              rax, qword ptr [rip + .Lx661_0]
                        mov              qword ptr [rsp + 5624], rax;         jmp   n187_scan_tab_α
.Lx661_0:               .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n187_scan_tab_α:        mov              rax, -1
                        cmp              rax, 1;                              jge   .Lx663_0
                        add              rax, r15
                        add              rax, 1
.Lx663_0:               cmp              rax, 1;                              jl    n189_lit_integer_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n189_lit_integer_α
                        mov              qword ptr [rsp + 5600], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 5584], rax
                        mov              qword ptr [rsp + 5592], rdx;         jmp   n188_call_builtin_icon_α
n187_scan_tab_β:        mov              r14, qword ptr [rsp + 5600];         jmp   n189_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n188_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 5584]
                        mov              qword ptr [rsp + 5552], rax
                        mov              rax, qword ptr [rsp + 5592]
                        mov              qword ptr [rsp + 5560], rax
                        .section         .rodata
.Lrkfn665:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn665]
                        lea              rsi, [rsp + 5552]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5536], rax
                        mov              qword ptr [rsp + 5544], rdx
                        cmp              eax, 104;                            je    n189_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n189_lit_integer_α
n188_call_builtin_icon_β:
                                                                              jmp   n189_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_integer_α:     mov              qword ptr [rsp + 5520], 3            # result
                        mov              rax, qword ptr [rip + .Lx666_0]
                        mov              qword ptr [rsp + 5528], rax;         jmp   n190_scan_tab_α
.Lx666_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n190_scan_tab_α:        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lx668_0
                        add              rax, r15
                        add              rax, 1
.Lx668_0:               cmp              rax, 1;                              jl    n194_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n194_scan_α
                        mov              qword ptr [rsp + 5504], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 5488], rax
                        mov              qword ptr [rsp + 5496], rdx;         jmp   n191_call_builtin_icon_α
n190_scan_tab_β:        mov              r14, qword ptr [rsp + 5504];         jmp   n194_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n191_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 5488]
                        mov              qword ptr [rsp + 5456], rax
                        mov              rax, qword ptr [rsp + 5496]
                        mov              qword ptr [rsp + 5464], rax
                        .section         .rodata
.Lrkfn670:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn670]
                        lea              rsi, [rsp + 5456]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5440], rax
                        mov              qword ptr [rsp + 5448], rdx
                        cmp              eax, 104;                            je    n194_scan_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n192_conjunction_α
n191_call_builtin_icon_β:
                                                                              jmp   n194_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n192_conjunction_α:     mov              rax, qword ptr [rsp + 5440]
                        mov              qword ptr [rsp + 5424], rax
                        mov              rax, qword ptr [rsp + 5448]
                        mov              qword ptr [rsp + 5432], rax;         jmp   n193_scan_α
n192_conjunction_β:                                                           jmp   n194_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n193_scan_α:            mov              rax, qword ptr [rsp + 5424]
                        mov              qword ptr [rsp + 5392], rax
                        mov              rax, qword ptr [rsp + 5432]
                        mov              qword ptr [rsp + 5400], rax
                        lea              rdi, [rsp + 5360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 5360]
                        mov              r14, qword ptr [rsp + 5368]
                        mov              r15, qword ptr [rsp + 5376];         jmp   n195_lit_string_α
n193_scan_β:                                                                  jmp   n195_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n194_scan_α:            lea              rdi, [rsp + 5360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 5360]
                        mov              r14, qword ptr [rsp + 5368]
                        mov              r15, qword ptr [rsp + 5376];         jmp   n195_lit_string_α
n194_scan_β:                                                                  jmp   n195_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_string_α:      mov              qword ptr [rsp + 5328], 2            # result
                        mov              dword ptr [rsp + 5332], 6
                        mov              rax, qword ptr [rip + .Lx676_0]
                        mov              qword ptr [rsp + 5336], rax;         jmp   n196_scan_enter_α
.Lx676_0:               .quad            .Lx676_0_s
.Lx676_0_s:             .string          "123456"
#-----------------------------------------------------------------------------------------------------------------------
n196_scan_enter_α:      mov              rdi, qword ptr [rsp + 5328]
                        mov              rsi, qword ptr [rsp + 5336]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n197_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_integer_α:     mov              qword ptr [rsp + 5312], 3            # result
                        mov              rax, qword ptr [rip + .Lx679_0]
                        mov              qword ptr [rsp + 5320], rax;         jmp   n198_scan_tab_α
.Lx679_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n198_scan_tab_α:        mov              rax, 4
                        cmp              rax, 1;                              jge   .Lx681_0
                        add              rax, r15
                        add              rax, 1
.Lx681_0:               cmp              rax, 1;                              jl    n200_lit_integer_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n200_lit_integer_α
                        mov              qword ptr [rsp + 5296], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 5280], rax
                        mov              qword ptr [rsp + 5288], rdx;         jmp   n199_call_builtin_icon_α
n198_scan_tab_β:        mov              r14, qword ptr [rsp + 5296];         jmp   n200_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n199_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 5280]
                        mov              qword ptr [rsp + 5248], rax
                        mov              rax, qword ptr [rsp + 5288]
                        mov              qword ptr [rsp + 5256], rax
                        .section         .rodata
.Lrkfn683:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn683]
                        lea              rsi, [rsp + 5248]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5232], rax
                        mov              qword ptr [rsp + 5240], rdx
                        cmp              eax, 104;                            je    n200_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n200_lit_integer_α
n199_call_builtin_icon_β:
                                                                              jmp   n200_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_integer_α:     mov              qword ptr [rsp + 5216], 3            # result
                        mov              rax, qword ptr [rip + .Lx684_0]
                        mov              qword ptr [rsp + 5224], rax;         jmp   n201_scan_tab_α
.Lx684_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n201_scan_tab_α:        mov              rax, 1
                        cmp              rax, 1;                              jge   .Lx686_0
                        add              rax, r15
                        add              rax, 1
.Lx686_0:               cmp              rax, 1;                              jl    n203_lit_integer_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n203_lit_integer_α
                        mov              qword ptr [rsp + 5200], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 5184], rax
                        mov              qword ptr [rsp + 5192], rdx;         jmp   n202_call_builtin_icon_α
n201_scan_tab_β:        mov              r14, qword ptr [rsp + 5200];         jmp   n203_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n202_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 5184]
                        mov              qword ptr [rsp + 5152], rax
                        mov              rax, qword ptr [rsp + 5192]
                        mov              qword ptr [rsp + 5160], rax
                        .section         .rodata
.Lrkfn688:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn688]
                        lea              rsi, [rsp + 5152]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5136], rax
                        mov              qword ptr [rsp + 5144], rdx
                        cmp              eax, 104;                            je    n203_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n203_lit_integer_α
n202_call_builtin_icon_β:
                                                                              jmp   n203_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_integer_α:     mov              qword ptr [rsp + 5120], 3            # result
                        mov              rax, qword ptr [rip + .Lx689_0]
                        mov              qword ptr [rsp + 5128], rax;         jmp   n204_scan_tab_α
.Lx689_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n204_scan_tab_α:        mov              rax, 3
                        cmp              rax, 1;                              jge   .Lx691_0
                        add              rax, r15
                        add              rax, 1
.Lx691_0:               cmp              rax, 1;                              jl    n208_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n208_scan_α
                        mov              qword ptr [rsp + 5104], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 5088], rax
                        mov              qword ptr [rsp + 5096], rdx;         jmp   n205_call_builtin_icon_α
n204_scan_tab_β:        mov              r14, qword ptr [rsp + 5104];         jmp   n208_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n205_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 5088]
                        mov              qword ptr [rsp + 5056], rax
                        mov              rax, qword ptr [rsp + 5096]
                        mov              qword ptr [rsp + 5064], rax
                        .section         .rodata
.Lrkfn693:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn693]
                        lea              rsi, [rsp + 5056]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5040], rax
                        mov              qword ptr [rsp + 5048], rdx
                        cmp              eax, 104;                            je    n208_scan_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n206_conjunction_α
n205_call_builtin_icon_β:
                                                                              jmp   n208_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n206_conjunction_α:     mov              rax, qword ptr [rsp + 5040]
                        mov              qword ptr [rsp + 5024], rax
                        mov              rax, qword ptr [rsp + 5048]
                        mov              qword ptr [rsp + 5032], rax;         jmp   n207_scan_α
n206_conjunction_β:                                                           jmp   n208_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n207_scan_α:            mov              rax, qword ptr [rsp + 5024]
                        mov              qword ptr [rsp + 4992], rax
                        mov              rax, qword ptr [rsp + 5032]
                        mov              qword ptr [rsp + 5000], rax
                        lea              rdi, [rsp + 4960]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 4960]
                        mov              r14, qword ptr [rsp + 4968]
                        mov              r15, qword ptr [rsp + 4976];         jmp   n209_call_builtin_icon_α
n207_scan_β:                                                                  jmp   n209_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n208_scan_α:            lea              rdi, [rsp + 4960]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 4960]
                        mov              r14, qword ptr [rsp + 4968]
                        mov              r15, qword ptr [rsp + 4976];         jmp   n209_call_builtin_icon_α
n208_scan_β:                                                                  jmp   n209_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n209_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn700:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn700]
                        lea              rsi, [rsp + 4928]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4912], rax
                        mov              qword ptr [rsp + 4920], rdx
                        cmp              eax, 104;                            je    n210_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n210_lit_string_α
n209_call_builtin_icon_β:
                                                                              jmp   n210_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n210_lit_string_α:      mov              qword ptr [rsp + 4896], 2            # result
                        mov              dword ptr [rsp + 4900], 3
                        mov              rax, qword ptr [rip + .Lx701_0]
                        mov              qword ptr [rsp + 4904], rax;         jmp   n211_scan_enter_α
.Lx701_0:               .quad            .Lx701_0_s
.Lx701_0_s:             .string          "-35"
#-----------------------------------------------------------------------------------------------------------------------
n211_scan_enter_α:      mov              rdi, qword ptr [rsp + 4896]
                        mov              rsi, qword ptr [rsp + 4904]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n212_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n212_lit_charset_α:     mov              qword ptr [rsp + 4880], 2            # result
                        mov              dword ptr [rsp + 4884], -1
                        mov              rax, qword ptr [rip + .Lx704_0]
                        mov              qword ptr [rsp + 4888], rax;         jmp   n213_scan_bal_α
.Lx704_0:               .quad            .Lx704_0_s
.Lx704_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n213_scan_bal_α:        mov              qword ptr [rsp + 4864], r14
                        mov              qword ptr [rsp + 4872], 0
.Lx706_0:               mov              rax, qword ptr [rsp + 4864]
                        cmp              rax, r15;                            jge   n216_scan_α
                        mov              rdx, qword ptr [rsp + 4872]
                        cmp              rdx, 0;                              jne   .Lx706_1
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx706_4]
                        push             rax
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             rax, rax
                        pop              rax;                                 je    .Lx706_1
                        mov              qword ptr [rsp + 4848], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 4856], rax;         jmp   n214_scan_α
.Lx706_1:               mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              rsi, 40;                             jne   .Lx706_2
                        inc              qword ptr [rsp + 4872];              jmp   .Lx706_3
.Lx706_2:               cmp              rsi, 41;                             jne   .Lx706_3
                        mov              rdx, qword ptr [rsp + 4872]
                        sub              rdx, 1
                        mov              qword ptr [rsp + 4872], rdx
                        cmp              rdx, 0;                              jl    n216_scan_α
.Lx706_3:               inc              qword ptr [rsp + 4864];              jmp   .Lx706_0
n213_scan_bal_β:        inc              qword ptr [rsp + 4864];              jmp   .Lx706_0
.Lx706_4:               .quad            .Lx706_4_s
.Lx706_4_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n214_scan_α:            mov              rax, qword ptr [rsp + 4848]
                        mov              qword ptr [rsp + 4816], rax
                        mov              rax, qword ptr [rsp + 4856]
                        mov              qword ptr [rsp + 4824], rax
                        lea              rdi, [rsp + 4784]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 4784]
                        mov              r14, qword ptr [rsp + 4792]
                        mov              r15, qword ptr [rsp + 4800];         jmp   n215_call_builtin_icon_α
n214_scan_β:            mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_reenter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax;                            jmp   n213_scan_bal_β
                                                                              jmp   n217_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n215_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4816]
                        mov              qword ptr [rsp + 4736], rax
                        mov              rax, qword ptr [rsp + 4824]
                        mov              qword ptr [rsp + 4744], rax
                        .section         .rodata
.Lrkfn710:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn710]
                        lea              rsi, [rsp + 4736]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4720], rax
                        mov              qword ptr [rsp + 4728], rdx
                        cmp              eax, 104;                            je    n214_scan_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n214_scan_β
n215_call_builtin_icon_β:
                                                                              jmp   n214_scan_β
#-----------------------------------------------------------------------------------------------------------------------
n216_scan_α:            lea              rdi, [rsp + 4784]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 4784]
                        mov              r14, qword ptr [rsp + 4792]
                        mov              r15, qword ptr [rsp + 4800];         jmp   n217_lit_string_α
n216_scan_β:                                                                  jmp   n217_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_string_α:      mov              qword ptr [rsp + 4704], 2            # result
                        mov              dword ptr [rsp + 4708], 15
                        mov              rax, qword ptr [rip + .Lx713_0]
                        mov              qword ptr [rsp + 4712], rax;         jmp   n218_scan_enter_α
.Lx713_0:               .quad            .Lx713_0_s
.Lx713_0_s:             .string          "((2*x)+3)+(5*y)"
#-----------------------------------------------------------------------------------------------------------------------
n218_scan_enter_α:      mov              rdi, qword ptr [rsp + 4704]
                        mov              rsi, qword ptr [rsp + 4712]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n219_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_charset_α:     mov              qword ptr [rsp + 4688], 2            # result
                        mov              dword ptr [rsp + 4692], -1
                        mov              rax, qword ptr [rip + .Lx716_0]
                        mov              qword ptr [rsp + 4696], rax;         jmp   n220_scan_bal_α
.Lx716_0:               .quad            .Lx716_0_s
.Lx716_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n220_scan_bal_α:        mov              qword ptr [rsp + 4672], r14
                        mov              qword ptr [rsp + 4680], 0
.Lx718_0:               mov              rax, qword ptr [rsp + 4672]
                        cmp              rax, r15;                            jge   n223_scan_α
                        mov              rdx, qword ptr [rsp + 4680]
                        cmp              rdx, 0;                              jne   .Lx718_1
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx718_4]
                        push             rax
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             rax, rax
                        pop              rax;                                 je    .Lx718_1
                        mov              qword ptr [rsp + 4656], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 4664], rax;         jmp   n221_scan_α
.Lx718_1:               mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              rsi, 40;                             jne   .Lx718_2
                        inc              qword ptr [rsp + 4680];              jmp   .Lx718_3
.Lx718_2:               cmp              rsi, 41;                             jne   .Lx718_3
                        mov              rdx, qword ptr [rsp + 4680]
                        sub              rdx, 1
                        mov              qword ptr [rsp + 4680], rdx
                        cmp              rdx, 0;                              jl    n223_scan_α
.Lx718_3:               inc              qword ptr [rsp + 4672];              jmp   .Lx718_0
n220_scan_bal_β:        inc              qword ptr [rsp + 4672];              jmp   .Lx718_0
.Lx718_4:               .quad            .Lx718_4_s
.Lx718_4_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n221_scan_α:            mov              rax, qword ptr [rsp + 4656]
                        mov              qword ptr [rsp + 4624], rax
                        mov              rax, qword ptr [rsp + 4664]
                        mov              qword ptr [rsp + 4632], rax
                        lea              rdi, [rsp + 4592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 4592]
                        mov              r14, qword ptr [rsp + 4600]
                        mov              r15, qword ptr [rsp + 4608];         jmp   n222_call_builtin_icon_α
n221_scan_β:            mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_reenter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax;                            jmp   n220_scan_bal_β
                                                                              jmp   n224_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n222_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4624]
                        mov              qword ptr [rsp + 4544], rax
                        mov              rax, qword ptr [rsp + 4632]
                        mov              qword ptr [rsp + 4552], rax
                        .section         .rodata
.Lrkfn722:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn722]
                        lea              rsi, [rsp + 4544]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4528], rax
                        mov              qword ptr [rsp + 4536], rdx
                        cmp              eax, 104;                            je    n221_scan_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n221_scan_β
n222_call_builtin_icon_β:
                                                                              jmp   n221_scan_β
#-----------------------------------------------------------------------------------------------------------------------
n223_scan_α:            lea              rdi, [rsp + 4592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 4592]
                        mov              r14, qword ptr [rsp + 4600]
                        mov              r15, qword ptr [rsp + 4608];         jmp   n224_lit_string_α
n223_scan_β:                                                                  jmp   n224_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n224_lit_string_α:      mov              qword ptr [rsp + 4512], 2            # result
                        mov              dword ptr [rsp + 4516], 20
                        mov              rax, qword ptr [rip + .Lx725_0]
                        mov              qword ptr [rsp + 4520], rax;         jmp   n225_scan_enter_α
.Lx725_0:               .quad            .Lx725_0_s
.Lx725_0_s:             .string          "[+,[2,3]],[*,[5,10]]"
#-----------------------------------------------------------------------------------------------------------------------
n225_scan_enter_α:      mov              rdi, qword ptr [rsp + 4512]
                        mov              rsi, qword ptr [rsp + 4520]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n226_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n226_lit_charset_α:     mov              qword ptr [rsp + 4464], 2            # result
                        mov              dword ptr [rsp + 4468], -1
                        mov              rax, qword ptr [rip + .Lx728_0]
                        mov              qword ptr [rsp + 4472], rax;         jmp   n227_lit_charset_α
.Lx728_0:               .quad            .Lx728_0_s
.Lx728_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_charset_α:     mov              qword ptr [rsp + 4480], 2            # result
                        mov              dword ptr [rsp + 4484], -1
                        mov              rax, qword ptr [rip + .Lx729_0]
                        mov              qword ptr [rsp + 4488], rax;         jmp   n228_lit_charset_α
.Lx729_0:               .quad            .Lx729_0_s
.Lx729_0_s:             .string          "["
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_charset_α:     mov              qword ptr [rsp + 4496], 2            # result
                        mov              dword ptr [rsp + 4500], -1
                        mov              rax, qword ptr [rip + .Lx730_0]
                        mov              qword ptr [rsp + 4504], rax;         jmp   n229_call_builtin_icon_α
.Lx730_0:               .quad            .Lx730_0_s
.Lx730_0_s:             .string          "]"
#-----------------------------------------------------------------------------------------------------------------------
n229_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4496]
                        mov              qword ptr [rsp + 4432], rax
                        mov              rax, qword ptr [rsp + 4504]
                        mov              qword ptr [rsp + 4440], rax
                        mov              rax, qword ptr [rsp + 4480]
                        mov              qword ptr [rsp + 4416], rax
                        mov              rax, qword ptr [rsp + 4488]
                        mov              qword ptr [rsp + 4424], rax
                        mov              rax, qword ptr [rsp + 4464]
                        mov              qword ptr [rsp + 4400], rax
                        mov              rax, qword ptr [rsp + 4472]
                        mov              qword ptr [rsp + 4408], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn230:          .string          "bal"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn230]
                        lea              rsi, [rsp + 4400]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4384], rax
                        mov              qword ptr [rsp + 4392], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n232_scan_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n230_scan_α
n229_call_builtin_icon_β:
                                                                              jmp   n232_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n230_scan_α:            mov              rax, qword ptr [rsp + 4384]
                        mov              qword ptr [rsp + 4352], rax
                        mov              rax, qword ptr [rsp + 4392]
                        mov              qword ptr [rsp + 4360], rax
                        lea              rdi, [rsp + 4320]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 4320]
                        mov              r14, qword ptr [rsp + 4328]
                        mov              r15, qword ptr [rsp + 4336];         jmp   n231_call_builtin_icon_α
n230_scan_β:                                                                  jmp   n233_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n231_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4352]
                        mov              qword ptr [rsp + 4272], rax
                        mov              rax, qword ptr [rsp + 4360]
                        mov              qword ptr [rsp + 4280], rax
                        .section         .rodata
.Lrkfn735:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn735]
                        lea              rsi, [rsp + 4272]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4256], rax
                        mov              qword ptr [rsp + 4264], rdx
                        cmp              eax, 104;                            je    n233_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n233_call_builtin_icon_α
n231_call_builtin_icon_β:
                                                                              jmp   n233_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n232_scan_α:            lea              rdi, [rsp + 4320]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 4320]
                        mov              r14, qword ptr [rsp + 4328]
                        mov              r15, qword ptr [rsp + 4336];         jmp   n233_call_builtin_icon_α
n232_scan_β:                                                                  jmp   n233_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n233_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn739:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn739]
                        lea              rsi, [rsp + 4240]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4224], rax
                        mov              qword ptr [rsp + 4232], rdx
                        cmp              eax, 104;                            je    n234_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n234_lit_string_α
n233_call_builtin_icon_β:
                                                                              jmp   n234_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_string_α:      mov              qword ptr [rsp + 4208], 2            # result
                        mov              dword ptr [rsp + 4212], 5
                        mov              rax, qword ptr [rip + .Lx740_0]
                        mov              qword ptr [rsp + 4216], rax;         jmp   n235_scan_enter_α
.Lx740_0:               .quad            .Lx740_0_s
.Lx740_0_s:             .string          "12345"
#-----------------------------------------------------------------------------------------------------------------------
n235_scan_enter_α:      mov              rdi, qword ptr [rsp + 4208]
                        mov              rsi, qword ptr [rsp + 4216]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n236_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n236_lit_integer_α:     mov              qword ptr [rsp + 4192], 3            # result
                        mov              rax, qword ptr [rip + .Lx743_0]
                        mov              qword ptr [rsp + 4200], rax;         jmp   n237_scan_pos_α
.Lx743_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n237_scan_pos_α:        mov              rax, 1
                        cmp              rax, 1;                              jge   .Lx745_0
                        add              rax, r15
                        add              rax, 1
.Lx745_0:               cmp              rax, 1;                              jl    n239_lit_integer_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n239_lit_integer_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n239_lit_integer_α
                        mov              qword ptr [rsp + 4176], 3
                        mov              qword ptr [rsp + 4184], rax;         jmp   n238_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n238_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4176]
                        mov              qword ptr [rsp + 4144], rax
                        mov              rax, qword ptr [rsp + 4184]
                        mov              qword ptr [rsp + 4152], rax
                        .section         .rodata
.Lrkfn747:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn747]
                        lea              rsi, [rsp + 4144]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4128], rax
                        mov              qword ptr [rsp + 4136], rdx
                        cmp              eax, 104;                            je    n239_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n239_lit_integer_α
n238_call_builtin_icon_β:
                                                                              jmp   n239_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n239_lit_integer_α:     mov              qword ptr [rsp + 4112], 3            # result
                        mov              rax, qword ptr [rip + .Lx748_0]
                        mov              qword ptr [rsp + 4120], rax;         jmp   n240_scan_pos_α
.Lx748_0:               .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n240_scan_pos_α:        mov              rax, -5
                        cmp              rax, 1;                              jge   .Lx750_0
                        add              rax, r15
                        add              rax, 1
.Lx750_0:               cmp              rax, 1;                              jl    n242_disjunction_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n242_disjunction_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n242_disjunction_α
                        mov              qword ptr [rsp + 4096], 3
                        mov              qword ptr [rsp + 4104], rax;         jmp   n241_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n241_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4096]
                        mov              qword ptr [rsp + 4064], rax
                        mov              rax, qword ptr [rsp + 4104]
                        mov              qword ptr [rsp + 4072], rax
                        .section         .rodata
.Lrkfn752:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn752]
                        lea              rsi, [rsp + 4064]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4048], rax
                        mov              qword ptr [rsp + 4056], rdx
                        cmp              eax, 104;                            je    n242_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n242_disjunction_α
n241_call_builtin_icon_β:
                                                                              jmp   n242_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n242_disjunction_α:     mov              qword ptr [rsp + 3968], 0
                        mov              qword ptr [rsp + 3976], 0
                        mov              dword ptr [rsp + 3984], 0;           jmp   n299_lit_integer_α
n242_disjunction_as:    mov              eax, dword ptr [rsp + 3984]
                        cmp              eax, 0;                              jne   .Lx754_0
                        mov              rax, qword ptr [rsp + 4000]
                        mov              qword ptr [rsp + 3968], rax
                        mov              rax, qword ptr [rsp + 4008]
                        mov              qword ptr [rsp + 3976], rax;         jmp   n243_call_builtin_icon_α
.Lx754_0:               cmp              eax, 1;                              jne   .Lx754_1
                        mov              rax, qword ptr [rsp + 4032]
                        mov              qword ptr [rsp + 3968], rax
                        mov              rax, qword ptr [rsp + 4040]
                        mov              qword ptr [rsp + 3976], rax;         jmp   n243_call_builtin_icon_α
.Lx754_1:                                                                     jmp   n243_call_builtin_icon_α
n242_disjunction_β:     mov              eax, dword ptr [rsp + 3984]
                        cmp              eax, 0;                              je    n242_disjunction_af
                                                                              jmp   n242_disjunction_af
n242_disjunction_af:    add              dword ptr [rsp + 3984], 1
                        mov              eax, dword ptr [rsp + 3984]
                        cmp              eax, 1;                              je    n298_lit_string_α
                                                                              jmp   n301_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n243_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3968]
                        mov              qword ptr [rsp + 3936], rax
                        mov              rax, qword ptr [rsp + 3976]
                        mov              qword ptr [rsp + 3944], rax
                        .section         .rodata
.Lrkfn756:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn756]
                        lea              rsi, [rsp + 3936]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3920], rax
                        mov              qword ptr [rsp + 3928], rdx
                        cmp              eax, 104;                            je    n242_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n244_conjunction_α
n243_call_builtin_icon_β:
                                                                              jmp   n242_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n244_conjunction_α:     mov              rax, qword ptr [rsp + 3920]
                        mov              qword ptr [rsp + 3904], rax
                        mov              rax, qword ptr [rsp + 3928]
                        mov              qword ptr [rsp + 3912], rax;         jmp   n245_scan_α
n244_conjunction_β:                                                           jmp   n301_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n245_scan_α:            mov              rax, qword ptr [rsp + 3904]
                        mov              qword ptr [rsp + 3872], rax
                        mov              rax, qword ptr [rsp + 3912]
                        mov              qword ptr [rsp + 3880], rax
                        lea              rdi, [rsp + 3840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 3840]
                        mov              r14, qword ptr [rsp + 3848]
                        mov              r15, qword ptr [rsp + 3856];         jmp   n246_call_builtin_icon_α
n245_scan_β:                                                                  jmp   n246_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n246_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn761:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn761]
                        lea              rsi, [rsp + 3808]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3792], rax
                        mov              qword ptr [rsp + 3800], rdx
                        cmp              eax, 104;                            je    n247_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n247_lit_string_α
n246_call_builtin_icon_β:
                                                                              jmp   n247_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_string_α:      mov              qword ptr [rsp + 3776], 2            # result
                        mov              dword ptr [rsp + 3780], 5
                        mov              rax, qword ptr [rip + .Lx762_0]
                        mov              qword ptr [rsp + 3784], rax;         jmp   n248_scan_enter_α
.Lx762_0:               .quad            .Lx762_0_s
.Lx762_0_s:             .string          "12345"
#-----------------------------------------------------------------------------------------------------------------------
n248_scan_enter_α:      mov              rdi, qword ptr [rsp + 3776]
                        mov              rsi, qword ptr [rsp + 3784]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n249_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n249_disjunction_α:     mov              qword ptr [rsp + 3648], 0
                        mov              qword ptr [rsp + 3656], 0
                        mov              dword ptr [rsp + 3664], 0;           jmp   n295_lit_string_α
n249_disjunction_as:    mov              eax, dword ptr [rsp + 3664]
                        cmp              eax, 0;                              jne   .Lx766_0
                        mov              rax, qword ptr [rsp + 3680]
                        mov              qword ptr [rsp + 3648], rax
                        mov              rax, qword ptr [rsp + 3688]
                        mov              qword ptr [rsp + 3656], rax;         jmp   n250_call_builtin_icon_α
.Lx766_0:               cmp              eax, 1;                              jne   .Lx766_1
                        mov              rax, qword ptr [rsp + 3760]
                        mov              qword ptr [rsp + 3648], rax
                        mov              rax, qword ptr [rsp + 3768]
                        mov              qword ptr [rsp + 3656], rax;         jmp   n250_call_builtin_icon_α
.Lx766_1:                                                                     jmp   n250_call_builtin_icon_α
n249_disjunction_β:     mov              eax, dword ptr [rsp + 3664]
                        cmp              eax, 0;                              je    n249_disjunction_af
                                                                              jmp   n249_disjunction_af
n249_disjunction_af:    add              dword ptr [rsp + 3664], 1
                        mov              eax, dword ptr [rsp + 3664]
                        cmp              eax, 1;                              je    n294_lit_string_α
                                                                              jmp   n302_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n250_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3648]
                        mov              qword ptr [rsp + 3616], rax
                        mov              rax, qword ptr [rsp + 3656]
                        mov              qword ptr [rsp + 3624], rax
                        .section         .rodata
.Lrkfn768:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn768]
                        lea              rsi, [rsp + 3616]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3600], rax
                        mov              qword ptr [rsp + 3608], rdx
                        cmp              eax, 104;                            je    n249_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n251_scan_α
n250_call_builtin_icon_β:
                                                                              jmp   n249_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n251_scan_α:            mov              rax, qword ptr [rsp + 3600]
                        mov              qword ptr [rsp + 3568], rax
                        mov              rax, qword ptr [rsp + 3608]
                        mov              qword ptr [rsp + 3576], rax
                        lea              rdi, [rsp + 3536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 3536]
                        mov              r14, qword ptr [rsp + 3544]
                        mov              r15, qword ptr [rsp + 3552];         jmp   n252_lit_string_α
n251_scan_β:                                                                  jmp   n252_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n252_lit_string_α:      mov              qword ptr [rsp + 3504], 2            # result
                        mov              dword ptr [rsp + 3508], 5
                        mov              rax, qword ptr [rip + .Lx771_0]
                        mov              qword ptr [rsp + 3512], rax;         jmp   n253_scan_enter_α
.Lx771_0:               .quad            .Lx771_0_s
.Lx771_0_s:             .string          "12345"
#-----------------------------------------------------------------------------------------------------------------------
n253_scan_enter_α:      mov              rdi, qword ptr [rsp + 3504]
                        mov              rsi, qword ptr [rsp + 3512]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n254_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n254_lit_integer_α:     mov              qword ptr [rsp + 3488], 3            # result
                        mov              rax, qword ptr [rip + .Lx774_0]
                        mov              qword ptr [rsp + 3496], rax;         jmp   n255_scan_tab_α
.Lx774_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n255_scan_tab_α:        mov              rax, 2
                        cmp              rax, 1;                              jge   .Lx776_0
                        add              rax, r15
                        add              rax, 1
.Lx776_0:               cmp              rax, 1;                              jl    n256_disjunction_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n256_disjunction_α
                        mov              qword ptr [rsp + 3472], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 3456], rax
                        mov              qword ptr [rsp + 3464], rdx;         jmp   n256_disjunction_α
n255_scan_tab_β:        mov              r14, qword ptr [rsp + 3472];         jmp   n256_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n256_disjunction_α:     mov              qword ptr [rsp + 3328], 0
                        mov              qword ptr [rsp + 3336], 0
                        mov              dword ptr [rsp + 3344], 0;           jmp   n291_lit_string_α
n256_disjunction_as:    mov              eax, dword ptr [rsp + 3344]
                        cmp              eax, 0;                              jne   .Lx778_0
                        mov              rax, qword ptr [rsp + 3360]
                        mov              qword ptr [rsp + 3328], rax
                        mov              rax, qword ptr [rsp + 3368]
                        mov              qword ptr [rsp + 3336], rax;         jmp   n257_call_builtin_icon_α
.Lx778_0:               cmp              eax, 1;                              jne   .Lx778_1
                        mov              rax, qword ptr [rsp + 3440]
                        mov              qword ptr [rsp + 3328], rax
                        mov              rax, qword ptr [rsp + 3448]
                        mov              qword ptr [rsp + 3336], rax;         jmp   n257_call_builtin_icon_α
.Lx778_1:                                                                     jmp   n257_call_builtin_icon_α
n256_disjunction_β:     mov              eax, dword ptr [rsp + 3344]
                        cmp              eax, 0;                              je    n256_disjunction_af
                                                                              jmp   n256_disjunction_af
n256_disjunction_af:    add              dword ptr [rsp + 3344], 1
                        mov              eax, dword ptr [rsp + 3344]
                        cmp              eax, 1;                              je    n290_lit_string_α
                                                                              jmp   n303_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n257_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3328]
                        mov              qword ptr [rsp + 3296], rax
                        mov              rax, qword ptr [rsp + 3336]
                        mov              qword ptr [rsp + 3304], rax
                        .section         .rodata
.Lrkfn780:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn780]
                        lea              rsi, [rsp + 3296]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3280], rax
                        mov              qword ptr [rsp + 3288], rdx
                        cmp              eax, 104;                            je    n256_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n258_conjunction_α
n257_call_builtin_icon_β:
                                                                              jmp   n256_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n258_conjunction_α:     mov              rax, qword ptr [rsp + 3280]
                        mov              qword ptr [rsp + 3264], rax
                        mov              rax, qword ptr [rsp + 3288]
                        mov              qword ptr [rsp + 3272], rax;         jmp   n259_scan_α
n258_conjunction_β:                                                           jmp   n303_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n259_scan_α:            mov              rax, qword ptr [rsp + 3264]
                        mov              qword ptr [rsp + 3232], rax
                        mov              rax, qword ptr [rsp + 3272]
                        mov              qword ptr [rsp + 3240], rax
                        lea              rdi, [rsp + 3200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 3200]
                        mov              r14, qword ptr [rsp + 3208]
                        mov              r15, qword ptr [rsp + 3216];         jmp   n260_lit_string_α
n259_scan_β:                                                                  jmp   n260_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_string_α:      mov              qword ptr [rsp + 3168], 2            # result
                        mov              dword ptr [rsp + 3172], 5
                        mov              rax, qword ptr [rip + .Lx784_0]
                        mov              qword ptr [rsp + 3176], rax;         jmp   n261_scan_enter_α
.Lx784_0:               .quad            .Lx784_0_s
.Lx784_0_s:             .string          "12345"
#-----------------------------------------------------------------------------------------------------------------------
n261_scan_enter_α:      mov              rdi, qword ptr [rsp + 3168]
                        mov              rsi, qword ptr [rsp + 3176]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n262_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n262_lit_integer_α:     mov              qword ptr [rsp + 3152], 3            # result
                        mov              rax, qword ptr [rip + .Lx787_0]
                        mov              qword ptr [rsp + 3160], rax;         jmp   n263_scan_tab_α
.Lx787_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n263_scan_tab_α:        mov              rax, 2
                        cmp              rax, 1;                              jge   .Lx789_0
                        add              rax, r15
                        add              rax, 1
.Lx789_0:               cmp              rax, 1;                              jl    n264_disjunction_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n264_disjunction_α
                        mov              qword ptr [rsp + 3136], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 3120], rax
                        mov              qword ptr [rsp + 3128], rdx;         jmp   n264_disjunction_α
n263_scan_tab_β:        mov              r14, qword ptr [rsp + 3136];         jmp   n264_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n264_disjunction_α:     mov              qword ptr [rsp + 2992], 0
                        mov              qword ptr [rsp + 3000], 0
                        mov              dword ptr [rsp + 3008], 0;           jmp   n287_lit_string_α
n264_disjunction_as:    mov              eax, dword ptr [rsp + 3008]
                        cmp              eax, 0;                              jne   .Lx791_0
                        mov              rax, qword ptr [rsp + 3024]
                        mov              qword ptr [rsp + 2992], rax
                        mov              rax, qword ptr [rsp + 3032]
                        mov              qword ptr [rsp + 3000], rax;         jmp   n265_call_builtin_icon_α
.Lx791_0:               cmp              eax, 1;                              jne   .Lx791_1
                        mov              rax, qword ptr [rsp + 3104]
                        mov              qword ptr [rsp + 2992], rax
                        mov              rax, qword ptr [rsp + 3112]
                        mov              qword ptr [rsp + 3000], rax;         jmp   n265_call_builtin_icon_α
.Lx791_1:                                                                     jmp   n265_call_builtin_icon_α
n264_disjunction_β:     mov              eax, dword ptr [rsp + 3008]
                        cmp              eax, 0;                              je    n264_disjunction_af
                                                                              jmp   n264_disjunction_af
n264_disjunction_af:    add              dword ptr [rsp + 3008], 1
                        mov              eax, dword ptr [rsp + 3008]
                        cmp              eax, 1;                              je    n286_lit_string_α
                                                                              jmp   n304_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n265_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 2960], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 2968], rax
                        .section         .rodata
.Lrkfn793:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn793]
                        lea              rsi, [rsp + 2960]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2944], rax
                        mov              qword ptr [rsp + 2952], rdx
                        cmp              eax, 104;                            je    n264_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n266_conjunction_α
n265_call_builtin_icon_β:
                                                                              jmp   n264_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n266_conjunction_α:     mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 2928], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 2936], rax;         jmp   n267_scan_α
n266_conjunction_β:                                                           jmp   n304_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n267_scan_α:            mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 2896], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 2904], rax
                        lea              rdi, [rsp + 2864]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 2864]
                        mov              r14, qword ptr [rsp + 2872]
                        mov              r15, qword ptr [rsp + 2880];         jmp   n268_call_builtin_icon_α
n267_scan_β:                                                                  jmp   n268_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n268_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn798:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn798]
                        lea              rsi, [rsp + 2832]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2816], rax
                        mov              qword ptr [rsp + 2824], rdx
                        cmp              eax, 104;                            je    n269_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n269_lit_charset_α
n268_call_builtin_icon_β:
                                                                              jmp   n269_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n269_lit_charset_α:     mov              qword ptr [rsp + 2800], 2            # result
                        mov              dword ptr [rsp + 2804], -1
                        mov              rax, qword ptr [rip + .Lx799_0]
                        mov              qword ptr [rsp + 2808], rax;         jmp   n270_assign_α
.Lx799_0:               .quad            .Lx799_0_s
.Lx799_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n270_assign_α:          mov              rax, qword ptr [rsp + 2800]
                        mov              rdx, qword ptr [rsp + 2808]
                        mov              qword ptr [rsp + 11088], rax
                        mov              qword ptr [rsp + 11096], rdx;        jmp   n271_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n271_lit_charset_α:     mov              qword ptr [rsp + 2784], 2            # result
                        mov              dword ptr [rsp + 2788], -1
                        mov              rax, qword ptr [rip + .Lx801_0]
                        mov              qword ptr [rsp + 2792], rax;         jmp   n272_assign_α
.Lx801_0:               .quad            .Lx801_0_s
.Lx801_0_s:             .string          "AEIOUaeiou"
#-----------------------------------------------------------------------------------------------------------------------
n272_assign_α:          mov              rax, qword ptr [rsp + 2784]
                        mov              rdx, qword ptr [rsp + 2792]
                        mov              qword ptr [rsp + 11120], rax
                        mov              qword ptr [rsp + 11128], rdx;        jmp   n273_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n273_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx803_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n277_keyword_icon_α
                        mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx;         jmp   n274_keyword_icon_α
n273_keyword_icon_β:                                                          jmp   n277_keyword_icon_α
.Lx803_0:               .quad            .Lx803_0_s
.Lx803_0_s:             .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n274_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx804_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n277_keyword_icon_α
                        mov              qword ptr [rsp + 2752], rax
                        mov              qword ptr [rsp + 2760], rdx;         jmp   n275_binop_α
n274_keyword_icon_β:                                                          jmp   n277_keyword_icon_α
.Lx804_0:               .quad            .Lx804_0_s
.Lx804_0_s:             .string          "&ascii"
#-----------------------------------------------------------------------------------------------------------------------
n275_binop_α:           mov              rdi, qword ptr [rsp + 2720]
                        mov              rsi, qword ptr [rsp + 2728]
                        mov              rdx, qword ptr [rsp + 2752]
                        mov              rcx, qword ptr [rsp + 2760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cdiff@PLT
                        cmp              eax, 104;                            je    n277_keyword_icon_α
                        mov              qword ptr [rsp + 2704], rax
                        mov              qword ptr [rsp + 2712], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n276_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n276_assign_α:          mov              rax, qword ptr [rsp + 2704]
                        mov              rdx, qword ptr [rsp + 2712]
                        mov              qword ptr [rsp + 11104], rax
                        mov              qword ptr [rsp + 11112], rdx;        jmp   n277_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n277_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx807_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n313_var_α
                        mov              qword ptr [rsp + 2656], rax
                        mov              qword ptr [rsp + 2664], rdx;         jmp   n278_scan_enter_α
n277_keyword_icon_β:                                                          jmp   n313_var_α
.Lx807_0:               .quad            .Lx807_0_s
.Lx807_0_s:             .string          "&ascii"
#-----------------------------------------------------------------------------------------------------------------------
n278_scan_enter_α:      mov              rdi, qword ptr [rsp + 2656]
                        mov              rsi, qword ptr [rsp + 2664]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n279_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_string_α:      mov              qword ptr [rsp + 2528], 2            # result
                        mov              dword ptr [rsp + 2532], 1
                        mov              rax, qword ptr [rip + .Lx810_0]
                        mov              qword ptr [rsp + 2536], rax;         jmp   n280_disjunction_α
.Lx810_0:               .quad            .Lx810_0_s
.Lx810_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n280_disjunction_α:     mov              qword ptr [rsp + 2544], 0
                        mov              qword ptr [rsp + 2552], 0
                        mov              dword ptr [rsp + 2560], 0;           jmp   n285_lit_string_α
n280_disjunction_as:    mov              eax, dword ptr [rsp + 2560]
                        cmp              eax, 0;                              jne   .Lx812_0
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 2544], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 2552], rax;         jmp   n281_call_builtin_icon_α
.Lx812_0:               cmp              eax, 1;                              jne   .Lx812_1
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 2544], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 2552], rax;         jmp   n281_call_builtin_icon_α
.Lx812_1:               cmp              eax, 2;                              jne   .Lx812_2
                        mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 2544], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 2552], rax;         jmp   n281_call_builtin_icon_α
.Lx812_2:                                                                     jmp   n281_call_builtin_icon_α
n280_disjunction_β:     mov              eax, dword ptr [rsp + 2560]
                        cmp              eax, 0;                              je    n280_disjunction_af
                        cmp              eax, 1;                              je    n284_scan_upto_β
                                                                              jmp   n280_disjunction_af
n280_disjunction_af:    add              dword ptr [rsp + 2560], 1
                        mov              eax, dword ptr [rsp + 2560]
                        cmp              eax, 1;                              je    n283_var_α
                        cmp              eax, 2;                              je    n282_lit_string_α
                                                                              jmp   n305_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n281_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 2504], rax
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 2480], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 2488], rax
                        .section         .rodata
.Lrkfn814:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn814]
                        lea              rsi, [rsp + 2480]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx
                        cmp              eax, 104;                            je    n280_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n280_disjunction_β
n281_call_builtin_icon_β:
                                                                              jmp   n280_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n282_lit_string_α:      mov              qword ptr [rsp + 2640], 2            # result
                        mov              dword ptr [rsp + 2644], 1
                        mov              rax, qword ptr [rip + .Lx815_0]
                        mov              qword ptr [rsp + 2648], rax;         jmp   n280_disjunction_as
n282_lit_string_β:                                                            jmp   n280_disjunction_af
.Lx815_0:               .quad            .Lx815_0_s
.Lx815_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n283_var_α:             mov              rax, qword ptr [rsp + 11088]
                        mov              qword ptr [rsp + 2624], rax
                        mov              rax, qword ptr [rsp + 11096]
                        mov              qword ptr [rsp + 2632], rax;         jmp   n284_scan_upto_α
n283_var_β:                                                                   jmp   n280_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n284_scan_upto_α:       mov              qword ptr [rsp + 2608], r14
.Lx819_0:               mov              rax, qword ptr [rsp + 2608]
                        cmp              rax, r15;                            jge   n280_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rsp + 2632]
                        push             rax
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             rax, rax
                        pop              rax;                                 je    .Lx819_1
                        mov              qword ptr [rsp + 2592], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 2600], rax;         jmp   n280_disjunction_as
.Lx819_1:               inc              qword ptr [rsp + 2608];              jmp   .Lx819_0
n284_scan_upto_β:       inc              qword ptr [rsp + 2608];              jmp   .Lx819_0
#-----------------------------------------------------------------------------------------------------------------------
n285_lit_string_α:      mov              qword ptr [rsp + 2576], 2            # result
                        mov              dword ptr [rsp + 2580], 11
                        mov              rax, qword ptr [rip + .Lx820_0]
                        mov              qword ptr [rsp + 2584], rax;         jmp   n280_disjunction_as
n285_lit_string_β:                                                            jmp   n280_disjunction_af
.Lx820_0:               .quad            .Lx820_0_s
.Lx820_0_s:             .string          "ascii?skips"
#-----------------------------------------------------------------------------------------------------------------------
n286_lit_string_α:      mov              qword ptr [rsp + 3104], 2            # result
                        mov              dword ptr [rsp + 3108], 4
                        mov              rax, qword ptr [rip + .Lx821_0]
                        mov              qword ptr [rsp + 3112], rax;         jmp   n264_disjunction_as
n286_lit_string_β:                                                            jmp   n264_disjunction_af
.Lx821_0:               .quad            .Lx821_0_s
.Lx821_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n287_lit_string_α:      mov              qword ptr [rsp + 3088], 2            # result
                        mov              dword ptr [rsp + 3092], 2
                        mov              rax, qword ptr [rip + .Lx822_0]
                        mov              qword ptr [rsp + 3096], rax;         jmp   n288_scan_match_α
n287_lit_string_β:                                                            jmp   n264_disjunction_af
.Lx822_0:               .quad            .Lx822_0_s
.Lx822_0_s:             .string          "23"
#-----------------------------------------------------------------------------------------------------------------------
n288_scan_match_α:      mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 2;                              jl    n264_disjunction_af
                        mov              rdi, qword ptr [rip + .Lx824_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 2
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             memcmp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             eax, eax;                            jne   n264_disjunction_af
                        mov              qword ptr [rsp + 3056], 3
                        mov              rax, r14
                        add              rax, 3
                        mov              qword ptr [rsp + 3064], rax;         jmp   n289_scan_tab_α
.Lx824_0:               .quad            .Lx824_0_s
.Lx824_0_s:             .string          "23"
#-----------------------------------------------------------------------------------------------------------------------
n289_scan_tab_α:        mov              rax, qword ptr [rsp + 3064]
                        cmp              rax, 1;                              jge   .Lx826_0
                        add              rax, r15
                        add              rax, 1
.Lx826_0:               cmp              rax, 1;                              jl    n264_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n264_disjunction_af
                        mov              qword ptr [rsp + 3040], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 3024], rax
                        mov              qword ptr [rsp + 3032], rdx;         jmp   n264_disjunction_as
n289_scan_tab_β:        mov              r14, qword ptr [rsp + 3040];         jmp   n264_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n290_lit_string_α:      mov              qword ptr [rsp + 3440], 2            # result
                        mov              dword ptr [rsp + 3444], 4
                        mov              rax, qword ptr [rip + .Lx827_0]
                        mov              qword ptr [rsp + 3448], rax;         jmp   n256_disjunction_as
n290_lit_string_β:                                                            jmp   n256_disjunction_af
.Lx827_0:               .quad            .Lx827_0_s
.Lx827_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n291_lit_string_α:      mov              qword ptr [rsp + 3424], 2            # result
                        mov              dword ptr [rsp + 3428], 3
                        mov              rax, qword ptr [rip + .Lx828_0]
                        mov              qword ptr [rsp + 3432], rax;         jmp   n292_scan_match_α
n291_lit_string_β:                                                            jmp   n256_disjunction_af
.Lx828_0:               .quad            .Lx828_0_s
.Lx828_0_s:             .string          "123"
#-----------------------------------------------------------------------------------------------------------------------
n292_scan_match_α:      mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 3;                              jl    n256_disjunction_af
                        mov              rdi, qword ptr [rip + .Lx830_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 3
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             memcmp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             eax, eax;                            jne   n256_disjunction_af
                        mov              qword ptr [rsp + 3392], 3
                        mov              rax, r14
                        add              rax, 4
                        mov              qword ptr [rsp + 3400], rax;         jmp   n293_scan_tab_α
.Lx830_0:               .quad            .Lx830_0_s
.Lx830_0_s:             .string          "123"
#-----------------------------------------------------------------------------------------------------------------------
n293_scan_tab_α:        mov              rax, qword ptr [rsp + 3400]
                        cmp              rax, 1;                              jge   .Lx832_0
                        add              rax, r15
                        add              rax, 1
.Lx832_0:               cmp              rax, 1;                              jl    n256_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n256_disjunction_af
                        mov              qword ptr [rsp + 3376], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 3360], rax
                        mov              qword ptr [rsp + 3368], rdx;         jmp   n256_disjunction_as
n293_scan_tab_β:        mov              r14, qword ptr [rsp + 3376];         jmp   n256_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n294_lit_string_α:      mov              qword ptr [rsp + 3760], 2            # result
                        mov              dword ptr [rsp + 3764], 4
                        mov              rax, qword ptr [rip + .Lx833_0]
                        mov              qword ptr [rsp + 3768], rax;         jmp   n249_disjunction_as
n294_lit_string_β:                                                            jmp   n249_disjunction_af
.Lx833_0:               .quad            .Lx833_0_s
.Lx833_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n295_lit_string_α:      mov              qword ptr [rsp + 3744], 2            # result
                        mov              dword ptr [rsp + 3748], 3
                        mov              rax, qword ptr [rip + .Lx834_0]
                        mov              qword ptr [rsp + 3752], rax;         jmp   n296_scan_match_α
n295_lit_string_β:                                                            jmp   n249_disjunction_af
.Lx834_0:               .quad            .Lx834_0_s
.Lx834_0_s:             .string          "123"
#-----------------------------------------------------------------------------------------------------------------------
n296_scan_match_α:      mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 3;                              jl    n249_disjunction_af
                        mov              rdi, qword ptr [rip + .Lx836_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 3
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             memcmp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             eax, eax;                            jne   n249_disjunction_af
                        mov              qword ptr [rsp + 3712], 3
                        mov              rax, r14
                        add              rax, 4
                        mov              qword ptr [rsp + 3720], rax;         jmp   n297_scan_tab_α
.Lx836_0:               .quad            .Lx836_0_s
.Lx836_0_s:             .string          "123"
#-----------------------------------------------------------------------------------------------------------------------
n297_scan_tab_α:        mov              rax, qword ptr [rsp + 3720]
                        cmp              rax, 1;                              jge   .Lx838_0
                        add              rax, r15
                        add              rax, 1
.Lx838_0:               cmp              rax, 1;                              jl    n249_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n249_disjunction_af
                        mov              qword ptr [rsp + 3696], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 3680], rax
                        mov              qword ptr [rsp + 3688], rdx;         jmp   n249_disjunction_as
n297_scan_tab_β:        mov              r14, qword ptr [rsp + 3696];         jmp   n249_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n298_lit_string_α:      mov              qword ptr [rsp + 4032], 2            # result
                        mov              dword ptr [rsp + 4036], 4
                        mov              rax, qword ptr [rip + .Lx839_0]
                        mov              qword ptr [rsp + 4040], rax;         jmp   n242_disjunction_as
n298_lit_string_β:                                                            jmp   n242_disjunction_af
.Lx839_0:               .quad            .Lx839_0_s
.Lx839_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_integer_α:     mov              qword ptr [rsp + 4016], 3            # result
                        mov              rax, qword ptr [rip + .Lx840_0]
                        mov              qword ptr [rsp + 4024], rax;         jmp   n300_scan_pos_α
n299_lit_integer_β:                                                           jmp   n242_disjunction_af
.Lx840_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n300_scan_pos_α:        mov              rax, 3
                        cmp              rax, 1;                              jge   .Lx842_0
                        add              rax, r15
                        add              rax, 1
.Lx842_0:               cmp              rax, 1;                              jl    n242_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n242_disjunction_af
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n242_disjunction_af
                        mov              qword ptr [rsp + 4000], 3
                        mov              qword ptr [rsp + 4008], rax;         jmp   n242_disjunction_as
n300_scan_pos_β:                                                              jmp   n242_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n301_scan_α:            lea              rdi, [rsp + 3840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 3840]
                        mov              r14, qword ptr [rsp + 3848]
                        mov              r15, qword ptr [rsp + 3856];         jmp   n246_call_builtin_icon_α
n301_scan_β:                                                                  jmp   n246_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n302_scan_α:            lea              rdi, [rsp + 3536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 3536]
                        mov              r14, qword ptr [rsp + 3544]
                        mov              r15, qword ptr [rsp + 3552];         jmp   n252_lit_string_α
n302_scan_β:                                                                  jmp   n252_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n303_scan_α:            lea              rdi, [rsp + 3200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 3200]
                        mov              r14, qword ptr [rsp + 3208]
                        mov              r15, qword ptr [rsp + 3216];         jmp   n260_lit_string_α
n303_scan_β:                                                                  jmp   n260_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n304_scan_α:            lea              rdi, [rsp + 2864]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 2864]
                        mov              r14, qword ptr [rsp + 2872]
                        mov              r15, qword ptr [rsp + 2880];         jmp   n268_call_builtin_icon_α
n304_scan_β:                                                                  jmp   n268_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_string_α:      mov              qword ptr [rsp + 2336], 2            # result
                        mov              dword ptr [rsp + 2340], 1
                        mov              rax, qword ptr [rip + .Lx851_0]
                        mov              qword ptr [rsp + 2344], rax;         jmp   n306_disjunction_α
.Lx851_0:               .quad            .Lx851_0_s
.Lx851_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n306_disjunction_α:     mov              qword ptr [rsp + 2352], 0
                        mov              qword ptr [rsp + 2360], 0
                        mov              dword ptr [rsp + 2368], 0;           jmp   n311_lit_string_α
n306_disjunction_as:    mov              eax, dword ptr [rsp + 2368]
                        cmp              eax, 0;                              jne   .Lx853_0
                        mov              rax, qword ptr [rsp + 2384]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2392]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n307_call_builtin_icon_α
.Lx853_0:               cmp              eax, 1;                              jne   .Lx853_1
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n307_call_builtin_icon_α
.Lx853_1:               cmp              eax, 2;                              jne   .Lx853_2
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n307_call_builtin_icon_α
.Lx853_2:                                                                     jmp   n307_call_builtin_icon_α
n306_disjunction_β:     mov              eax, dword ptr [rsp + 2368]
                        cmp              eax, 0;                              je    n306_disjunction_af
                        cmp              eax, 1;                              je    n310_scan_upto_β
                                                                              jmp   n306_disjunction_af
n306_disjunction_af:    add              dword ptr [rsp + 2368], 1
                        mov              eax, dword ptr [rsp + 2368]
                        cmp              eax, 1;                              je    n309_var_α
                        cmp              eax, 2;                              je    n308_lit_string_α
                                                                              jmp   n312_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n307_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2352]
                        mov              qword ptr [rsp + 2304], rax
                        mov              rax, qword ptr [rsp + 2360]
                        mov              qword ptr [rsp + 2312], rax
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 2296], rax
                        .section         .rodata
.Lrkfn855:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn855]
                        lea              rsi, [rsp + 2288]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx
                        cmp              eax, 104;                            je    n306_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n306_disjunction_β
n307_call_builtin_icon_β:
                                                                              jmp   n306_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_string_α:      mov              qword ptr [rsp + 2448], 2            # result
                        mov              dword ptr [rsp + 2452], 1
                        mov              rax, qword ptr [rip + .Lx856_0]
                        mov              qword ptr [rsp + 2456], rax;         jmp   n306_disjunction_as
n308_lit_string_β:                                                            jmp   n306_disjunction_af
.Lx856_0:               .quad            .Lx856_0_s
.Lx856_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n309_var_α:             mov              rax, qword ptr [rsp + 11120]
                        mov              qword ptr [rsp + 2432], rax
                        mov              rax, qword ptr [rsp + 11128]
                        mov              qword ptr [rsp + 2440], rax;         jmp   n310_scan_upto_α
n309_var_β:                                                                   jmp   n306_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n310_scan_upto_α:       mov              qword ptr [rsp + 2416], r14
.Lx860_0:               mov              rax, qword ptr [rsp + 2416]
                        cmp              rax, r15;                            jge   n306_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rsp + 2440]
                        push             rax
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             rax, rax
                        pop              rax;                                 je    .Lx860_1
                        mov              qword ptr [rsp + 2400], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 2408], rax;         jmp   n306_disjunction_as
.Lx860_1:               inc              qword ptr [rsp + 2416];              jmp   .Lx860_0
n310_scan_upto_β:       inc              qword ptr [rsp + 2416];              jmp   .Lx860_0
#-----------------------------------------------------------------------------------------------------------------------
n311_lit_string_α:      mov              qword ptr [rsp + 2384], 2            # result
                        mov              dword ptr [rsp + 2388], 11
                        mov              rax, qword ptr [rip + .Lx861_0]
                        mov              qword ptr [rsp + 2392], rax;         jmp   n306_disjunction_as
n311_lit_string_β:                                                            jmp   n306_disjunction_af
.Lx861_0:               .quad            .Lx861_0_s
.Lx861_0_s:             .string          "ascii?vowls"
#-----------------------------------------------------------------------------------------------------------------------
n312_scan_α:            lea              rdi, [rsp + 2224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 2224]
                        mov              r14, qword ptr [rsp + 2232]
                        mov              r15, qword ptr [rsp + 2240];         jmp   n313_var_α
n312_scan_β:                                                                  jmp   n313_var_α
#-----------------------------------------------------------------------------------------------------------------------
n313_var_α:             mov              rax, qword ptr [rsp + 11120]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 11128]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n314_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n314_scan_enter_α:      mov              rdi, qword ptr [rsp + 2192]
                        mov              rsi, qword ptr [rsp + 2200]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n315_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n315_lit_string_α:      mov              qword ptr [rsp + 2064], 2            # result
                        mov              dword ptr [rsp + 2068], 1
                        mov              rax, qword ptr [rip + .Lx868_0]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n316_disjunction_α
.Lx868_0:               .quad            .Lx868_0_s
.Lx868_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n316_disjunction_α:     mov              qword ptr [rsp + 2080], 0
                        mov              qword ptr [rsp + 2088], 0
                        mov              dword ptr [rsp + 2096], 0;           jmp   n321_lit_string_α
n316_disjunction_as:    mov              eax, dword ptr [rsp + 2096]
                        cmp              eax, 0;                              jne   .Lx870_0
                        mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n317_call_builtin_icon_α
.Lx870_0:               cmp              eax, 1;                              jne   .Lx870_1
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n317_call_builtin_icon_α
.Lx870_1:               cmp              eax, 2;                              jne   .Lx870_2
                        mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n317_call_builtin_icon_α
.Lx870_2:                                                                     jmp   n317_call_builtin_icon_α
n316_disjunction_β:     mov              eax, dword ptr [rsp + 2096]
                        cmp              eax, 0;                              je    n316_disjunction_af
                        cmp              eax, 1;                              je    n320_scan_upto_β
                                                                              jmp   n316_disjunction_af
n316_disjunction_af:    add              dword ptr [rsp + 2096], 1
                        mov              eax, dword ptr [rsp + 2096]
                        cmp              eax, 1;                              je    n319_var_α
                        cmp              eax, 2;                              je    n318_lit_string_α
                                                                              jmp   n340_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n317_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 2040], rax
                        mov              rax, qword ptr [rsp + 2064]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 2024], rax
                        .section         .rodata
.Lrkfn872:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn872]
                        lea              rsi, [rsp + 2016]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx
                        cmp              eax, 104;                            je    n316_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n316_disjunction_β
n317_call_builtin_icon_β:
                                                                              jmp   n316_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n318_lit_string_α:      mov              qword ptr [rsp + 2176], 2            # result
                        mov              dword ptr [rsp + 2180], 1
                        mov              rax, qword ptr [rip + .Lx873_0]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n316_disjunction_as
n318_lit_string_β:                                                            jmp   n316_disjunction_af
.Lx873_0:               .quad            .Lx873_0_s
.Lx873_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n319_var_α:             mov              rax, qword ptr [rsp + 11088]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 11096]
                        mov              qword ptr [rsp + 2168], rax;         jmp   n320_scan_upto_α
n319_var_β:                                                                   jmp   n316_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n320_scan_upto_α:       mov              qword ptr [rsp + 2144], r14
.Lx877_0:               mov              rax, qword ptr [rsp + 2144]
                        cmp              rax, r15;                            jge   n316_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rsp + 2168]
                        push             rax
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             rax, rax
                        pop              rax;                                 je    .Lx877_1
                        mov              qword ptr [rsp + 2128], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 2136], rax;         jmp   n316_disjunction_as
.Lx877_1:               inc              qword ptr [rsp + 2144];              jmp   .Lx877_0
n320_scan_upto_β:       inc              qword ptr [rsp + 2144];              jmp   .Lx877_0
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_string_α:      mov              qword ptr [rsp + 2112], 2            # result
                        mov              dword ptr [rsp + 2116], 11
                        mov              rax, qword ptr [rip + .Lx878_0]
                        mov              qword ptr [rsp + 2120], rax;         jmp   n316_disjunction_as
n321_lit_string_β:                                                            jmp   n316_disjunction_af
.Lx878_0:               .quad            .Lx878_0_s
.Lx878_0_s:             .string          "vowls?skips"
#-----------------------------------------------------------------------------------------------------------------------
n322_var_α:             mov              rax, qword ptr [rsp + 11088]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 11096]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n323_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n323_scan_enter_α:      mov              rdi, qword ptr [rsp + 1520]
                        mov              rsi, qword ptr [rsp + 1528]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n324_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_string_α:      mov              qword ptr [rsp + 1392], 2            # result
                        mov              dword ptr [rsp + 1396], 1
                        mov              rax, qword ptr [rip + .Lx883_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n325_disjunction_α
.Lx883_0:               .quad            .Lx883_0_s
.Lx883_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n325_disjunction_α:     mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              dword ptr [rsp + 1424], 0;           jmp   n330_lit_string_α
n325_disjunction_as:    mov              eax, dword ptr [rsp + 1424]
                        cmp              eax, 0;                              jne   .Lx885_0
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n326_call_builtin_icon_α
.Lx885_0:               cmp              eax, 1;                              jne   .Lx885_1
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n326_call_builtin_icon_α
.Lx885_1:               cmp              eax, 2;                              jne   .Lx885_2
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n326_call_builtin_icon_α
.Lx885_2:                                                                     jmp   n326_call_builtin_icon_α
n325_disjunction_β:     mov              eax, dword ptr [rsp + 1424]
                        cmp              eax, 0;                              je    n325_disjunction_af
                        cmp              eax, 1;                              je    n329_scan_upto_β
                                                                              jmp   n325_disjunction_af
n325_disjunction_af:    add              dword ptr [rsp + 1424], 1
                        mov              eax, dword ptr [rsp + 1424]
                        cmp              eax, 1;                              je    n328_var_α
                        cmp              eax, 2;                              je    n327_lit_string_α
                                                                              jmp   n347_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n326_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1368], rax
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1352], rax
                        .section         .rodata
.Lrkfn887:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn887]
                        lea              rsi, [rsp + 1344]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx
                        cmp              eax, 104;                            je    n325_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n325_disjunction_β
n326_call_builtin_icon_β:
                                                                              jmp   n325_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n327_lit_string_α:      mov              qword ptr [rsp + 1504], 2            # result
                        mov              dword ptr [rsp + 1508], 1
                        mov              rax, qword ptr [rip + .Lx888_0]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n325_disjunction_as
n327_lit_string_β:                                                            jmp   n325_disjunction_af
.Lx888_0:               .quad            .Lx888_0_s
.Lx888_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n328_var_α:             mov              rax, qword ptr [rsp + 11120]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 11128]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n329_scan_upto_α
n328_var_β:                                                                   jmp   n325_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n329_scan_upto_α:       mov              qword ptr [rsp + 1472], r14
.Lx892_0:               mov              rax, qword ptr [rsp + 1472]
                        cmp              rax, r15;                            jge   n325_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rsp + 1496]
                        push             rax
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             rax, rax
                        pop              rax;                                 je    .Lx892_1
                        mov              qword ptr [rsp + 1456], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 1464], rax;         jmp   n325_disjunction_as
.Lx892_1:               inc              qword ptr [rsp + 1472];              jmp   .Lx892_0
n329_scan_upto_β:       inc              qword ptr [rsp + 1472];              jmp   .Lx892_0
#-----------------------------------------------------------------------------------------------------------------------
n330_lit_string_α:      mov              qword ptr [rsp + 1440], 2            # result
                        mov              dword ptr [rsp + 1444], 11
                        mov              rax, qword ptr [rip + .Lx893_0]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n325_disjunction_as
n330_lit_string_β:                                                            jmp   n325_disjunction_af
.Lx893_0:               .quad            .Lx893_0_s
.Lx893_0_s:             .string          "skips?vowls"
#-----------------------------------------------------------------------------------------------------------------------
n331_var_α:             mov              rax, qword ptr [rsp + 11104]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 11112]
                        mov              qword ptr [rsp + 472], rax;          jmp   n332_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n332_scan_enter_α:      mov              rdi, qword ptr [rsp + 464]
                        mov              rsi, qword ptr [rsp + 472]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n333_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n333_lit_string_α:      mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 1
                        mov              rax, qword ptr [rip + .Lx898_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n334_disjunction_α
.Lx898_0:               .quad            .Lx898_0_s
.Lx898_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n334_disjunction_α:     mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              dword ptr [rsp + 352], 0;            jmp   n339_lit_string_α
n334_disjunction_as:    mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 0;                              jne   .Lx900_0
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax;          jmp   n335_call_builtin_icon_α
.Lx900_0:               cmp              eax, 1;                              jne   .Lx900_1
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 344], rax;          jmp   n335_call_builtin_icon_α
.Lx900_1:               cmp              eax, 2;                              jne   .Lx900_2
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 344], rax;          jmp   n335_call_builtin_icon_α
.Lx900_2:                                                                     jmp   n335_call_builtin_icon_α
n334_disjunction_β:     mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 0;                              je    n334_disjunction_af
                        cmp              eax, 1;                              je    n338_scan_upto_β
                                                                              jmp   n334_disjunction_af
n334_disjunction_af:    add              dword ptr [rsp + 352], 1
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 1;                              je    n337_keyword_icon_α
                        cmp              eax, 2;                              je    n336_lit_string_α
                                                                              jmp   n354_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n335_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax
                        .section         .rodata
.Lrkfn902:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn902]
                        lea              rsi, [rsp + 272]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              eax, 104;                            je    n334_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n334_disjunction_β
n335_call_builtin_icon_β:
                                                                              jmp   n334_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_string_α:      mov              qword ptr [rsp + 448], 2             # result
                        mov              dword ptr [rsp + 452], 1
                        mov              rax, qword ptr [rip + .Lx903_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n334_disjunction_as
n336_lit_string_β:                                                            jmp   n334_disjunction_af
.Lx903_0:               .quad            .Lx903_0_s
.Lx903_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n337_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx904_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n334_disjunction_af
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n338_scan_upto_α
n337_keyword_icon_β:                                                          jmp   n334_disjunction_af
.Lx904_0:               .quad            .Lx904_0_s
.Lx904_0_s:             .string          "&ascii"
#-----------------------------------------------------------------------------------------------------------------------
n338_scan_upto_α:       mov              qword ptr [rsp + 400], r14
.Lx906_0:               mov              rax, qword ptr [rsp + 400]
                        cmp              rax, r15;                            jge   n334_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rsp + 424]
                        push             rax
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             rax, rax
                        pop              rax;                                 je    .Lx906_1
                        mov              qword ptr [rsp + 384], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 392], rax;          jmp   n334_disjunction_as
.Lx906_1:               inc              qword ptr [rsp + 400];               jmp   .Lx906_0
n338_scan_upto_β:       inc              qword ptr [rsp + 400];               jmp   .Lx906_0
#-----------------------------------------------------------------------------------------------------------------------
n339_lit_string_α:      mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], 11
                        mov              rax, qword ptr [rip + .Lx907_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n334_disjunction_as
n339_lit_string_β:                                                            jmp   n334_disjunction_af
.Lx907_0:               .quad            .Lx907_0_s
.Lx907_0_s:             .string          "upprs?ascii"
#-----------------------------------------------------------------------------------------------------------------------
n340_lit_string_α:      mov              qword ptr [rsp + 1872], 2            # result
                        mov              dword ptr [rsp + 1876], 1
                        mov              rax, qword ptr [rip + .Lx908_0]
                        mov              qword ptr [rsp + 1880], rax;         jmp   n341_disjunction_α
.Lx908_0:               .quad            .Lx908_0_s
.Lx908_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n341_disjunction_α:     mov              qword ptr [rsp + 1888], 0
                        mov              qword ptr [rsp + 1896], 0
                        mov              dword ptr [rsp + 1904], 0;           jmp   n346_lit_string_α
n341_disjunction_as:    mov              eax, dword ptr [rsp + 1904]
                        cmp              eax, 0;                              jne   .Lx910_0
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n342_call_builtin_icon_α
.Lx910_0:               cmp              eax, 1;                              jne   .Lx910_1
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n342_call_builtin_icon_α
.Lx910_1:               cmp              eax, 2;                              jne   .Lx910_2
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n342_call_builtin_icon_α
.Lx910_2:                                                                     jmp   n342_call_builtin_icon_α
n341_disjunction_β:     mov              eax, dword ptr [rsp + 1904]
                        cmp              eax, 0;                              je    n341_disjunction_af
                        cmp              eax, 1;                              je    n345_scan_upto_β
                                                                              jmp   n341_disjunction_af
n341_disjunction_af:    add              dword ptr [rsp + 1904], 1
                        mov              eax, dword ptr [rsp + 1904]
                        cmp              eax, 1;                              je    n344_lit_charset_α
                        cmp              eax, 2;                              je    n343_lit_string_α
                                                                              jmp   n361_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n342_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 1840], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 1848], rax
                        mov              rax, qword ptr [rsp + 1872]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 1880]
                        mov              qword ptr [rsp + 1832], rax
                        .section         .rodata
.Lrkfn912:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn912]
                        lea              rsi, [rsp + 1824]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx
                        cmp              eax, 104;                            je    n341_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n341_disjunction_β
n342_call_builtin_icon_β:
                                                                              jmp   n341_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n343_lit_string_α:      mov              qword ptr [rsp + 1984], 2            # result
                        mov              dword ptr [rsp + 1988], 1
                        mov              rax, qword ptr [rip + .Lx913_0]
                        mov              qword ptr [rsp + 1992], rax;         jmp   n341_disjunction_as
n343_lit_string_β:                                                            jmp   n341_disjunction_af
.Lx913_0:               .quad            .Lx913_0_s
.Lx913_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n344_lit_charset_α:     mov              qword ptr [rsp + 1968], 2            # result
                        mov              dword ptr [rsp + 1972], -1
                        mov              rax, qword ptr [rip + .Lx914_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n345_scan_upto_α
n344_lit_charset_β:                                                           jmp   n341_disjunction_af
.Lx914_0:               .quad            .Lx914_0_s
.Lx914_0_s:             .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n345_scan_upto_α:       mov              qword ptr [rsp + 1952], r14
.Lx916_0:               mov              rax, qword ptr [rsp + 1952]
                        cmp              rax, r15;                            jge   n341_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx916_2]
                        push             rax
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             rax, rax
                        pop              rax;                                 je    .Lx916_1
                        mov              qword ptr [rsp + 1936], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 1944], rax;         jmp   n341_disjunction_as
.Lx916_1:               inc              qword ptr [rsp + 1952];              jmp   .Lx916_0
n345_scan_upto_β:       inc              qword ptr [rsp + 1952];              jmp   .Lx916_0
.Lx916_2:               .quad            .Lx916_2_s
.Lx916_2_s:             .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n346_lit_string_α:      mov              qword ptr [rsp + 1920], 2            # result
                        mov              dword ptr [rsp + 1924], 11
                        mov              rax, qword ptr [rip + .Lx917_0]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n341_disjunction_as
n346_lit_string_β:                                                            jmp   n341_disjunction_af
.Lx917_0:               .quad            .Lx917_0_s
.Lx917_0_s:             .string          "vowls?letts"
#-----------------------------------------------------------------------------------------------------------------------
n347_lit_string_α:      mov              qword ptr [rsp + 1200], 2            # result
                        mov              dword ptr [rsp + 1204], 1
                        mov              rax, qword ptr [rip + .Lx918_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n348_disjunction_α
.Lx918_0:               .quad            .Lx918_0_s
.Lx918_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n348_disjunction_α:     mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              dword ptr [rsp + 1232], 0;           jmp   n353_lit_string_α
n348_disjunction_as:    mov              eax, dword ptr [rsp + 1232]
                        cmp              eax, 0;                              jne   .Lx920_0
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n349_call_builtin_icon_α
.Lx920_0:               cmp              eax, 1;                              jne   .Lx920_1
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n349_call_builtin_icon_α
.Lx920_1:               cmp              eax, 2;                              jne   .Lx920_2
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n349_call_builtin_icon_α
.Lx920_2:                                                                     jmp   n349_call_builtin_icon_α
n348_disjunction_β:     mov              eax, dword ptr [rsp + 1232]
                        cmp              eax, 0;                              je    n348_disjunction_af
                        cmp              eax, 1;                              je    n352_scan_upto_β
                                                                              jmp   n348_disjunction_af
n348_disjunction_af:    add              dword ptr [rsp + 1232], 1
                        mov              eax, dword ptr [rsp + 1232]
                        cmp              eax, 1;                              je    n351_lit_charset_α
                        cmp              eax, 2;                              je    n350_lit_string_α
                                                                              jmp   n368_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n349_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1176], rax
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1160], rax
                        .section         .rodata
.Lrkfn922:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn922]
                        lea              rsi, [rsp + 1152]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        cmp              eax, 104;                            je    n348_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n348_disjunction_β
n349_call_builtin_icon_β:
                                                                              jmp   n348_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n350_lit_string_α:      mov              qword ptr [rsp + 1312], 2            # result
                        mov              dword ptr [rsp + 1316], 1
                        mov              rax, qword ptr [rip + .Lx923_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n348_disjunction_as
n350_lit_string_β:                                                            jmp   n348_disjunction_af
.Lx923_0:               .quad            .Lx923_0_s
.Lx923_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_charset_α:     mov              qword ptr [rsp + 1296], 2            # result
                        mov              dword ptr [rsp + 1300], -1
                        mov              rax, qword ptr [rip + .Lx924_0]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n352_scan_upto_α
n351_lit_charset_β:                                                           jmp   n348_disjunction_af
.Lx924_0:               .quad            .Lx924_0_s
.Lx924_0_s:             .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n352_scan_upto_α:       mov              qword ptr [rsp + 1280], r14
.Lx926_0:               mov              rax, qword ptr [rsp + 1280]
                        cmp              rax, r15;                            jge   n348_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx926_2]
                        push             rax
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             rax, rax
                        pop              rax;                                 je    .Lx926_1
                        mov              qword ptr [rsp + 1264], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 1272], rax;         jmp   n348_disjunction_as
.Lx926_1:               inc              qword ptr [rsp + 1280];              jmp   .Lx926_0
n352_scan_upto_β:       inc              qword ptr [rsp + 1280];              jmp   .Lx926_0
.Lx926_2:               .quad            .Lx926_2_s
.Lx926_2_s:             .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n353_lit_string_α:      mov              qword ptr [rsp + 1248], 2            # result
                        mov              dword ptr [rsp + 1252], 11
                        mov              rax, qword ptr [rip + .Lx927_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n348_disjunction_as
n353_lit_string_β:                                                            jmp   n348_disjunction_af
.Lx927_0:               .quad            .Lx927_0_s
.Lx927_0_s:             .string          "skips?letts"
#-----------------------------------------------------------------------------------------------------------------------
n354_lit_string_α:      mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 1
                        mov              rax, qword ptr [rip + .Lx928_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n355_disjunction_α
.Lx928_0:               .quad            .Lx928_0_s
.Lx928_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n355_disjunction_α:     mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              dword ptr [rsp + 160], 0;            jmp   n360_lit_string_α
n355_disjunction_as:    mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 0;                              jne   .Lx930_0
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax;          jmp   n356_call_builtin_icon_α
.Lx930_0:               cmp              eax, 1;                              jne   .Lx930_1
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 152], rax;          jmp   n356_call_builtin_icon_α
.Lx930_1:               cmp              eax, 2;                              jne   .Lx930_2
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 152], rax;          jmp   n356_call_builtin_icon_α
.Lx930_2:                                                                     jmp   n356_call_builtin_icon_α
n355_disjunction_β:     mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 0;                              je    n355_disjunction_af
                        cmp              eax, 1;                              je    n359_scan_upto_β
                                                                              jmp   n355_disjunction_af
n355_disjunction_af:    add              dword ptr [rsp + 160], 1
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 1;                              je    n358_var_α
                        cmp              eax, 2;                              je    n357_lit_string_α
                                                                              jmp   n375_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n356_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 88], rax
                        .section         .rodata
.Lrkfn932:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn932]
                        lea              rsi, [rsp + 80]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 104;                            je    n355_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n355_disjunction_β
n356_call_builtin_icon_β:
                                                                              jmp   n355_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n357_lit_string_α:      mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 1
                        mov              rax, qword ptr [rip + .Lx933_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n355_disjunction_as
n357_lit_string_β:                                                            jmp   n355_disjunction_af
.Lx933_0:               .quad            .Lx933_0_s
.Lx933_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n358_var_α:             mov              rax, qword ptr [rsp + 11088]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 11096]
                        mov              qword ptr [rsp + 232], rax;          jmp   n359_scan_upto_α
n358_var_β:                                                                   jmp   n355_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n359_scan_upto_α:       mov              qword ptr [rsp + 208], r14
.Lx937_0:               mov              rax, qword ptr [rsp + 208]
                        cmp              rax, r15;                            jge   n355_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rsp + 232]
                        push             rax
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             rax, rax
                        pop              rax;                                 je    .Lx937_1
                        mov              qword ptr [rsp + 192], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 200], rax;          jmp   n355_disjunction_as
.Lx937_1:               inc              qword ptr [rsp + 208];               jmp   .Lx937_0
n359_scan_upto_β:       inc              qword ptr [rsp + 208];               jmp   .Lx937_0
#-----------------------------------------------------------------------------------------------------------------------
n360_lit_string_α:      mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 11
                        mov              rax, qword ptr [rip + .Lx938_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n355_disjunction_as
n360_lit_string_β:                                                            jmp   n355_disjunction_af
.Lx938_0:               .quad            .Lx938_0_s
.Lx938_0_s:             .string          "upprs?skips"
#-----------------------------------------------------------------------------------------------------------------------
n361_lit_string_α:      mov              qword ptr [rsp + 1664], 2            # result
                        mov              dword ptr [rsp + 1668], 1
                        mov              rax, qword ptr [rip + .Lx939_0]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n362_disjunction_α
.Lx939_0:               .quad            .Lx939_0_s
.Lx939_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n362_disjunction_α:     mov              qword ptr [rsp + 1680], 0
                        mov              qword ptr [rsp + 1688], 0
                        mov              dword ptr [rsp + 1696], 0;           jmp   n367_lit_string_α
n362_disjunction_as:    mov              eax, dword ptr [rsp + 1696]
                        cmp              eax, 0;                              jne   .Lx941_0
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n363_call_builtin_icon_α
.Lx941_0:               cmp              eax, 1;                              jne   .Lx941_1
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n363_call_builtin_icon_α
.Lx941_1:               cmp              eax, 2;                              jne   .Lx941_2
                        mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n363_call_builtin_icon_α
.Lx941_2:                                                                     jmp   n363_call_builtin_icon_α
n362_disjunction_β:     mov              eax, dword ptr [rsp + 1696]
                        cmp              eax, 0;                              je    n362_disjunction_af
                        cmp              eax, 1;                              je    n366_scan_upto_β
                                                                              jmp   n362_disjunction_af
n362_disjunction_af:    add              dword ptr [rsp + 1696], 1
                        mov              eax, dword ptr [rsp + 1696]
                        cmp              eax, 1;                              je    n365_keyword_icon_α
                        cmp              eax, 2;                              je    n364_lit_string_α
                                                                              jmp   n376_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n363_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1640], rax
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1624], rax
                        .section         .rodata
.Lrkfn943:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn943]
                        lea              rsi, [rsp + 1616]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx
                        cmp              eax, 104;                            je    n362_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n362_disjunction_β
n363_call_builtin_icon_β:
                                                                              jmp   n362_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n364_lit_string_α:      mov              qword ptr [rsp + 1792], 2            # result
                        mov              dword ptr [rsp + 1796], 1
                        mov              rax, qword ptr [rip + .Lx944_0]
                        mov              qword ptr [rsp + 1800], rax;         jmp   n362_disjunction_as
n364_lit_string_β:                                                            jmp   n362_disjunction_af
.Lx944_0:               .quad            .Lx944_0_s
.Lx944_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n365_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx945_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n362_disjunction_af
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx;         jmp   n366_scan_upto_α
n365_keyword_icon_β:                                                          jmp   n362_disjunction_af
.Lx945_0:               .quad            .Lx945_0_s
.Lx945_0_s:             .string          "&ascii"
#-----------------------------------------------------------------------------------------------------------------------
n366_scan_upto_α:       mov              qword ptr [rsp + 1744], r14
.Lx947_0:               mov              rax, qword ptr [rsp + 1744]
                        cmp              rax, r15;                            jge   n362_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rsp + 1768]
                        push             rax
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             rax, rax
                        pop              rax;                                 je    .Lx947_1
                        mov              qword ptr [rsp + 1728], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 1736], rax;         jmp   n362_disjunction_as
.Lx947_1:               inc              qword ptr [rsp + 1744];              jmp   .Lx947_0
n366_scan_upto_β:       inc              qword ptr [rsp + 1744];              jmp   .Lx947_0
#-----------------------------------------------------------------------------------------------------------------------
n367_lit_string_α:      mov              qword ptr [rsp + 1712], 2            # result
                        mov              dword ptr [rsp + 1716], 11
                        mov              rax, qword ptr [rip + .Lx948_0]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n362_disjunction_as
n367_lit_string_β:                                                            jmp   n362_disjunction_af
.Lx948_0:               .quad            .Lx948_0_s
.Lx948_0_s:             .string          "vowls?ascii"
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_string_α:      mov              qword ptr [rsp + 992], 2             # result
                        mov              dword ptr [rsp + 996], 1
                        mov              rax, qword ptr [rip + .Lx949_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n369_disjunction_α
.Lx949_0:               .quad            .Lx949_0_s
.Lx949_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n369_disjunction_α:     mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              dword ptr [rsp + 1024], 0;           jmp   n374_lit_string_α
n369_disjunction_as:    mov              eax, dword ptr [rsp + 1024]
                        cmp              eax, 0;                              jne   .Lx951_0
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n370_call_builtin_icon_α
.Lx951_0:               cmp              eax, 1;                              jne   .Lx951_1
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n370_call_builtin_icon_α
.Lx951_1:               cmp              eax, 2;                              jne   .Lx951_2
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n370_call_builtin_icon_α
.Lx951_2:                                                                     jmp   n370_call_builtin_icon_α
n369_disjunction_β:     mov              eax, dword ptr [rsp + 1024]
                        cmp              eax, 0;                              je    n369_disjunction_af
                        cmp              eax, 1;                              je    n373_scan_upto_β
                                                                              jmp   n369_disjunction_af
n369_disjunction_af:    add              dword ptr [rsp + 1024], 1
                        mov              eax, dword ptr [rsp + 1024]
                        cmp              eax, 1;                              je    n372_keyword_icon_α
                        cmp              eax, 2;                              je    n371_lit_string_α
                                                                              jmp   n377_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n370_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 952], rax
                        .section         .rodata
.Lrkfn953:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn953]
                        lea              rsi, [rsp + 944]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              eax, 104;                            je    n369_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n369_disjunction_β
n370_call_builtin_icon_β:
                                                                              jmp   n369_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_string_α:      mov              qword ptr [rsp + 1120], 2            # result
                        mov              dword ptr [rsp + 1124], 1
                        mov              rax, qword ptr [rip + .Lx954_0]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n369_disjunction_as
n371_lit_string_β:                                                            jmp   n369_disjunction_af
.Lx954_0:               .quad            .Lx954_0_s
.Lx954_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n372_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx955_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n369_disjunction_af
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n373_scan_upto_α
n372_keyword_icon_β:                                                          jmp   n369_disjunction_af
.Lx955_0:               .quad            .Lx955_0_s
.Lx955_0_s:             .string          "&ascii"
#-----------------------------------------------------------------------------------------------------------------------
n373_scan_upto_α:       mov              qword ptr [rsp + 1072], r14
.Lx957_0:               mov              rax, qword ptr [rsp + 1072]
                        cmp              rax, r15;                            jge   n369_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rsp + 1096]
                        push             rax
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             rax, rax
                        pop              rax;                                 je    .Lx957_1
                        mov              qword ptr [rsp + 1056], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 1064], rax;         jmp   n369_disjunction_as
.Lx957_1:               inc              qword ptr [rsp + 1072];              jmp   .Lx957_0
n373_scan_upto_β:       inc              qword ptr [rsp + 1072];              jmp   .Lx957_0
#-----------------------------------------------------------------------------------------------------------------------
n374_lit_string_α:      mov              qword ptr [rsp + 1040], 2            # result
                        mov              dword ptr [rsp + 1044], 11
                        mov              rax, qword ptr [rip + .Lx958_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n369_disjunction_as
n374_lit_string_β:                                                            jmp   n369_disjunction_af
.Lx958_0:               .quad            .Lx958_0_s
.Lx958_0_s:             .string          "skips?ascii"
#-----------------------------------------------------------------------------------------------------------------------
n375_scan_α:            lea              rdi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 16]
                        mov              r14, qword ptr [rsp + 24]
                        mov              r15, qword ptr [rsp + 32];           jmp   main_ω
n375_scan_β:                                                                  jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n376_scan_α:            lea              rdi, [rsp + 1552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 1552]
                        mov              r14, qword ptr [rsp + 1560]
                        mov              r15, qword ptr [rsp + 1568];         jmp   n322_var_α
n376_scan_β:                                                                  jmp   n322_var_α
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_string_α:      mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 1
                        mov              rax, qword ptr [rip + .Lx963_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n378_disjunction_α
.Lx963_0:               .quad            .Lx963_0_s
.Lx963_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n378_disjunction_α:     mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              dword ptr [rsp + 832], 0;            jmp   n383_lit_string_α
n378_disjunction_as:    mov              eax, dword ptr [rsp + 832]
                        cmp              eax, 0;                              jne   .Lx965_0
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 824], rax;          jmp   n379_call_builtin_icon_α
.Lx965_0:               cmp              eax, 1;                              jne   .Lx965_1
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 824], rax;          jmp   n379_call_builtin_icon_α
.Lx965_1:               cmp              eax, 2;                              jne   .Lx965_2
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 824], rax;          jmp   n379_call_builtin_icon_α
.Lx965_2:                                                                     jmp   n379_call_builtin_icon_α
n378_disjunction_β:     mov              eax, dword ptr [rsp + 832]
                        cmp              eax, 0;                              je    n378_disjunction_af
                        cmp              eax, 1;                              je    n382_scan_upto_β
                                                                              jmp   n378_disjunction_af
n378_disjunction_af:    add              dword ptr [rsp + 832], 1
                        mov              eax, dword ptr [rsp + 832]
                        cmp              eax, 1;                              je    n381_var_α
                        cmp              eax, 2;                              je    n380_lit_string_α
                                                                              jmp   n384_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n379_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 776], rax
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 760], rax
                        .section         .rodata
.Lrkfn967:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn967]
                        lea              rsi, [rsp + 752]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              eax, 104;                            je    n378_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n378_disjunction_β
n379_call_builtin_icon_β:
                                                                              jmp   n378_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n380_lit_string_α:      mov              qword ptr [rsp + 912], 2             # result
                        mov              dword ptr [rsp + 916], 1
                        mov              rax, qword ptr [rip + .Lx968_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n378_disjunction_as
n380_lit_string_β:                                                            jmp   n378_disjunction_af
.Lx968_0:               .quad            .Lx968_0_s
.Lx968_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n381_var_α:             mov              rax, qword ptr [rsp + 11104]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 11112]
                        mov              qword ptr [rsp + 904], rax;          jmp   n382_scan_upto_α
n381_var_β:                                                                   jmp   n378_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n382_scan_upto_α:       mov              qword ptr [rsp + 880], r14
.Lx972_0:               mov              rax, qword ptr [rsp + 880]
                        cmp              rax, r15;                            jge   n378_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rsp + 904]
                        push             rax
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             rax, rax
                        pop              rax;                                 je    .Lx972_1
                        mov              qword ptr [rsp + 864], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 872], rax;          jmp   n378_disjunction_as
.Lx972_1:               inc              qword ptr [rsp + 880];               jmp   .Lx972_0
n382_scan_upto_β:       inc              qword ptr [rsp + 880];               jmp   .Lx972_0
#-----------------------------------------------------------------------------------------------------------------------
n383_lit_string_α:      mov              qword ptr [rsp + 848], 2             # result
                        mov              dword ptr [rsp + 852], 11
                        mov              rax, qword ptr [rip + .Lx973_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n378_disjunction_as
n383_lit_string_β:                                                            jmp   n378_disjunction_af
.Lx973_0:               .quad            .Lx973_0_s
.Lx973_0_s:             .string          "skips?upprs"
#-----------------------------------------------------------------------------------------------------------------------
n384_lit_string_α:      mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], 1
                        mov              rax, qword ptr [rip + .Lx974_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n385_disjunction_α
.Lx974_0:               .quad            .Lx974_0_s
.Lx974_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n385_disjunction_α:     mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              dword ptr [rsp + 640], 0;            jmp   n390_lit_string_α
n385_disjunction_as:    mov              eax, dword ptr [rsp + 640]
                        cmp              eax, 0;                              jne   .Lx976_0
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax;          jmp   n386_call_builtin_icon_α
.Lx976_0:               cmp              eax, 1;                              jne   .Lx976_1
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 632], rax;          jmp   n386_call_builtin_icon_α
.Lx976_1:               cmp              eax, 2;                              jne   .Lx976_2
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 632], rax;          jmp   n386_call_builtin_icon_α
.Lx976_2:                                                                     jmp   n386_call_builtin_icon_α
n385_disjunction_β:     mov              eax, dword ptr [rsp + 640]
                        cmp              eax, 0;                              je    n385_disjunction_af
                        cmp              eax, 1;                              je    n389_scan_upto_β
                                                                              jmp   n385_disjunction_af
n385_disjunction_af:    add              dword ptr [rsp + 640], 1
                        mov              eax, dword ptr [rsp + 640]
                        cmp              eax, 1;                              je    n388_var_α
                        cmp              eax, 2;                              je    n387_lit_string_α
                                                                              jmp   n391_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n386_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 584], rax
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 568], rax
                        .section         .rodata
.Lrkfn978:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn978]
                        lea              rsi, [rsp + 560]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              eax, 104;                            je    n385_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n385_disjunction_β
n386_call_builtin_icon_β:
                                                                              jmp   n385_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n387_lit_string_α:      mov              qword ptr [rsp + 720], 2             # result
                        mov              dword ptr [rsp + 724], 1
                        mov              rax, qword ptr [rip + .Lx979_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n385_disjunction_as
n387_lit_string_β:                                                            jmp   n385_disjunction_af
.Lx979_0:               .quad            .Lx979_0_s
.Lx979_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n388_var_α:             mov              rax, qword ptr [rsp + 11088]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 11096]
                        mov              qword ptr [rsp + 712], rax;          jmp   n389_scan_upto_α
n388_var_β:                                                                   jmp   n385_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n389_scan_upto_α:       mov              qword ptr [rsp + 688], r14
.Lx983_0:               mov              rax, qword ptr [rsp + 688]
                        cmp              rax, r15;                            jge   n385_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rsp + 712]
                        push             rax
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             rax, rax
                        pop              rax;                                 je    .Lx983_1
                        mov              qword ptr [rsp + 672], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 680], rax;          jmp   n385_disjunction_as
.Lx983_1:               inc              qword ptr [rsp + 688];               jmp   .Lx983_0
n389_scan_upto_β:       inc              qword ptr [rsp + 688];               jmp   .Lx983_0
#-----------------------------------------------------------------------------------------------------------------------
n390_lit_string_α:      mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], 11
                        mov              rax, qword ptr [rip + .Lx984_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n385_disjunction_as
n390_lit_string_β:                                                            jmp   n385_disjunction_af
.Lx984_0:               .quad            .Lx984_0_s
.Lx984_0_s:             .string          "skips?skips"
#-----------------------------------------------------------------------------------------------------------------------
n391_scan_α:            lea              rdi, [rsp + 496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 496]
                        mov              r14, qword ptr [rsp + 504]
                        mov              r15, qword ptr [rsp + 512];          jmp   n331_var_α
n391_scan_β:                                                                  jmp   n331_var_α
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
