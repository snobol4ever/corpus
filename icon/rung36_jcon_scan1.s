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
                        sub              rsp, 11696
                        mov              rdi, rsp
                        add              rdi, 11552
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:       mov              r11, 1
                        mov              qword ptr [rsp + 11344], 0
                        mov              qword ptr [rsp + 11352], 0
                        mov              dword ptr [rsp + 11360], 0;          jmp   n117_lit_charset_α
n0_disjunction_as:      mov              r11, 1
                        mov              eax, dword ptr [rsp + 11360]
                        cmp              eax, 0;                              jne   .Lx410_0
                        mov              rax, qword ptr [rsp + 11376]
                        mov              qword ptr [rsp + 11344], rax
                        mov              rax, qword ptr [rsp + 11384]
                        mov              qword ptr [rsp + 11352], rax;        jmp   n1_call_builtin_icon_α
.Lx410_0:               cmp              eax, 1;                              jne   .Lx410_1
                        mov              rax, qword ptr [rsp + 11536]
                        mov              qword ptr [rsp + 11344], rax
                        mov              rax, qword ptr [rsp + 11544]
                        mov              qword ptr [rsp + 11352], rax;        jmp   n1_call_builtin_icon_α
.Lx410_1:                                                                     jmp   n1_call_builtin_icon_α
n0_disjunction_β:       mov              r11, 1
                        mov              eax, dword ptr [rsp + 11360]
                        cmp              eax, 0;                              je    n0_disjunction_af
                                                                              jmp   n0_disjunction_af
n0_disjunction_af:      mov              r11, 1
                        add              dword ptr [rsp + 11360], 1
                        mov              eax, dword ptr [rsp + 11360]
                        cmp              eax, 1;                              je    n116_lit_string_α
                                                                              jmp   n2_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_icon_α: mov              r11, 2
                        mov              rax, qword ptr [rsp + 11344]
                        mov              qword ptr [rsp + 11312], rax
                        mov              rax, qword ptr [rsp + 11352]
                        mov              qword ptr [rsp + 11320], rax
                        .section         .rodata
.Lrkfn412:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn412]
                        lea              rsi, [rsp + 11312]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 11296], rax
                        mov              qword ptr [rsp + 11304], rdx
                        cmp              al, 104;                             je    n0_disjunction_β
                                                                              jmp   n2_disjunction_α
n1_call_builtin_icon_β: mov              r11, 2;                              jmp   n0_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n2_disjunction_α:       mov              r11, 3
                        mov              qword ptr [rsp + 11088], 0
                        mov              qword ptr [rsp + 11096], 0
                        mov              dword ptr [rsp + 11104], 0;          jmp   n111_lit_charset_α
n2_disjunction_as:      mov              r11, 3
                        mov              eax, dword ptr [rsp + 11104]
                        cmp              eax, 0;                              jne   .Lx414_0
                        mov              rax, qword ptr [rsp + 11120]
                        mov              qword ptr [rsp + 11088], rax
                        mov              rax, qword ptr [rsp + 11128]
                        mov              qword ptr [rsp + 11096], rax;        jmp   n3_call_builtin_icon_α
.Lx414_0:               cmp              eax, 1;                              jne   .Lx414_1
                        mov              rax, qword ptr [rsp + 11280]
                        mov              qword ptr [rsp + 11088], rax
                        mov              rax, qword ptr [rsp + 11288]
                        mov              qword ptr [rsp + 11096], rax;        jmp   n3_call_builtin_icon_α
.Lx414_1:                                                                     jmp   n3_call_builtin_icon_α
n2_disjunction_β:       mov              r11, 3
                        mov              eax, dword ptr [rsp + 11104]
                        cmp              eax, 0;                              je    n2_disjunction_af
                                                                              jmp   n2_disjunction_af
n2_disjunction_af:      mov              r11, 3
                        add              dword ptr [rsp + 11104], 1
                        mov              eax, dword ptr [rsp + 11104]
                        cmp              eax, 1;                              je    n110_lit_string_α
                                                                              jmp   n4_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_icon_α: mov              r11, 4
                        mov              rax, qword ptr [rsp + 11088]
                        mov              qword ptr [rsp + 11056], rax
                        mov              rax, qword ptr [rsp + 11096]
                        mov              qword ptr [rsp + 11064], rax
                        .section         .rodata
.Lrkfn416:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn416]
                        lea              rsi, [rsp + 11056]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 11040], rax
                        mov              qword ptr [rsp + 11048], rdx
                        cmp              al, 104;                             je    n2_disjunction_β
                                                                              jmp   n4_disjunction_α
n3_call_builtin_icon_β: mov              r11, 4;                              jmp   n2_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n4_disjunction_α:       mov              r11, 5
                        mov              qword ptr [rsp + 10832], 0
                        mov              qword ptr [rsp + 10840], 0
                        mov              dword ptr [rsp + 10848], 0;          jmp   n105_lit_charset_α
n4_disjunction_as:      mov              r11, 5
                        mov              eax, dword ptr [rsp + 10848]
                        cmp              eax, 0;                              jne   .Lx418_0
                        mov              rax, qword ptr [rsp + 10864]
                        mov              qword ptr [rsp + 10832], rax
                        mov              rax, qword ptr [rsp + 10872]
                        mov              qword ptr [rsp + 10840], rax;        jmp   n5_call_builtin_icon_α
.Lx418_0:               cmp              eax, 1;                              jne   .Lx418_1
                        mov              rax, qword ptr [rsp + 11024]
                        mov              qword ptr [rsp + 10832], rax
                        mov              rax, qword ptr [rsp + 11032]
                        mov              qword ptr [rsp + 10840], rax;        jmp   n5_call_builtin_icon_α
.Lx418_1:                                                                     jmp   n5_call_builtin_icon_α
n4_disjunction_β:       mov              r11, 5
                        mov              eax, dword ptr [rsp + 10848]
                        cmp              eax, 0;                              je    n4_disjunction_af
                                                                              jmp   n4_disjunction_af
n4_disjunction_af:      mov              r11, 5
                        add              dword ptr [rsp + 10848], 1
                        mov              eax, dword ptr [rsp + 10848]
                        cmp              eax, 1;                              je    n104_lit_string_α
                                                                              jmp   n6_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α: mov              r11, 6
                        mov              rax, qword ptr [rsp + 10832]
                        mov              qword ptr [rsp + 10800], rax
                        mov              rax, qword ptr [rsp + 10840]
                        mov              qword ptr [rsp + 10808], rax
                        .section         .rodata
.Lrkfn420:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn420]
                        lea              rsi, [rsp + 10800]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 10784], rax
                        mov              qword ptr [rsp + 10792], rdx
                        cmp              al, 104;                             je    n4_disjunction_β
                                                                              jmp   n6_disjunction_α
n5_call_builtin_icon_β: mov              r11, 6;                              jmp   n4_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n6_disjunction_α:       mov              r11, 7
                        mov              qword ptr [rsp + 10608], 0
                        mov              qword ptr [rsp + 10616], 0
                        mov              dword ptr [rsp + 10624], 0;          jmp   n100_lit_charset_α
n6_disjunction_as:      mov              r11, 7
                        mov              eax, dword ptr [rsp + 10624]
                        cmp              eax, 0;                              jne   .Lx422_0
                        mov              rax, qword ptr [rsp + 10640]
                        mov              qword ptr [rsp + 10608], rax
                        mov              rax, qword ptr [rsp + 10648]
                        mov              qword ptr [rsp + 10616], rax;        jmp   n7_call_builtin_icon_α
.Lx422_0:               cmp              eax, 1;                              jne   .Lx422_1
                        mov              rax, qword ptr [rsp + 10768]
                        mov              qword ptr [rsp + 10608], rax
                        mov              rax, qword ptr [rsp + 10776]
                        mov              qword ptr [rsp + 10616], rax;        jmp   n7_call_builtin_icon_α
.Lx422_1:                                                                     jmp   n7_call_builtin_icon_α
n6_disjunction_β:       mov              r11, 7
                        mov              eax, dword ptr [rsp + 10624]
                        cmp              eax, 0;                              je    n6_disjunction_af
                                                                              jmp   n6_disjunction_af
n6_disjunction_af:      mov              r11, 7
                        add              dword ptr [rsp + 10624], 1
                        mov              eax, dword ptr [rsp + 10624]
                        cmp              eax, 1;                              je    n99_lit_string_α
                                                                              jmp   n8_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_icon_α: mov              r11, 8
                        mov              rax, qword ptr [rsp + 10608]
                        mov              qword ptr [rsp + 10576], rax
                        mov              rax, qword ptr [rsp + 10616]
                        mov              qword ptr [rsp + 10584], rax
                        .section         .rodata
.Lrkfn424:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn424]
                        lea              rsi, [rsp + 10576]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 10560], rax
                        mov              qword ptr [rsp + 10568], rdx
                        cmp              al, 104;                             je    n6_disjunction_β
                                                                              jmp   n8_disjunction_α
n7_call_builtin_icon_β: mov              r11, 8;                              jmp   n6_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n8_disjunction_α:       mov              r11, 9
                        mov              qword ptr [rsp + 10416], 0
                        mov              qword ptr [rsp + 10424], 0
                        mov              dword ptr [rsp + 10432], 0;          jmp   n96_lit_charset_α
n8_disjunction_as:      mov              r11, 9
                        mov              eax, dword ptr [rsp + 10432]
                        cmp              eax, 0;                              jne   .Lx426_0
                        mov              rax, qword ptr [rsp + 10448]
                        mov              qword ptr [rsp + 10416], rax
                        mov              rax, qword ptr [rsp + 10456]
                        mov              qword ptr [rsp + 10424], rax;        jmp   n9_call_builtin_icon_α
.Lx426_0:               cmp              eax, 1;                              jne   .Lx426_1
                        mov              rax, qword ptr [rsp + 10544]
                        mov              qword ptr [rsp + 10416], rax
                        mov              rax, qword ptr [rsp + 10552]
                        mov              qword ptr [rsp + 10424], rax;        jmp   n9_call_builtin_icon_α
.Lx426_1:                                                                     jmp   n9_call_builtin_icon_α
n8_disjunction_β:       mov              r11, 9
                        mov              eax, dword ptr [rsp + 10432]
                        cmp              eax, 0;                              je    n8_disjunction_af
                                                                              jmp   n8_disjunction_af
n8_disjunction_af:      mov              r11, 9
                        add              dword ptr [rsp + 10432], 1
                        mov              eax, dword ptr [rsp + 10432]
                        cmp              eax, 1;                              je    n95_lit_string_α
                                                                              jmp   n10_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_icon_α: mov              r11, 10
                        mov              rax, qword ptr [rsp + 10416]
                        mov              qword ptr [rsp + 10384], rax
                        mov              rax, qword ptr [rsp + 10424]
                        mov              qword ptr [rsp + 10392], rax
                        .section         .rodata
.Lrkfn428:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn428]
                        lea              rsi, [rsp + 10384]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 10368], rax
                        mov              qword ptr [rsp + 10376], rdx
                        cmp              al, 104;                             je    n8_disjunction_β
                                                                              jmp   n10_lit_string_α
n9_call_builtin_icon_β: mov              r11, 10;                             jmp   n8_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       mov              r11, 11
                        mov              qword ptr [rsp + 10352], 2           # result
                        mov              dword ptr [rsp + 10356], 6
                        mov              rax, qword ptr [rip + .Lx429_0]
                        mov              qword ptr [rsp + 10360], rax;        jmp   n11_scan_enter_α
.Lx429_0:               .quad            .Lx429_0_s
.Lx429_0_s:             .string          "1234ab"
#-----------------------------------------------------------------------------------------------------------------------
n11_scan_enter_α:       mov              r11, 12
                        mov              rdi, qword ptr [rsp + 10352]
                        mov              rsi, qword ptr [rsp + 10360]
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
n12_disjunction_α:      mov              r11, 13
                        mov              qword ptr [rsp + 10208], 0
                        mov              qword ptr [rsp + 10216], 0
                        mov              dword ptr [rsp + 10224], 0;          jmp   n92_lit_charset_α
n12_disjunction_as:     mov              r11, 13
                        mov              eax, dword ptr [rsp + 10224]
                        cmp              eax, 0;                              jne   .Lx433_0
                        mov              rax, qword ptr [rsp + 10240]
                        mov              qword ptr [rsp + 10208], rax
                        mov              rax, qword ptr [rsp + 10248]
                        mov              qword ptr [rsp + 10216], rax;        jmp   n13_call_builtin_icon_α
.Lx433_0:               cmp              eax, 1;                              jne   .Lx433_1
                        mov              rax, qword ptr [rsp + 10336]
                        mov              qword ptr [rsp + 10208], rax
                        mov              rax, qword ptr [rsp + 10344]
                        mov              qword ptr [rsp + 10216], rax;        jmp   n13_call_builtin_icon_α
.Lx433_1:                                                                     jmp   n13_call_builtin_icon_α
n12_disjunction_β:      mov              r11, 13
                        mov              eax, dword ptr [rsp + 10224]
                        cmp              eax, 0;                              je    n12_disjunction_af
                                                                              jmp   n12_disjunction_af
n12_disjunction_af:     mov              r11, 13
                        add              dword ptr [rsp + 10224], 1
                        mov              eax, dword ptr [rsp + 10224]
                        cmp              eax, 1;                              je    n91_lit_string_α
                                                                              jmp   n122_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_icon_α:
                        mov              r11, 14
                        mov              rax, qword ptr [rsp + 10208]
                        mov              qword ptr [rsp + 10176], rax
                        mov              rax, qword ptr [rsp + 10216]
                        mov              qword ptr [rsp + 10184], rax
                        .section         .rodata
.Lrkfn435:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn435]
                        lea              rsi, [rsp + 10176]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 10160], rax
                        mov              qword ptr [rsp + 10168], rdx
                        cmp              al, 104;                             je    n12_disjunction_β
                                                                              jmp   n14_scan_α
n13_call_builtin_icon_β:
                        mov              r11, 14;                             jmp   n12_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n14_scan_α:             mov              r11, 15
                        mov              rax, qword ptr [rsp + 10160]
                        mov              qword ptr [rsp + 10128], rax
                        mov              rax, qword ptr [rsp + 10168]
                        mov              qword ptr [rsp + 10136], rax
                        lea              rdi, [rsp + 10096]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 10096]
                        mov              r14, qword ptr [rsp + 10104]
                        mov              r15, qword ptr [rsp + 10112];        jmp   n15_lit_string_α
n14_scan_β:             mov              r11, 15;                             jmp   n15_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       mov              r11, 16
                        mov              qword ptr [rsp + 10064], 2           # result
                        mov              dword ptr [rsp + 10068], 6
                        mov              rax, qword ptr [rip + .Lx438_0]
                        mov              qword ptr [rsp + 10072], rax;        jmp   n16_scan_enter_α
.Lx438_0:               .quad            .Lx438_0_s
.Lx438_0_s:             .string          "1234ab"
#-----------------------------------------------------------------------------------------------------------------------
n16_scan_enter_α:       mov              r11, 17
                        mov              rdi, qword ptr [rsp + 10064]
                        mov              rsi, qword ptr [rsp + 10072]
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
n17_disjunction_α:      mov              r11, 18
                        mov              qword ptr [rsp + 9984], 0
                        mov              qword ptr [rsp + 9992], 0
                        mov              dword ptr [rsp + 10000], 0;          jmp   n89_lit_charset_α
n17_disjunction_as:     mov              r11, 18
                        mov              eax, dword ptr [rsp + 10000]
                        cmp              eax, 0;                              jne   .Lx442_0
                        mov              rax, qword ptr [rsp + 10016]
                        mov              qword ptr [rsp + 9984], rax
                        mov              rax, qword ptr [rsp + 10024]
                        mov              qword ptr [rsp + 9992], rax;         jmp   n18_call_builtin_icon_α
.Lx442_0:               cmp              eax, 1;                              jne   .Lx442_1
                        mov              rax, qword ptr [rsp + 10048]
                        mov              qword ptr [rsp + 9984], rax
                        mov              rax, qword ptr [rsp + 10056]
                        mov              qword ptr [rsp + 9992], rax;         jmp   n18_call_builtin_icon_α
.Lx442_1:                                                                     jmp   n18_call_builtin_icon_α
n17_disjunction_β:      mov              r11, 18
                        mov              eax, dword ptr [rsp + 10000]
                        cmp              eax, 0;                              je    n17_disjunction_af
                                                                              jmp   n17_disjunction_af
n17_disjunction_af:     mov              r11, 18
                        add              dword ptr [rsp + 10000], 1
                        mov              eax, dword ptr [rsp + 10000]
                        cmp              eax, 1;                              je    n88_lit_string_α
                                                                              jmp   n123_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_icon_α:
                        mov              r11, 19
                        mov              rax, qword ptr [rsp + 9984]
                        mov              qword ptr [rsp + 9952], rax
                        mov              rax, qword ptr [rsp + 9992]
                        mov              qword ptr [rsp + 9960], rax
                        .section         .rodata
.Lrkfn444:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn444]
                        lea              rsi, [rsp + 9952]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 9936], rax
                        mov              qword ptr [rsp + 9944], rdx
                        cmp              al, 104;                             je    n17_disjunction_β
                                                                              jmp   n19_scan_α
n18_call_builtin_icon_β:
                        mov              r11, 19;                             jmp   n17_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n19_scan_α:             mov              r11, 20
                        mov              rax, qword ptr [rsp + 9936]
                        mov              qword ptr [rsp + 9904], rax
                        mov              rax, qword ptr [rsp + 9944]
                        mov              qword ptr [rsp + 9912], rax
                        lea              rdi, [rsp + 9872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 9872]
                        mov              r14, qword ptr [rsp + 9880]
                        mov              r15, qword ptr [rsp + 9888];         jmp   n20_lit_string_α
n19_scan_β:             mov              r11, 20;                             jmp   n20_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:       mov              r11, 21
                        mov              qword ptr [rsp + 9840], 2            # result
                        mov              dword ptr [rsp + 9844], 6
                        mov              rax, qword ptr [rip + .Lx447_0]
                        mov              qword ptr [rsp + 9848], rax;         jmp   n21_scan_enter_α
.Lx447_0:               .quad            .Lx447_0_s
.Lx447_0_s:             .string          "1234ab"
#-----------------------------------------------------------------------------------------------------------------------
n21_scan_enter_α:       mov              r11, 22
                        mov              rdi, qword ptr [rsp + 9840]
                        mov              rsi, qword ptr [rsp + 9848]
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
n22_lit_integer_α:      mov              r11, 23
                        mov              qword ptr [rsp + 9824], 3            # result
                        mov              rax, qword ptr [rip + .Lx450_0]
                        mov              qword ptr [rsp + 9832], rax;         jmp   n23_keyword_assign_α
.Lx450_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n23_keyword_assign_α:   mov              r11, 24
                        mov              rdi, qword ptr [rsp + 9824]
                        mov              rsi, qword ptr [rsp + 9832]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_pos_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n31_scan_α
                        mov              qword ptr [rsp + 9808], rax
                        mov              qword ptr [rsp + 9816], rdx
                        mov              r14, rdx
                        sub              r14, 1;                              jmp   n24_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n24_disjunction_α:      mov              r11, 25
                        mov              qword ptr [rsp + 9728], 0
                        mov              qword ptr [rsp + 9736], 0
                        mov              dword ptr [rsp + 9744], 0;           jmp   n29_lit_charset_α
n24_disjunction_as:     mov              r11, 25
                        mov              eax, dword ptr [rsp + 9744]
                        cmp              eax, 0;                              jne   .Lx453_0
                        mov              rax, qword ptr [rsp + 9760]
                        mov              qword ptr [rsp + 9728], rax
                        mov              rax, qword ptr [rsp + 9768]
                        mov              qword ptr [rsp + 9736], rax;         jmp   n25_call_builtin_icon_α
.Lx453_0:               cmp              eax, 1;                              jne   .Lx453_1
                        mov              rax, qword ptr [rsp + 9792]
                        mov              qword ptr [rsp + 9728], rax
                        mov              rax, qword ptr [rsp + 9800]
                        mov              qword ptr [rsp + 9736], rax;         jmp   n25_call_builtin_icon_α
.Lx453_1:                                                                     jmp   n25_call_builtin_icon_α
n24_disjunction_β:      mov              r11, 25
                        mov              eax, dword ptr [rsp + 9744]
                        cmp              eax, 0;                              je    n24_disjunction_af
                                                                              jmp   n24_disjunction_af
n24_disjunction_af:     mov              r11, 25
                        add              dword ptr [rsp + 9744], 1
                        mov              eax, dword ptr [rsp + 9744]
                        cmp              eax, 1;                              je    n28_lit_string_α
                                                                              jmp   n31_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n25_call_builtin_icon_α:
                        mov              r11, 26
                        mov              rax, qword ptr [rsp + 9728]
                        mov              qword ptr [rsp + 9696], rax
                        mov              rax, qword ptr [rsp + 9736]
                        mov              qword ptr [rsp + 9704], rax
                        .section         .rodata
.Lrkfn455:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn455]
                        lea              rsi, [rsp + 9696]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 9680], rax
                        mov              qword ptr [rsp + 9688], rdx
                        cmp              al, 104;                             je    n24_disjunction_β
                                                                              jmp   n26_conjunction_α
n25_call_builtin_icon_β:
                        mov              r11, 26;                             jmp   n24_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n26_conjunction_α:      mov              r11, 27
                        mov              rax, qword ptr [rsp + 9680]
                        mov              qword ptr [rsp + 9664], rax
                        mov              rax, qword ptr [rsp + 9688]
                        mov              qword ptr [rsp + 9672], rax;         jmp   n27_scan_α
n26_conjunction_β:      mov              r11, 27;                             jmp   n31_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n27_scan_α:             mov              r11, 28
                        mov              rax, qword ptr [rsp + 9664]
                        mov              qword ptr [rsp + 9632], rax
                        mov              rax, qword ptr [rsp + 9672]
                        mov              qword ptr [rsp + 9640], rax
                        lea              rdi, [rsp + 9600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 9600]
                        mov              r14, qword ptr [rsp + 9608]
                        mov              r15, qword ptr [rsp + 9616];         jmp   n32_call_builtin_icon_α
n27_scan_β:             mov              r11, 28;                             jmp   n32_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:       mov              r11, 29
                        mov              qword ptr [rsp + 9792], 2            # result
                        mov              dword ptr [rsp + 9796], 4
                        mov              rax, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rsp + 9800], rax;         jmp   n24_disjunction_as
n28_lit_string_β:       mov              r11, 29;                             jmp   n24_disjunction_af
.Lx459_0:               .quad            .Lx459_0_s
.Lx459_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_charset_α:      mov              r11, 30
                        mov              qword ptr [rsp + 9776], 2            # result
                        mov              dword ptr [rsp + 9780], -1
                        mov              rax, qword ptr [rip + .Lx460_0]
                        mov              qword ptr [rsp + 9784], rax;         jmp   n30_scan_any_α
n29_lit_charset_β:      mov              r11, 30;                             jmp   n24_disjunction_af
.Lx460_0:               .quad            .Lx460_0_s
.Lx460_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n30_scan_any_α:         mov              r11, 31
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n24_disjunction_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx462_0]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax;                            je    n24_disjunction_af
                        mov              qword ptr [rsp + 9760], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 9768], rax;         jmp   n24_disjunction_as
n30_scan_any_β:         mov              r11, 31;                             jmp   n24_disjunction_af
.Lx462_0:               .quad            .Lx462_0_s
.Lx462_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n31_scan_α:             mov              r11, 32
                        lea              rdi, [rsp + 9600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 9600]
                        mov              r14, qword ptr [rsp + 9608]
                        mov              r15, qword ptr [rsp + 9616];         jmp   n32_call_builtin_icon_α
n31_scan_β:             mov              r11, 32;                             jmp   n32_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_icon_α:
                        mov              r11, 33
                        .section         .rodata
.Lrkfn466:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn466]
                        lea              rsi, [rsp + 9568]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 9552], rax
                        mov              qword ptr [rsp + 9560], rdx
                        cmp              al, 104;                             je    n33_disjunction_α
                                                                              jmp   n33_disjunction_α
n32_call_builtin_icon_β:
                        mov              r11, 33;                             jmp   n33_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n33_disjunction_α:      mov              r11, 34
                        mov              qword ptr [rsp + 9408], 0
                        mov              qword ptr [rsp + 9416], 0
                        mov              dword ptr [rsp + 9424], 0;           jmp   n85_lit_charset_α
n33_disjunction_as:     mov              r11, 34
                        mov              eax, dword ptr [rsp + 9424]
                        cmp              eax, 0;                              jne   .Lx468_0
                        mov              rax, qword ptr [rsp + 9440]
                        mov              qword ptr [rsp + 9408], rax
                        mov              rax, qword ptr [rsp + 9448]
                        mov              qword ptr [rsp + 9416], rax;         jmp   n34_call_builtin_icon_α
.Lx468_0:               cmp              eax, 1;                              jne   .Lx468_1
                        mov              rax, qword ptr [rsp + 9536]
                        mov              qword ptr [rsp + 9408], rax
                        mov              rax, qword ptr [rsp + 9544]
                        mov              qword ptr [rsp + 9416], rax;         jmp   n34_call_builtin_icon_α
.Lx468_1:                                                                     jmp   n34_call_builtin_icon_α
n33_disjunction_β:      mov              r11, 34
                        mov              eax, dword ptr [rsp + 9424]
                        cmp              eax, 0;                              je    n33_disjunction_af
                                                                              jmp   n33_disjunction_af
n33_disjunction_af:     mov              r11, 34
                        add              dword ptr [rsp + 9424], 1
                        mov              eax, dword ptr [rsp + 9424]
                        cmp              eax, 1;                              je    n84_lit_string_α
                                                                              jmp   n35_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_icon_α:
                        mov              r11, 35
                        mov              rax, qword ptr [rsp + 9408]
                        mov              qword ptr [rsp + 9376], rax
                        mov              rax, qword ptr [rsp + 9416]
                        mov              qword ptr [rsp + 9384], rax
                        .section         .rodata
.Lrkfn470:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn470]
                        lea              rsi, [rsp + 9376]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 9360], rax
                        mov              qword ptr [rsp + 9368], rdx
                        cmp              al, 104;                             je    n33_disjunction_β
                                                                              jmp   n35_disjunction_α
n34_call_builtin_icon_β:
                        mov              r11, 35;                             jmp   n33_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n35_disjunction_α:      mov              r11, 36
                        mov              qword ptr [rsp + 9216], 0
                        mov              qword ptr [rsp + 9224], 0
                        mov              dword ptr [rsp + 9232], 0;           jmp   n81_lit_charset_α
n35_disjunction_as:     mov              r11, 36
                        mov              eax, dword ptr [rsp + 9232]
                        cmp              eax, 0;                              jne   .Lx472_0
                        mov              rax, qword ptr [rsp + 9248]
                        mov              qword ptr [rsp + 9216], rax
                        mov              rax, qword ptr [rsp + 9256]
                        mov              qword ptr [rsp + 9224], rax;         jmp   n36_call_builtin_icon_α
.Lx472_0:               cmp              eax, 1;                              jne   .Lx472_1
                        mov              rax, qword ptr [rsp + 9344]
                        mov              qword ptr [rsp + 9216], rax
                        mov              rax, qword ptr [rsp + 9352]
                        mov              qword ptr [rsp + 9224], rax;         jmp   n36_call_builtin_icon_α
.Lx472_1:                                                                     jmp   n36_call_builtin_icon_α
n35_disjunction_β:      mov              r11, 36
                        mov              eax, dword ptr [rsp + 9232]
                        cmp              eax, 0;                              je    n35_disjunction_af
                                                                              jmp   n35_disjunction_af
n35_disjunction_af:     mov              r11, 36
                        add              dword ptr [rsp + 9232], 1
                        mov              eax, dword ptr [rsp + 9232]
                        cmp              eax, 1;                              je    n80_lit_string_α
                                                                              jmp   n37_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_icon_α:
                        mov              r11, 37
                        mov              rax, qword ptr [rsp + 9216]
                        mov              qword ptr [rsp + 9184], rax
                        mov              rax, qword ptr [rsp + 9224]
                        mov              qword ptr [rsp + 9192], rax
                        .section         .rodata
.Lrkfn474:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn474]
                        lea              rsi, [rsp + 9184]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 9168], rax
                        mov              qword ptr [rsp + 9176], rdx
                        cmp              al, 104;                             je    n35_disjunction_β
                                                                              jmp   n37_disjunction_α
n36_call_builtin_icon_β:
                        mov              r11, 37;                             jmp   n35_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n37_disjunction_α:      mov              r11, 38
                        mov              qword ptr [rsp + 9024], 0
                        mov              qword ptr [rsp + 9032], 0
                        mov              dword ptr [rsp + 9040], 0;           jmp   n77_lit_charset_α
n37_disjunction_as:     mov              r11, 38
                        mov              eax, dword ptr [rsp + 9040]
                        cmp              eax, 0;                              jne   .Lx476_0
                        mov              rax, qword ptr [rsp + 9056]
                        mov              qword ptr [rsp + 9024], rax
                        mov              rax, qword ptr [rsp + 9064]
                        mov              qword ptr [rsp + 9032], rax;         jmp   n38_call_builtin_icon_α
.Lx476_0:               cmp              eax, 1;                              jne   .Lx476_1
                        mov              rax, qword ptr [rsp + 9152]
                        mov              qword ptr [rsp + 9024], rax
                        mov              rax, qword ptr [rsp + 9160]
                        mov              qword ptr [rsp + 9032], rax;         jmp   n38_call_builtin_icon_α
.Lx476_1:                                                                     jmp   n38_call_builtin_icon_α
n37_disjunction_β:      mov              r11, 38
                        mov              eax, dword ptr [rsp + 9040]
                        cmp              eax, 0;                              je    n37_disjunction_af
                                                                              jmp   n37_disjunction_af
n37_disjunction_af:     mov              r11, 38
                        add              dword ptr [rsp + 9040], 1
                        mov              eax, dword ptr [rsp + 9040]
                        cmp              eax, 1;                              je    n76_lit_string_α
                                                                              jmp   n39_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_icon_α:
                        mov              r11, 39
                        mov              rax, qword ptr [rsp + 9024]
                        mov              qword ptr [rsp + 8992], rax
                        mov              rax, qword ptr [rsp + 9032]
                        mov              qword ptr [rsp + 9000], rax
                        .section         .rodata
.Lrkfn478:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn478]
                        lea              rsi, [rsp + 8992]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 8976], rax
                        mov              qword ptr [rsp + 8984], rdx
                        cmp              al, 104;                             je    n37_disjunction_β
                                                                              jmp   n39_call_builtin_icon_α
n38_call_builtin_icon_β:
                        mov              r11, 39;                             jmp   n37_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_icon_α:
                        mov              r11, 40
                        .section         .rodata
.Lrkfn480:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn480]
                        lea              rsi, [rsp + 8960]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 8944], rax
                        mov              qword ptr [rsp + 8952], rdx
                        cmp              al, 104;                             je    n40_disjunction_α
                                                                              jmp   n40_disjunction_α
n39_call_builtin_icon_β:
                        mov              r11, 40;                             jmp   n40_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n40_disjunction_α:      mov              r11, 41
                        mov              qword ptr [rsp + 8800], 0
                        mov              qword ptr [rsp + 8808], 0
                        mov              dword ptr [rsp + 8816], 0;           jmp   n73_lit_string_α
n40_disjunction_as:     mov              r11, 41
                        mov              eax, dword ptr [rsp + 8816]
                        cmp              eax, 0;                              jne   .Lx482_0
                        mov              rax, qword ptr [rsp + 8832]
                        mov              qword ptr [rsp + 8800], rax
                        mov              rax, qword ptr [rsp + 8840]
                        mov              qword ptr [rsp + 8808], rax;         jmp   n41_call_builtin_icon_α
.Lx482_0:               cmp              eax, 1;                              jne   .Lx482_1
                        mov              rax, qword ptr [rsp + 8928]
                        mov              qword ptr [rsp + 8800], rax
                        mov              rax, qword ptr [rsp + 8936]
                        mov              qword ptr [rsp + 8808], rax;         jmp   n41_call_builtin_icon_α
.Lx482_1:                                                                     jmp   n41_call_builtin_icon_α
n40_disjunction_β:      mov              r11, 41
                        mov              eax, dword ptr [rsp + 8816]
                        cmp              eax, 0;                              je    n40_disjunction_af
                                                                              jmp   n40_disjunction_af
n40_disjunction_af:     mov              r11, 41
                        add              dword ptr [rsp + 8816], 1
                        mov              eax, dword ptr [rsp + 8816]
                        cmp              eax, 1;                              je    n72_lit_string_α
                                                                              jmp   n42_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n41_call_builtin_icon_α:
                        mov              r11, 42
                        mov              rax, qword ptr [rsp + 8800]
                        mov              qword ptr [rsp + 8768], rax
                        mov              rax, qword ptr [rsp + 8808]
                        mov              qword ptr [rsp + 8776], rax
                        .section         .rodata
.Lrkfn484:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn484]
                        lea              rsi, [rsp + 8768]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 8752], rax
                        mov              qword ptr [rsp + 8760], rdx
                        cmp              al, 104;                             je    n40_disjunction_β
                                                                              jmp   n42_disjunction_α
n41_call_builtin_icon_β:
                        mov              r11, 42;                             jmp   n40_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n42_disjunction_α:      mov              r11, 43
                        mov              qword ptr [rsp + 8608], 0
                        mov              qword ptr [rsp + 8616], 0
                        mov              dword ptr [rsp + 8624], 0;           jmp   n69_lit_string_α
n42_disjunction_as:     mov              r11, 43
                        mov              eax, dword ptr [rsp + 8624]
                        cmp              eax, 0;                              jne   .Lx486_0
                        mov              rax, qword ptr [rsp + 8640]
                        mov              qword ptr [rsp + 8608], rax
                        mov              rax, qword ptr [rsp + 8648]
                        mov              qword ptr [rsp + 8616], rax;         jmp   n43_call_builtin_icon_α
.Lx486_0:               cmp              eax, 1;                              jne   .Lx486_1
                        mov              rax, qword ptr [rsp + 8736]
                        mov              qword ptr [rsp + 8608], rax
                        mov              rax, qword ptr [rsp + 8744]
                        mov              qword ptr [rsp + 8616], rax;         jmp   n43_call_builtin_icon_α
.Lx486_1:                                                                     jmp   n43_call_builtin_icon_α
n42_disjunction_β:      mov              r11, 43
                        mov              eax, dword ptr [rsp + 8624]
                        cmp              eax, 0;                              je    n42_disjunction_af
                                                                              jmp   n42_disjunction_af
n42_disjunction_af:     mov              r11, 43
                        add              dword ptr [rsp + 8624], 1
                        mov              eax, dword ptr [rsp + 8624]
                        cmp              eax, 1;                              je    n68_lit_string_α
                                                                              jmp   n44_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n43_call_builtin_icon_α:
                        mov              r11, 44
                        mov              rax, qword ptr [rsp + 8608]
                        mov              qword ptr [rsp + 8576], rax
                        mov              rax, qword ptr [rsp + 8616]
                        mov              qword ptr [rsp + 8584], rax
                        .section         .rodata
.Lrkfn488:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn488]
                        lea              rsi, [rsp + 8576]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 8560], rax
                        mov              qword ptr [rsp + 8568], rdx
                        cmp              al, 104;                             je    n42_disjunction_β
                                                                              jmp   n44_disjunction_α
n43_call_builtin_icon_β:
                        mov              r11, 44;                             jmp   n42_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n44_disjunction_α:      mov              r11, 45
                        mov              qword ptr [rsp + 8416], 0
                        mov              qword ptr [rsp + 8424], 0
                        mov              dword ptr [rsp + 8432], 0;           jmp   n65_lit_string_α
n44_disjunction_as:     mov              r11, 45
                        mov              eax, dword ptr [rsp + 8432]
                        cmp              eax, 0;                              jne   .Lx490_0
                        mov              rax, qword ptr [rsp + 8448]
                        mov              qword ptr [rsp + 8416], rax
                        mov              rax, qword ptr [rsp + 8456]
                        mov              qword ptr [rsp + 8424], rax;         jmp   n45_call_builtin_icon_α
.Lx490_0:               cmp              eax, 1;                              jne   .Lx490_1
                        mov              rax, qword ptr [rsp + 8544]
                        mov              qword ptr [rsp + 8416], rax
                        mov              rax, qword ptr [rsp + 8552]
                        mov              qword ptr [rsp + 8424], rax;         jmp   n45_call_builtin_icon_α
.Lx490_1:                                                                     jmp   n45_call_builtin_icon_α
n44_disjunction_β:      mov              r11, 45
                        mov              eax, dword ptr [rsp + 8432]
                        cmp              eax, 0;                              je    n44_disjunction_af
                                                                              jmp   n44_disjunction_af
n44_disjunction_af:     mov              r11, 45
                        add              dword ptr [rsp + 8432], 1
                        mov              eax, dword ptr [rsp + 8432]
                        cmp              eax, 1;                              je    n64_lit_string_α
                                                                              jmp   n46_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n45_call_builtin_icon_α:
                        mov              r11, 46
                        mov              rax, qword ptr [rsp + 8416]
                        mov              qword ptr [rsp + 8384], rax
                        mov              rax, qword ptr [rsp + 8424]
                        mov              qword ptr [rsp + 8392], rax
                        .section         .rodata
.Lrkfn492:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn492]
                        lea              rsi, [rsp + 8384]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 8368], rax
                        mov              qword ptr [rsp + 8376], rdx
                        cmp              al, 104;                             je    n44_disjunction_β
                                                                              jmp   n46_disjunction_α
n45_call_builtin_icon_β:
                        mov              r11, 46;                             jmp   n44_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n46_disjunction_α:      mov              r11, 47
                        mov              qword ptr [rsp + 8224], 0
                        mov              qword ptr [rsp + 8232], 0
                        mov              dword ptr [rsp + 8240], 0;           jmp   n61_lit_string_α
n46_disjunction_as:     mov              r11, 47
                        mov              eax, dword ptr [rsp + 8240]
                        cmp              eax, 0;                              jne   .Lx494_0
                        mov              rax, qword ptr [rsp + 8256]
                        mov              qword ptr [rsp + 8224], rax
                        mov              rax, qword ptr [rsp + 8264]
                        mov              qword ptr [rsp + 8232], rax;         jmp   n47_call_builtin_icon_α
.Lx494_0:               cmp              eax, 1;                              jne   .Lx494_1
                        mov              rax, qword ptr [rsp + 8352]
                        mov              qword ptr [rsp + 8224], rax
                        mov              rax, qword ptr [rsp + 8360]
                        mov              qword ptr [rsp + 8232], rax;         jmp   n47_call_builtin_icon_α
.Lx494_1:                                                                     jmp   n47_call_builtin_icon_α
n46_disjunction_β:      mov              r11, 47
                        mov              eax, dword ptr [rsp + 8240]
                        cmp              eax, 0;                              je    n46_disjunction_af
                                                                              jmp   n46_disjunction_af
n46_disjunction_af:     mov              r11, 47
                        add              dword ptr [rsp + 8240], 1
                        mov              eax, dword ptr [rsp + 8240]
                        cmp              eax, 1;                              je    n60_lit_string_α
                                                                              jmp   n48_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n47_call_builtin_icon_α:
                        mov              r11, 48
                        mov              rax, qword ptr [rsp + 8224]
                        mov              qword ptr [rsp + 8192], rax
                        mov              rax, qword ptr [rsp + 8232]
                        mov              qword ptr [rsp + 8200], rax
                        .section         .rodata
.Lrkfn496:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn496]
                        lea              rsi, [rsp + 8192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 8176], rax
                        mov              qword ptr [rsp + 8184], rdx
                        cmp              al, 104;                             je    n46_disjunction_β
                                                                              jmp   n48_call_builtin_icon_α
n47_call_builtin_icon_β:
                        mov              r11, 48;                             jmp   n46_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_icon_α:
                        mov              r11, 49
                        .section         .rodata
.Lrkfn498:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn498]
                        lea              rsi, [rsp + 8160]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 8144], rax
                        mov              qword ptr [rsp + 8152], rdx
                        cmp              al, 104;                             je    n49_disjunction_α
                                                                              jmp   n49_disjunction_α
n48_call_builtin_icon_β:
                        mov              r11, 49;                             jmp   n49_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n49_disjunction_α:      mov              r11, 50
                        mov              qword ptr [rsp + 7904], 0
                        mov              qword ptr [rsp + 7912], 0
                        mov              dword ptr [rsp + 7920], 0;           jmp   n52_lit_string_α
n49_disjunction_as:     mov              r11, 50
                        mov              eax, dword ptr [rsp + 7920]
                        cmp              eax, 0;                              jne   .Lx500_0
                        mov              rax, qword ptr [rsp + 7936]
                        mov              qword ptr [rsp + 7904], rax
                        mov              rax, qword ptr [rsp + 7944]
                        mov              qword ptr [rsp + 7912], rax;         jmp   n50_call_builtin_icon_α
.Lx500_0:               cmp              eax, 1;                              jne   .Lx500_1
                        mov              rax, qword ptr [rsp + 8128]
                        mov              qword ptr [rsp + 7904], rax
                        mov              rax, qword ptr [rsp + 8136]
                        mov              qword ptr [rsp + 7912], rax;         jmp   n50_call_builtin_icon_α
.Lx500_1:                                                                     jmp   n50_call_builtin_icon_α
n49_disjunction_β:      mov              r11, 50
                        mov              eax, dword ptr [rsp + 7920]
                        cmp              eax, 0;                              je    n54_call_builtin_gen_β
                                                                              jmp   n49_disjunction_af
n49_disjunction_af:     mov              r11, 50
                        add              dword ptr [rsp + 7920], 1
                        mov              eax, dword ptr [rsp + 7920]
                        cmp              eax, 1;                              je    n51_lit_string_α
                                                                              jmp   n124_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n50_call_builtin_icon_α:
                        mov              r11, 51
                        mov              rax, qword ptr [rsp + 7904]
                        mov              qword ptr [rsp + 7872], rax
                        mov              rax, qword ptr [rsp + 7912]
                        mov              qword ptr [rsp + 7880], rax
                        .section         .rodata
.Lrkfn502:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn502]
                        lea              rsi, [rsp + 7872]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7856], rax
                        mov              qword ptr [rsp + 7864], rdx
                        cmp              al, 104;                             je    n49_disjunction_β
                                                                              jmp   n49_disjunction_β
n50_call_builtin_icon_β:
                        mov              r11, 51;                             jmp   n49_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:       mov              r11, 52
                        mov              qword ptr [rsp + 8128], 2            # result
                        mov              dword ptr [rsp + 8132], 4
                        mov              rax, qword ptr [rip + .Lx503_0]
                        mov              qword ptr [rsp + 8136], rax;         jmp   n49_disjunction_as
n51_lit_string_β:       mov              r11, 52;                             jmp   n49_disjunction_af
.Lx503_0:               .quad            .Lx503_0_s
.Lx503_0_s:             .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:       mov              r11, 53
                        mov              qword ptr [rsp + 8000], 2            # result
                        mov              dword ptr [rsp + 8004], 2
                        mov              rax, qword ptr [rip + .Lx504_0]
                        mov              qword ptr [rsp + 8008], rax;         jmp   n53_disjunction_α
n52_lit_string_β:       mov              r11, 53;                             jmp   n49_disjunction_af
.Lx504_0:               .quad            .Lx504_0_s
.Lx504_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n53_disjunction_α:      mov              r11, 54
                        mov              qword ptr [rsp + 8016], 0
                        mov              qword ptr [rsp + 8024], 0
                        mov              dword ptr [rsp + 8032], 0;           jmp   n59_lit_string_α
n53_disjunction_as:     mov              r11, 54
                        mov              eax, dword ptr [rsp + 8032]
                        cmp              eax, 0;                              jne   .Lx506_0
                        mov              rax, qword ptr [rsp + 8048]
                        mov              qword ptr [rsp + 8016], rax
                        mov              rax, qword ptr [rsp + 8056]
                        mov              qword ptr [rsp + 8024], rax;         jmp   n54_call_builtin_gen_α
.Lx506_0:               cmp              eax, 1;                              jne   .Lx506_1
                        mov              rax, qword ptr [rsp + 8064]
                        mov              qword ptr [rsp + 8016], rax
                        mov              rax, qword ptr [rsp + 8072]
                        mov              qword ptr [rsp + 8024], rax;         jmp   n54_call_builtin_gen_α
.Lx506_1:               cmp              eax, 2;                              jne   .Lx506_2
                        mov              rax, qword ptr [rsp + 8080]
                        mov              qword ptr [rsp + 8016], rax
                        mov              rax, qword ptr [rsp + 8088]
                        mov              qword ptr [rsp + 8024], rax;         jmp   n54_call_builtin_gen_α
.Lx506_2:               cmp              eax, 3;                              jne   .Lx506_3
                        mov              rax, qword ptr [rsp + 8096]
                        mov              qword ptr [rsp + 8016], rax
                        mov              rax, qword ptr [rsp + 8104]
                        mov              qword ptr [rsp + 8024], rax;         jmp   n54_call_builtin_gen_α
.Lx506_3:               cmp              eax, 4;                              jne   .Lx506_4
                        mov              rax, qword ptr [rsp + 8112]
                        mov              qword ptr [rsp + 8016], rax
                        mov              rax, qword ptr [rsp + 8120]
                        mov              qword ptr [rsp + 8024], rax;         jmp   n54_call_builtin_gen_α
.Lx506_4:                                                                     jmp   n54_call_builtin_gen_α
n53_disjunction_β:      mov              r11, 54
                        mov              eax, dword ptr [rsp + 8032]
                        cmp              eax, 0;                              je    n53_disjunction_af
                        cmp              eax, 1;                              je    n53_disjunction_af
                        cmp              eax, 2;                              je    n53_disjunction_af
                        cmp              eax, 3;                              je    n53_disjunction_af
                                                                              jmp   n53_disjunction_af
n53_disjunction_af:     mov              r11, 54
                        add              dword ptr [rsp + 8032], 1
                        mov              eax, dword ptr [rsp + 8032]
                        cmp              eax, 1;                              je    n58_lit_string_α
                        cmp              eax, 2;                              je    n57_lit_string_α
                        cmp              eax, 3;                              je    n56_lit_string_α
                        cmp              eax, 4;                              je    n55_lit_string_α
                                                                              jmp   n49_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n54_call_builtin_gen_α: mov              r11, 55
                        mov              rax, qword ptr [rsp + 8016]
                        mov              qword ptr [rsp + 7968], rax
                        mov              rax, qword ptr [rsp + 8024]
                        mov              qword ptr [rsp + 7976], rax
                        mov              rax, qword ptr [rsp + 8000]
                        mov              qword ptr [rsp + 7952], rax
                        mov              rax, qword ptr [rsp + 8008]
                        mov              qword ptr [rsp + 7960], rax
                        mov              qword ptr [rsp + 7984], 0
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx507_60:              .section         .rodata
.Lbynamegenfn55:        .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn55]
                        lea              rsi, [rsp + 7952]
                        mov              edx, 2
                        lea              rcx, [rsp + 7984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7936], rax
                        mov              qword ptr [rsp + 7944], rdx
                        cmp              al, 104;                             je    n53_disjunction_β
                                                                              jmp   n49_disjunction_as
n54_call_builtin_gen_β: mov              r11, 55;                             jmp   .Lx507_60
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:       mov              r11, 56
                        mov              qword ptr [rsp + 8112], 2            # result
                        mov              dword ptr [rsp + 8116], 0
                        mov              rax, qword ptr [rip + .Lx508_0]
                        mov              qword ptr [rsp + 8120], rax;         jmp   n53_disjunction_as
n55_lit_string_β:       mov              r11, 56;                             jmp   n53_disjunction_af
.Lx508_0:               .quad            .Lx508_0_s
.Lx508_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:       mov              r11, 57
                        mov              qword ptr [rsp + 8096], 2            # result
                        mov              dword ptr [rsp + 8100], 1
                        mov              rax, qword ptr [rip + .Lx509_0]
                        mov              qword ptr [rsp + 8104], rax;         jmp   n53_disjunction_as
n56_lit_string_β:       mov              r11, 57;                             jmp   n53_disjunction_af
.Lx509_0:               .quad            .Lx509_0_s
.Lx509_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:       mov              r11, 58
                        mov              qword ptr [rsp + 8080], 2            # result
                        mov              dword ptr [rsp + 8084], 2
                        mov              rax, qword ptr [rip + .Lx510_0]
                        mov              qword ptr [rsp + 8088], rax;         jmp   n53_disjunction_as
n57_lit_string_β:       mov              r11, 58;                             jmp   n53_disjunction_af
.Lx510_0:               .quad            .Lx510_0_s
.Lx510_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:       mov              r11, 59
                        mov              qword ptr [rsp + 8064], 2            # result
                        mov              dword ptr [rsp + 8068], 5
                        mov              rax, qword ptr [rip + .Lx511_0]
                        mov              qword ptr [rsp + 8072], rax;         jmp   n53_disjunction_as
n58_lit_string_β:       mov              r11, 59;                             jmp   n53_disjunction_af
.Lx511_0:               .quad            .Lx511_0_s
.Lx511_0_s:             .string          "ababa"
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:       mov              r11, 60
                        mov              qword ptr [rsp + 8048], 2            # result
                        mov              dword ptr [rsp + 8052], 6
                        mov              rax, qword ptr [rip + .Lx512_0]
                        mov              qword ptr [rsp + 8056], rax;         jmp   n53_disjunction_as
n59_lit_string_β:       mov              r11, 60;                             jmp   n53_disjunction_af
.Lx512_0:               .quad            .Lx512_0_s
.Lx512_0_s:             .string          "ababab"
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:       mov              r11, 61
                        mov              qword ptr [rsp + 8352], 2            # result
                        mov              dword ptr [rsp + 8356], 4
                        mov              rax, qword ptr [rip + .Lx513_0]
                        mov              qword ptr [rsp + 8360], rax;         jmp   n46_disjunction_as
n60_lit_string_β:       mov              r11, 61;                             jmp   n46_disjunction_af
.Lx513_0:               .quad            .Lx513_0_s
.Lx513_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:       mov              r11, 62
                        mov              qword ptr [rsp + 8320], 2            # result
                        mov              dword ptr [rsp + 8324], 2
                        mov              rax, qword ptr [rip + .Lx514_0]
                        mov              qword ptr [rsp + 8328], rax;         jmp   n62_lit_string_α
n61_lit_string_β:       mov              r11, 62;                             jmp   n46_disjunction_af
.Lx514_0:               .quad            .Lx514_0_s
.Lx514_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:       mov              r11, 63
                        mov              qword ptr [rsp + 8336], 2            # result
                        mov              dword ptr [rsp + 8340], 1
                        mov              rax, qword ptr [rip + .Lx515_0]
                        mov              qword ptr [rsp + 8344], rax;         jmp   n63_call_α
.Lx515_0:               .quad            .Lx515_0_s
.Lx515_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n63_call_α:             mov              r11, 64
                        mov              rax, qword ptr [rsp + 8336]
                        mov              qword ptr [rsp + 8288], rax
                        mov              rax, qword ptr [rsp + 8344]
                        mov              qword ptr [rsp + 8296], rax
                        mov              rax, qword ptr [rsp + 8320]
                        mov              qword ptr [rsp + 8272], rax
                        mov              rax, qword ptr [rsp + 8328]
                        mov              qword ptr [rsp + 8280], rax
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
                        lea              rsi, [rsp + 8272]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327816
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 8256], rax
                        mov              qword ptr [rsp + 8264], rdx
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
                        cmp              al, 104;                             je    n46_disjunction_af
                                                                              jmp   n46_disjunction_as
n63_call_β:             mov              r11, 64;                             jmp   n46_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:       mov              r11, 65
                        mov              qword ptr [rsp + 8544], 2            # result
                        mov              dword ptr [rsp + 8548], 4
                        mov              rax, qword ptr [rip + .Lx517_0]
                        mov              qword ptr [rsp + 8552], rax;         jmp   n44_disjunction_as
n64_lit_string_β:       mov              r11, 65;                             jmp   n44_disjunction_af
.Lx517_0:               .quad            .Lx517_0_s
.Lx517_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:       mov              r11, 66
                        mov              qword ptr [rsp + 8512], 2            # result
                        mov              dword ptr [rsp + 8516], 2
                        mov              rax, qword ptr [rip + .Lx518_0]
                        mov              qword ptr [rsp + 8520], rax;         jmp   n66_lit_string_α
n65_lit_string_β:       mov              r11, 66;                             jmp   n44_disjunction_af
.Lx518_0:               .quad            .Lx518_0_s
.Lx518_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:       mov              r11, 67
                        mov              qword ptr [rsp + 8528], 2            # result
                        mov              dword ptr [rsp + 8532], 2
                        mov              rax, qword ptr [rip + .Lx519_0]
                        mov              qword ptr [rsp + 8536], rax;         jmp   n67_call_α
.Lx519_0:               .quad            .Lx519_0_s
.Lx519_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n67_call_α:             mov              r11, 68
                        mov              rax, qword ptr [rsp + 8528]
                        mov              qword ptr [rsp + 8480], rax
                        mov              rax, qword ptr [rsp + 8536]
                        mov              qword ptr [rsp + 8488], rax
                        mov              rax, qword ptr [rsp + 8512]
                        mov              qword ptr [rsp + 8464], rax
                        mov              rax, qword ptr [rsp + 8520]
                        mov              qword ptr [rsp + 8472], rax
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
                        lea              rsi, [rsp + 8464]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327816
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 8448], rax
                        mov              qword ptr [rsp + 8456], rdx
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
                        cmp              al, 104;                             je    n44_disjunction_af
                                                                              jmp   n44_disjunction_as
n67_call_β:             mov              r11, 68;                             jmp   n44_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:       mov              r11, 69
                        mov              qword ptr [rsp + 8736], 2            # result
                        mov              dword ptr [rsp + 8740], 4
                        mov              rax, qword ptr [rip + .Lx521_0]
                        mov              qword ptr [rsp + 8744], rax;         jmp   n42_disjunction_as
n68_lit_string_β:       mov              r11, 69;                             jmp   n42_disjunction_af
.Lx521_0:               .quad            .Lx521_0_s
.Lx521_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:       mov              r11, 70
                        mov              qword ptr [rsp + 8704], 2            # result
                        mov              dword ptr [rsp + 8708], 2
                        mov              rax, qword ptr [rip + .Lx522_0]
                        mov              qword ptr [rsp + 8712], rax;         jmp   n70_lit_string_α
n69_lit_string_β:       mov              r11, 70;                             jmp   n42_disjunction_af
.Lx522_0:               .quad            .Lx522_0_s
.Lx522_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:       mov              r11, 71
                        mov              qword ptr [rsp + 8720], 2            # result
                        mov              dword ptr [rsp + 8724], 6
                        mov              rax, qword ptr [rip + .Lx523_0]
                        mov              qword ptr [rsp + 8728], rax;         jmp   n71_call_α
.Lx523_0:               .quad            .Lx523_0_s
.Lx523_0_s:             .string          "bbabab"
#-----------------------------------------------------------------------------------------------------------------------
n71_call_α:             mov              r11, 72
                        mov              rax, qword ptr [rsp + 8720]
                        mov              qword ptr [rsp + 8672], rax
                        mov              rax, qword ptr [rsp + 8728]
                        mov              qword ptr [rsp + 8680], rax
                        mov              rax, qword ptr [rsp + 8704]
                        mov              qword ptr [rsp + 8656], rax
                        mov              rax, qword ptr [rsp + 8712]
                        mov              qword ptr [rsp + 8664], rax
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
                        lea              rsi, [rsp + 8656]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327816
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 8640], rax
                        mov              qword ptr [rsp + 8648], rdx
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
                        cmp              al, 104;                             je    n42_disjunction_af
                                                                              jmp   n42_disjunction_as
n71_call_β:             mov              r11, 72;                             jmp   n42_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:       mov              r11, 73
                        mov              qword ptr [rsp + 8928], 2            # result
                        mov              dword ptr [rsp + 8932], 4
                        mov              rax, qword ptr [rip + .Lx525_0]
                        mov              qword ptr [rsp + 8936], rax;         jmp   n40_disjunction_as
n72_lit_string_β:       mov              r11, 73;                             jmp   n40_disjunction_af
.Lx525_0:               .quad            .Lx525_0_s
.Lx525_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:       mov              r11, 74
                        mov              qword ptr [rsp + 8896], 2            # result
                        mov              dword ptr [rsp + 8900], 2
                        mov              rax, qword ptr [rip + .Lx526_0]
                        mov              qword ptr [rsp + 8904], rax;         jmp   n74_lit_string_α
n73_lit_string_β:       mov              r11, 74;                             jmp   n40_disjunction_af
.Lx526_0:               .quad            .Lx526_0_s
.Lx526_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:       mov              r11, 75
                        mov              qword ptr [rsp + 8912], 2            # result
                        mov              dword ptr [rsp + 8916], 6
                        mov              rax, qword ptr [rip + .Lx527_0]
                        mov              qword ptr [rsp + 8920], rax;         jmp   n75_call_α
.Lx527_0:               .quad            .Lx527_0_s
.Lx527_0_s:             .string          "ababab"
#-----------------------------------------------------------------------------------------------------------------------
n75_call_α:             mov              r11, 76
                        mov              rax, qword ptr [rsp + 8912]
                        mov              qword ptr [rsp + 8864], rax
                        mov              rax, qword ptr [rsp + 8920]
                        mov              qword ptr [rsp + 8872], rax
                        mov              rax, qword ptr [rsp + 8896]
                        mov              qword ptr [rsp + 8848], rax
                        mov              rax, qword ptr [rsp + 8904]
                        mov              qword ptr [rsp + 8856], rax
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
                        lea              rsi, [rsp + 8848]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327816
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 8832], rax
                        mov              qword ptr [rsp + 8840], rdx
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
                        cmp              al, 104;                             je    n40_disjunction_af
                                                                              jmp   n40_disjunction_as
n75_call_β:             mov              r11, 76;                             jmp   n40_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:       mov              r11, 77
                        mov              qword ptr [rsp + 9152], 2            # result
                        mov              dword ptr [rsp + 9156], 4
                        mov              rax, qword ptr [rip + .Lx529_0]
                        mov              qword ptr [rsp + 9160], rax;         jmp   n37_disjunction_as
n76_lit_string_β:       mov              r11, 77;                             jmp   n37_disjunction_af
.Lx529_0:               .quad            .Lx529_0_s
.Lx529_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_charset_α:      mov              r11, 78
                        mov              qword ptr [rsp + 9120], 2            # result
                        mov              dword ptr [rsp + 9124], -1
                        mov              rax, qword ptr [rip + .Lx530_0]
                        mov              qword ptr [rsp + 9128], rax;         jmp   n78_lit_string_α
n77_lit_charset_β:      mov              r11, 78;                             jmp   n37_disjunction_af
.Lx530_0:               .quad            .Lx530_0_s
.Lx530_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:       mov              r11, 79
                        mov              qword ptr [rsp + 9136], 2            # result
                        mov              dword ptr [rsp + 9140], 7
                        mov              rax, qword ptr [rip + .Lx531_0]
                        mov              qword ptr [rsp + 9144], rax;         jmp   n79_call_builtin_icon_α
.Lx531_0:               .quad            .Lx531_0_s
.Lx531_0_s:             .string          "cababab"
#-----------------------------------------------------------------------------------------------------------------------
n79_call_builtin_icon_α:
                        mov              r11, 80
                        mov              rax, qword ptr [rsp + 9136]
                        mov              qword ptr [rsp + 9088], rax
                        mov              rax, qword ptr [rsp + 9144]
                        mov              qword ptr [rsp + 9096], rax
                        mov              rax, qword ptr [rsp + 9120]
                        mov              qword ptr [rsp + 9072], rax
                        mov              rax, qword ptr [rsp + 9128]
                        mov              qword ptr [rsp + 9080], rax
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
                        lea              rsi, [rsp + 9072]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262278
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 9056], rax
                        mov              qword ptr [rsp + 9064], rdx
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
                        cmp              al, 104;                             je    n37_disjunction_af
                                                                              jmp   n37_disjunction_as
n79_call_builtin_icon_β:
                        mov              r11, 80;                             jmp   n37_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:       mov              r11, 81
                        mov              qword ptr [rsp + 9344], 2            # result
                        mov              dword ptr [rsp + 9348], 4
                        mov              rax, qword ptr [rip + .Lx533_0]
                        mov              qword ptr [rsp + 9352], rax;         jmp   n35_disjunction_as
n80_lit_string_β:       mov              r11, 81;                             jmp   n35_disjunction_af
.Lx533_0:               .quad            .Lx533_0_s
.Lx533_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_charset_α:      mov              r11, 82
                        mov              qword ptr [rsp + 9312], 2            # result
                        mov              dword ptr [rsp + 9316], -1
                        mov              rax, qword ptr [rip + .Lx534_0]
                        mov              qword ptr [rsp + 9320], rax;         jmp   n82_lit_string_α
n81_lit_charset_β:      mov              r11, 82;                             jmp   n35_disjunction_af
.Lx534_0:               .quad            .Lx534_0_s
.Lx534_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:       mov              r11, 83
                        mov              qword ptr [rsp + 9328], 2            # result
                        mov              dword ptr [rsp + 9332], 6
                        mov              rax, qword ptr [rip + .Lx535_0]
                        mov              qword ptr [rsp + 9336], rax;         jmp   n83_call_builtin_icon_α
.Lx535_0:               .quad            .Lx535_0_s
.Lx535_0_s:             .string          "ababab"
#-----------------------------------------------------------------------------------------------------------------------
n83_call_builtin_icon_α:
                        mov              r11, 84
                        mov              rax, qword ptr [rsp + 9328]
                        mov              qword ptr [rsp + 9280], rax
                        mov              rax, qword ptr [rsp + 9336]
                        mov              qword ptr [rsp + 9288], rax
                        mov              rax, qword ptr [rsp + 9312]
                        mov              qword ptr [rsp + 9264], rax
                        mov              rax, qword ptr [rsp + 9320]
                        mov              qword ptr [rsp + 9272], rax
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
                        lea              rsi, [rsp + 9264]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262278
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 9248], rax
                        mov              qword ptr [rsp + 9256], rdx
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
                        cmp              al, 104;                             je    n35_disjunction_af
                                                                              jmp   n35_disjunction_as
n83_call_builtin_icon_β:
                        mov              r11, 84;                             jmp   n35_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:       mov              r11, 85
                        mov              qword ptr [rsp + 9536], 2            # result
                        mov              dword ptr [rsp + 9540], 4
                        mov              rax, qword ptr [rip + .Lx537_0]
                        mov              qword ptr [rsp + 9544], rax;         jmp   n33_disjunction_as
n84_lit_string_β:       mov              r11, 85;                             jmp   n33_disjunction_af
.Lx537_0:               .quad            .Lx537_0_s
.Lx537_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_charset_α:      mov              r11, 86
                        mov              qword ptr [rsp + 9504], 2            # result
                        mov              dword ptr [rsp + 9508], -1
                        mov              rax, qword ptr [rip + .Lx538_0]
                        mov              qword ptr [rsp + 9512], rax;         jmp   n86_lit_string_α
n85_lit_charset_β:      mov              r11, 86;                             jmp   n33_disjunction_af
.Lx538_0:               .quad            .Lx538_0_s
.Lx538_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:       mov              r11, 87
                        mov              qword ptr [rsp + 9520], 2            # result
                        mov              dword ptr [rsp + 9524], 6
                        mov              rax, qword ptr [rip + .Lx539_0]
                        mov              qword ptr [rsp + 9528], rax;         jmp   n87_call_builtin_icon_α
.Lx539_0:               .quad            .Lx539_0_s
.Lx539_0_s:             .string          "ababac"
#-----------------------------------------------------------------------------------------------------------------------
n87_call_builtin_icon_α:
                        mov              r11, 88
                        mov              rax, qword ptr [rsp + 9520]
                        mov              qword ptr [rsp + 9472], rax
                        mov              rax, qword ptr [rsp + 9528]
                        mov              qword ptr [rsp + 9480], rax
                        mov              rax, qword ptr [rsp + 9504]
                        mov              qword ptr [rsp + 9456], rax
                        mov              rax, qword ptr [rsp + 9512]
                        mov              qword ptr [rsp + 9464], rax
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
                        lea              rsi, [rsp + 9456]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262278
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 9440], rax
                        mov              qword ptr [rsp + 9448], rdx
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
                        cmp              al, 104;                             je    n33_disjunction_af
                                                                              jmp   n33_disjunction_as
n87_call_builtin_icon_β:
                        mov              r11, 88;                             jmp   n33_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:       mov              r11, 89
                        mov              qword ptr [rsp + 10048], 2           # result
                        mov              dword ptr [rsp + 10052], 4
                        mov              rax, qword ptr [rip + .Lx541_0]
                        mov              qword ptr [rsp + 10056], rax;        jmp   n17_disjunction_as
n88_lit_string_β:       mov              r11, 89;                             jmp   n17_disjunction_af
.Lx541_0:               .quad            .Lx541_0_s
.Lx541_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_charset_α:      mov              r11, 90
                        mov              qword ptr [rsp + 10032], 2           # result
                        mov              dword ptr [rsp + 10036], -1
                        mov              rax, qword ptr [rip + .Lx542_0]
                        mov              qword ptr [rsp + 10040], rax;        jmp   n90_scan_any_α
n89_lit_charset_β:      mov              r11, 90;                             jmp   n17_disjunction_af
.Lx542_0:               .quad            .Lx542_0_s
.Lx542_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n90_scan_any_α:         mov              r11, 91
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n17_disjunction_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx544_0]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax;                            je    n17_disjunction_af
                        mov              qword ptr [rsp + 10016], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 10024], rax;        jmp   n17_disjunction_as
n90_scan_any_β:         mov              r11, 91;                             jmp   n17_disjunction_af
.Lx544_0:               .quad            .Lx544_0_s
.Lx544_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:       mov              r11, 92
                        mov              qword ptr [rsp + 10336], 2           # result
                        mov              dword ptr [rsp + 10340], 4
                        mov              rax, qword ptr [rip + .Lx545_0]
                        mov              qword ptr [rsp + 10344], rax;        jmp   n12_disjunction_as
n91_lit_string_β:       mov              r11, 92;                             jmp   n12_disjunction_af
.Lx545_0:               .quad            .Lx545_0_s
.Lx545_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_charset_α:      mov              r11, 93
                        mov              qword ptr [rsp + 10304], 2           # result
                        mov              dword ptr [rsp + 10308], -1
                        mov              rax, qword ptr [rip + .Lx546_0]
                        mov              qword ptr [rsp + 10312], rax;        jmp   n93_lit_string_α
n92_lit_charset_β:      mov              r11, 93;                             jmp   n12_disjunction_af
.Lx546_0:               .quad            .Lx546_0_s
.Lx546_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:       mov              r11, 94
                        mov              qword ptr [rsp + 10320], 2           # result
                        mov              dword ptr [rsp + 10324], 6
                        mov              rax, qword ptr [rip + .Lx547_0]
                        mov              qword ptr [rsp + 10328], rax;        jmp   n94_call_builtin_icon_α
.Lx547_0:               .quad            .Lx547_0_s
.Lx547_0_s:             .string          "1234ab"
#-----------------------------------------------------------------------------------------------------------------------
n94_call_builtin_icon_α:
                        mov              r11, 95
                        mov              rax, qword ptr [rsp + 10320]
                        mov              qword ptr [rsp + 10272], rax
                        mov              rax, qword ptr [rsp + 10328]
                        mov              qword ptr [rsp + 10280], rax
                        mov              rax, qword ptr [rsp + 10304]
                        mov              qword ptr [rsp + 10256], rax
                        mov              rax, qword ptr [rsp + 10312]
                        mov              qword ptr [rsp + 10264], rax
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
                        lea              rsi, [rsp + 10256]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196712
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 10240], rax
                        mov              qword ptr [rsp + 10248], rdx
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
                        cmp              al, 104;                             je    n12_disjunction_af
                                                                              jmp   n12_disjunction_as
n94_call_builtin_icon_β:
                        mov              r11, 95;                             jmp   n12_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:       mov              r11, 96
                        mov              qword ptr [rsp + 10544], 2           # result
                        mov              dword ptr [rsp + 10548], 4
                        mov              rax, qword ptr [rip + .Lx549_0]
                        mov              qword ptr [rsp + 10552], rax;        jmp   n8_disjunction_as
n95_lit_string_β:       mov              r11, 96;                             jmp   n8_disjunction_af
.Lx549_0:               .quad            .Lx549_0_s
.Lx549_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_charset_α:      mov              r11, 97
                        mov              qword ptr [rsp + 10512], 2           # result
                        mov              dword ptr [rsp + 10516], -1
                        mov              rax, qword ptr [rip + .Lx550_0]
                        mov              qword ptr [rsp + 10520], rax;        jmp   n97_lit_string_α
n96_lit_charset_β:      mov              r11, 97;                             jmp   n8_disjunction_af
.Lx550_0:               .quad            .Lx550_0_s
.Lx550_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:       mov              r11, 98
                        mov              qword ptr [rsp + 10528], 2           # result
                        mov              dword ptr [rsp + 10532], 6
                        mov              rax, qword ptr [rip + .Lx551_0]
                        mov              qword ptr [rsp + 10536], rax;        jmp   n98_call_builtin_icon_α
.Lx551_0:               .quad            .Lx551_0_s
.Lx551_0_s:             .string          "1234ab"
#-----------------------------------------------------------------------------------------------------------------------
n98_call_builtin_icon_α:
                        mov              r11, 99
                        mov              rax, qword ptr [rsp + 10528]
                        mov              qword ptr [rsp + 10480], rax
                        mov              rax, qword ptr [rsp + 10536]
                        mov              qword ptr [rsp + 10488], rax
                        mov              rax, qword ptr [rsp + 10512]
                        mov              qword ptr [rsp + 10464], rax
                        mov              rax, qword ptr [rsp + 10520]
                        mov              qword ptr [rsp + 10472], rax
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
                        lea              rsi, [rsp + 10464]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196712
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 10448], rax
                        mov              qword ptr [rsp + 10456], rdx
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
                        cmp              al, 104;                             je    n8_disjunction_af
                                                                              jmp   n8_disjunction_as
n98_call_builtin_icon_β:
                        mov              r11, 99;                             jmp   n8_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:       mov              r11, 100
                        mov              qword ptr [rsp + 10768], 2           # result
                        mov              dword ptr [rsp + 10772], 4
                        mov              rax, qword ptr [rip + .Lx553_0]
                        mov              qword ptr [rsp + 10776], rax;        jmp   n6_disjunction_as
n99_lit_string_β:       mov              r11, 100;                            jmp   n6_disjunction_af
.Lx553_0:               .quad            .Lx553_0_s
.Lx553_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_charset_α:     mov              r11, 101
                        mov              qword ptr [rsp + 10720], 2           # result
                        mov              dword ptr [rsp + 10724], -1
                        mov              rax, qword ptr [rip + .Lx554_0]
                        mov              qword ptr [rsp + 10728], rax;        jmp   n101_lit_string_α
n100_lit_charset_β:     mov              r11, 101;                            jmp   n6_disjunction_af
.Lx554_0:               .quad            .Lx554_0_s
.Lx554_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:      mov              r11, 102
                        mov              qword ptr [rsp + 10736], 2           # result
                        mov              dword ptr [rsp + 10740], 6
                        mov              rax, qword ptr [rip + .Lx555_0]
                        mov              qword ptr [rsp + 10744], rax;        jmp   n102_lit_integer_α
.Lx555_0:               .quad            .Lx555_0_s
.Lx555_0_s:             .string          "1234ab"
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_integer_α:     mov              r11, 103
                        mov              qword ptr [rsp + 10752], 3           # result
                        mov              rax, qword ptr [rip + .Lx556_0]
                        mov              qword ptr [rsp + 10760], rax;        jmp   n103_call_builtin_icon_α
.Lx556_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n103_call_builtin_icon_α:
                        mov              r11, 104
                        mov              rax, qword ptr [rsp + 10752]
                        mov              qword ptr [rsp + 10688], rax
                        mov              rax, qword ptr [rsp + 10760]
                        mov              qword ptr [rsp + 10696], rax
                        mov              rax, qword ptr [rsp + 10736]
                        mov              qword ptr [rsp + 10672], rax
                        mov              rax, qword ptr [rsp + 10744]
                        mov              qword ptr [rsp + 10680], rax
                        mov              rax, qword ptr [rsp + 10720]
                        mov              qword ptr [rsp + 10656], rax
                        mov              rax, qword ptr [rsp + 10728]
                        mov              qword ptr [rsp + 10664], rax
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
                        lea              rsi, [rsp + 10656]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196712
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 10640], rax
                        mov              qword ptr [rsp + 10648], rdx
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
                        cmp              al, 104;                             je    n6_disjunction_af
                                                                              jmp   n6_disjunction_as
n103_call_builtin_icon_β:
                        mov              r11, 104;                            jmp   n6_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:      mov              r11, 105
                        mov              qword ptr [rsp + 11024], 2           # result
                        mov              dword ptr [rsp + 11028], 4
                        mov              rax, qword ptr [rip + .Lx558_0]
                        mov              qword ptr [rsp + 11032], rax;        jmp   n4_disjunction_as
n104_lit_string_β:      mov              r11, 105;                            jmp   n4_disjunction_af
.Lx558_0:               .quad            .Lx558_0_s
.Lx558_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_charset_α:     mov              r11, 106
                        mov              qword ptr [rsp + 10960], 2           # result
                        mov              dword ptr [rsp + 10964], -1
                        mov              rax, qword ptr [rip + .Lx559_0]
                        mov              qword ptr [rsp + 10968], rax;        jmp   n106_lit_string_α
n105_lit_charset_β:     mov              r11, 106;                            jmp   n4_disjunction_af
.Lx559_0:               .quad            .Lx559_0_s
.Lx559_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:      mov              r11, 107
                        mov              qword ptr [rsp + 10976], 2           # result
                        mov              dword ptr [rsp + 10980], 6
                        mov              rax, qword ptr [rip + .Lx560_0]
                        mov              qword ptr [rsp + 10984], rax;        jmp   n107_lit_integer_α
.Lx560_0:               .quad            .Lx560_0_s
.Lx560_0_s:             .string          "1234ab"
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_integer_α:     mov              r11, 108
                        mov              qword ptr [rsp + 10992], 3           # result
                        mov              rax, qword ptr [rip + .Lx561_0]
                        mov              qword ptr [rsp + 11000], rax;        jmp   n108_lit_integer_α
.Lx561_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_integer_α:     mov              r11, 109
                        mov              qword ptr [rsp + 11008], 3           # result
                        mov              rax, qword ptr [rip + .Lx562_0]
                        mov              qword ptr [rsp + 11016], rax;        jmp   n109_call_builtin_icon_α
.Lx562_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n109_call_builtin_icon_α:
                        mov              r11, 110
                        mov              rax, qword ptr [rsp + 11008]
                        mov              qword ptr [rsp + 10928], rax
                        mov              rax, qword ptr [rsp + 11016]
                        mov              qword ptr [rsp + 10936], rax
                        mov              rax, qword ptr [rsp + 10992]
                        mov              qword ptr [rsp + 10912], rax
                        mov              rax, qword ptr [rsp + 11000]
                        mov              qword ptr [rsp + 10920], rax
                        mov              rax, qword ptr [rsp + 10976]
                        mov              qword ptr [rsp + 10896], rax
                        mov              rax, qword ptr [rsp + 10984]
                        mov              qword ptr [rsp + 10904], rax
                        mov              rax, qword ptr [rsp + 10960]
                        mov              qword ptr [rsp + 10880], rax
                        mov              rax, qword ptr [rsp + 10968]
                        mov              qword ptr [rsp + 10888], rax
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
                        lea              rsi, [rsp + 10880]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196712
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 10864], rax
                        mov              qword ptr [rsp + 10872], rdx
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
                        cmp              al, 104;                             je    n4_disjunction_af
                                                                              jmp   n4_disjunction_as
n109_call_builtin_icon_β:
                        mov              r11, 110;                            jmp   n4_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:      mov              r11, 111
                        mov              qword ptr [rsp + 11280], 2           # result
                        mov              dword ptr [rsp + 11284], 4
                        mov              rax, qword ptr [rip + .Lx564_0]
                        mov              qword ptr [rsp + 11288], rax;        jmp   n2_disjunction_as
n110_lit_string_β:      mov              r11, 111;                            jmp   n2_disjunction_af
.Lx564_0:               .quad            .Lx564_0_s
.Lx564_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_charset_α:     mov              r11, 112
                        mov              qword ptr [rsp + 11216], 2           # result
                        mov              dword ptr [rsp + 11220], -1
                        mov              rax, qword ptr [rip + .Lx565_0]
                        mov              qword ptr [rsp + 11224], rax;        jmp   n112_lit_string_α
n111_lit_charset_β:     mov              r11, 112;                            jmp   n2_disjunction_af
.Lx565_0:               .quad            .Lx565_0_s
.Lx565_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_string_α:      mov              r11, 113
                        mov              qword ptr [rsp + 11232], 2           # result
                        mov              dword ptr [rsp + 11236], 6
                        mov              rax, qword ptr [rip + .Lx566_0]
                        mov              qword ptr [rsp + 11240], rax;        jmp   n113_lit_integer_α
.Lx566_0:               .quad            .Lx566_0_s
.Lx566_0_s:             .string          "1234ab"
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_integer_α:     mov              r11, 114
                        mov              qword ptr [rsp + 11248], 3           # result
                        mov              rax, qword ptr [rip + .Lx567_0]
                        mov              qword ptr [rsp + 11256], rax;        jmp   n114_lit_integer_α
.Lx567_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_integer_α:     mov              r11, 115
                        mov              qword ptr [rsp + 11264], 3           # result
                        mov              rax, qword ptr [rip + .Lx568_0]
                        mov              qword ptr [rsp + 11272], rax;        jmp   n115_call_builtin_icon_α
.Lx568_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n115_call_builtin_icon_α:
                        mov              r11, 116
                        mov              rax, qword ptr [rsp + 11264]
                        mov              qword ptr [rsp + 11184], rax
                        mov              rax, qword ptr [rsp + 11272]
                        mov              qword ptr [rsp + 11192], rax
                        mov              rax, qword ptr [rsp + 11248]
                        mov              qword ptr [rsp + 11168], rax
                        mov              rax, qword ptr [rsp + 11256]
                        mov              qword ptr [rsp + 11176], rax
                        mov              rax, qword ptr [rsp + 11232]
                        mov              qword ptr [rsp + 11152], rax
                        mov              rax, qword ptr [rsp + 11240]
                        mov              qword ptr [rsp + 11160], rax
                        mov              rax, qword ptr [rsp + 11216]
                        mov              qword ptr [rsp + 11136], rax
                        mov              rax, qword ptr [rsp + 11224]
                        mov              qword ptr [rsp + 11144], rax
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
                        lea              rsi, [rsp + 11136]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196712
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 11120], rax
                        mov              qword ptr [rsp + 11128], rdx
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
                        cmp              al, 104;                             je    n2_disjunction_af
                                                                              jmp   n2_disjunction_as
n115_call_builtin_icon_β:
                        mov              r11, 116;                            jmp   n2_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:      mov              r11, 117
                        mov              qword ptr [rsp + 11536], 2           # result
                        mov              dword ptr [rsp + 11540], 4
                        mov              rax, qword ptr [rip + .Lx570_0]
                        mov              qword ptr [rsp + 11544], rax;        jmp   n0_disjunction_as
n116_lit_string_β:      mov              r11, 117;                            jmp   n0_disjunction_af
.Lx570_0:               .quad            .Lx570_0_s
.Lx570_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_charset_α:     mov              r11, 118
                        mov              qword ptr [rsp + 11472], 2           # result
                        mov              dword ptr [rsp + 11476], -1
                        mov              rax, qword ptr [rip + .Lx571_0]
                        mov              qword ptr [rsp + 11480], rax;        jmp   n118_lit_string_α
n117_lit_charset_β:     mov              r11, 118;                            jmp   n0_disjunction_af
.Lx571_0:               .quad            .Lx571_0_s
.Lx571_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:      mov              r11, 119
                        mov              qword ptr [rsp + 11488], 2           # result
                        mov              dword ptr [rsp + 11492], 6
                        mov              rax, qword ptr [rip + .Lx572_0]
                        mov              qword ptr [rsp + 11496], rax;        jmp   n119_lit_integer_α
.Lx572_0:               .quad            .Lx572_0_s
.Lx572_0_s:             .string          "1234ab"
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_integer_α:     mov              r11, 120
                        mov              qword ptr [rsp + 11504], 3           # result
                        mov              rax, qword ptr [rip + .Lx573_0]
                        mov              qword ptr [rsp + 11512], rax;        jmp   n120_lit_integer_α
.Lx573_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_integer_α:     mov              r11, 121
                        mov              qword ptr [rsp + 11520], 3           # result
                        mov              rax, qword ptr [rip + .Lx574_0]
                        mov              qword ptr [rsp + 11528], rax;        jmp   n121_call_builtin_icon_α
.Lx574_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n121_call_builtin_icon_α:
                        mov              r11, 122
                        mov              rax, qword ptr [rsp + 11520]
                        mov              qword ptr [rsp + 11440], rax
                        mov              rax, qword ptr [rsp + 11528]
                        mov              qword ptr [rsp + 11448], rax
                        mov              rax, qword ptr [rsp + 11504]
                        mov              qword ptr [rsp + 11424], rax
                        mov              rax, qword ptr [rsp + 11512]
                        mov              qword ptr [rsp + 11432], rax
                        mov              rax, qword ptr [rsp + 11488]
                        mov              qword ptr [rsp + 11408], rax
                        mov              rax, qword ptr [rsp + 11496]
                        mov              qword ptr [rsp + 11416], rax
                        mov              rax, qword ptr [rsp + 11472]
                        mov              qword ptr [rsp + 11392], rax
                        mov              rax, qword ptr [rsp + 11480]
                        mov              qword ptr [rsp + 11400], rax
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
                        lea              rsi, [rsp + 11392]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196712
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 11376], rax
                        mov              qword ptr [rsp + 11384], rdx
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
                        cmp              al, 104;                             je    n0_disjunction_af
                                                                              jmp   n0_disjunction_as
n121_call_builtin_icon_β:
                        mov              r11, 122;                            jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n122_scan_α:            mov              r11, 123
                        lea              rdi, [rsp + 10096]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 10096]
                        mov              r14, qword ptr [rsp + 10104]
                        mov              r15, qword ptr [rsp + 10112];        jmp   n15_lit_string_α
n122_scan_β:            mov              r11, 123;                            jmp   n15_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n123_scan_α:            mov              r11, 124
                        lea              rdi, [rsp + 9872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 9872]
                        mov              r14, qword ptr [rsp + 9880]
                        mov              r15, qword ptr [rsp + 9888];         jmp   n20_lit_string_α
n123_scan_β:            mov              r11, 124;                            jmp   n20_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n124_call_builtin_icon_α:
                        mov              r11, 125
                        .section         .rodata
.Lrkfn581:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn581]
                        lea              rsi, [rsp + 7840]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7824], rax
                        mov              qword ptr [rsp + 7832], rdx
                        cmp              al, 104;                             je    n125_disjunction_α
                                                                              jmp   n125_disjunction_α
n124_call_builtin_icon_β:
                        mov              r11, 125;                            jmp   n125_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n125_disjunction_α:     mov              r11, 126
                        mov              qword ptr [rsp + 7584], 0
                        mov              qword ptr [rsp + 7592], 0
                        mov              dword ptr [rsp + 7600], 0;           jmp   n128_lit_charset_α
n125_disjunction_as:    mov              r11, 126
                        mov              eax, dword ptr [rsp + 7600]
                        cmp              eax, 0;                              jne   .Lx583_0
                        mov              rax, qword ptr [rsp + 7616]
                        mov              qword ptr [rsp + 7584], rax
                        mov              rax, qword ptr [rsp + 7624]
                        mov              qword ptr [rsp + 7592], rax;         jmp   n126_call_builtin_icon_α
.Lx583_0:               cmp              eax, 1;                              jne   .Lx583_1
                        mov              rax, qword ptr [rsp + 7808]
                        mov              qword ptr [rsp + 7584], rax
                        mov              rax, qword ptr [rsp + 7816]
                        mov              qword ptr [rsp + 7592], rax;         jmp   n126_call_builtin_icon_α
.Lx583_1:                                                                     jmp   n126_call_builtin_icon_α
n125_disjunction_β:     mov              r11, 126
                        mov              eax, dword ptr [rsp + 7600]
                        cmp              eax, 0;                              je    n130_call_builtin_gen_β
                                                                              jmp   n125_disjunction_af
n125_disjunction_af:    mov              r11, 126
                        add              dword ptr [rsp + 7600], 1
                        mov              eax, dword ptr [rsp + 7600]
                        cmp              eax, 1;                              je    n127_lit_string_α
                                                                              jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n126_call_builtin_icon_α:
                        mov              r11, 127
                        mov              rax, qword ptr [rsp + 7584]
                        mov              qword ptr [rsp + 7552], rax
                        mov              rax, qword ptr [rsp + 7592]
                        mov              qword ptr [rsp + 7560], rax
                        .section         .rodata
.Lrkfn585:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn585]
                        lea              rsi, [rsp + 7552]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7536], rax
                        mov              qword ptr [rsp + 7544], rdx
                        cmp              al, 104;                             je    n125_disjunction_β
                                                                              jmp   n125_disjunction_β
n126_call_builtin_icon_β:
                        mov              r11, 127;                            jmp   n125_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:      mov              r11, 128
                        mov              qword ptr [rsp + 7808], 2            # result
                        mov              dword ptr [rsp + 7812], 4
                        mov              rax, qword ptr [rip + .Lx586_0]
                        mov              qword ptr [rsp + 7816], rax;         jmp   n125_disjunction_as
n127_lit_string_β:      mov              r11, 128;                            jmp   n125_disjunction_af
.Lx586_0:               .quad            .Lx586_0_s
.Lx586_0_s:             .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_charset_α:     mov              r11, 129
                        mov              qword ptr [rsp + 7680], 2            # result
                        mov              dword ptr [rsp + 7684], -1
                        mov              rax, qword ptr [rip + .Lx587_0]
                        mov              qword ptr [rsp + 7688], rax;         jmp   n129_disjunction_α
n128_lit_charset_β:     mov              r11, 129;                            jmp   n125_disjunction_af
.Lx587_0:               .quad            .Lx587_0_s
.Lx587_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n129_disjunction_α:     mov              r11, 130
                        mov              qword ptr [rsp + 7696], 0
                        mov              qword ptr [rsp + 7704], 0
                        mov              dword ptr [rsp + 7712], 0;           jmp   n135_lit_string_α
n129_disjunction_as:    mov              r11, 130
                        mov              eax, dword ptr [rsp + 7712]
                        cmp              eax, 0;                              jne   .Lx589_0
                        mov              rax, qword ptr [rsp + 7728]
                        mov              qword ptr [rsp + 7696], rax
                        mov              rax, qword ptr [rsp + 7736]
                        mov              qword ptr [rsp + 7704], rax;         jmp   n130_call_builtin_gen_α
.Lx589_0:               cmp              eax, 1;                              jne   .Lx589_1
                        mov              rax, qword ptr [rsp + 7744]
                        mov              qword ptr [rsp + 7696], rax
                        mov              rax, qword ptr [rsp + 7752]
                        mov              qword ptr [rsp + 7704], rax;         jmp   n130_call_builtin_gen_α
.Lx589_1:               cmp              eax, 2;                              jne   .Lx589_2
                        mov              rax, qword ptr [rsp + 7760]
                        mov              qword ptr [rsp + 7696], rax
                        mov              rax, qword ptr [rsp + 7768]
                        mov              qword ptr [rsp + 7704], rax;         jmp   n130_call_builtin_gen_α
.Lx589_2:               cmp              eax, 3;                              jne   .Lx589_3
                        mov              rax, qword ptr [rsp + 7776]
                        mov              qword ptr [rsp + 7696], rax
                        mov              rax, qword ptr [rsp + 7784]
                        mov              qword ptr [rsp + 7704], rax;         jmp   n130_call_builtin_gen_α
.Lx589_3:               cmp              eax, 4;                              jne   .Lx589_4
                        mov              rax, qword ptr [rsp + 7792]
                        mov              qword ptr [rsp + 7696], rax
                        mov              rax, qword ptr [rsp + 7800]
                        mov              qword ptr [rsp + 7704], rax;         jmp   n130_call_builtin_gen_α
.Lx589_4:                                                                     jmp   n130_call_builtin_gen_α
n129_disjunction_β:     mov              r11, 130
                        mov              eax, dword ptr [rsp + 7712]
                        cmp              eax, 0;                              je    n129_disjunction_af
                        cmp              eax, 1;                              je    n129_disjunction_af
                        cmp              eax, 2;                              je    n129_disjunction_af
                        cmp              eax, 3;                              je    n129_disjunction_af
                                                                              jmp   n129_disjunction_af
n129_disjunction_af:    mov              r11, 130
                        add              dword ptr [rsp + 7712], 1
                        mov              eax, dword ptr [rsp + 7712]
                        cmp              eax, 1;                              je    n134_lit_string_α
                        cmp              eax, 2;                              je    n133_lit_string_α
                        cmp              eax, 3;                              je    n132_lit_string_α
                        cmp              eax, 4;                              je    n131_lit_string_α
                                                                              jmp   n125_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n130_call_builtin_gen_α:
                        mov              r11, 131
                        mov              rax, qword ptr [rsp + 7696]
                        mov              qword ptr [rsp + 7648], rax
                        mov              rax, qword ptr [rsp + 7704]
                        mov              qword ptr [rsp + 7656], rax
                        mov              rax, qword ptr [rsp + 7680]
                        mov              qword ptr [rsp + 7632], rax
                        mov              rax, qword ptr [rsp + 7688]
                        mov              qword ptr [rsp + 7640], rax
                        mov              qword ptr [rsp + 7664], 0
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx590_60:              .section         .rodata
.Lbynamegenfn131:       .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn131]
                        lea              rsi, [rsp + 7632]
                        mov              edx, 2
                        lea              rcx, [rsp + 7664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7616], rax
                        mov              qword ptr [rsp + 7624], rdx
                        cmp              al, 104;                             je    n129_disjunction_β
                                                                              jmp   n125_disjunction_as
n130_call_builtin_gen_β:
                        mov              r11, 131;                            jmp   .Lx590_60
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:      mov              r11, 132
                        mov              qword ptr [rsp + 7792], 2            # result
                        mov              dword ptr [rsp + 7796], 0
                        mov              rax, qword ptr [rip + .Lx591_0]
                        mov              qword ptr [rsp + 7800], rax;         jmp   n129_disjunction_as
n131_lit_string_β:      mov              r11, 132;                            jmp   n129_disjunction_af
.Lx591_0:               .quad            .Lx591_0_s
.Lx591_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:      mov              r11, 133
                        mov              qword ptr [rsp + 7776], 2            # result
                        mov              dword ptr [rsp + 7780], 1
                        mov              rax, qword ptr [rip + .Lx592_0]
                        mov              qword ptr [rsp + 7784], rax;         jmp   n129_disjunction_as
n132_lit_string_β:      mov              r11, 133;                            jmp   n129_disjunction_af
.Lx592_0:               .quad            .Lx592_0_s
.Lx592_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_string_α:      mov              r11, 134
                        mov              qword ptr [rsp + 7760], 2            # result
                        mov              dword ptr [rsp + 7764], 2
                        mov              rax, qword ptr [rip + .Lx593_0]
                        mov              qword ptr [rsp + 7768], rax;         jmp   n129_disjunction_as
n133_lit_string_β:      mov              r11, 134;                            jmp   n129_disjunction_af
.Lx593_0:               .quad            .Lx593_0_s
.Lx593_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_string_α:      mov              r11, 135
                        mov              qword ptr [rsp + 7744], 2            # result
                        mov              dword ptr [rsp + 7748], 5
                        mov              rax, qword ptr [rip + .Lx594_0]
                        mov              qword ptr [rsp + 7752], rax;         jmp   n129_disjunction_as
n134_lit_string_β:      mov              r11, 135;                            jmp   n129_disjunction_af
.Lx594_0:               .quad            .Lx594_0_s
.Lx594_0_s:             .string          "cbabc"
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:      mov              r11, 136
                        mov              qword ptr [rsp + 7728], 2            # result
                        mov              dword ptr [rsp + 7732], 6
                        mov              rax, qword ptr [rip + .Lx595_0]
                        mov              qword ptr [rsp + 7736], rax;         jmp   n129_disjunction_as
n135_lit_string_β:      mov              r11, 136;                            jmp   n129_disjunction_af
.Lx595_0:               .quad            .Lx595_0_s
.Lx595_0_s:             .string          "abccab"
#-----------------------------------------------------------------------------------------------------------------------
n136_call_builtin_icon_α:
                        mov              r11, 137
                        .section         .rodata
.Lrkfn597:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn597]
                        lea              rsi, [rsp + 7520]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7504], rax
                        mov              qword ptr [rsp + 7512], rdx
                        cmp              al, 104;                             je    n137_lit_string_α
                                                                              jmp   n137_lit_string_α
n136_call_builtin_icon_β:
                        mov              r11, 137;                            jmp   n137_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:      mov              r11, 138
                        mov              qword ptr [rsp + 7488], 2            # result
                        mov              dword ptr [rsp + 7492], 6
                        mov              rax, qword ptr [rip + .Lx598_0]
                        mov              qword ptr [rsp + 7496], rax;         jmp   n138_scan_enter_α
.Lx598_0:               .quad            .Lx598_0_s
.Lx598_0_s:             .string          "123456"
#-----------------------------------------------------------------------------------------------------------------------
n138_scan_enter_α:      mov              r11, 139
                        mov              rdi, qword ptr [rsp + 7488]
                        mov              rsi, qword ptr [rsp + 7496]
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
n139_lit_integer_α:     mov              r11, 140
                        mov              qword ptr [rsp + 7408], 3            # result
                        mov              rax, qword ptr [rip + .Lx601_0]
                        mov              qword ptr [rsp + 7416], rax;         jmp   n140_scan_move_α
.Lx601_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n140_scan_move_α:       mov              r11, 141
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n146_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n146_scan_α
                        mov              qword ptr [rsp + 7392], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 7376], rax
                        mov              qword ptr [rsp + 7384], rdx;         jmp   n141_lit_string_α
n140_scan_move_β:       mov              r11, 141
                        mov              r14, qword ptr [rsp + 7392];         jmp   n146_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:      mov              r11, 142
                        mov              qword ptr [rsp + 7424], 2            # result
                        mov              dword ptr [rsp + 7428], 1
                        mov              rax, qword ptr [rip + .Lx604_0]
                        mov              qword ptr [rsp + 7432], rax;         jmp   n142_lit_integer_α
.Lx604_0:               .quad            .Lx604_0_s
.Lx604_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_integer_α:     mov              r11, 143
                        mov              qword ptr [rsp + 7472], 3            # result
                        mov              rax, qword ptr [rip + .Lx605_0]
                        mov              qword ptr [rsp + 7480], rax;         jmp   n143_scan_move_α
.Lx605_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n143_scan_move_α:       mov              r11, 144
                        mov              rax, 2
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n146_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n146_scan_α
                        mov              qword ptr [rsp + 7456], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 7440], rax
                        mov              qword ptr [rsp + 7448], rdx;         jmp   n144_call_builtin_icon_α
n143_scan_move_β:       mov              r11, 144
                        mov              r14, qword ptr [rsp + 7456];         jmp   n146_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n144_call_builtin_icon_α:
                        mov              r11, 145
                        mov              rax, qword ptr [rsp + 7440]
                        mov              qword ptr [rsp + 7344], rax
                        mov              rax, qword ptr [rsp + 7448]
                        mov              qword ptr [rsp + 7352], rax
                        mov              rax, qword ptr [rsp + 7424]
                        mov              qword ptr [rsp + 7328], rax
                        mov              rax, qword ptr [rsp + 7432]
                        mov              qword ptr [rsp + 7336], rax
                        mov              rax, qword ptr [rsp + 7376]
                        mov              qword ptr [rsp + 7312], rax
                        mov              rax, qword ptr [rsp + 7384]
                        mov              qword ptr [rsp + 7320], rax
                        .section         .rodata
.Lrkfn609:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn609]
                        lea              rsi, [rsp + 7312]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7296], rax
                        mov              qword ptr [rsp + 7304], rdx
                        cmp              al, 104;                             je    n146_scan_α
                                                                              jmp   n145_scan_α
n144_call_builtin_icon_β:
                        mov              r11, 145;                            jmp   n146_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n145_scan_α:            mov              r11, 146
                        mov              rax, qword ptr [rsp + 7296]
                        mov              qword ptr [rsp + 7264], rax
                        mov              rax, qword ptr [rsp + 7304]
                        mov              qword ptr [rsp + 7272], rax
                        lea              rdi, [rsp + 7232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 7232]
                        mov              r14, qword ptr [rsp + 7240]
                        mov              r15, qword ptr [rsp + 7248];         jmp   n147_lit_string_α
n145_scan_β:            mov              r11, 146;                            jmp   n147_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n146_scan_α:            mov              r11, 147
                        lea              rdi, [rsp + 7232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 7232]
                        mov              r14, qword ptr [rsp + 7240]
                        mov              r15, qword ptr [rsp + 7248];         jmp   n147_lit_string_α
n146_scan_β:            mov              r11, 147;                            jmp   n147_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_string_α:      mov              r11, 148
                        mov              qword ptr [rsp + 7200], 2            # result
                        mov              dword ptr [rsp + 7204], 6
                        mov              rax, qword ptr [rip + .Lx614_0]
                        mov              qword ptr [rsp + 7208], rax;         jmp   n148_scan_enter_α
.Lx614_0:               .quad            .Lx614_0_s
.Lx614_0_s:             .string          "123456"
#-----------------------------------------------------------------------------------------------------------------------
n148_scan_enter_α:      mov              r11, 149
                        mov              rdi, qword ptr [rsp + 7200]
                        mov              rsi, qword ptr [rsp + 7208]
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
n149_lit_integer_α:     mov              r11, 150
                        mov              qword ptr [rsp + 7184], 3            # result
                        mov              rax, qword ptr [rip + .Lx617_0]
                        mov              qword ptr [rsp + 7192], rax;         jmp   n150_scan_move_α
.Lx617_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n150_scan_move_α:       mov              r11, 151
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n152_lit_integer_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n152_lit_integer_α
                        mov              qword ptr [rsp + 7168], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 7152], rax
                        mov              qword ptr [rsp + 7160], rdx;         jmp   n151_call_builtin_icon_α
n150_scan_move_β:       mov              r11, 151
                        mov              r14, qword ptr [rsp + 7168];         jmp   n152_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n151_call_builtin_icon_α:
                        mov              r11, 152
                        mov              rax, qword ptr [rsp + 7152]
                        mov              qword ptr [rsp + 7120], rax
                        mov              rax, qword ptr [rsp + 7160]
                        mov              qword ptr [rsp + 7128], rax
                        .section         .rodata
.Lrkfn621:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn621]
                        lea              rsi, [rsp + 7120]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7104], rax
                        mov              qword ptr [rsp + 7112], rdx
                        cmp              al, 104;                             je    n152_lit_integer_α
                                                                              jmp   n152_lit_integer_α
n151_call_builtin_icon_β:
                        mov              r11, 152;                            jmp   n152_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_integer_α:     mov              r11, 153
                        mov              qword ptr [rsp + 7088], 3            # result
                        mov              rax, qword ptr [rip + .Lx622_0]
                        mov              qword ptr [rsp + 7096], rax;         jmp   n153_scan_move_α
.Lx622_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n153_scan_move_α:       mov              r11, 154
                        mov              rax, 2
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n155_lit_integer_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n155_lit_integer_α
                        mov              qword ptr [rsp + 7072], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 7056], rax
                        mov              qword ptr [rsp + 7064], rdx;         jmp   n154_call_builtin_icon_α
n153_scan_move_β:       mov              r11, 154
                        mov              r14, qword ptr [rsp + 7072];         jmp   n155_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n154_call_builtin_icon_α:
                        mov              r11, 155
                        mov              rax, qword ptr [rsp + 7056]
                        mov              qword ptr [rsp + 7024], rax
                        mov              rax, qword ptr [rsp + 7064]
                        mov              qword ptr [rsp + 7032], rax
                        .section         .rodata
.Lrkfn626:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn626]
                        lea              rsi, [rsp + 7024]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7008], rax
                        mov              qword ptr [rsp + 7016], rdx
                        cmp              al, 104;                             je    n155_lit_integer_α
                                                                              jmp   n155_lit_integer_α
n154_call_builtin_icon_β:
                        mov              r11, 155;                            jmp   n155_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_integer_α:     mov              r11, 156
                        mov              qword ptr [rsp + 6992], 3            # result
                        mov              rax, qword ptr [rip + .Lx627_0]
                        mov              qword ptr [rsp + 7000], rax;         jmp   n156_scan_move_α
.Lx627_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n156_scan_move_α:       mov              r11, 157
                        mov              rax, 3
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n158_lit_integer_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n158_lit_integer_α
                        mov              qword ptr [rsp + 6976], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 6960], rax
                        mov              qword ptr [rsp + 6968], rdx;         jmp   n157_call_builtin_icon_α
n156_scan_move_β:       mov              r11, 157
                        mov              r14, qword ptr [rsp + 6976];         jmp   n158_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n157_call_builtin_icon_α:
                        mov              r11, 158
                        mov              rax, qword ptr [rsp + 6960]
                        mov              qword ptr [rsp + 6928], rax
                        mov              rax, qword ptr [rsp + 6968]
                        mov              qword ptr [rsp + 6936], rax
                        .section         .rodata
.Lrkfn631:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn631]
                        lea              rsi, [rsp + 6928]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 6912], rax
                        mov              qword ptr [rsp + 6920], rdx
                        cmp              al, 104;                             je    n158_lit_integer_α
                                                                              jmp   n158_lit_integer_α
n157_call_builtin_icon_β:
                        mov              r11, 158;                            jmp   n158_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_integer_α:     mov              r11, 159
                        mov              qword ptr [rsp + 6896], 3            # result
                        mov              rax, qword ptr [rip + .Lx632_0]
                        mov              qword ptr [rsp + 6904], rax;         jmp   n159_scan_move_α
.Lx632_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n159_scan_move_α:       mov              r11, 160
                        mov              rax, 4
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n161_lit_integer_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n161_lit_integer_α
                        mov              qword ptr [rsp + 6880], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 6864], rax
                        mov              qword ptr [rsp + 6872], rdx;         jmp   n160_call_builtin_icon_α
n159_scan_move_β:       mov              r11, 160
                        mov              r14, qword ptr [rsp + 6880];         jmp   n161_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n160_call_builtin_icon_α:
                        mov              r11, 161
                        mov              rax, qword ptr [rsp + 6864]
                        mov              qword ptr [rsp + 6832], rax
                        mov              rax, qword ptr [rsp + 6872]
                        mov              qword ptr [rsp + 6840], rax
                        .section         .rodata
.Lrkfn636:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn636]
                        lea              rsi, [rsp + 6832]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 6816], rax
                        mov              qword ptr [rsp + 6824], rdx
                        cmp              al, 104;                             je    n161_lit_integer_α
                                                                              jmp   n161_lit_integer_α
n160_call_builtin_icon_β:
                        mov              r11, 161;                            jmp   n161_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_integer_α:     mov              r11, 162
                        mov              qword ptr [rsp + 6800], 3            # result
                        mov              rax, qword ptr [rip + .Lx637_0]
                        mov              qword ptr [rsp + 6808], rax;         jmp   n162_scan_move_α
.Lx637_0:               .quad            18446744073709551612
#-----------------------------------------------------------------------------------------------------------------------
n162_scan_move_α:       mov              r11, 163
                        mov              rax, -4
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n166_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n166_scan_α
                        mov              qword ptr [rsp + 6784], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 6768], rax
                        mov              qword ptr [rsp + 6776], rdx;         jmp   n163_call_builtin_icon_α
n162_scan_move_β:       mov              r11, 163
                        mov              r14, qword ptr [rsp + 6784];         jmp   n166_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n163_call_builtin_icon_α:
                        mov              r11, 164
                        mov              rax, qword ptr [rsp + 6768]
                        mov              qword ptr [rsp + 6736], rax
                        mov              rax, qword ptr [rsp + 6776]
                        mov              qword ptr [rsp + 6744], rax
                        .section         .rodata
.Lrkfn641:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn641]
                        lea              rsi, [rsp + 6736]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 6720], rax
                        mov              qword ptr [rsp + 6728], rdx
                        cmp              al, 104;                             je    n166_scan_α
                                                                              jmp   n164_conjunction_α
n163_call_builtin_icon_β:
                        mov              r11, 164;                            jmp   n166_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n164_conjunction_α:     mov              r11, 165
                        mov              rax, qword ptr [rsp + 6720]
                        mov              qword ptr [rsp + 6704], rax
                        mov              rax, qword ptr [rsp + 6728]
                        mov              qword ptr [rsp + 6712], rax;         jmp   n165_scan_α
n164_conjunction_β:     mov              r11, 165;                            jmp   n166_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n165_scan_α:            mov              r11, 166
                        mov              rax, qword ptr [rsp + 6704]
                        mov              qword ptr [rsp + 6672], rax
                        mov              rax, qword ptr [rsp + 6712]
                        mov              qword ptr [rsp + 6680], rax
                        lea              rdi, [rsp + 6640]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 6640]
                        mov              r14, qword ptr [rsp + 6648]
                        mov              r15, qword ptr [rsp + 6656];         jmp   n167_call_builtin_icon_α
n165_scan_β:            mov              r11, 166;                            jmp   n167_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n166_scan_α:            mov              r11, 167
                        lea              rdi, [rsp + 6640]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 6640]
                        mov              r14, qword ptr [rsp + 6648]
                        mov              r15, qword ptr [rsp + 6656];         jmp   n167_call_builtin_icon_α
n166_scan_β:            mov              r11, 167;                            jmp   n167_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n167_call_builtin_icon_α:
                        mov              r11, 168
                        .section         .rodata
.Lrkfn648:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn648]
                        lea              rsi, [rsp + 6608]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 6592], rax
                        mov              qword ptr [rsp + 6600], rdx
                        cmp              al, 104;                             je    n168_lit_string_α
                                                                              jmp   n168_lit_string_α
n167_call_builtin_icon_β:
                        mov              r11, 168;                            jmp   n168_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_string_α:      mov              r11, 169
                        mov              qword ptr [rsp + 6576], 2            # result
                        mov              dword ptr [rsp + 6580], 6
                        mov              rax, qword ptr [rip + .Lx649_0]
                        mov              qword ptr [rsp + 6584], rax;         jmp   n169_scan_enter_α
.Lx649_0:               .quad            .Lx649_0_s
.Lx649_0_s:             .string          "123456"
#-----------------------------------------------------------------------------------------------------------------------
n169_scan_enter_α:      mov              r11, 170
                        mov              rdi, qword ptr [rsp + 6576]
                        mov              rsi, qword ptr [rsp + 6584]
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
n170_lit_integer_α:     mov              r11, 171
                        mov              qword ptr [rsp + 6496], 3            # result
                        mov              rax, qword ptr [rip + .Lx652_0]
                        mov              qword ptr [rsp + 6504], rax;         jmp   n171_scan_tab_α
.Lx652_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n171_scan_tab_α:        mov              r11, 172
                        mov              rax, 1
                        cmp              rax, 1;                              jge   .Lx654_0
                        add              rax, r15
                        add              rax, 1
.Lx654_0:               cmp              rax, 1;                              jl    n177_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n177_scan_α
                        mov              qword ptr [rsp + 6480], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 6464], rax
                        mov              qword ptr [rsp + 6472], rdx;         jmp   n172_lit_string_α
n171_scan_tab_β:        mov              r11, 172
                        mov              r14, qword ptr [rsp + 6480];         jmp   n177_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_string_α:      mov              r11, 173
                        mov              qword ptr [rsp + 6512], 2            # result
                        mov              dword ptr [rsp + 6516], 1
                        mov              rax, qword ptr [rip + .Lx655_0]
                        mov              qword ptr [rsp + 6520], rax;         jmp   n173_lit_integer_α
.Lx655_0:               .quad            .Lx655_0_s
.Lx655_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_integer_α:     mov              r11, 174
                        mov              qword ptr [rsp + 6560], 3            # result
                        mov              rax, qword ptr [rip + .Lx656_0]
                        mov              qword ptr [rsp + 6568], rax;         jmp   n174_scan_tab_α
.Lx656_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n174_scan_tab_α:        mov              r11, 175
                        mov              rax, 2
                        cmp              rax, 1;                              jge   .Lx658_0
                        add              rax, r15
                        add              rax, 1
.Lx658_0:               cmp              rax, 1;                              jl    n177_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n177_scan_α
                        mov              qword ptr [rsp + 6544], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 6528], rax
                        mov              qword ptr [rsp + 6536], rdx;         jmp   n175_call_builtin_icon_α
n174_scan_tab_β:        mov              r11, 175
                        mov              r14, qword ptr [rsp + 6544];         jmp   n177_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n175_call_builtin_icon_α:
                        mov              r11, 176
                        mov              rax, qword ptr [rsp + 6528]
                        mov              qword ptr [rsp + 6432], rax
                        mov              rax, qword ptr [rsp + 6536]
                        mov              qword ptr [rsp + 6440], rax
                        mov              rax, qword ptr [rsp + 6512]
                        mov              qword ptr [rsp + 6416], rax
                        mov              rax, qword ptr [rsp + 6520]
                        mov              qword ptr [rsp + 6424], rax
                        mov              rax, qword ptr [rsp + 6464]
                        mov              qword ptr [rsp + 6400], rax
                        mov              rax, qword ptr [rsp + 6472]
                        mov              qword ptr [rsp + 6408], rax
                        .section         .rodata
.Lrkfn660:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn660]
                        lea              rsi, [rsp + 6400]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 6384], rax
                        mov              qword ptr [rsp + 6392], rdx
                        cmp              al, 104;                             je    n177_scan_α
                                                                              jmp   n176_scan_α
n175_call_builtin_icon_β:
                        mov              r11, 176;                            jmp   n177_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n176_scan_α:            mov              r11, 177
                        mov              rax, qword ptr [rsp + 6384]
                        mov              qword ptr [rsp + 6352], rax
                        mov              rax, qword ptr [rsp + 6392]
                        mov              qword ptr [rsp + 6360], rax
                        lea              rdi, [rsp + 6320]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 6320]
                        mov              r14, qword ptr [rsp + 6328]
                        mov              r15, qword ptr [rsp + 6336];         jmp   n178_lit_string_α
n176_scan_β:            mov              r11, 177;                            jmp   n178_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n177_scan_α:            mov              r11, 178
                        lea              rdi, [rsp + 6320]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 6320]
                        mov              r14, qword ptr [rsp + 6328]
                        mov              r15, qword ptr [rsp + 6336];         jmp   n178_lit_string_α
n177_scan_β:            mov              r11, 178;                            jmp   n178_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_string_α:      mov              r11, 179
                        mov              qword ptr [rsp + 6288], 2            # result
                        mov              dword ptr [rsp + 6292], 6
                        mov              rax, qword ptr [rip + .Lx665_0]
                        mov              qword ptr [rsp + 6296], rax;         jmp   n179_scan_enter_α
.Lx665_0:               .quad            .Lx665_0_s
.Lx665_0_s:             .string          "123456"
#-----------------------------------------------------------------------------------------------------------------------
n179_scan_enter_α:      mov              r11, 180
                        mov              rdi, qword ptr [rsp + 6288]
                        mov              rsi, qword ptr [rsp + 6296]
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
n180_lit_integer_α:     mov              r11, 181
                        mov              qword ptr [rsp + 6272], 3            # result
                        mov              rax, qword ptr [rip + .Lx668_0]
                        mov              qword ptr [rsp + 6280], rax;         jmp   n181_scan_tab_α
.Lx668_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n181_scan_tab_α:        mov              r11, 182
                        mov              rax, 2
                        cmp              rax, 1;                              jge   .Lx670_0
                        add              rax, r15
                        add              rax, 1
.Lx670_0:               cmp              rax, 1;                              jl    n183_lit_integer_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n183_lit_integer_α
                        mov              qword ptr [rsp + 6256], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 6240], rax
                        mov              qword ptr [rsp + 6248], rdx;         jmp   n182_call_builtin_icon_α
n181_scan_tab_β:        mov              r11, 182
                        mov              r14, qword ptr [rsp + 6256];         jmp   n183_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n182_call_builtin_icon_α:
                        mov              r11, 183
                        mov              rax, qword ptr [rsp + 6240]
                        mov              qword ptr [rsp + 6208], rax
                        mov              rax, qword ptr [rsp + 6248]
                        mov              qword ptr [rsp + 6216], rax
                        .section         .rodata
.Lrkfn672:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn672]
                        lea              rsi, [rsp + 6208]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 6192], rax
                        mov              qword ptr [rsp + 6200], rdx
                        cmp              al, 104;                             je    n183_lit_integer_α
                                                                              jmp   n183_lit_integer_α
n182_call_builtin_icon_β:
                        mov              r11, 183;                            jmp   n183_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_integer_α:     mov              r11, 184
                        mov              qword ptr [rsp + 6176], 3            # result
                        mov              rax, qword ptr [rip + .Lx673_0]
                        mov              qword ptr [rsp + 6184], rax;         jmp   n184_scan_tab_α
.Lx673_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n184_scan_tab_α:        mov              r11, 185
                        mov              rax, 4
                        cmp              rax, 1;                              jge   .Lx675_0
                        add              rax, r15
                        add              rax, 1
.Lx675_0:               cmp              rax, 1;                              jl    n186_lit_integer_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n186_lit_integer_α
                        mov              qword ptr [rsp + 6160], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 6144], rax
                        mov              qword ptr [rsp + 6152], rdx;         jmp   n185_call_builtin_icon_α
n184_scan_tab_β:        mov              r11, 185
                        mov              r14, qword ptr [rsp + 6160];         jmp   n186_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n185_call_builtin_icon_α:
                        mov              r11, 186
                        mov              rax, qword ptr [rsp + 6144]
                        mov              qword ptr [rsp + 6112], rax
                        mov              rax, qword ptr [rsp + 6152]
                        mov              qword ptr [rsp + 6120], rax
                        .section         .rodata
.Lrkfn677:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn677]
                        lea              rsi, [rsp + 6112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 6096], rax
                        mov              qword ptr [rsp + 6104], rdx
                        cmp              al, 104;                             je    n186_lit_integer_α
                                                                              jmp   n186_lit_integer_α
n185_call_builtin_icon_β:
                        mov              r11, 186;                            jmp   n186_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_integer_α:     mov              r11, 187
                        mov              qword ptr [rsp + 6080], 3            # result
                        mov              rax, qword ptr [rip + .Lx678_0]
                        mov              qword ptr [rsp + 6088], rax;         jmp   n187_scan_tab_α
.Lx678_0:               .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n187_scan_tab_α:        mov              r11, 188
                        mov              rax, -1
                        cmp              rax, 1;                              jge   .Lx680_0
                        add              rax, r15
                        add              rax, 1
.Lx680_0:               cmp              rax, 1;                              jl    n189_lit_integer_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n189_lit_integer_α
                        mov              qword ptr [rsp + 6064], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 6048], rax
                        mov              qword ptr [rsp + 6056], rdx;         jmp   n188_call_builtin_icon_α
n187_scan_tab_β:        mov              r11, 188
                        mov              r14, qword ptr [rsp + 6064];         jmp   n189_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n188_call_builtin_icon_α:
                        mov              r11, 189
                        mov              rax, qword ptr [rsp + 6048]
                        mov              qword ptr [rsp + 6016], rax
                        mov              rax, qword ptr [rsp + 6056]
                        mov              qword ptr [rsp + 6024], rax
                        .section         .rodata
.Lrkfn682:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn682]
                        lea              rsi, [rsp + 6016]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 6000], rax
                        mov              qword ptr [rsp + 6008], rdx
                        cmp              al, 104;                             je    n189_lit_integer_α
                                                                              jmp   n189_lit_integer_α
n188_call_builtin_icon_β:
                        mov              r11, 189;                            jmp   n189_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_integer_α:     mov              r11, 190
                        mov              qword ptr [rsp + 5984], 3            # result
                        mov              rax, qword ptr [rip + .Lx683_0]
                        mov              qword ptr [rsp + 5992], rax;         jmp   n190_scan_tab_α
.Lx683_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n190_scan_tab_α:        mov              r11, 191
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lx685_0
                        add              rax, r15
                        add              rax, 1
.Lx685_0:               cmp              rax, 1;                              jl    n194_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n194_scan_α
                        mov              qword ptr [rsp + 5968], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 5952], rax
                        mov              qword ptr [rsp + 5960], rdx;         jmp   n191_call_builtin_icon_α
n190_scan_tab_β:        mov              r11, 191
                        mov              r14, qword ptr [rsp + 5968];         jmp   n194_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n191_call_builtin_icon_α:
                        mov              r11, 192
                        mov              rax, qword ptr [rsp + 5952]
                        mov              qword ptr [rsp + 5920], rax
                        mov              rax, qword ptr [rsp + 5960]
                        mov              qword ptr [rsp + 5928], rax
                        .section         .rodata
.Lrkfn687:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn687]
                        lea              rsi, [rsp + 5920]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5904], rax
                        mov              qword ptr [rsp + 5912], rdx
                        cmp              al, 104;                             je    n194_scan_α
                                                                              jmp   n192_conjunction_α
n191_call_builtin_icon_β:
                        mov              r11, 192;                            jmp   n194_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n192_conjunction_α:     mov              r11, 193
                        mov              rax, qword ptr [rsp + 5904]
                        mov              qword ptr [rsp + 5888], rax
                        mov              rax, qword ptr [rsp + 5912]
                        mov              qword ptr [rsp + 5896], rax;         jmp   n193_scan_α
n192_conjunction_β:     mov              r11, 193;                            jmp   n194_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n193_scan_α:            mov              r11, 194
                        mov              rax, qword ptr [rsp + 5888]
                        mov              qword ptr [rsp + 5856], rax
                        mov              rax, qword ptr [rsp + 5896]
                        mov              qword ptr [rsp + 5864], rax
                        lea              rdi, [rsp + 5824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 5824]
                        mov              r14, qword ptr [rsp + 5832]
                        mov              r15, qword ptr [rsp + 5840];         jmp   n195_lit_string_α
n193_scan_β:            mov              r11, 194;                            jmp   n195_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n194_scan_α:            mov              r11, 195
                        lea              rdi, [rsp + 5824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 5824]
                        mov              r14, qword ptr [rsp + 5832]
                        mov              r15, qword ptr [rsp + 5840];         jmp   n195_lit_string_α
n194_scan_β:            mov              r11, 195;                            jmp   n195_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_string_α:      mov              r11, 196
                        mov              qword ptr [rsp + 5792], 2            # result
                        mov              dword ptr [rsp + 5796], 6
                        mov              rax, qword ptr [rip + .Lx693_0]
                        mov              qword ptr [rsp + 5800], rax;         jmp   n196_scan_enter_α
.Lx693_0:               .quad            .Lx693_0_s
.Lx693_0_s:             .string          "123456"
#-----------------------------------------------------------------------------------------------------------------------
n196_scan_enter_α:      mov              r11, 197
                        mov              rdi, qword ptr [rsp + 5792]
                        mov              rsi, qword ptr [rsp + 5800]
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
n197_lit_integer_α:     mov              r11, 198
                        mov              qword ptr [rsp + 5776], 3            # result
                        mov              rax, qword ptr [rip + .Lx696_0]
                        mov              qword ptr [rsp + 5784], rax;         jmp   n198_scan_tab_α
.Lx696_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n198_scan_tab_α:        mov              r11, 199
                        mov              rax, 4
                        cmp              rax, 1;                              jge   .Lx698_0
                        add              rax, r15
                        add              rax, 1
.Lx698_0:               cmp              rax, 1;                              jl    n200_lit_integer_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n200_lit_integer_α
                        mov              qword ptr [rsp + 5760], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 5744], rax
                        mov              qword ptr [rsp + 5752], rdx;         jmp   n199_call_builtin_icon_α
n198_scan_tab_β:        mov              r11, 199
                        mov              r14, qword ptr [rsp + 5760];         jmp   n200_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n199_call_builtin_icon_α:
                        mov              r11, 200
                        mov              rax, qword ptr [rsp + 5744]
                        mov              qword ptr [rsp + 5712], rax
                        mov              rax, qword ptr [rsp + 5752]
                        mov              qword ptr [rsp + 5720], rax
                        .section         .rodata
.Lrkfn700:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn700]
                        lea              rsi, [rsp + 5712]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5696], rax
                        mov              qword ptr [rsp + 5704], rdx
                        cmp              al, 104;                             je    n200_lit_integer_α
                                                                              jmp   n200_lit_integer_α
n199_call_builtin_icon_β:
                        mov              r11, 200;                            jmp   n200_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_integer_α:     mov              r11, 201
                        mov              qword ptr [rsp + 5680], 3            # result
                        mov              rax, qword ptr [rip + .Lx701_0]
                        mov              qword ptr [rsp + 5688], rax;         jmp   n201_scan_tab_α
.Lx701_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n201_scan_tab_α:        mov              r11, 202
                        mov              rax, 1
                        cmp              rax, 1;                              jge   .Lx703_0
                        add              rax, r15
                        add              rax, 1
.Lx703_0:               cmp              rax, 1;                              jl    n203_lit_integer_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n203_lit_integer_α
                        mov              qword ptr [rsp + 5664], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 5648], rax
                        mov              qword ptr [rsp + 5656], rdx;         jmp   n202_call_builtin_icon_α
n201_scan_tab_β:        mov              r11, 202
                        mov              r14, qword ptr [rsp + 5664];         jmp   n203_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n202_call_builtin_icon_α:
                        mov              r11, 203
                        mov              rax, qword ptr [rsp + 5648]
                        mov              qword ptr [rsp + 5616], rax
                        mov              rax, qword ptr [rsp + 5656]
                        mov              qword ptr [rsp + 5624], rax
                        .section         .rodata
.Lrkfn705:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn705]
                        lea              rsi, [rsp + 5616]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5600], rax
                        mov              qword ptr [rsp + 5608], rdx
                        cmp              al, 104;                             je    n203_lit_integer_α
                                                                              jmp   n203_lit_integer_α
n202_call_builtin_icon_β:
                        mov              r11, 203;                            jmp   n203_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_integer_α:     mov              r11, 204
                        mov              qword ptr [rsp + 5584], 3            # result
                        mov              rax, qword ptr [rip + .Lx706_0]
                        mov              qword ptr [rsp + 5592], rax;         jmp   n204_scan_tab_α
.Lx706_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n204_scan_tab_α:        mov              r11, 205
                        mov              rax, 3
                        cmp              rax, 1;                              jge   .Lx708_0
                        add              rax, r15
                        add              rax, 1
.Lx708_0:               cmp              rax, 1;                              jl    n208_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n208_scan_α
                        mov              qword ptr [rsp + 5568], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 5552], rax
                        mov              qword ptr [rsp + 5560], rdx;         jmp   n205_call_builtin_icon_α
n204_scan_tab_β:        mov              r11, 205
                        mov              r14, qword ptr [rsp + 5568];         jmp   n208_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n205_call_builtin_icon_α:
                        mov              r11, 206
                        mov              rax, qword ptr [rsp + 5552]
                        mov              qword ptr [rsp + 5520], rax
                        mov              rax, qword ptr [rsp + 5560]
                        mov              qword ptr [rsp + 5528], rax
                        .section         .rodata
.Lrkfn710:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn710]
                        lea              rsi, [rsp + 5520]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5504], rax
                        mov              qword ptr [rsp + 5512], rdx
                        cmp              al, 104;                             je    n208_scan_α
                                                                              jmp   n206_conjunction_α
n205_call_builtin_icon_β:
                        mov              r11, 206;                            jmp   n208_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n206_conjunction_α:     mov              r11, 207
                        mov              rax, qword ptr [rsp + 5504]
                        mov              qword ptr [rsp + 5488], rax
                        mov              rax, qword ptr [rsp + 5512]
                        mov              qword ptr [rsp + 5496], rax;         jmp   n207_scan_α
n206_conjunction_β:     mov              r11, 207;                            jmp   n208_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n207_scan_α:            mov              r11, 208
                        mov              rax, qword ptr [rsp + 5488]
                        mov              qword ptr [rsp + 5456], rax
                        mov              rax, qword ptr [rsp + 5496]
                        mov              qword ptr [rsp + 5464], rax
                        lea              rdi, [rsp + 5424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 5424]
                        mov              r14, qword ptr [rsp + 5432]
                        mov              r15, qword ptr [rsp + 5440];         jmp   n209_call_builtin_icon_α
n207_scan_β:            mov              r11, 208;                            jmp   n209_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n208_scan_α:            mov              r11, 209
                        lea              rdi, [rsp + 5424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 5424]
                        mov              r14, qword ptr [rsp + 5432]
                        mov              r15, qword ptr [rsp + 5440];         jmp   n209_call_builtin_icon_α
n208_scan_β:            mov              r11, 209;                            jmp   n209_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n209_call_builtin_icon_α:
                        mov              r11, 210
                        .section         .rodata
.Lrkfn717:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn717]
                        lea              rsi, [rsp + 5392]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5376], rax
                        mov              qword ptr [rsp + 5384], rdx
                        cmp              al, 104;                             je    n210_lit_string_α
                                                                              jmp   n210_lit_string_α
n209_call_builtin_icon_β:
                        mov              r11, 210;                            jmp   n210_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n210_lit_string_α:      mov              r11, 211
                        mov              qword ptr [rsp + 5360], 2            # result
                        mov              dword ptr [rsp + 5364], 3
                        mov              rax, qword ptr [rip + .Lx718_0]
                        mov              qword ptr [rsp + 5368], rax;         jmp   n211_scan_enter_α
.Lx718_0:               .quad            .Lx718_0_s
.Lx718_0_s:             .string          "-35"
#-----------------------------------------------------------------------------------------------------------------------
n211_scan_enter_α:      mov              r11, 212
                        mov              rdi, qword ptr [rsp + 5360]
                        mov              rsi, qword ptr [rsp + 5368]
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
n212_lit_charset_α:     mov              r11, 213
                        mov              qword ptr [rsp + 5344], 2            # result
                        mov              dword ptr [rsp + 5348], -1
                        mov              rax, qword ptr [rip + .Lx721_0]
                        mov              qword ptr [rsp + 5352], rax;         jmp   n213_scan_bal_α
.Lx721_0:               .quad            .Lx721_0_s
.Lx721_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n213_scan_bal_α:        mov              r11, 214
                        mov              qword ptr [rsp + 5328], r14
                        mov              qword ptr [rsp + 5336], 0
.Lx723_0:               mov              rax, qword ptr [rsp + 5328]
                        cmp              rax, r15;                            jge   n216_scan_α
                        mov              rdx, qword ptr [rsp + 5336]
                        cmp              rdx, 0;                              jne   .Lx723_1
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx723_4]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx723_1
                        mov              qword ptr [rsp + 5312], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 5320], rax;         jmp   n214_scan_α
.Lx723_1:               mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              rsi, 40;                             jne   .Lx723_2
                        inc              qword ptr [rsp + 5336];              jmp   .Lx723_3
.Lx723_2:               cmp              rsi, 41;                             jne   .Lx723_3
                        mov              rdx, qword ptr [rsp + 5336]
                        sub              rdx, 1
                        mov              qword ptr [rsp + 5336], rdx
                        cmp              rdx, 0;                              jl    n216_scan_α
.Lx723_3:               inc              qword ptr [rsp + 5328];              jmp   .Lx723_0
n213_scan_bal_β:        mov              r11, 214
                        inc              qword ptr [rsp + 5328];              jmp   .Lx723_0
.Lx723_4:               .quad            .Lx723_4_s
.Lx723_4_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n214_scan_α:            mov              r11, 215
                        mov              rax, qword ptr [rsp + 5312]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 5320]
                        mov              qword ptr [rsp + 5288], rax
                        lea              rdi, [rsp + 5248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 5248]
                        mov              r14, qword ptr [rsp + 5256]
                        mov              r15, qword ptr [rsp + 5264];         jmp   n215_call_builtin_icon_α
n214_scan_β:            mov              r11, 215
                        mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, 216
                        mov              rax, qword ptr [rsp + 5280]
                        mov              qword ptr [rsp + 5200], rax
                        mov              rax, qword ptr [rsp + 5288]
                        mov              qword ptr [rsp + 5208], rax
                        .section         .rodata
.Lrkfn727:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn727]
                        lea              rsi, [rsp + 5200]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5184], rax
                        mov              qword ptr [rsp + 5192], rdx
                        cmp              al, 104;                             je    n214_scan_β
                                                                              jmp   n214_scan_β
n215_call_builtin_icon_β:
                        mov              r11, 216;                            jmp   n214_scan_β
#-----------------------------------------------------------------------------------------------------------------------
n216_scan_α:            mov              r11, 217
                        lea              rdi, [rsp + 5248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 5248]
                        mov              r14, qword ptr [rsp + 5256]
                        mov              r15, qword ptr [rsp + 5264];         jmp   n217_lit_string_α
n216_scan_β:            mov              r11, 217;                            jmp   n217_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_string_α:      mov              r11, 218
                        mov              qword ptr [rsp + 5168], 2            # result
                        mov              dword ptr [rsp + 5172], 15
                        mov              rax, qword ptr [rip + .Lx730_0]
                        mov              qword ptr [rsp + 5176], rax;         jmp   n218_scan_enter_α
.Lx730_0:               .quad            .Lx730_0_s
.Lx730_0_s:             .string          "((2*x)+3)+(5*y)"
#-----------------------------------------------------------------------------------------------------------------------
n218_scan_enter_α:      mov              r11, 219
                        mov              rdi, qword ptr [rsp + 5168]
                        mov              rsi, qword ptr [rsp + 5176]
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
n219_lit_charset_α:     mov              r11, 220
                        mov              qword ptr [rsp + 5152], 2            # result
                        mov              dword ptr [rsp + 5156], -1
                        mov              rax, qword ptr [rip + .Lx733_0]
                        mov              qword ptr [rsp + 5160], rax;         jmp   n220_scan_bal_α
.Lx733_0:               .quad            .Lx733_0_s
.Lx733_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n220_scan_bal_α:        mov              r11, 221
                        mov              qword ptr [rsp + 5136], r14
                        mov              qword ptr [rsp + 5144], 0
.Lx735_0:               mov              rax, qword ptr [rsp + 5136]
                        cmp              rax, r15;                            jge   n223_scan_α
                        mov              rdx, qword ptr [rsp + 5144]
                        cmp              rdx, 0;                              jne   .Lx735_1
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx735_4]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx735_1
                        mov              qword ptr [rsp + 5120], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 5128], rax;         jmp   n221_scan_α
.Lx735_1:               mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              rsi, 40;                             jne   .Lx735_2
                        inc              qword ptr [rsp + 5144];              jmp   .Lx735_3
.Lx735_2:               cmp              rsi, 41;                             jne   .Lx735_3
                        mov              rdx, qword ptr [rsp + 5144]
                        sub              rdx, 1
                        mov              qword ptr [rsp + 5144], rdx
                        cmp              rdx, 0;                              jl    n223_scan_α
.Lx735_3:               inc              qword ptr [rsp + 5136];              jmp   .Lx735_0
n220_scan_bal_β:        mov              r11, 221
                        inc              qword ptr [rsp + 5136];              jmp   .Lx735_0
.Lx735_4:               .quad            .Lx735_4_s
.Lx735_4_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n221_scan_α:            mov              r11, 222
                        mov              rax, qword ptr [rsp + 5120]
                        mov              qword ptr [rsp + 5088], rax
                        mov              rax, qword ptr [rsp + 5128]
                        mov              qword ptr [rsp + 5096], rax
                        lea              rdi, [rsp + 5056]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 5056]
                        mov              r14, qword ptr [rsp + 5064]
                        mov              r15, qword ptr [rsp + 5072];         jmp   n222_call_builtin_icon_α
n221_scan_β:            mov              r11, 222
                        mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, 223
                        mov              rax, qword ptr [rsp + 5088]
                        mov              qword ptr [rsp + 5008], rax
                        mov              rax, qword ptr [rsp + 5096]
                        mov              qword ptr [rsp + 5016], rax
                        .section         .rodata
.Lrkfn739:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn739]
                        lea              rsi, [rsp + 5008]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4992], rax
                        mov              qword ptr [rsp + 5000], rdx
                        cmp              al, 104;                             je    n221_scan_β
                                                                              jmp   n221_scan_β
n222_call_builtin_icon_β:
                        mov              r11, 223;                            jmp   n221_scan_β
#-----------------------------------------------------------------------------------------------------------------------
n223_scan_α:            mov              r11, 224
                        lea              rdi, [rsp + 5056]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 5056]
                        mov              r14, qword ptr [rsp + 5064]
                        mov              r15, qword ptr [rsp + 5072];         jmp   n224_lit_string_α
n223_scan_β:            mov              r11, 224;                            jmp   n224_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n224_lit_string_α:      mov              r11, 225
                        mov              qword ptr [rsp + 4976], 2            # result
                        mov              dword ptr [rsp + 4980], 20
                        mov              rax, qword ptr [rip + .Lx742_0]
                        mov              qword ptr [rsp + 4984], rax;         jmp   n225_scan_enter_α
.Lx742_0:               .quad            .Lx742_0_s
.Lx742_0_s:             .string          "[+,[2,3]],[*,[5,10]]"
#-----------------------------------------------------------------------------------------------------------------------
n225_scan_enter_α:      mov              r11, 226
                        mov              rdi, qword ptr [rsp + 4976]
                        mov              rsi, qword ptr [rsp + 4984]
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
n226_lit_charset_α:     mov              r11, 227
                        mov              qword ptr [rsp + 4928], 2            # result
                        mov              dword ptr [rsp + 4932], -1
                        mov              rax, qword ptr [rip + .Lx745_0]
                        mov              qword ptr [rsp + 4936], rax;         jmp   n227_lit_charset_α
.Lx745_0:               .quad            .Lx745_0_s
.Lx745_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_charset_α:     mov              r11, 228
                        mov              qword ptr [rsp + 4944], 2            # result
                        mov              dword ptr [rsp + 4948], -1
                        mov              rax, qword ptr [rip + .Lx746_0]
                        mov              qword ptr [rsp + 4952], rax;         jmp   n228_lit_charset_α
.Lx746_0:               .quad            .Lx746_0_s
.Lx746_0_s:             .string          "["
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_charset_α:     mov              r11, 229
                        mov              qword ptr [rsp + 4960], 2            # result
                        mov              dword ptr [rsp + 4964], -1
                        mov              rax, qword ptr [rip + .Lx747_0]
                        mov              qword ptr [rsp + 4968], rax;         jmp   n229_call_builtin_icon_α
.Lx747_0:               .quad            .Lx747_0_s
.Lx747_0_s:             .string          "]"
#-----------------------------------------------------------------------------------------------------------------------
n229_call_builtin_icon_α:
                        mov              r11, 230
                        mov              rax, qword ptr [rsp + 4960]
                        mov              qword ptr [rsp + 4896], rax
                        mov              rax, qword ptr [rsp + 4968]
                        mov              qword ptr [rsp + 4904], rax
                        mov              rax, qword ptr [rsp + 4944]
                        mov              qword ptr [rsp + 4880], rax
                        mov              rax, qword ptr [rsp + 4952]
                        mov              qword ptr [rsp + 4888], rax
                        mov              rax, qword ptr [rsp + 4928]
                        mov              qword ptr [rsp + 4864], rax
                        mov              rax, qword ptr [rsp + 4936]
                        mov              qword ptr [rsp + 4872], rax
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
                        lea              rsi, [rsp + 4864]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196715
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4848], rax
                        mov              qword ptr [rsp + 4856], rdx
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
                        cmp              al, 104;                             je    n232_scan_α
                                                                              jmp   n230_scan_α
n229_call_builtin_icon_β:
                        mov              r11, 230;                            jmp   n232_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n230_scan_α:            mov              r11, 231
                        mov              rax, qword ptr [rsp + 4848]
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
                        mov              r15, qword ptr [rsp + 4800];         jmp   n231_call_builtin_icon_α
n230_scan_β:            mov              r11, 231;                            jmp   n233_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n231_call_builtin_icon_α:
                        mov              r11, 232
                        mov              rax, qword ptr [rsp + 4816]
                        mov              qword ptr [rsp + 4736], rax
                        mov              rax, qword ptr [rsp + 4824]
                        mov              qword ptr [rsp + 4744], rax
                        .section         .rodata
.Lrkfn752:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn752]
                        lea              rsi, [rsp + 4736]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4720], rax
                        mov              qword ptr [rsp + 4728], rdx
                        cmp              al, 104;                             je    n233_call_builtin_icon_α
                                                                              jmp   n233_call_builtin_icon_α
n231_call_builtin_icon_β:
                        mov              r11, 232;                            jmp   n233_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n232_scan_α:            mov              r11, 233
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
                        mov              r15, qword ptr [rsp + 4800];         jmp   n233_call_builtin_icon_α
n232_scan_β:            mov              r11, 233;                            jmp   n233_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n233_call_builtin_icon_α:
                        mov              r11, 234
                        .section         .rodata
.Lrkfn756:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn756]
                        lea              rsi, [rsp + 4704]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4688], rax
                        mov              qword ptr [rsp + 4696], rdx
                        cmp              al, 104;                             je    n234_lit_string_α
                                                                              jmp   n234_lit_string_α
n233_call_builtin_icon_β:
                        mov              r11, 234;                            jmp   n234_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_string_α:      mov              r11, 235
                        mov              qword ptr [rsp + 4672], 2            # result
                        mov              dword ptr [rsp + 4676], 5
                        mov              rax, qword ptr [rip + .Lx757_0]
                        mov              qword ptr [rsp + 4680], rax;         jmp   n235_scan_enter_α
.Lx757_0:               .quad            .Lx757_0_s
.Lx757_0_s:             .string          "12345"
#-----------------------------------------------------------------------------------------------------------------------
n235_scan_enter_α:      mov              r11, 236
                        mov              rdi, qword ptr [rsp + 4672]
                        mov              rsi, qword ptr [rsp + 4680]
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
n236_lit_integer_α:     mov              r11, 237
                        mov              qword ptr [rsp + 4656], 3            # result
                        mov              rax, qword ptr [rip + .Lx760_0]
                        mov              qword ptr [rsp + 4664], rax;         jmp   n237_scan_pos_α
.Lx760_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n237_scan_pos_α:        mov              r11, 238
                        mov              rax, 1
                        cmp              rax, 1;                              jge   .Lx762_0
                        add              rax, r15
                        add              rax, 1
.Lx762_0:               cmp              rax, 1;                              jl    n239_lit_integer_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n239_lit_integer_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n239_lit_integer_α
                        mov              qword ptr [rsp + 4640], 3
                        mov              qword ptr [rsp + 4648], rax;         jmp   n238_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n238_call_builtin_icon_α:
                        mov              r11, 239
                        mov              rax, qword ptr [rsp + 4640]
                        mov              qword ptr [rsp + 4608], rax
                        mov              rax, qword ptr [rsp + 4648]
                        mov              qword ptr [rsp + 4616], rax
                        .section         .rodata
.Lrkfn764:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn764]
                        lea              rsi, [rsp + 4608]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4592], rax
                        mov              qword ptr [rsp + 4600], rdx
                        cmp              al, 104;                             je    n239_lit_integer_α
                                                                              jmp   n239_lit_integer_α
n238_call_builtin_icon_β:
                        mov              r11, 239;                            jmp   n239_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n239_lit_integer_α:     mov              r11, 240
                        mov              qword ptr [rsp + 4576], 3            # result
                        mov              rax, qword ptr [rip + .Lx765_0]
                        mov              qword ptr [rsp + 4584], rax;         jmp   n240_scan_pos_α
.Lx765_0:               .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n240_scan_pos_α:        mov              r11, 241
                        mov              rax, -5
                        cmp              rax, 1;                              jge   .Lx767_0
                        add              rax, r15
                        add              rax, 1
.Lx767_0:               cmp              rax, 1;                              jl    n242_disjunction_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n242_disjunction_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n242_disjunction_α
                        mov              qword ptr [rsp + 4560], 3
                        mov              qword ptr [rsp + 4568], rax;         jmp   n241_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n241_call_builtin_icon_α:
                        mov              r11, 242
                        mov              rax, qword ptr [rsp + 4560]
                        mov              qword ptr [rsp + 4528], rax
                        mov              rax, qword ptr [rsp + 4568]
                        mov              qword ptr [rsp + 4536], rax
                        .section         .rodata
.Lrkfn769:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn769]
                        lea              rsi, [rsp + 4528]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4512], rax
                        mov              qword ptr [rsp + 4520], rdx
                        cmp              al, 104;                             je    n242_disjunction_α
                                                                              jmp   n242_disjunction_α
n241_call_builtin_icon_β:
                        mov              r11, 242;                            jmp   n242_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n242_disjunction_α:     mov              r11, 243
                        mov              qword ptr [rsp + 4432], 0
                        mov              qword ptr [rsp + 4440], 0
                        mov              dword ptr [rsp + 4448], 0;           jmp   n299_lit_integer_α
n242_disjunction_as:    mov              r11, 243
                        mov              eax, dword ptr [rsp + 4448]
                        cmp              eax, 0;                              jne   .Lx771_0
                        mov              rax, qword ptr [rsp + 4464]
                        mov              qword ptr [rsp + 4432], rax
                        mov              rax, qword ptr [rsp + 4472]
                        mov              qword ptr [rsp + 4440], rax;         jmp   n243_call_builtin_icon_α
.Lx771_0:               cmp              eax, 1;                              jne   .Lx771_1
                        mov              rax, qword ptr [rsp + 4496]
                        mov              qword ptr [rsp + 4432], rax
                        mov              rax, qword ptr [rsp + 4504]
                        mov              qword ptr [rsp + 4440], rax;         jmp   n243_call_builtin_icon_α
.Lx771_1:                                                                     jmp   n243_call_builtin_icon_α
n242_disjunction_β:     mov              r11, 243
                        mov              eax, dword ptr [rsp + 4448]
                        cmp              eax, 0;                              je    n242_disjunction_af
                                                                              jmp   n242_disjunction_af
n242_disjunction_af:    mov              r11, 243
                        add              dword ptr [rsp + 4448], 1
                        mov              eax, dword ptr [rsp + 4448]
                        cmp              eax, 1;                              je    n298_lit_string_α
                                                                              jmp   n301_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n243_call_builtin_icon_α:
                        mov              r11, 244
                        mov              rax, qword ptr [rsp + 4432]
                        mov              qword ptr [rsp + 4400], rax
                        mov              rax, qword ptr [rsp + 4440]
                        mov              qword ptr [rsp + 4408], rax
                        .section         .rodata
.Lrkfn773:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn773]
                        lea              rsi, [rsp + 4400]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4384], rax
                        mov              qword ptr [rsp + 4392], rdx
                        cmp              al, 104;                             je    n242_disjunction_β
                                                                              jmp   n244_conjunction_α
n243_call_builtin_icon_β:
                        mov              r11, 244;                            jmp   n242_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n244_conjunction_α:     mov              r11, 245
                        mov              rax, qword ptr [rsp + 4384]
                        mov              qword ptr [rsp + 4368], rax
                        mov              rax, qword ptr [rsp + 4392]
                        mov              qword ptr [rsp + 4376], rax;         jmp   n245_scan_α
n244_conjunction_β:     mov              r11, 245;                            jmp   n301_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n245_scan_α:            mov              r11, 246
                        mov              rax, qword ptr [rsp + 4368]
                        mov              qword ptr [rsp + 4336], rax
                        mov              rax, qword ptr [rsp + 4376]
                        mov              qword ptr [rsp + 4344], rax
                        lea              rdi, [rsp + 4304]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 4304]
                        mov              r14, qword ptr [rsp + 4312]
                        mov              r15, qword ptr [rsp + 4320];         jmp   n246_call_builtin_icon_α
n245_scan_β:            mov              r11, 246;                            jmp   n246_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n246_call_builtin_icon_α:
                        mov              r11, 247
                        .section         .rodata
.Lrkfn778:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn778]
                        lea              rsi, [rsp + 4272]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4256], rax
                        mov              qword ptr [rsp + 4264], rdx
                        cmp              al, 104;                             je    n247_lit_string_α
                                                                              jmp   n247_lit_string_α
n246_call_builtin_icon_β:
                        mov              r11, 247;                            jmp   n247_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_string_α:      mov              r11, 248
                        mov              qword ptr [rsp + 4240], 2            # result
                        mov              dword ptr [rsp + 4244], 5
                        mov              rax, qword ptr [rip + .Lx779_0]
                        mov              qword ptr [rsp + 4248], rax;         jmp   n248_scan_enter_α
.Lx779_0:               .quad            .Lx779_0_s
.Lx779_0_s:             .string          "12345"
#-----------------------------------------------------------------------------------------------------------------------
n248_scan_enter_α:      mov              r11, 249
                        mov              rdi, qword ptr [rsp + 4240]
                        mov              rsi, qword ptr [rsp + 4248]
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
n249_disjunction_α:     mov              r11, 250
                        mov              qword ptr [rsp + 4112], 0
                        mov              qword ptr [rsp + 4120], 0
                        mov              dword ptr [rsp + 4128], 0;           jmp   n295_lit_string_α
n249_disjunction_as:    mov              r11, 250
                        mov              eax, dword ptr [rsp + 4128]
                        cmp              eax, 0;                              jne   .Lx783_0
                        mov              rax, qword ptr [rsp + 4144]
                        mov              qword ptr [rsp + 4112], rax
                        mov              rax, qword ptr [rsp + 4152]
                        mov              qword ptr [rsp + 4120], rax;         jmp   n250_call_builtin_icon_α
.Lx783_0:               cmp              eax, 1;                              jne   .Lx783_1
                        mov              rax, qword ptr [rsp + 4224]
                        mov              qword ptr [rsp + 4112], rax
                        mov              rax, qword ptr [rsp + 4232]
                        mov              qword ptr [rsp + 4120], rax;         jmp   n250_call_builtin_icon_α
.Lx783_1:                                                                     jmp   n250_call_builtin_icon_α
n249_disjunction_β:     mov              r11, 250
                        mov              eax, dword ptr [rsp + 4128]
                        cmp              eax, 0;                              je    n249_disjunction_af
                                                                              jmp   n249_disjunction_af
n249_disjunction_af:    mov              r11, 250
                        add              dword ptr [rsp + 4128], 1
                        mov              eax, dword ptr [rsp + 4128]
                        cmp              eax, 1;                              je    n294_lit_string_α
                                                                              jmp   n302_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n250_call_builtin_icon_α:
                        mov              r11, 251
                        mov              rax, qword ptr [rsp + 4112]
                        mov              qword ptr [rsp + 4080], rax
                        mov              rax, qword ptr [rsp + 4120]
                        mov              qword ptr [rsp + 4088], rax
                        .section         .rodata
.Lrkfn785:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn785]
                        lea              rsi, [rsp + 4080]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4064], rax
                        mov              qword ptr [rsp + 4072], rdx
                        cmp              al, 104;                             je    n249_disjunction_β
                                                                              jmp   n251_scan_α
n250_call_builtin_icon_β:
                        mov              r11, 251;                            jmp   n249_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n251_scan_α:            mov              r11, 252
                        mov              rax, qword ptr [rsp + 4064]
                        mov              qword ptr [rsp + 4032], rax
                        mov              rax, qword ptr [rsp + 4072]
                        mov              qword ptr [rsp + 4040], rax
                        lea              rdi, [rsp + 4000]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 4000]
                        mov              r14, qword ptr [rsp + 4008]
                        mov              r15, qword ptr [rsp + 4016];         jmp   n252_lit_string_α
n251_scan_β:            mov              r11, 252;                            jmp   n252_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n252_lit_string_α:      mov              r11, 253
                        mov              qword ptr [rsp + 3968], 2            # result
                        mov              dword ptr [rsp + 3972], 5
                        mov              rax, qword ptr [rip + .Lx788_0]
                        mov              qword ptr [rsp + 3976], rax;         jmp   n253_scan_enter_α
.Lx788_0:               .quad            .Lx788_0_s
.Lx788_0_s:             .string          "12345"
#-----------------------------------------------------------------------------------------------------------------------
n253_scan_enter_α:      mov              r11, 254
                        mov              rdi, qword ptr [rsp + 3968]
                        mov              rsi, qword ptr [rsp + 3976]
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
n254_lit_integer_α:     mov              r11, 255
                        mov              qword ptr [rsp + 3952], 3            # result
                        mov              rax, qword ptr [rip + .Lx791_0]
                        mov              qword ptr [rsp + 3960], rax;         jmp   n255_scan_tab_α
.Lx791_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n255_scan_tab_α:        mov              r11, 256
                        mov              rax, 2
                        cmp              rax, 1;                              jge   .Lx793_0
                        add              rax, r15
                        add              rax, 1
.Lx793_0:               cmp              rax, 1;                              jl    n256_disjunction_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n256_disjunction_α
                        mov              qword ptr [rsp + 3936], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 3920], rax
                        mov              qword ptr [rsp + 3928], rdx;         jmp   n256_disjunction_α
n255_scan_tab_β:        mov              r11, 256
                        mov              r14, qword ptr [rsp + 3936];         jmp   n256_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n256_disjunction_α:     mov              r11, 257
                        mov              qword ptr [rsp + 3792], 0
                        mov              qword ptr [rsp + 3800], 0
                        mov              dword ptr [rsp + 3808], 0;           jmp   n291_lit_string_α
n256_disjunction_as:    mov              r11, 257
                        mov              eax, dword ptr [rsp + 3808]
                        cmp              eax, 0;                              jne   .Lx795_0
                        mov              rax, qword ptr [rsp + 3824]
                        mov              qword ptr [rsp + 3792], rax
                        mov              rax, qword ptr [rsp + 3832]
                        mov              qword ptr [rsp + 3800], rax;         jmp   n257_call_builtin_icon_α
.Lx795_0:               cmp              eax, 1;                              jne   .Lx795_1
                        mov              rax, qword ptr [rsp + 3904]
                        mov              qword ptr [rsp + 3792], rax
                        mov              rax, qword ptr [rsp + 3912]
                        mov              qword ptr [rsp + 3800], rax;         jmp   n257_call_builtin_icon_α
.Lx795_1:                                                                     jmp   n257_call_builtin_icon_α
n256_disjunction_β:     mov              r11, 257
                        mov              eax, dword ptr [rsp + 3808]
                        cmp              eax, 0;                              je    n256_disjunction_af
                                                                              jmp   n256_disjunction_af
n256_disjunction_af:    mov              r11, 257
                        add              dword ptr [rsp + 3808], 1
                        mov              eax, dword ptr [rsp + 3808]
                        cmp              eax, 1;                              je    n290_lit_string_α
                                                                              jmp   n303_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n257_call_builtin_icon_α:
                        mov              r11, 258
                        mov              rax, qword ptr [rsp + 3792]
                        mov              qword ptr [rsp + 3760], rax
                        mov              rax, qword ptr [rsp + 3800]
                        mov              qword ptr [rsp + 3768], rax
                        .section         .rodata
.Lrkfn797:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn797]
                        lea              rsi, [rsp + 3760]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3744], rax
                        mov              qword ptr [rsp + 3752], rdx
                        cmp              al, 104;                             je    n256_disjunction_β
                                                                              jmp   n258_conjunction_α
n257_call_builtin_icon_β:
                        mov              r11, 258;                            jmp   n256_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n258_conjunction_α:     mov              r11, 259
                        mov              rax, qword ptr [rsp + 3744]
                        mov              qword ptr [rsp + 3728], rax
                        mov              rax, qword ptr [rsp + 3752]
                        mov              qword ptr [rsp + 3736], rax;         jmp   n259_scan_α
n258_conjunction_β:     mov              r11, 259;                            jmp   n303_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n259_scan_α:            mov              r11, 260
                        mov              rax, qword ptr [rsp + 3728]
                        mov              qword ptr [rsp + 3696], rax
                        mov              rax, qword ptr [rsp + 3736]
                        mov              qword ptr [rsp + 3704], rax
                        lea              rdi, [rsp + 3664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 3664]
                        mov              r14, qword ptr [rsp + 3672]
                        mov              r15, qword ptr [rsp + 3680];         jmp   n260_lit_string_α
n259_scan_β:            mov              r11, 260;                            jmp   n260_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_string_α:      mov              r11, 261
                        mov              qword ptr [rsp + 3632], 2            # result
                        mov              dword ptr [rsp + 3636], 5
                        mov              rax, qword ptr [rip + .Lx801_0]
                        mov              qword ptr [rsp + 3640], rax;         jmp   n261_scan_enter_α
.Lx801_0:               .quad            .Lx801_0_s
.Lx801_0_s:             .string          "12345"
#-----------------------------------------------------------------------------------------------------------------------
n261_scan_enter_α:      mov              r11, 262
                        mov              rdi, qword ptr [rsp + 3632]
                        mov              rsi, qword ptr [rsp + 3640]
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
n262_lit_integer_α:     mov              r11, 263
                        mov              qword ptr [rsp + 3616], 3            # result
                        mov              rax, qword ptr [rip + .Lx804_0]
                        mov              qword ptr [rsp + 3624], rax;         jmp   n263_scan_tab_α
.Lx804_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n263_scan_tab_α:        mov              r11, 264
                        mov              rax, 2
                        cmp              rax, 1;                              jge   .Lx806_0
                        add              rax, r15
                        add              rax, 1
.Lx806_0:               cmp              rax, 1;                              jl    n264_disjunction_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n264_disjunction_α
                        mov              qword ptr [rsp + 3600], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 3584], rax
                        mov              qword ptr [rsp + 3592], rdx;         jmp   n264_disjunction_α
n263_scan_tab_β:        mov              r11, 264
                        mov              r14, qword ptr [rsp + 3600];         jmp   n264_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n264_disjunction_α:     mov              r11, 265
                        mov              qword ptr [rsp + 3456], 0
                        mov              qword ptr [rsp + 3464], 0
                        mov              dword ptr [rsp + 3472], 0;           jmp   n287_lit_string_α
n264_disjunction_as:    mov              r11, 265
                        mov              eax, dword ptr [rsp + 3472]
                        cmp              eax, 0;                              jne   .Lx808_0
                        mov              rax, qword ptr [rsp + 3488]
                        mov              qword ptr [rsp + 3456], rax
                        mov              rax, qword ptr [rsp + 3496]
                        mov              qword ptr [rsp + 3464], rax;         jmp   n265_call_builtin_icon_α
.Lx808_0:               cmp              eax, 1;                              jne   .Lx808_1
                        mov              rax, qword ptr [rsp + 3568]
                        mov              qword ptr [rsp + 3456], rax
                        mov              rax, qword ptr [rsp + 3576]
                        mov              qword ptr [rsp + 3464], rax;         jmp   n265_call_builtin_icon_α
.Lx808_1:                                                                     jmp   n265_call_builtin_icon_α
n264_disjunction_β:     mov              r11, 265
                        mov              eax, dword ptr [rsp + 3472]
                        cmp              eax, 0;                              je    n264_disjunction_af
                                                                              jmp   n264_disjunction_af
n264_disjunction_af:    mov              r11, 265
                        add              dword ptr [rsp + 3472], 1
                        mov              eax, dword ptr [rsp + 3472]
                        cmp              eax, 1;                              je    n286_lit_string_α
                                                                              jmp   n304_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n265_call_builtin_icon_α:
                        mov              r11, 266
                        mov              rax, qword ptr [rsp + 3456]
                        mov              qword ptr [rsp + 3424], rax
                        mov              rax, qword ptr [rsp + 3464]
                        mov              qword ptr [rsp + 3432], rax
                        .section         .rodata
.Lrkfn810:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn810]
                        lea              rsi, [rsp + 3424]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3408], rax
                        mov              qword ptr [rsp + 3416], rdx
                        cmp              al, 104;                             je    n264_disjunction_β
                                                                              jmp   n266_conjunction_α
n265_call_builtin_icon_β:
                        mov              r11, 266;                            jmp   n264_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n266_conjunction_α:     mov              r11, 267
                        mov              rax, qword ptr [rsp + 3408]
                        mov              qword ptr [rsp + 3392], rax
                        mov              rax, qword ptr [rsp + 3416]
                        mov              qword ptr [rsp + 3400], rax;         jmp   n267_scan_α
n266_conjunction_β:     mov              r11, 267;                            jmp   n304_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n267_scan_α:            mov              r11, 268
                        mov              rax, qword ptr [rsp + 3392]
                        mov              qword ptr [rsp + 3360], rax
                        mov              rax, qword ptr [rsp + 3400]
                        mov              qword ptr [rsp + 3368], rax
                        lea              rdi, [rsp + 3328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 3328]
                        mov              r14, qword ptr [rsp + 3336]
                        mov              r15, qword ptr [rsp + 3344];         jmp   n268_call_builtin_icon_α
n267_scan_β:            mov              r11, 268;                            jmp   n268_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n268_call_builtin_icon_α:
                        mov              r11, 269
                        .section         .rodata
.Lrkfn815:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn815]
                        lea              rsi, [rsp + 3296]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3280], rax
                        mov              qword ptr [rsp + 3288], rdx
                        cmp              al, 104;                             je    n269_lit_charset_α
                                                                              jmp   n269_lit_charset_α
n268_call_builtin_icon_β:
                        mov              r11, 269;                            jmp   n269_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n269_lit_charset_α:     mov              r11, 270
                        mov              qword ptr [rsp + 3264], 2            # result
                        mov              dword ptr [rsp + 3268], -1
                        mov              rax, qword ptr [rip + .Lx816_0]
                        mov              qword ptr [rsp + 3272], rax;         jmp   n270_assign_α
.Lx816_0:               .quad            .Lx816_0_s
.Lx816_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n270_assign_α:          mov              r11, 271
                        mov              rax, qword ptr [rsp + 3264]
                        mov              rdx, qword ptr [rsp + 3272]
                        mov              qword ptr [rsp + 11552], rax
                        mov              qword ptr [rsp + 11560], rdx;        jmp   n271_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n271_lit_charset_α:     mov              r11, 272
                        mov              qword ptr [rsp + 3248], 2            # result
                        mov              dword ptr [rsp + 3252], -1
                        mov              rax, qword ptr [rip + .Lx818_0]
                        mov              qword ptr [rsp + 3256], rax;         jmp   n272_assign_α
.Lx818_0:               .quad            .Lx818_0_s
.Lx818_0_s:             .string          "AEIOUaeiou"
#-----------------------------------------------------------------------------------------------------------------------
n272_assign_α:          mov              r11, 273
                        mov              rax, qword ptr [rsp + 3248]
                        mov              rdx, qword ptr [rsp + 3256]
                        mov              qword ptr [rsp + 11584], rax
                        mov              qword ptr [rsp + 11592], rdx;        jmp   n273_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n273_keyword_icon_α:    mov              r11, 274
                        mov              rdi, qword ptr [rip + .Lx820_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n277_keyword_icon_α
                        mov              qword ptr [rsp + 3184], rax
                        mov              qword ptr [rsp + 3192], rdx;         jmp   n274_keyword_icon_α
n273_keyword_icon_β:    mov              r11, 274;                            jmp   n277_keyword_icon_α
.Lx820_0:               .quad            .Lx820_0_s
.Lx820_0_s:             .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n274_keyword_icon_α:    mov              r11, 275
                        mov              rdi, qword ptr [rip + .Lx821_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n277_keyword_icon_α
                        mov              qword ptr [rsp + 3216], rax
                        mov              qword ptr [rsp + 3224], rdx;         jmp   n275_binop_α
n274_keyword_icon_β:    mov              r11, 275;                            jmp   n277_keyword_icon_α
.Lx821_0:               .quad            .Lx821_0_s
.Lx821_0_s:             .string          "&ascii"
#-----------------------------------------------------------------------------------------------------------------------
n275_binop_α:           mov              r11, 276
                        mov              rdi, qword ptr [rsp + 3184]
                        mov              rsi, qword ptr [rsp + 3192]
                        mov              rdx, qword ptr [rsp + 3216]
                        mov              rcx, qword ptr [rsp + 3224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cdiff@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n277_keyword_icon_α
                        mov              qword ptr [rsp + 3168], rax
                        mov              qword ptr [rsp + 3176], rdx;         jmp   n276_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n276_assign_α:          mov              r11, 277
                        mov              rax, qword ptr [rsp + 3168]
                        mov              rdx, qword ptr [rsp + 3176]
                        mov              qword ptr [rsp + 11568], rax
                        mov              qword ptr [rsp + 11576], rdx;        jmp   n277_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n277_keyword_icon_α:    mov              r11, 278
                        mov              rdi, qword ptr [rip + .Lx824_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n313_lit_charset_α
                        mov              qword ptr [rsp + 3120], rax
                        mov              qword ptr [rsp + 3128], rdx;         jmp   n278_scan_enter_α
n277_keyword_icon_β:    mov              r11, 278;                            jmp   n313_lit_charset_α
.Lx824_0:               .quad            .Lx824_0_s
.Lx824_0_s:             .string          "&ascii"
#-----------------------------------------------------------------------------------------------------------------------
n278_scan_enter_α:      mov              r11, 279
                        mov              rdi, qword ptr [rsp + 3120]
                        mov              rsi, qword ptr [rsp + 3128]
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
n279_lit_string_α:      mov              r11, 280
                        mov              qword ptr [rsp + 2992], 2            # result
                        mov              dword ptr [rsp + 2996], 1
                        mov              rax, qword ptr [rip + .Lx827_0]
                        mov              qword ptr [rsp + 3000], rax;         jmp   n280_disjunction_α
.Lx827_0:               .quad            .Lx827_0_s
.Lx827_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n280_disjunction_α:     mov              r11, 281
                        mov              qword ptr [rsp + 3008], 0
                        mov              qword ptr [rsp + 3016], 0
                        mov              dword ptr [rsp + 3024], 0;           jmp   n285_lit_string_α
n280_disjunction_as:    mov              r11, 281
                        mov              eax, dword ptr [rsp + 3024]
                        cmp              eax, 0;                              jne   .Lx829_0
                        mov              rax, qword ptr [rsp + 3040]
                        mov              qword ptr [rsp + 3008], rax
                        mov              rax, qword ptr [rsp + 3048]
                        mov              qword ptr [rsp + 3016], rax;         jmp   n281_call_builtin_icon_α
.Lx829_0:               cmp              eax, 1;                              jne   .Lx829_1
                        mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 3008], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 3016], rax;         jmp   n281_call_builtin_icon_α
.Lx829_1:               cmp              eax, 2;                              jne   .Lx829_2
                        mov              rax, qword ptr [rsp + 3104]
                        mov              qword ptr [rsp + 3008], rax
                        mov              rax, qword ptr [rsp + 3112]
                        mov              qword ptr [rsp + 3016], rax;         jmp   n281_call_builtin_icon_α
.Lx829_2:                                                                     jmp   n281_call_builtin_icon_α
n280_disjunction_β:     mov              r11, 281
                        mov              eax, dword ptr [rsp + 3024]
                        cmp              eax, 0;                              je    n280_disjunction_af
                        cmp              eax, 1;                              je    n284_scan_upto_β
                                                                              jmp   n280_disjunction_af
n280_disjunction_af:    mov              r11, 281
                        add              dword ptr [rsp + 3024], 1
                        mov              eax, dword ptr [rsp + 3024]
                        cmp              eax, 1;                              je    n283_var_α
                        cmp              eax, 2;                              je    n282_lit_string_α
                                                                              jmp   n305_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n281_call_builtin_icon_α:
                        mov              r11, 282
                        mov              rax, qword ptr [rsp + 3008]
                        mov              qword ptr [rsp + 2960], rax
                        mov              rax, qword ptr [rsp + 3016]
                        mov              qword ptr [rsp + 2968], rax
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 2944], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 2952], rax
                        .section         .rodata
.Lrkfn831:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn831]
                        lea              rsi, [rsp + 2944]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2928], rax
                        mov              qword ptr [rsp + 2936], rdx
                        cmp              al, 104;                             je    n280_disjunction_β
                                                                              jmp   n280_disjunction_β
n281_call_builtin_icon_β:
                        mov              r11, 282;                            jmp   n280_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n282_lit_string_α:      mov              r11, 283
                        mov              qword ptr [rsp + 3104], 2            # result
                        mov              dword ptr [rsp + 3108], 1
                        mov              rax, qword ptr [rip + .Lx832_0]
                        mov              qword ptr [rsp + 3112], rax;         jmp   n280_disjunction_as
n282_lit_string_β:      mov              r11, 283;                            jmp   n280_disjunction_af
.Lx832_0:               .quad            .Lx832_0_s
.Lx832_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n283_var_α:             mov              r11, 284
                        mov              rax, qword ptr [rsp + 11552]
                        mov              qword ptr [rsp + 3088], rax
                        mov              rax, qword ptr [rsp + 11560]
                        mov              qword ptr [rsp + 3096], rax;         jmp   n284_scan_upto_α
n283_var_β:             mov              r11, 284;                            jmp   n280_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n284_scan_upto_α:       mov              r11, 285
                        mov              qword ptr [rsp + 3072], r14
.Lx836_0:               mov              rax, qword ptr [rsp + 3072]
                        cmp              rax, r15;                            jge   n280_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rsp + 3096]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx836_1
                        mov              qword ptr [rsp + 3056], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 3064], rax;         jmp   n280_disjunction_as
.Lx836_1:               inc              qword ptr [rsp + 3072];              jmp   .Lx836_0
n284_scan_upto_β:       mov              r11, 285
                        inc              qword ptr [rsp + 3072];              jmp   .Lx836_0
#-----------------------------------------------------------------------------------------------------------------------
n285_lit_string_α:      mov              r11, 286
                        mov              qword ptr [rsp + 3040], 2            # result
                        mov              dword ptr [rsp + 3044], 11
                        mov              rax, qword ptr [rip + .Lx837_0]
                        mov              qword ptr [rsp + 3048], rax;         jmp   n280_disjunction_as
n285_lit_string_β:      mov              r11, 286;                            jmp   n280_disjunction_af
.Lx837_0:               .quad            .Lx837_0_s
.Lx837_0_s:             .string          "ascii?skips"
#-----------------------------------------------------------------------------------------------------------------------
n286_lit_string_α:      mov              r11, 287
                        mov              qword ptr [rsp + 3568], 2            # result
                        mov              dword ptr [rsp + 3572], 4
                        mov              rax, qword ptr [rip + .Lx838_0]
                        mov              qword ptr [rsp + 3576], rax;         jmp   n264_disjunction_as
n286_lit_string_β:      mov              r11, 287;                            jmp   n264_disjunction_af
.Lx838_0:               .quad            .Lx838_0_s
.Lx838_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n287_lit_string_α:      mov              r11, 288
                        mov              qword ptr [rsp + 3552], 2            # result
                        mov              dword ptr [rsp + 3556], 2
                        mov              rax, qword ptr [rip + .Lx839_0]
                        mov              qword ptr [rsp + 3560], rax;         jmp   n288_scan_match_α
n287_lit_string_β:      mov              r11, 288;                            jmp   n264_disjunction_af
.Lx839_0:               .quad            .Lx839_0_s
.Lx839_0_s:             .string          "23"
#-----------------------------------------------------------------------------------------------------------------------
n288_scan_match_α:      mov              r11, 289
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 2;                              jl    n264_disjunction_af
                        mov              rdi, qword ptr [rip + .Lx841_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 2
                        push             r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             memcmp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        test             eax, eax;                            jne   n264_disjunction_af
                        mov              qword ptr [rsp + 3520], 3
                        mov              rax, r14
                        add              rax, 3
                        mov              qword ptr [rsp + 3528], rax;         jmp   n289_scan_tab_α
.Lx841_0:               .quad            .Lx841_0_s
.Lx841_0_s:             .string          "23"
#-----------------------------------------------------------------------------------------------------------------------
n289_scan_tab_α:        mov              r11, 290
                        mov              rax, qword ptr [rsp + 3528]
                        cmp              rax, 1;                              jge   .Lx843_0
                        add              rax, r15
                        add              rax, 1
.Lx843_0:               cmp              rax, 1;                              jl    n264_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n264_disjunction_af
                        mov              qword ptr [rsp + 3504], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 3488], rax
                        mov              qword ptr [rsp + 3496], rdx;         jmp   n264_disjunction_as
n289_scan_tab_β:        mov              r11, 290
                        mov              r14, qword ptr [rsp + 3504];         jmp   n264_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n290_lit_string_α:      mov              r11, 291
                        mov              qword ptr [rsp + 3904], 2            # result
                        mov              dword ptr [rsp + 3908], 4
                        mov              rax, qword ptr [rip + .Lx844_0]
                        mov              qword ptr [rsp + 3912], rax;         jmp   n256_disjunction_as
n290_lit_string_β:      mov              r11, 291;                            jmp   n256_disjunction_af
.Lx844_0:               .quad            .Lx844_0_s
.Lx844_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n291_lit_string_α:      mov              r11, 292
                        mov              qword ptr [rsp + 3888], 2            # result
                        mov              dword ptr [rsp + 3892], 3
                        mov              rax, qword ptr [rip + .Lx845_0]
                        mov              qword ptr [rsp + 3896], rax;         jmp   n292_scan_match_α
n291_lit_string_β:      mov              r11, 292;                            jmp   n256_disjunction_af
.Lx845_0:               .quad            .Lx845_0_s
.Lx845_0_s:             .string          "123"
#-----------------------------------------------------------------------------------------------------------------------
n292_scan_match_α:      mov              r11, 293
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 3;                              jl    n256_disjunction_af
                        mov              rdi, qword ptr [rip + .Lx847_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 3
                        push             r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             memcmp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        test             eax, eax;                            jne   n256_disjunction_af
                        mov              qword ptr [rsp + 3856], 3
                        mov              rax, r14
                        add              rax, 4
                        mov              qword ptr [rsp + 3864], rax;         jmp   n293_scan_tab_α
.Lx847_0:               .quad            .Lx847_0_s
.Lx847_0_s:             .string          "123"
#-----------------------------------------------------------------------------------------------------------------------
n293_scan_tab_α:        mov              r11, 294
                        mov              rax, qword ptr [rsp + 3864]
                        cmp              rax, 1;                              jge   .Lx849_0
                        add              rax, r15
                        add              rax, 1
.Lx849_0:               cmp              rax, 1;                              jl    n256_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n256_disjunction_af
                        mov              qword ptr [rsp + 3840], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 3824], rax
                        mov              qword ptr [rsp + 3832], rdx;         jmp   n256_disjunction_as
n293_scan_tab_β:        mov              r11, 294
                        mov              r14, qword ptr [rsp + 3840];         jmp   n256_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n294_lit_string_α:      mov              r11, 295
                        mov              qword ptr [rsp + 4224], 2            # result
                        mov              dword ptr [rsp + 4228], 4
                        mov              rax, qword ptr [rip + .Lx850_0]
                        mov              qword ptr [rsp + 4232], rax;         jmp   n249_disjunction_as
n294_lit_string_β:      mov              r11, 295;                            jmp   n249_disjunction_af
.Lx850_0:               .quad            .Lx850_0_s
.Lx850_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n295_lit_string_α:      mov              r11, 296
                        mov              qword ptr [rsp + 4208], 2            # result
                        mov              dword ptr [rsp + 4212], 3
                        mov              rax, qword ptr [rip + .Lx851_0]
                        mov              qword ptr [rsp + 4216], rax;         jmp   n296_scan_match_α
n295_lit_string_β:      mov              r11, 296;                            jmp   n249_disjunction_af
.Lx851_0:               .quad            .Lx851_0_s
.Lx851_0_s:             .string          "123"
#-----------------------------------------------------------------------------------------------------------------------
n296_scan_match_α:      mov              r11, 297
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 3;                              jl    n249_disjunction_af
                        mov              rdi, qword ptr [rip + .Lx853_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 3
                        push             r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             memcmp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        test             eax, eax;                            jne   n249_disjunction_af
                        mov              qword ptr [rsp + 4176], 3
                        mov              rax, r14
                        add              rax, 4
                        mov              qword ptr [rsp + 4184], rax;         jmp   n297_scan_tab_α
.Lx853_0:               .quad            .Lx853_0_s
.Lx853_0_s:             .string          "123"
#-----------------------------------------------------------------------------------------------------------------------
n297_scan_tab_α:        mov              r11, 298
                        mov              rax, qword ptr [rsp + 4184]
                        cmp              rax, 1;                              jge   .Lx855_0
                        add              rax, r15
                        add              rax, 1
.Lx855_0:               cmp              rax, 1;                              jl    n249_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n249_disjunction_af
                        mov              qword ptr [rsp + 4160], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 4144], rax
                        mov              qword ptr [rsp + 4152], rdx;         jmp   n249_disjunction_as
n297_scan_tab_β:        mov              r11, 298
                        mov              r14, qword ptr [rsp + 4160];         jmp   n249_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n298_lit_string_α:      mov              r11, 299
                        mov              qword ptr [rsp + 4496], 2            # result
                        mov              dword ptr [rsp + 4500], 4
                        mov              rax, qword ptr [rip + .Lx856_0]
                        mov              qword ptr [rsp + 4504], rax;         jmp   n242_disjunction_as
n298_lit_string_β:      mov              r11, 299;                            jmp   n242_disjunction_af
.Lx856_0:               .quad            .Lx856_0_s
.Lx856_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_integer_α:     mov              r11, 300
                        mov              qword ptr [rsp + 4480], 3            # result
                        mov              rax, qword ptr [rip + .Lx857_0]
                        mov              qword ptr [rsp + 4488], rax;         jmp   n300_scan_pos_α
n299_lit_integer_β:     mov              r11, 300;                            jmp   n242_disjunction_af
.Lx857_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n300_scan_pos_α:        mov              r11, 301
                        mov              rax, 3
                        cmp              rax, 1;                              jge   .Lx859_0
                        add              rax, r15
                        add              rax, 1
.Lx859_0:               cmp              rax, 1;                              jl    n242_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n242_disjunction_af
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n242_disjunction_af
                        mov              qword ptr [rsp + 4464], 3
                        mov              qword ptr [rsp + 4472], rax;         jmp   n242_disjunction_as
n300_scan_pos_β:        mov              r11, 301;                            jmp   n242_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n301_scan_α:            mov              r11, 302
                        lea              rdi, [rsp + 4304]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 4304]
                        mov              r14, qword ptr [rsp + 4312]
                        mov              r15, qword ptr [rsp + 4320];         jmp   n246_call_builtin_icon_α
n301_scan_β:            mov              r11, 302;                            jmp   n246_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n302_scan_α:            mov              r11, 303
                        lea              rdi, [rsp + 4000]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 4000]
                        mov              r14, qword ptr [rsp + 4008]
                        mov              r15, qword ptr [rsp + 4016];         jmp   n252_lit_string_α
n302_scan_β:            mov              r11, 303;                            jmp   n252_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n303_scan_α:            mov              r11, 304
                        lea              rdi, [rsp + 3664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 3664]
                        mov              r14, qword ptr [rsp + 3672]
                        mov              r15, qword ptr [rsp + 3680];         jmp   n260_lit_string_α
n303_scan_β:            mov              r11, 304;                            jmp   n260_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n304_scan_α:            mov              r11, 305
                        lea              rdi, [rsp + 3328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 3328]
                        mov              r14, qword ptr [rsp + 3336]
                        mov              r15, qword ptr [rsp + 3344];         jmp   n268_call_builtin_icon_α
n304_scan_β:            mov              r11, 305;                            jmp   n268_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_string_α:      mov              r11, 306
                        mov              qword ptr [rsp + 2800], 2            # result
                        mov              dword ptr [rsp + 2804], 1
                        mov              rax, qword ptr [rip + .Lx868_0]
                        mov              qword ptr [rsp + 2808], rax;         jmp   n306_disjunction_α
.Lx868_0:               .quad            .Lx868_0_s
.Lx868_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n306_disjunction_α:     mov              r11, 307
                        mov              qword ptr [rsp + 2816], 0
                        mov              qword ptr [rsp + 2824], 0
                        mov              dword ptr [rsp + 2832], 0;           jmp   n311_lit_string_α
n306_disjunction_as:    mov              r11, 307
                        mov              eax, dword ptr [rsp + 2832]
                        cmp              eax, 0;                              jne   .Lx870_0
                        mov              rax, qword ptr [rsp + 2848]
                        mov              qword ptr [rsp + 2816], rax
                        mov              rax, qword ptr [rsp + 2856]
                        mov              qword ptr [rsp + 2824], rax;         jmp   n307_call_builtin_icon_α
.Lx870_0:               cmp              eax, 1;                              jne   .Lx870_1
                        mov              rax, qword ptr [rsp + 2864]
                        mov              qword ptr [rsp + 2816], rax
                        mov              rax, qword ptr [rsp + 2872]
                        mov              qword ptr [rsp + 2824], rax;         jmp   n307_call_builtin_icon_α
.Lx870_1:               cmp              eax, 2;                              jne   .Lx870_2
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 2816], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 2824], rax;         jmp   n307_call_builtin_icon_α
.Lx870_2:                                                                     jmp   n307_call_builtin_icon_α
n306_disjunction_β:     mov              r11, 307
                        mov              eax, dword ptr [rsp + 2832]
                        cmp              eax, 0;                              je    n306_disjunction_af
                        cmp              eax, 1;                              je    n310_scan_upto_β
                                                                              jmp   n306_disjunction_af
n306_disjunction_af:    mov              r11, 307
                        add              dword ptr [rsp + 2832], 1
                        mov              eax, dword ptr [rsp + 2832]
                        cmp              eax, 1;                              je    n309_var_α
                        cmp              eax, 2;                              je    n308_lit_string_α
                                                                              jmp   n312_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n307_call_builtin_icon_α:
                        mov              r11, 308
                        mov              rax, qword ptr [rsp + 2816]
                        mov              qword ptr [rsp + 2768], rax
                        mov              rax, qword ptr [rsp + 2824]
                        mov              qword ptr [rsp + 2776], rax
                        mov              rax, qword ptr [rsp + 2800]
                        mov              qword ptr [rsp + 2752], rax
                        mov              rax, qword ptr [rsp + 2808]
                        mov              qword ptr [rsp + 2760], rax
                        .section         .rodata
.Lrkfn872:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn872]
                        lea              rsi, [rsp + 2752]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2736], rax
                        mov              qword ptr [rsp + 2744], rdx
                        cmp              al, 104;                             je    n306_disjunction_β
                                                                              jmp   n306_disjunction_β
n307_call_builtin_icon_β:
                        mov              r11, 308;                            jmp   n306_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_string_α:      mov              r11, 309
                        mov              qword ptr [rsp + 2912], 2            # result
                        mov              dword ptr [rsp + 2916], 1
                        mov              rax, qword ptr [rip + .Lx873_0]
                        mov              qword ptr [rsp + 2920], rax;         jmp   n306_disjunction_as
n308_lit_string_β:      mov              r11, 309;                            jmp   n306_disjunction_af
.Lx873_0:               .quad            .Lx873_0_s
.Lx873_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n309_var_α:             mov              r11, 310
                        mov              rax, qword ptr [rsp + 11584]
                        mov              qword ptr [rsp + 2896], rax
                        mov              rax, qword ptr [rsp + 11592]
                        mov              qword ptr [rsp + 2904], rax;         jmp   n310_scan_upto_α
n309_var_β:             mov              r11, 310;                            jmp   n306_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n310_scan_upto_α:       mov              r11, 311
                        mov              qword ptr [rsp + 2880], r14
.Lx877_0:               mov              rax, qword ptr [rsp + 2880]
                        cmp              rax, r15;                            jge   n306_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rsp + 2904]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx877_1
                        mov              qword ptr [rsp + 2864], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 2872], rax;         jmp   n306_disjunction_as
.Lx877_1:               inc              qword ptr [rsp + 2880];              jmp   .Lx877_0
n310_scan_upto_β:       mov              r11, 311
                        inc              qword ptr [rsp + 2880];              jmp   .Lx877_0
#-----------------------------------------------------------------------------------------------------------------------
n311_lit_string_α:      mov              r11, 312
                        mov              qword ptr [rsp + 2848], 2            # result
                        mov              dword ptr [rsp + 2852], 11
                        mov              rax, qword ptr [rip + .Lx878_0]
                        mov              qword ptr [rsp + 2856], rax;         jmp   n306_disjunction_as
n311_lit_string_β:      mov              r11, 312;                            jmp   n306_disjunction_af
.Lx878_0:               .quad            .Lx878_0_s
.Lx878_0_s:             .string          "ascii?vowls"
#-----------------------------------------------------------------------------------------------------------------------
n312_scan_α:            mov              r11, 313
                        lea              rdi, [rsp + 2688]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 2688]
                        mov              r14, qword ptr [rsp + 2696]
                        mov              r15, qword ptr [rsp + 2704];         jmp   n313_lit_charset_α
n312_scan_β:            mov              r11, 313;                            jmp   n313_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n313_lit_charset_α:     mov              r11, 314
                        mov              qword ptr [rsp + 2656], 2            # result
                        mov              dword ptr [rsp + 2660], -1
                        mov              rax, qword ptr [rip + .Lx881_0]
                        mov              qword ptr [rsp + 2664], rax;         jmp   n314_scan_enter_α
.Lx881_0:               .quad            .Lx881_0_s
.Lx881_0_s:             .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n314_scan_enter_α:      mov              r11, 315
                        mov              rdi, qword ptr [rsp + 2656]
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
                        mov              r14, 0;                              jmp   n315_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n315_lit_string_α:      mov              r11, 316
                        mov              qword ptr [rsp + 2528], 2            # result
                        mov              dword ptr [rsp + 2532], 1
                        mov              rax, qword ptr [rip + .Lx884_0]
                        mov              qword ptr [rsp + 2536], rax;         jmp   n316_disjunction_α
.Lx884_0:               .quad            .Lx884_0_s
.Lx884_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n316_disjunction_α:     mov              r11, 317
                        mov              qword ptr [rsp + 2544], 0
                        mov              qword ptr [rsp + 2552], 0
                        mov              dword ptr [rsp + 2560], 0;           jmp   n321_lit_string_α
n316_disjunction_as:    mov              r11, 317
                        mov              eax, dword ptr [rsp + 2560]
                        cmp              eax, 0;                              jne   .Lx886_0
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 2544], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 2552], rax;         jmp   n317_call_builtin_icon_α
.Lx886_0:               cmp              eax, 1;                              jne   .Lx886_1
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 2544], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 2552], rax;         jmp   n317_call_builtin_icon_α
.Lx886_1:               cmp              eax, 2;                              jne   .Lx886_2
                        mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 2544], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 2552], rax;         jmp   n317_call_builtin_icon_α
.Lx886_2:                                                                     jmp   n317_call_builtin_icon_α
n316_disjunction_β:     mov              r11, 317
                        mov              eax, dword ptr [rsp + 2560]
                        cmp              eax, 0;                              je    n316_disjunction_af
                        cmp              eax, 1;                              je    n320_scan_upto_β
                                                                              jmp   n316_disjunction_af
n316_disjunction_af:    mov              r11, 317
                        add              dword ptr [rsp + 2560], 1
                        mov              eax, dword ptr [rsp + 2560]
                        cmp              eax, 1;                              je    n319_var_α
                        cmp              eax, 2;                              je    n318_lit_string_α
                                                                              jmp   n322_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n317_call_builtin_icon_α:
                        mov              r11, 318
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 2504], rax
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 2480], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 2488], rax
                        .section         .rodata
.Lrkfn888:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn888]
                        lea              rsi, [rsp + 2480]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx
                        cmp              al, 104;                             je    n316_disjunction_β
                                                                              jmp   n316_disjunction_β
n317_call_builtin_icon_β:
                        mov              r11, 318;                            jmp   n316_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n318_lit_string_α:      mov              r11, 319
                        mov              qword ptr [rsp + 2640], 2            # result
                        mov              dword ptr [rsp + 2644], 1
                        mov              rax, qword ptr [rip + .Lx889_0]
                        mov              qword ptr [rsp + 2648], rax;         jmp   n316_disjunction_as
n318_lit_string_β:      mov              r11, 319;                            jmp   n316_disjunction_af
.Lx889_0:               .quad            .Lx889_0_s
.Lx889_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n319_var_α:             mov              r11, 320
                        mov              rax, qword ptr [rsp + 11552]
                        mov              qword ptr [rsp + 2624], rax
                        mov              rax, qword ptr [rsp + 11560]
                        mov              qword ptr [rsp + 2632], rax;         jmp   n320_scan_upto_α
n319_var_β:             mov              r11, 320;                            jmp   n316_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n320_scan_upto_α:       mov              r11, 321
                        mov              qword ptr [rsp + 2608], r14
.Lx893_0:               mov              rax, qword ptr [rsp + 2608]
                        cmp              rax, r15;                            jge   n316_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rsp + 2632]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx893_1
                        mov              qword ptr [rsp + 2592], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 2600], rax;         jmp   n316_disjunction_as
.Lx893_1:               inc              qword ptr [rsp + 2608];              jmp   .Lx893_0
n320_scan_upto_β:       mov              r11, 321
                        inc              qword ptr [rsp + 2608];              jmp   .Lx893_0
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_string_α:      mov              r11, 322
                        mov              qword ptr [rsp + 2576], 2            # result
                        mov              dword ptr [rsp + 2580], 11
                        mov              rax, qword ptr [rip + .Lx894_0]
                        mov              qword ptr [rsp + 2584], rax;         jmp   n316_disjunction_as
n321_lit_string_β:      mov              r11, 322;                            jmp   n316_disjunction_af
.Lx894_0:               .quad            .Lx894_0_s
.Lx894_0_s:             .string          "letts?skips"
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_string_α:      mov              r11, 323
                        mov              qword ptr [rsp + 2336], 2            # result
                        mov              dword ptr [rsp + 2340], 1
                        mov              rax, qword ptr [rip + .Lx895_0]
                        mov              qword ptr [rsp + 2344], rax;         jmp   n323_disjunction_α
.Lx895_0:               .quad            .Lx895_0_s
.Lx895_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n323_disjunction_α:     mov              r11, 324
                        mov              qword ptr [rsp + 2352], 0
                        mov              qword ptr [rsp + 2360], 0
                        mov              dword ptr [rsp + 2368], 0;           jmp   n328_lit_string_α
n323_disjunction_as:    mov              r11, 324
                        mov              eax, dword ptr [rsp + 2368]
                        cmp              eax, 0;                              jne   .Lx897_0
                        mov              rax, qword ptr [rsp + 2384]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2392]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n324_call_builtin_icon_α
.Lx897_0:               cmp              eax, 1;                              jne   .Lx897_1
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n324_call_builtin_icon_α
.Lx897_1:               cmp              eax, 2;                              jne   .Lx897_2
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n324_call_builtin_icon_α
.Lx897_2:                                                                     jmp   n324_call_builtin_icon_α
n323_disjunction_β:     mov              r11, 324
                        mov              eax, dword ptr [rsp + 2368]
                        cmp              eax, 0;                              je    n323_disjunction_af
                        cmp              eax, 1;                              je    n327_scan_upto_β
                                                                              jmp   n323_disjunction_af
n323_disjunction_af:    mov              r11, 324
                        add              dword ptr [rsp + 2368], 1
                        mov              eax, dword ptr [rsp + 2368]
                        cmp              eax, 1;                              je    n326_var_α
                        cmp              eax, 2;                              je    n325_lit_string_α
                                                                              jmp   n329_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n324_call_builtin_icon_α:
                        mov              r11, 325
                        mov              rax, qword ptr [rsp + 2352]
                        mov              qword ptr [rsp + 2304], rax
                        mov              rax, qword ptr [rsp + 2360]
                        mov              qword ptr [rsp + 2312], rax
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 2296], rax
                        .section         .rodata
.Lrkfn899:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn899]
                        lea              rsi, [rsp + 2288]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx
                        cmp              al, 104;                             je    n323_disjunction_β
                                                                              jmp   n323_disjunction_β
n324_call_builtin_icon_β:
                        mov              r11, 325;                            jmp   n323_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n325_lit_string_α:      mov              r11, 326
                        mov              qword ptr [rsp + 2448], 2            # result
                        mov              dword ptr [rsp + 2452], 1
                        mov              rax, qword ptr [rip + .Lx900_0]
                        mov              qword ptr [rsp + 2456], rax;         jmp   n323_disjunction_as
n325_lit_string_β:      mov              r11, 326;                            jmp   n323_disjunction_af
.Lx900_0:               .quad            .Lx900_0_s
.Lx900_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n326_var_α:             mov              r11, 327
                        mov              rax, qword ptr [rsp + 11584]
                        mov              qword ptr [rsp + 2432], rax
                        mov              rax, qword ptr [rsp + 11592]
                        mov              qword ptr [rsp + 2440], rax;         jmp   n327_scan_upto_α
n326_var_β:             mov              r11, 327;                            jmp   n323_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n327_scan_upto_α:       mov              r11, 328
                        mov              qword ptr [rsp + 2416], r14
.Lx904_0:               mov              rax, qword ptr [rsp + 2416]
                        cmp              rax, r15;                            jge   n323_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rsp + 2440]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx904_1
                        mov              qword ptr [rsp + 2400], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 2408], rax;         jmp   n323_disjunction_as
.Lx904_1:               inc              qword ptr [rsp + 2416];              jmp   .Lx904_0
n327_scan_upto_β:       mov              r11, 328
                        inc              qword ptr [rsp + 2416];              jmp   .Lx904_0
#-----------------------------------------------------------------------------------------------------------------------
n328_lit_string_α:      mov              r11, 329
                        mov              qword ptr [rsp + 2384], 2            # result
                        mov              dword ptr [rsp + 2388], 11
                        mov              rax, qword ptr [rip + .Lx905_0]
                        mov              qword ptr [rsp + 2392], rax;         jmp   n323_disjunction_as
n328_lit_string_β:      mov              r11, 329;                            jmp   n323_disjunction_af
.Lx905_0:               .quad            .Lx905_0_s
.Lx905_0_s:             .string          "letts?vowls"
#-----------------------------------------------------------------------------------------------------------------------
n329_scan_α:            mov              r11, 330
                        lea              rdi, [rsp + 2224]
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
                        mov              r15, qword ptr [rsp + 2240];         jmp   n330_var_α
n329_scan_β:            mov              r11, 330;                            jmp   n330_var_α
#-----------------------------------------------------------------------------------------------------------------------
n330_var_α:             mov              r11, 331
                        mov              rax, qword ptr [rsp + 11584]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 11592]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n331_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n331_scan_enter_α:      mov              r11, 332
                        mov              rdi, qword ptr [rsp + 2192]
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
                        mov              r14, 0;                              jmp   n332_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n332_lit_string_α:      mov              r11, 333
                        mov              qword ptr [rsp + 2064], 2            # result
                        mov              dword ptr [rsp + 2068], 1
                        mov              rax, qword ptr [rip + .Lx912_0]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n333_disjunction_α
.Lx912_0:               .quad            .Lx912_0_s
.Lx912_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n333_disjunction_α:     mov              r11, 334
                        mov              qword ptr [rsp + 2080], 0
                        mov              qword ptr [rsp + 2088], 0
                        mov              dword ptr [rsp + 2096], 0;           jmp   n338_lit_string_α
n333_disjunction_as:    mov              r11, 334
                        mov              eax, dword ptr [rsp + 2096]
                        cmp              eax, 0;                              jne   .Lx914_0
                        mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n334_call_builtin_icon_α
.Lx914_0:               cmp              eax, 1;                              jne   .Lx914_1
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n334_call_builtin_icon_α
.Lx914_1:               cmp              eax, 2;                              jne   .Lx914_2
                        mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n334_call_builtin_icon_α
.Lx914_2:                                                                     jmp   n334_call_builtin_icon_α
n333_disjunction_β:     mov              r11, 334
                        mov              eax, dword ptr [rsp + 2096]
                        cmp              eax, 0;                              je    n333_disjunction_af
                        cmp              eax, 1;                              je    n337_scan_upto_β
                                                                              jmp   n333_disjunction_af
n333_disjunction_af:    mov              r11, 334
                        add              dword ptr [rsp + 2096], 1
                        mov              eax, dword ptr [rsp + 2096]
                        cmp              eax, 1;                              je    n336_var_α
                        cmp              eax, 2;                              je    n335_lit_string_α
                                                                              jmp   n357_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n334_call_builtin_icon_α:
                        mov              r11, 335
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 2040], rax
                        mov              rax, qword ptr [rsp + 2064]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 2024], rax
                        .section         .rodata
.Lrkfn916:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn916]
                        lea              rsi, [rsp + 2016]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx
                        cmp              al, 104;                             je    n333_disjunction_β
                                                                              jmp   n333_disjunction_β
n334_call_builtin_icon_β:
                        mov              r11, 335;                            jmp   n333_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n335_lit_string_α:      mov              r11, 336
                        mov              qword ptr [rsp + 2176], 2            # result
                        mov              dword ptr [rsp + 2180], 1
                        mov              rax, qword ptr [rip + .Lx917_0]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n333_disjunction_as
n335_lit_string_β:      mov              r11, 336;                            jmp   n333_disjunction_af
.Lx917_0:               .quad            .Lx917_0_s
.Lx917_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n336_var_α:             mov              r11, 337
                        mov              rax, qword ptr [rsp + 11552]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 11560]
                        mov              qword ptr [rsp + 2168], rax;         jmp   n337_scan_upto_α
n336_var_β:             mov              r11, 337;                            jmp   n333_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n337_scan_upto_α:       mov              r11, 338
                        mov              qword ptr [rsp + 2144], r14
.Lx921_0:               mov              rax, qword ptr [rsp + 2144]
                        cmp              rax, r15;                            jge   n333_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rsp + 2168]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx921_1
                        mov              qword ptr [rsp + 2128], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 2136], rax;         jmp   n333_disjunction_as
.Lx921_1:               inc              qword ptr [rsp + 2144];              jmp   .Lx921_0
n337_scan_upto_β:       mov              r11, 338
                        inc              qword ptr [rsp + 2144];              jmp   .Lx921_0
#-----------------------------------------------------------------------------------------------------------------------
n338_lit_string_α:      mov              r11, 339
                        mov              qword ptr [rsp + 2112], 2            # result
                        mov              dword ptr [rsp + 2116], 11
                        mov              rax, qword ptr [rip + .Lx922_0]
                        mov              qword ptr [rsp + 2120], rax;         jmp   n333_disjunction_as
n338_lit_string_β:      mov              r11, 339;                            jmp   n333_disjunction_af
.Lx922_0:               .quad            .Lx922_0_s
.Lx922_0_s:             .string          "vowls?skips"
#-----------------------------------------------------------------------------------------------------------------------
n339_var_α:             mov              r11, 340
                        mov              rax, qword ptr [rsp + 11552]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 11560]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n340_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n340_scan_enter_α:      mov              r11, 341
                        mov              rdi, qword ptr [rsp + 1520]
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
                        mov              r14, 0;                              jmp   n341_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n341_lit_string_α:      mov              r11, 342
                        mov              qword ptr [rsp + 1392], 2            # result
                        mov              dword ptr [rsp + 1396], 1
                        mov              rax, qword ptr [rip + .Lx927_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n342_disjunction_α
.Lx927_0:               .quad            .Lx927_0_s
.Lx927_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n342_disjunction_α:     mov              r11, 343
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              dword ptr [rsp + 1424], 0;           jmp   n347_lit_string_α
n342_disjunction_as:    mov              r11, 343
                        mov              eax, dword ptr [rsp + 1424]
                        cmp              eax, 0;                              jne   .Lx929_0
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n343_call_builtin_icon_α
.Lx929_0:               cmp              eax, 1;                              jne   .Lx929_1
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n343_call_builtin_icon_α
.Lx929_1:               cmp              eax, 2;                              jne   .Lx929_2
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n343_call_builtin_icon_α
.Lx929_2:                                                                     jmp   n343_call_builtin_icon_α
n342_disjunction_β:     mov              r11, 343
                        mov              eax, dword ptr [rsp + 1424]
                        cmp              eax, 0;                              je    n342_disjunction_af
                        cmp              eax, 1;                              je    n346_scan_upto_β
                                                                              jmp   n342_disjunction_af
n342_disjunction_af:    mov              r11, 343
                        add              dword ptr [rsp + 1424], 1
                        mov              eax, dword ptr [rsp + 1424]
                        cmp              eax, 1;                              je    n345_var_α
                        cmp              eax, 2;                              je    n344_lit_string_α
                                                                              jmp   n364_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n343_call_builtin_icon_α:
                        mov              r11, 344
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1368], rax
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1352], rax
                        .section         .rodata
.Lrkfn931:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn931]
                        lea              rsi, [rsp + 1344]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx
                        cmp              al, 104;                             je    n342_disjunction_β
                                                                              jmp   n342_disjunction_β
n343_call_builtin_icon_β:
                        mov              r11, 344;                            jmp   n342_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n344_lit_string_α:      mov              r11, 345
                        mov              qword ptr [rsp + 1504], 2            # result
                        mov              dword ptr [rsp + 1508], 1
                        mov              rax, qword ptr [rip + .Lx932_0]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n342_disjunction_as
n344_lit_string_β:      mov              r11, 345;                            jmp   n342_disjunction_af
.Lx932_0:               .quad            .Lx932_0_s
.Lx932_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n345_var_α:             mov              r11, 346
                        mov              rax, qword ptr [rsp + 11584]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 11592]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n346_scan_upto_α
n345_var_β:             mov              r11, 346;                            jmp   n342_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n346_scan_upto_α:       mov              r11, 347
                        mov              qword ptr [rsp + 1472], r14
.Lx936_0:               mov              rax, qword ptr [rsp + 1472]
                        cmp              rax, r15;                            jge   n342_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rsp + 1496]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx936_1
                        mov              qword ptr [rsp + 1456], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 1464], rax;         jmp   n342_disjunction_as
.Lx936_1:               inc              qword ptr [rsp + 1472];              jmp   .Lx936_0
n346_scan_upto_β:       mov              r11, 347
                        inc              qword ptr [rsp + 1472];              jmp   .Lx936_0
#-----------------------------------------------------------------------------------------------------------------------
n347_lit_string_α:      mov              r11, 348
                        mov              qword ptr [rsp + 1440], 2            # result
                        mov              dword ptr [rsp + 1444], 11
                        mov              rax, qword ptr [rip + .Lx937_0]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n342_disjunction_as
n347_lit_string_β:      mov              r11, 348;                            jmp   n342_disjunction_af
.Lx937_0:               .quad            .Lx937_0_s
.Lx937_0_s:             .string          "skips?vowls"
#-----------------------------------------------------------------------------------------------------------------------
n348_var_α:             mov              r11, 349
                        mov              rax, qword ptr [rsp + 11568]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 11576]
                        mov              qword ptr [rsp + 472], rax;          jmp   n349_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n349_scan_enter_α:      mov              r11, 350
                        mov              rdi, qword ptr [rsp + 464]
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
                        mov              r14, 0;                              jmp   n350_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n350_lit_string_α:      mov              r11, 351
                        mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 1
                        mov              rax, qword ptr [rip + .Lx942_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n351_disjunction_α
.Lx942_0:               .quad            .Lx942_0_s
.Lx942_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n351_disjunction_α:     mov              r11, 352
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              dword ptr [rsp + 352], 0;            jmp   n356_lit_string_α
n351_disjunction_as:    mov              r11, 352
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 0;                              jne   .Lx944_0
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax;          jmp   n352_call_builtin_icon_α
.Lx944_0:               cmp              eax, 1;                              jne   .Lx944_1
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 344], rax;          jmp   n352_call_builtin_icon_α
.Lx944_1:               cmp              eax, 2;                              jne   .Lx944_2
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 344], rax;          jmp   n352_call_builtin_icon_α
.Lx944_2:                                                                     jmp   n352_call_builtin_icon_α
n351_disjunction_β:     mov              r11, 352
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 0;                              je    n351_disjunction_af
                        cmp              eax, 1;                              je    n355_scan_upto_β
                                                                              jmp   n351_disjunction_af
n351_disjunction_af:    mov              r11, 352
                        add              dword ptr [rsp + 352], 1
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 1;                              je    n354_keyword_icon_α
                        cmp              eax, 2;                              je    n353_lit_string_α
                                                                              jmp   n371_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n352_call_builtin_icon_α:
                        mov              r11, 353
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax
                        .section         .rodata
.Lrkfn946:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn946]
                        lea              rsi, [rsp + 272]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n351_disjunction_β
                                                                              jmp   n351_disjunction_β
n352_call_builtin_icon_β:
                        mov              r11, 353;                            jmp   n351_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n353_lit_string_α:      mov              r11, 354
                        mov              qword ptr [rsp + 448], 2             # result
                        mov              dword ptr [rsp + 452], 1
                        mov              rax, qword ptr [rip + .Lx947_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n351_disjunction_as
n353_lit_string_β:      mov              r11, 354;                            jmp   n351_disjunction_af
.Lx947_0:               .quad            .Lx947_0_s
.Lx947_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n354_keyword_icon_α:    mov              r11, 355
                        mov              rdi, qword ptr [rip + .Lx948_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n351_disjunction_af
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n355_scan_upto_α
n354_keyword_icon_β:    mov              r11, 355;                            jmp   n351_disjunction_af
.Lx948_0:               .quad            .Lx948_0_s
.Lx948_0_s:             .string          "&ascii"
#-----------------------------------------------------------------------------------------------------------------------
n355_scan_upto_α:       mov              r11, 356
                        mov              qword ptr [rsp + 400], r14
.Lx950_0:               mov              rax, qword ptr [rsp + 400]
                        cmp              rax, r15;                            jge   n351_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rsp + 424]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx950_1
                        mov              qword ptr [rsp + 384], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 392], rax;          jmp   n351_disjunction_as
.Lx950_1:               inc              qword ptr [rsp + 400];               jmp   .Lx950_0
n355_scan_upto_β:       mov              r11, 356
                        inc              qword ptr [rsp + 400];               jmp   .Lx950_0
#-----------------------------------------------------------------------------------------------------------------------
n356_lit_string_α:      mov              r11, 357
                        mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], 11
                        mov              rax, qword ptr [rip + .Lx951_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n351_disjunction_as
n356_lit_string_β:      mov              r11, 357;                            jmp   n351_disjunction_af
.Lx951_0:               .quad            .Lx951_0_s
.Lx951_0_s:             .string          "upprs?ascii"
#-----------------------------------------------------------------------------------------------------------------------
n357_lit_string_α:      mov              r11, 358
                        mov              qword ptr [rsp + 1872], 2            # result
                        mov              dword ptr [rsp + 1876], 1
                        mov              rax, qword ptr [rip + .Lx952_0]
                        mov              qword ptr [rsp + 1880], rax;         jmp   n358_disjunction_α
.Lx952_0:               .quad            .Lx952_0_s
.Lx952_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n358_disjunction_α:     mov              r11, 359
                        mov              qword ptr [rsp + 1888], 0
                        mov              qword ptr [rsp + 1896], 0
                        mov              dword ptr [rsp + 1904], 0;           jmp   n363_lit_string_α
n358_disjunction_as:    mov              r11, 359
                        mov              eax, dword ptr [rsp + 1904]
                        cmp              eax, 0;                              jne   .Lx954_0
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n359_call_builtin_icon_α
.Lx954_0:               cmp              eax, 1;                              jne   .Lx954_1
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n359_call_builtin_icon_α
.Lx954_1:               cmp              eax, 2;                              jne   .Lx954_2
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n359_call_builtin_icon_α
.Lx954_2:                                                                     jmp   n359_call_builtin_icon_α
n358_disjunction_β:     mov              r11, 359
                        mov              eax, dword ptr [rsp + 1904]
                        cmp              eax, 0;                              je    n358_disjunction_af
                        cmp              eax, 1;                              je    n362_scan_upto_β
                                                                              jmp   n358_disjunction_af
n358_disjunction_af:    mov              r11, 359
                        add              dword ptr [rsp + 1904], 1
                        mov              eax, dword ptr [rsp + 1904]
                        cmp              eax, 1;                              je    n361_lit_charset_α
                        cmp              eax, 2;                              je    n360_lit_string_α
                                                                              jmp   n378_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n359_call_builtin_icon_α:
                        mov              r11, 360
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 1840], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 1848], rax
                        mov              rax, qword ptr [rsp + 1872]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 1880]
                        mov              qword ptr [rsp + 1832], rax
                        .section         .rodata
.Lrkfn956:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn956]
                        lea              rsi, [rsp + 1824]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx
                        cmp              al, 104;                             je    n358_disjunction_β
                                                                              jmp   n358_disjunction_β
n359_call_builtin_icon_β:
                        mov              r11, 360;                            jmp   n358_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n360_lit_string_α:      mov              r11, 361
                        mov              qword ptr [rsp + 1984], 2            # result
                        mov              dword ptr [rsp + 1988], 1
                        mov              rax, qword ptr [rip + .Lx957_0]
                        mov              qword ptr [rsp + 1992], rax;         jmp   n358_disjunction_as
n360_lit_string_β:      mov              r11, 361;                            jmp   n358_disjunction_af
.Lx957_0:               .quad            .Lx957_0_s
.Lx957_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n361_lit_charset_α:     mov              r11, 362
                        mov              qword ptr [rsp + 1968], 2            # result
                        mov              dword ptr [rsp + 1972], -1
                        mov              rax, qword ptr [rip + .Lx958_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n362_scan_upto_α
n361_lit_charset_β:     mov              r11, 362;                            jmp   n358_disjunction_af
.Lx958_0:               .quad            .Lx958_0_s
.Lx958_0_s:             .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n362_scan_upto_α:       mov              r11, 363
                        mov              qword ptr [rsp + 1952], r14
.Lx960_0:               mov              rax, qword ptr [rsp + 1952]
                        cmp              rax, r15;                            jge   n358_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx960_2]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx960_1
                        mov              qword ptr [rsp + 1936], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 1944], rax;         jmp   n358_disjunction_as
.Lx960_1:               inc              qword ptr [rsp + 1952];              jmp   .Lx960_0
n362_scan_upto_β:       mov              r11, 363
                        inc              qword ptr [rsp + 1952];              jmp   .Lx960_0
.Lx960_2:               .quad            .Lx960_2_s
.Lx960_2_s:             .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n363_lit_string_α:      mov              r11, 364
                        mov              qword ptr [rsp + 1920], 2            # result
                        mov              dword ptr [rsp + 1924], 11
                        mov              rax, qword ptr [rip + .Lx961_0]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n358_disjunction_as
n363_lit_string_β:      mov              r11, 364;                            jmp   n358_disjunction_af
.Lx961_0:               .quad            .Lx961_0_s
.Lx961_0_s:             .string          "vowls?letts"
#-----------------------------------------------------------------------------------------------------------------------
n364_lit_string_α:      mov              r11, 365
                        mov              qword ptr [rsp + 1200], 2            # result
                        mov              dword ptr [rsp + 1204], 1
                        mov              rax, qword ptr [rip + .Lx962_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n365_disjunction_α
.Lx962_0:               .quad            .Lx962_0_s
.Lx962_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n365_disjunction_α:     mov              r11, 366
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              dword ptr [rsp + 1232], 0;           jmp   n370_lit_string_α
n365_disjunction_as:    mov              r11, 366
                        mov              eax, dword ptr [rsp + 1232]
                        cmp              eax, 0;                              jne   .Lx964_0
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n366_call_builtin_icon_α
.Lx964_0:               cmp              eax, 1;                              jne   .Lx964_1
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n366_call_builtin_icon_α
.Lx964_1:               cmp              eax, 2;                              jne   .Lx964_2
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n366_call_builtin_icon_α
.Lx964_2:                                                                     jmp   n366_call_builtin_icon_α
n365_disjunction_β:     mov              r11, 366
                        mov              eax, dword ptr [rsp + 1232]
                        cmp              eax, 0;                              je    n365_disjunction_af
                        cmp              eax, 1;                              je    n369_scan_upto_β
                                                                              jmp   n365_disjunction_af
n365_disjunction_af:    mov              r11, 366
                        add              dword ptr [rsp + 1232], 1
                        mov              eax, dword ptr [rsp + 1232]
                        cmp              eax, 1;                              je    n368_lit_charset_α
                        cmp              eax, 2;                              je    n367_lit_string_α
                                                                              jmp   n385_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n366_call_builtin_icon_α:
                        mov              r11, 367
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1176], rax
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1160], rax
                        .section         .rodata
.Lrkfn966:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn966]
                        lea              rsi, [rsp + 1152]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        cmp              al, 104;                             je    n365_disjunction_β
                                                                              jmp   n365_disjunction_β
n366_call_builtin_icon_β:
                        mov              r11, 367;                            jmp   n365_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n367_lit_string_α:      mov              r11, 368
                        mov              qword ptr [rsp + 1312], 2            # result
                        mov              dword ptr [rsp + 1316], 1
                        mov              rax, qword ptr [rip + .Lx967_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n365_disjunction_as
n367_lit_string_β:      mov              r11, 368;                            jmp   n365_disjunction_af
.Lx967_0:               .quad            .Lx967_0_s
.Lx967_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_charset_α:     mov              r11, 369
                        mov              qword ptr [rsp + 1296], 2            # result
                        mov              dword ptr [rsp + 1300], -1
                        mov              rax, qword ptr [rip + .Lx968_0]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n369_scan_upto_α
n368_lit_charset_β:     mov              r11, 369;                            jmp   n365_disjunction_af
.Lx968_0:               .quad            .Lx968_0_s
.Lx968_0_s:             .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n369_scan_upto_α:       mov              r11, 370
                        mov              qword ptr [rsp + 1280], r14
.Lx970_0:               mov              rax, qword ptr [rsp + 1280]
                        cmp              rax, r15;                            jge   n365_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx970_2]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx970_1
                        mov              qword ptr [rsp + 1264], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 1272], rax;         jmp   n365_disjunction_as
.Lx970_1:               inc              qword ptr [rsp + 1280];              jmp   .Lx970_0
n369_scan_upto_β:       mov              r11, 370
                        inc              qword ptr [rsp + 1280];              jmp   .Lx970_0
.Lx970_2:               .quad            .Lx970_2_s
.Lx970_2_s:             .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n370_lit_string_α:      mov              r11, 371
                        mov              qword ptr [rsp + 1248], 2            # result
                        mov              dword ptr [rsp + 1252], 11
                        mov              rax, qword ptr [rip + .Lx971_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n365_disjunction_as
n370_lit_string_β:      mov              r11, 371;                            jmp   n365_disjunction_af
.Lx971_0:               .quad            .Lx971_0_s
.Lx971_0_s:             .string          "skips?letts"
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_string_α:      mov              r11, 372
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 1
                        mov              rax, qword ptr [rip + .Lx972_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n372_disjunction_α
.Lx972_0:               .quad            .Lx972_0_s
.Lx972_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n372_disjunction_α:     mov              r11, 373
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              dword ptr [rsp + 160], 0;            jmp   n377_lit_string_α
n372_disjunction_as:    mov              r11, 373
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 0;                              jne   .Lx974_0
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax;          jmp   n373_call_builtin_icon_α
.Lx974_0:               cmp              eax, 1;                              jne   .Lx974_1
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 152], rax;          jmp   n373_call_builtin_icon_α
.Lx974_1:               cmp              eax, 2;                              jne   .Lx974_2
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 152], rax;          jmp   n373_call_builtin_icon_α
.Lx974_2:                                                                     jmp   n373_call_builtin_icon_α
n372_disjunction_β:     mov              r11, 373
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 0;                              je    n372_disjunction_af
                        cmp              eax, 1;                              je    n376_scan_upto_β
                                                                              jmp   n372_disjunction_af
n372_disjunction_af:    mov              r11, 373
                        add              dword ptr [rsp + 160], 1
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 1;                              je    n375_var_α
                        cmp              eax, 2;                              je    n374_lit_string_α
                                                                              jmp   n392_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n373_call_builtin_icon_α:
                        mov              r11, 374
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 88], rax
                        .section         .rodata
.Lrkfn976:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn976]
                        lea              rsi, [rsp + 80]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    n372_disjunction_β
                                                                              jmp   n372_disjunction_β
n373_call_builtin_icon_β:
                        mov              r11, 374;                            jmp   n372_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n374_lit_string_α:      mov              r11, 375
                        mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 1
                        mov              rax, qword ptr [rip + .Lx977_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n372_disjunction_as
n374_lit_string_β:      mov              r11, 375;                            jmp   n372_disjunction_af
.Lx977_0:               .quad            .Lx977_0_s
.Lx977_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n375_var_α:             mov              r11, 376
                        mov              rax, qword ptr [rsp + 11552]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 11560]
                        mov              qword ptr [rsp + 232], rax;          jmp   n376_scan_upto_α
n375_var_β:             mov              r11, 376;                            jmp   n372_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n376_scan_upto_α:       mov              r11, 377
                        mov              qword ptr [rsp + 208], r14
.Lx981_0:               mov              rax, qword ptr [rsp + 208]
                        cmp              rax, r15;                            jge   n372_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rsp + 232]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx981_1
                        mov              qword ptr [rsp + 192], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 200], rax;          jmp   n372_disjunction_as
.Lx981_1:               inc              qword ptr [rsp + 208];               jmp   .Lx981_0
n376_scan_upto_β:       mov              r11, 377
                        inc              qword ptr [rsp + 208];               jmp   .Lx981_0
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_string_α:      mov              r11, 378
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 11
                        mov              rax, qword ptr [rip + .Lx982_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n372_disjunction_as
n377_lit_string_β:      mov              r11, 378;                            jmp   n372_disjunction_af
.Lx982_0:               .quad            .Lx982_0_s
.Lx982_0_s:             .string          "upprs?skips"
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_string_α:      mov              r11, 379
                        mov              qword ptr [rsp + 1664], 2            # result
                        mov              dword ptr [rsp + 1668], 1
                        mov              rax, qword ptr [rip + .Lx983_0]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n379_disjunction_α
.Lx983_0:               .quad            .Lx983_0_s
.Lx983_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n379_disjunction_α:     mov              r11, 380
                        mov              qword ptr [rsp + 1680], 0
                        mov              qword ptr [rsp + 1688], 0
                        mov              dword ptr [rsp + 1696], 0;           jmp   n384_lit_string_α
n379_disjunction_as:    mov              r11, 380
                        mov              eax, dword ptr [rsp + 1696]
                        cmp              eax, 0;                              jne   .Lx985_0
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n380_call_builtin_icon_α
.Lx985_0:               cmp              eax, 1;                              jne   .Lx985_1
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n380_call_builtin_icon_α
.Lx985_1:               cmp              eax, 2;                              jne   .Lx985_2
                        mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n380_call_builtin_icon_α
.Lx985_2:                                                                     jmp   n380_call_builtin_icon_α
n379_disjunction_β:     mov              r11, 380
                        mov              eax, dword ptr [rsp + 1696]
                        cmp              eax, 0;                              je    n379_disjunction_af
                        cmp              eax, 1;                              je    n383_scan_upto_β
                                                                              jmp   n379_disjunction_af
n379_disjunction_af:    mov              r11, 380
                        add              dword ptr [rsp + 1696], 1
                        mov              eax, dword ptr [rsp + 1696]
                        cmp              eax, 1;                              je    n382_keyword_icon_α
                        cmp              eax, 2;                              je    n381_lit_string_α
                                                                              jmp   n393_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n380_call_builtin_icon_α:
                        mov              r11, 381
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1640], rax
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1624], rax
                        .section         .rodata
.Lrkfn987:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn987]
                        lea              rsi, [rsp + 1616]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx
                        cmp              al, 104;                             je    n379_disjunction_β
                                                                              jmp   n379_disjunction_β
n380_call_builtin_icon_β:
                        mov              r11, 381;                            jmp   n379_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n381_lit_string_α:      mov              r11, 382
                        mov              qword ptr [rsp + 1792], 2            # result
                        mov              dword ptr [rsp + 1796], 1
                        mov              rax, qword ptr [rip + .Lx988_0]
                        mov              qword ptr [rsp + 1800], rax;         jmp   n379_disjunction_as
n381_lit_string_β:      mov              r11, 382;                            jmp   n379_disjunction_af
.Lx988_0:               .quad            .Lx988_0_s
.Lx988_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n382_keyword_icon_α:    mov              r11, 383
                        mov              rdi, qword ptr [rip + .Lx989_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n379_disjunction_af
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx;         jmp   n383_scan_upto_α
n382_keyword_icon_β:    mov              r11, 383;                            jmp   n379_disjunction_af
.Lx989_0:               .quad            .Lx989_0_s
.Lx989_0_s:             .string          "&ascii"
#-----------------------------------------------------------------------------------------------------------------------
n383_scan_upto_α:       mov              r11, 384
                        mov              qword ptr [rsp + 1744], r14
.Lx991_0:               mov              rax, qword ptr [rsp + 1744]
                        cmp              rax, r15;                            jge   n379_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rsp + 1768]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx991_1
                        mov              qword ptr [rsp + 1728], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 1736], rax;         jmp   n379_disjunction_as
.Lx991_1:               inc              qword ptr [rsp + 1744];              jmp   .Lx991_0
n383_scan_upto_β:       mov              r11, 384
                        inc              qword ptr [rsp + 1744];              jmp   .Lx991_0
#-----------------------------------------------------------------------------------------------------------------------
n384_lit_string_α:      mov              r11, 385
                        mov              qword ptr [rsp + 1712], 2            # result
                        mov              dword ptr [rsp + 1716], 11
                        mov              rax, qword ptr [rip + .Lx992_0]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n379_disjunction_as
n384_lit_string_β:      mov              r11, 385;                            jmp   n379_disjunction_af
.Lx992_0:               .quad            .Lx992_0_s
.Lx992_0_s:             .string          "vowls?ascii"
#-----------------------------------------------------------------------------------------------------------------------
n385_lit_string_α:      mov              r11, 386
                        mov              qword ptr [rsp + 992], 2             # result
                        mov              dword ptr [rsp + 996], 1
                        mov              rax, qword ptr [rip + .Lx993_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n386_disjunction_α
.Lx993_0:               .quad            .Lx993_0_s
.Lx993_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n386_disjunction_α:     mov              r11, 387
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              dword ptr [rsp + 1024], 0;           jmp   n391_lit_string_α
n386_disjunction_as:    mov              r11, 387
                        mov              eax, dword ptr [rsp + 1024]
                        cmp              eax, 0;                              jne   .Lx995_0
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n387_call_builtin_icon_α
.Lx995_0:               cmp              eax, 1;                              jne   .Lx995_1
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n387_call_builtin_icon_α
.Lx995_1:               cmp              eax, 2;                              jne   .Lx995_2
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n387_call_builtin_icon_α
.Lx995_2:                                                                     jmp   n387_call_builtin_icon_α
n386_disjunction_β:     mov              r11, 387
                        mov              eax, dword ptr [rsp + 1024]
                        cmp              eax, 0;                              je    n386_disjunction_af
                        cmp              eax, 1;                              je    n390_scan_upto_β
                                                                              jmp   n386_disjunction_af
n386_disjunction_af:    mov              r11, 387
                        add              dword ptr [rsp + 1024], 1
                        mov              eax, dword ptr [rsp + 1024]
                        cmp              eax, 1;                              je    n389_keyword_icon_α
                        cmp              eax, 2;                              je    n388_lit_string_α
                                                                              jmp   n394_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n387_call_builtin_icon_α:
                        mov              r11, 388
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 952], rax
                        .section         .rodata
.Lrkfn997:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn997]
                        lea              rsi, [rsp + 944]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              al, 104;                             je    n386_disjunction_β
                                                                              jmp   n386_disjunction_β
n387_call_builtin_icon_β:
                        mov              r11, 388;                            jmp   n386_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n388_lit_string_α:      mov              r11, 389
                        mov              qword ptr [rsp + 1120], 2            # result
                        mov              dword ptr [rsp + 1124], 1
                        mov              rax, qword ptr [rip + .Lx998_0]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n386_disjunction_as
n388_lit_string_β:      mov              r11, 389;                            jmp   n386_disjunction_af
.Lx998_0:               .quad            .Lx998_0_s
.Lx998_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n389_keyword_icon_α:    mov              r11, 390
                        mov              rdi, qword ptr [rip + .Lx999_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n386_disjunction_af
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n390_scan_upto_α
n389_keyword_icon_β:    mov              r11, 390;                            jmp   n386_disjunction_af
.Lx999_0:               .quad            .Lx999_0_s
.Lx999_0_s:             .string          "&ascii"
#-----------------------------------------------------------------------------------------------------------------------
n390_scan_upto_α:       mov              r11, 391
                        mov              qword ptr [rsp + 1072], r14
.Lx1001_0:              mov              rax, qword ptr [rsp + 1072]
                        cmp              rax, r15;                            jge   n386_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rsp + 1096]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx1001_1
                        mov              qword ptr [rsp + 1056], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 1064], rax;         jmp   n386_disjunction_as
.Lx1001_1:              inc              qword ptr [rsp + 1072];              jmp   .Lx1001_0
n390_scan_upto_β:       mov              r11, 391
                        inc              qword ptr [rsp + 1072];              jmp   .Lx1001_0
#-----------------------------------------------------------------------------------------------------------------------
n391_lit_string_α:      mov              r11, 392
                        mov              qword ptr [rsp + 1040], 2            # result
                        mov              dword ptr [rsp + 1044], 11
                        mov              rax, qword ptr [rip + .Lx1002_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n386_disjunction_as
n391_lit_string_β:      mov              r11, 392;                            jmp   n386_disjunction_af
.Lx1002_0:              .quad            .Lx1002_0_s
.Lx1002_0_s:            .string          "skips?ascii"
#-----------------------------------------------------------------------------------------------------------------------
n392_scan_α:            mov              r11, 393
                        lea              rdi, [rsp + 16]
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
n392_scan_β:            mov              r11, 393;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n393_scan_α:            mov              r11, 394
                        lea              rdi, [rsp + 1552]
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
                        mov              r15, qword ptr [rsp + 1568];         jmp   n339_var_α
n393_scan_β:            mov              r11, 394;                            jmp   n339_var_α
#-----------------------------------------------------------------------------------------------------------------------
n394_lit_string_α:      mov              r11, 395
                        mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 1
                        mov              rax, qword ptr [rip + .Lx1007_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n395_disjunction_α
.Lx1007_0:              .quad            .Lx1007_0_s
.Lx1007_0_s:            .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n395_disjunction_α:     mov              r11, 396
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              dword ptr [rsp + 832], 0;            jmp   n400_lit_string_α
n395_disjunction_as:    mov              r11, 396
                        mov              eax, dword ptr [rsp + 832]
                        cmp              eax, 0;                              jne   .Lx1009_0
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 824], rax;          jmp   n396_call_builtin_icon_α
.Lx1009_0:              cmp              eax, 1;                              jne   .Lx1009_1
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 824], rax;          jmp   n396_call_builtin_icon_α
.Lx1009_1:              cmp              eax, 2;                              jne   .Lx1009_2
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 824], rax;          jmp   n396_call_builtin_icon_α
.Lx1009_2:                                                                    jmp   n396_call_builtin_icon_α
n395_disjunction_β:     mov              r11, 396
                        mov              eax, dword ptr [rsp + 832]
                        cmp              eax, 0;                              je    n395_disjunction_af
                        cmp              eax, 1;                              je    n399_scan_upto_β
                                                                              jmp   n395_disjunction_af
n395_disjunction_af:    mov              r11, 396
                        add              dword ptr [rsp + 832], 1
                        mov              eax, dword ptr [rsp + 832]
                        cmp              eax, 1;                              je    n398_var_α
                        cmp              eax, 2;                              je    n397_lit_string_α
                                                                              jmp   n401_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n396_call_builtin_icon_α:
                        mov              r11, 397
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 776], rax
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 760], rax
                        .section         .rodata
.Lrkfn1011:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1011]
                        lea              rsi, [rsp + 752]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    n395_disjunction_β
                                                                              jmp   n395_disjunction_β
n396_call_builtin_icon_β:
                        mov              r11, 397;                            jmp   n395_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n397_lit_string_α:      mov              r11, 398
                        mov              qword ptr [rsp + 912], 2             # result
                        mov              dword ptr [rsp + 916], 1
                        mov              rax, qword ptr [rip + .Lx1012_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n395_disjunction_as
n397_lit_string_β:      mov              r11, 398;                            jmp   n395_disjunction_af
.Lx1012_0:              .quad            .Lx1012_0_s
.Lx1012_0_s:            .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n398_var_α:             mov              r11, 399
                        mov              rax, qword ptr [rsp + 11568]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 11576]
                        mov              qword ptr [rsp + 904], rax;          jmp   n399_scan_upto_α
n398_var_β:             mov              r11, 399;                            jmp   n395_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n399_scan_upto_α:       mov              r11, 400
                        mov              qword ptr [rsp + 880], r14
.Lx1016_0:              mov              rax, qword ptr [rsp + 880]
                        cmp              rax, r15;                            jge   n395_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rsp + 904]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx1016_1
                        mov              qword ptr [rsp + 864], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 872], rax;          jmp   n395_disjunction_as
.Lx1016_1:              inc              qword ptr [rsp + 880];               jmp   .Lx1016_0
n399_scan_upto_β:       mov              r11, 400
                        inc              qword ptr [rsp + 880];               jmp   .Lx1016_0
#-----------------------------------------------------------------------------------------------------------------------
n400_lit_string_α:      mov              r11, 401
                        mov              qword ptr [rsp + 848], 2             # result
                        mov              dword ptr [rsp + 852], 11
                        mov              rax, qword ptr [rip + .Lx1017_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n395_disjunction_as
n400_lit_string_β:      mov              r11, 401;                            jmp   n395_disjunction_af
.Lx1017_0:              .quad            .Lx1017_0_s
.Lx1017_0_s:            .string          "skips?upprs"
#-----------------------------------------------------------------------------------------------------------------------
n401_lit_string_α:      mov              r11, 402
                        mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], 1
                        mov              rax, qword ptr [rip + .Lx1018_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n402_disjunction_α
.Lx1018_0:              .quad            .Lx1018_0_s
.Lx1018_0_s:            .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n402_disjunction_α:     mov              r11, 403
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              dword ptr [rsp + 640], 0;            jmp   n407_lit_string_α
n402_disjunction_as:    mov              r11, 403
                        mov              eax, dword ptr [rsp + 640]
                        cmp              eax, 0;                              jne   .Lx1020_0
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax;          jmp   n403_call_builtin_icon_α
.Lx1020_0:              cmp              eax, 1;                              jne   .Lx1020_1
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 632], rax;          jmp   n403_call_builtin_icon_α
.Lx1020_1:              cmp              eax, 2;                              jne   .Lx1020_2
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 632], rax;          jmp   n403_call_builtin_icon_α
.Lx1020_2:                                                                    jmp   n403_call_builtin_icon_α
n402_disjunction_β:     mov              r11, 403
                        mov              eax, dword ptr [rsp + 640]
                        cmp              eax, 0;                              je    n402_disjunction_af
                        cmp              eax, 1;                              je    n406_scan_upto_β
                                                                              jmp   n402_disjunction_af
n402_disjunction_af:    mov              r11, 403
                        add              dword ptr [rsp + 640], 1
                        mov              eax, dword ptr [rsp + 640]
                        cmp              eax, 1;                              je    n405_var_α
                        cmp              eax, 2;                              je    n404_lit_string_α
                                                                              jmp   n408_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n403_call_builtin_icon_α:
                        mov              r11, 404
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 584], rax
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 568], rax
                        .section         .rodata
.Lrkfn1022:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1022]
                        lea              rsi, [rsp + 560]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    n402_disjunction_β
                                                                              jmp   n402_disjunction_β
n403_call_builtin_icon_β:
                        mov              r11, 404;                            jmp   n402_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n404_lit_string_α:      mov              r11, 405
                        mov              qword ptr [rsp + 720], 2             # result
                        mov              dword ptr [rsp + 724], 1
                        mov              rax, qword ptr [rip + .Lx1023_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n402_disjunction_as
n404_lit_string_β:      mov              r11, 405;                            jmp   n402_disjunction_af
.Lx1023_0:              .quad            .Lx1023_0_s
.Lx1023_0_s:            .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n405_var_α:             mov              r11, 406
                        mov              rax, qword ptr [rsp + 11552]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 11560]
                        mov              qword ptr [rsp + 712], rax;          jmp   n406_scan_upto_α
n405_var_β:             mov              r11, 406;                            jmp   n402_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n406_scan_upto_α:       mov              r11, 407
                        mov              qword ptr [rsp + 688], r14
.Lx1027_0:              mov              rax, qword ptr [rsp + 688]
                        cmp              rax, r15;                            jge   n402_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rsp + 712]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx1027_1
                        mov              qword ptr [rsp + 672], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 680], rax;          jmp   n402_disjunction_as
.Lx1027_1:              inc              qword ptr [rsp + 688];               jmp   .Lx1027_0
n406_scan_upto_β:       mov              r11, 407
                        inc              qword ptr [rsp + 688];               jmp   .Lx1027_0
#-----------------------------------------------------------------------------------------------------------------------
n407_lit_string_α:      mov              r11, 408
                        mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], 11
                        mov              rax, qword ptr [rip + .Lx1028_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n402_disjunction_as
n407_lit_string_β:      mov              r11, 408;                            jmp   n402_disjunction_af
.Lx1028_0:              .quad            .Lx1028_0_s
.Lx1028_0_s:            .string          "skips?skips"
#-----------------------------------------------------------------------------------------------------------------------
n408_scan_α:            mov              r11, 409
                        lea              rdi, [rsp + 496]
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
                        mov              r15, qword ptr [rsp + 512];          jmp   n348_var_α
n408_scan_β:            mov              r11, 409;                            jmp   n348_var_α
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
