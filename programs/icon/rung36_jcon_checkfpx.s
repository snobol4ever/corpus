                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__p1:
                        sub              rsp, 5760
                        mov              qword ptr [rsp + 5736], rcx
                        mov              qword ptr [rsp + 5744], rdx
                        mov              rdi, rsp
                        add              rdi, 5696
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
p1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:        mov              r11, 1
                        mov              qword ptr [rsp + 5376], 2            # result
                        mov              dword ptr [rsp + 5380], 33
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rsp + 5384], rax;         jmp   n1_disjunction_α
.Lx177_0:               .quad            .Lx177_0_s
.Lx177_0_s:             .string          "every 1 to 10 do write(?0) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1_disjunction_α:       mov              r11, 2
                        mov              qword ptr [rsp + 5392], 0
                        mov              qword ptr [rsp + 5400], 0
                        mov              dword ptr [rsp + 5408], 0;           jmp   n167_lit_integer_α
n1_disjunction_as:      mov              r11, 2
                        mov              eax, dword ptr [rsp + 5408]
                        cmp              eax, 0;                              jne   .Lx179_0
                                                                              jmp   n2_call_builtin_icon_α
.Lx179_0:               cmp              eax, 1;                              jne   .Lx179_1
                        mov              rax, qword ptr [rsp + 5680]
                        mov              qword ptr [rsp + 5392], rax
                        mov              rax, qword ptr [rsp + 5688]
                        mov              qword ptr [rsp + 5400], rax;         jmp   n2_call_builtin_icon_α
.Lx179_1:                                                                     jmp   n2_call_builtin_icon_α
n1_disjunction_β:       mov              r11, 2
                        mov              eax, dword ptr [rsp + 5408]
                        cmp              eax, 0;                              je    n1_disjunction_af
                                                                              jmp   n1_disjunction_af
n1_disjunction_af:      mov              r11, 2
                        add              dword ptr [rsp + 5408], 1
                        mov              eax, dword ptr [rsp + 5408]
                        cmp              eax, 1;                              je    n166_lit_string_α
                                                                              jmp   n3_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_icon_α: mov              r11, 3
                        mov              rax, qword ptr [rsp + 5392]
                        mov              qword ptr [rsp + 5344], rax
                        mov              rax, qword ptr [rsp + 5400]
                        mov              qword ptr [rsp + 5352], rax
                        mov              rax, qword ptr [rsp + 5376]
                        mov              qword ptr [rsp + 5328], rax
                        mov              rax, qword ptr [rsp + 5384]
                        mov              qword ptr [rsp + 5336], rax
                        .section         .rodata
.Lrkfn181:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn181]
                        lea              rsi, [rsp + 5328]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5312], rax
                        mov              qword ptr [rsp + 5320], rdx
                        cmp              al, 104;                             je    n1_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n3_lit_string_α
n2_call_builtin_icon_β: mov              r11, 3;                              jmp   n1_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              r11, 4
                        mov              qword ptr [rsp + 4880], 2            # result
                        mov              dword ptr [rsp + 4884], 61
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rsp + 4888], rax;         jmp   n4_disjunction_α
.Lx182_0:               .quad            .Lx182_0_s
.Lx182_0_s:             .string          "every i := 1 to 50 do write(real(repl(\"0\",i) || \"2.\")) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n4_disjunction_α:       mov              r11, 5
                        mov              qword ptr [rsp + 4896], 0
                        mov              qword ptr [rsp + 4904], 0
                        mov              dword ptr [rsp + 4912], 0;           jmp   n153_lit_integer_α
n4_disjunction_as:      mov              r11, 5
                        mov              eax, dword ptr [rsp + 4912]
                        cmp              eax, 0;                              jne   .Lx184_0
                        mov              rax, qword ptr [rsp + 4928]
                        mov              qword ptr [rsp + 4896], rax
                        mov              rax, qword ptr [rsp + 4936]
                        mov              qword ptr [rsp + 4904], rax;         jmp   n5_call_builtin_icon_α
.Lx184_0:               cmp              eax, 1;                              jne   .Lx184_1
                        mov              rax, qword ptr [rsp + 5296]
                        mov              qword ptr [rsp + 4896], rax
                        mov              rax, qword ptr [rsp + 5304]
                        mov              qword ptr [rsp + 4904], rax;         jmp   n5_call_builtin_icon_α
.Lx184_1:                                                                     jmp   n5_call_builtin_icon_α
n4_disjunction_β:       mov              r11, 5
                        mov              eax, dword ptr [rsp + 4912]
                        cmp              eax, 0;                              je    n4_disjunction_af
                                                                              jmp   n4_disjunction_af
n4_disjunction_af:      mov              r11, 5
                        add              dword ptr [rsp + 4912], 1
                        mov              eax, dword ptr [rsp + 4912]
                        cmp              eax, 1;                              je    n152_lit_string_α
                                                                              jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α: mov              r11, 6
                        mov              rax, qword ptr [rsp + 4896]
                        mov              qword ptr [rsp + 4848], rax
                        mov              rax, qword ptr [rsp + 4904]
                        mov              qword ptr [rsp + 4856], rax
                        mov              rax, qword ptr [rsp + 4880]
                        mov              qword ptr [rsp + 4832], rax
                        mov              rax, qword ptr [rsp + 4888]
                        mov              qword ptr [rsp + 4840], rax
                        .section         .rodata
.Lrkfn186:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn186]
                        lea              rsi, [rsp + 4832]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4816], rax
                        mov              qword ptr [rsp + 4824], rdx
                        cmp              al, 104;                             je    n4_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n6_lit_string_α
n5_call_builtin_icon_β: mov              r11, 6;                              jmp   n4_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              r11, 7
                        mov              qword ptr [rsp + 4368], 2            # result
                        mov              dword ptr [rsp + 4372], 63
                        mov              rax, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rsp + 4376], rax;         jmp   n7_disjunction_α
.Lx187_0:               .quad            .Lx187_0_s
.Lx187_0_s:             .string          "every i := 1 to 30 do write(integer(repl(\"0\",i) || \"2\")) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n7_disjunction_α:       mov              r11, 8
                        mov              qword ptr [rsp + 4384], 0
                        mov              qword ptr [rsp + 4392], 0
                        mov              dword ptr [rsp + 4400], 0;           jmp   n138_lit_integer_α
n7_disjunction_as:      mov              r11, 8
                        mov              eax, dword ptr [rsp + 4400]
                        cmp              eax, 0;                              jne   .Lx189_0
                        mov              rax, qword ptr [rsp + 4416]
                        mov              qword ptr [rsp + 4384], rax
                        mov              rax, qword ptr [rsp + 4424]
                        mov              qword ptr [rsp + 4392], rax;         jmp   n8_call_builtin_icon_α
.Lx189_0:               cmp              eax, 1;                              jne   .Lx189_1
                        mov              rax, qword ptr [rsp + 4800]
                        mov              qword ptr [rsp + 4384], rax
                        mov              rax, qword ptr [rsp + 4808]
                        mov              qword ptr [rsp + 4392], rax;         jmp   n8_call_builtin_icon_α
.Lx189_1:                                                                     jmp   n8_call_builtin_icon_α
n7_disjunction_β:       mov              r11, 8
                        mov              eax, dword ptr [rsp + 4400]
                        cmp              eax, 0;                              je    n7_disjunction_af
                                                                              jmp   n7_disjunction_af
n7_disjunction_af:      mov              r11, 8
                        add              dword ptr [rsp + 4400], 1
                        mov              eax, dword ptr [rsp + 4400]
                        cmp              eax, 1;                              je    n137_lit_string_α
                                                                              jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_icon_α: mov              r11, 9
                        mov              rax, qword ptr [rsp + 4384]
                        mov              qword ptr [rsp + 4336], rax
                        mov              rax, qword ptr [rsp + 4392]
                        mov              qword ptr [rsp + 4344], rax
                        mov              rax, qword ptr [rsp + 4368]
                        mov              qword ptr [rsp + 4320], rax
                        mov              rax, qword ptr [rsp + 4376]
                        mov              qword ptr [rsp + 4328], rax
                        .section         .rodata
.Lrkfn191:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn191]
                        lea              rsi, [rsp + 4320]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4304], rax
                        mov              qword ptr [rsp + 4312], rdx
                        cmp              al, 104;                             je    n7_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n9_lit_string_α
n8_call_builtin_icon_β: mov              r11, 9;                              jmp   n7_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              r11, 10
                        mov              qword ptr [rsp + 4144], 2            # result
                        mov              dword ptr [rsp + 4148], 20
                        mov              rax, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rsp + 4152], rax;         jmp   n10_disjunction_α
.Lx192_0:               .quad            .Lx192_0_s
.Lx192_0_s:             .string          "2.0 ~=== +2.0 ----> "
#-----------------------------------------------------------------------------------------------------------------------
n10_disjunction_α:      mov              r11, 11
                        mov              qword ptr [rsp + 4160], 0
                        mov              qword ptr [rsp + 4168], 0
                        mov              dword ptr [rsp + 4176], 0;           jmp   n132_lit_real_α
n10_disjunction_as:     mov              r11, 11
                        mov              eax, dword ptr [rsp + 4176]
                        cmp              eax, 0;                              jne   .Lx194_0
                        mov              rax, qword ptr [rsp + 4192]
                        mov              qword ptr [rsp + 4160], rax
                        mov              rax, qword ptr [rsp + 4200]
                        mov              qword ptr [rsp + 4168], rax;         jmp   n11_call_builtin_icon_α
.Lx194_0:               cmp              eax, 1;                              jne   .Lx194_1
                        mov              rax, qword ptr [rsp + 4288]
                        mov              qword ptr [rsp + 4160], rax
                        mov              rax, qword ptr [rsp + 4296]
                        mov              qword ptr [rsp + 4168], rax;         jmp   n11_call_builtin_icon_α
.Lx194_1:                                                                     jmp   n11_call_builtin_icon_α
n10_disjunction_β:      mov              r11, 11
                        mov              eax, dword ptr [rsp + 4176]
                        cmp              eax, 0;                              je    n10_disjunction_af
                                                                              jmp   n10_disjunction_af
n10_disjunction_af:     mov              r11, 11
                        add              dword ptr [rsp + 4176], 1
                        mov              eax, dword ptr [rsp + 4176]
                        cmp              eax, 1;                              je    n131_lit_string_α
                                                                              jmp   n12_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        mov              r11, 12
                        mov              rax, qword ptr [rsp + 4160]
                        mov              qword ptr [rsp + 4112], rax
                        mov              rax, qword ptr [rsp + 4168]
                        mov              qword ptr [rsp + 4120], rax
                        mov              rax, qword ptr [rsp + 4144]
                        mov              qword ptr [rsp + 4096], rax
                        mov              rax, qword ptr [rsp + 4152]
                        mov              qword ptr [rsp + 4104], rax
                        .section         .rodata
.Lrkfn196:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn196]
                        lea              rsi, [rsp + 4096]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4080], rax
                        mov              qword ptr [rsp + 4088], rdx
                        cmp              al, 104;                             je    n10_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n12_lit_string_α
n11_call_builtin_icon_β:
                        mov              r11, 12;                             jmp   n10_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:       mov              r11, 13
                        mov              qword ptr [rsp + 3904], 2            # result
                        mov              dword ptr [rsp + 3908], 15
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rsp + 3912], rax;         jmp   n13_disjunction_α
.Lx197_0:               .quad            .Lx197_0_s
.Lx197_0_s:             .string          "abs(3.0) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n13_disjunction_α:      mov              r11, 14
                        mov              qword ptr [rsp + 3920], 0
                        mov              qword ptr [rsp + 3928], 0
                        mov              dword ptr [rsp + 3936], 0;           jmp   n128_lit_real_α
n13_disjunction_as:     mov              r11, 14
                        mov              eax, dword ptr [rsp + 3936]
                        cmp              eax, 0;                              jne   .Lx199_0
                        mov              rax, qword ptr [rsp + 3952]
                        mov              qword ptr [rsp + 3920], rax
                        mov              rax, qword ptr [rsp + 3960]
                        mov              qword ptr [rsp + 3928], rax;         jmp   n14_call_builtin_icon_α
.Lx199_0:               cmp              eax, 1;                              jne   .Lx199_1
                        mov              rax, qword ptr [rsp + 4064]
                        mov              qword ptr [rsp + 3920], rax
                        mov              rax, qword ptr [rsp + 4072]
                        mov              qword ptr [rsp + 3928], rax;         jmp   n14_call_builtin_icon_α
.Lx199_1:                                                                     jmp   n14_call_builtin_icon_α
n13_disjunction_β:      mov              r11, 14
                        mov              eax, dword ptr [rsp + 3936]
                        cmp              eax, 0;                              je    n13_disjunction_af
                                                                              jmp   n13_disjunction_af
n13_disjunction_af:     mov              r11, 14
                        add              dword ptr [rsp + 3936], 1
                        mov              eax, dword ptr [rsp + 3936]
                        cmp              eax, 1;                              je    n127_lit_string_α
                                                                              jmp   n15_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_icon_α:
                        mov              r11, 15
                        mov              rax, qword ptr [rsp + 3920]
                        mov              qword ptr [rsp + 3872], rax
                        mov              rax, qword ptr [rsp + 3928]
                        mov              qword ptr [rsp + 3880], rax
                        mov              rax, qword ptr [rsp + 3904]
                        mov              qword ptr [rsp + 3856], rax
                        mov              rax, qword ptr [rsp + 3912]
                        mov              qword ptr [rsp + 3864], rax
                        .section         .rodata
.Lrkfn201:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn201]
                        lea              rsi, [rsp + 3856]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3840], rax
                        mov              qword ptr [rsp + 3848], rdx
                        cmp              al, 104;                             je    n13_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n15_lit_string_α
n14_call_builtin_icon_β:
                        mov              r11, 15;                             jmp   n13_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       mov              r11, 16
                        mov              qword ptr [rsp + 3664], 2            # result
                        mov              dword ptr [rsp + 3668], 18
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rsp + 3672], rax;         jmp   n16_disjunction_α
.Lx202_0:               .quad            .Lx202_0_s
.Lx202_0_s:             .string          "Image(2e13) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n16_disjunction_α:      mov              r11, 17
                        mov              qword ptr [rsp + 3680], 0
                        mov              qword ptr [rsp + 3688], 0
                        mov              dword ptr [rsp + 3696], 0;           jmp   n124_lit_real_α
n16_disjunction_as:     mov              r11, 17
                        mov              eax, dword ptr [rsp + 3696]
                        cmp              eax, 0;                              jne   .Lx204_0
                        mov              rax, qword ptr [rsp + 3712]
                        mov              qword ptr [rsp + 3680], rax
                        mov              rax, qword ptr [rsp + 3720]
                        mov              qword ptr [rsp + 3688], rax;         jmp   n17_call_builtin_icon_α
.Lx204_0:               cmp              eax, 1;                              jne   .Lx204_1
                        mov              rax, qword ptr [rsp + 3824]
                        mov              qword ptr [rsp + 3680], rax
                        mov              rax, qword ptr [rsp + 3832]
                        mov              qword ptr [rsp + 3688], rax;         jmp   n17_call_builtin_icon_α
.Lx204_1:                                                                     jmp   n17_call_builtin_icon_α
n16_disjunction_β:      mov              r11, 17
                        mov              eax, dword ptr [rsp + 3696]
                        cmp              eax, 0;                              je    n16_disjunction_af
                                                                              jmp   n16_disjunction_af
n16_disjunction_af:     mov              r11, 17
                        add              dword ptr [rsp + 3696], 1
                        mov              eax, dword ptr [rsp + 3696]
                        cmp              eax, 1;                              je    n123_lit_string_α
                                                                              jmp   n18_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_icon_α:
                        mov              r11, 18
                        mov              rax, qword ptr [rsp + 3680]
                        mov              qword ptr [rsp + 3632], rax
                        mov              rax, qword ptr [rsp + 3688]
                        mov              qword ptr [rsp + 3640], rax
                        mov              rax, qword ptr [rsp + 3664]
                        mov              qword ptr [rsp + 3616], rax
                        mov              rax, qword ptr [rsp + 3672]
                        mov              qword ptr [rsp + 3624], rax
                        .section         .rodata
.Lrkfn206:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn206]
                        lea              rsi, [rsp + 3616]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3600], rax
                        mov              qword ptr [rsp + 3608], rdx
                        cmp              al, 104;                             je    n16_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n18_lit_string_α
n17_call_builtin_icon_β:
                        mov              r11, 18;                             jmp   n16_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:       mov              r11, 19
                        mov              qword ptr [rsp + 3424], 2            # result
                        mov              dword ptr [rsp + 3428], 20
                        mov              rax, qword ptr [rip + .Lx207_0]
                        mov              qword ptr [rsp + 3432], rax;         jmp   n19_disjunction_α
.Lx207_0:               .quad            .Lx207_0_s
.Lx207_0_s:             .string          "Image(0.0006) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n19_disjunction_α:      mov              r11, 20
                        mov              qword ptr [rsp + 3440], 0
                        mov              qword ptr [rsp + 3448], 0
                        mov              dword ptr [rsp + 3456], 0;           jmp   n120_lit_real_α
n19_disjunction_as:     mov              r11, 20
                        mov              eax, dword ptr [rsp + 3456]
                        cmp              eax, 0;                              jne   .Lx209_0
                        mov              rax, qword ptr [rsp + 3472]
                        mov              qword ptr [rsp + 3440], rax
                        mov              rax, qword ptr [rsp + 3480]
                        mov              qword ptr [rsp + 3448], rax;         jmp   n20_call_builtin_icon_α
.Lx209_0:               cmp              eax, 1;                              jne   .Lx209_1
                        mov              rax, qword ptr [rsp + 3584]
                        mov              qword ptr [rsp + 3440], rax
                        mov              rax, qword ptr [rsp + 3592]
                        mov              qword ptr [rsp + 3448], rax;         jmp   n20_call_builtin_icon_α
.Lx209_1:                                                                     jmp   n20_call_builtin_icon_α
n19_disjunction_β:      mov              r11, 20
                        mov              eax, dword ptr [rsp + 3456]
                        cmp              eax, 0;                              je    n19_disjunction_af
                                                                              jmp   n19_disjunction_af
n19_disjunction_af:     mov              r11, 20
                        add              dword ptr [rsp + 3456], 1
                        mov              eax, dword ptr [rsp + 3456]
                        cmp              eax, 1;                              je    n119_lit_string_α
                                                                              jmp   n21_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_icon_α:
                        mov              r11, 21
                        mov              rax, qword ptr [rsp + 3440]
                        mov              qword ptr [rsp + 3392], rax
                        mov              rax, qword ptr [rsp + 3448]
                        mov              qword ptr [rsp + 3400], rax
                        mov              rax, qword ptr [rsp + 3424]
                        mov              qword ptr [rsp + 3376], rax
                        mov              rax, qword ptr [rsp + 3432]
                        mov              qword ptr [rsp + 3384], rax
                        .section         .rodata
.Lrkfn211:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn211]
                        lea              rsi, [rsp + 3376]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3360], rax
                        mov              qword ptr [rsp + 3368], rdx
                        cmp              al, 104;                             je    n19_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n21_lit_string_α
n20_call_builtin_icon_β:
                        mov              r11, 21;                             jmp   n19_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:       mov              r11, 22
                        mov              qword ptr [rsp + 3184], 2            # result
                        mov              dword ptr [rsp + 3188], 17
                        mov              rax, qword ptr [rip + .Lx212_0]
                        mov              qword ptr [rsp + 3192], rax;         jmp   n22_disjunction_α
.Lx212_0:               .quad            .Lx212_0_s
.Lx212_0_s:             .string          "Image(2.0) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n22_disjunction_α:      mov              r11, 23
                        mov              qword ptr [rsp + 3200], 0
                        mov              qword ptr [rsp + 3208], 0
                        mov              dword ptr [rsp + 3216], 0;           jmp   n116_lit_real_α
n22_disjunction_as:     mov              r11, 23
                        mov              eax, dword ptr [rsp + 3216]
                        cmp              eax, 0;                              jne   .Lx214_0
                        mov              rax, qword ptr [rsp + 3232]
                        mov              qword ptr [rsp + 3200], rax
                        mov              rax, qword ptr [rsp + 3240]
                        mov              qword ptr [rsp + 3208], rax;         jmp   n23_call_builtin_icon_α
.Lx214_0:               cmp              eax, 1;                              jne   .Lx214_1
                        mov              rax, qword ptr [rsp + 3344]
                        mov              qword ptr [rsp + 3200], rax
                        mov              rax, qword ptr [rsp + 3352]
                        mov              qword ptr [rsp + 3208], rax;         jmp   n23_call_builtin_icon_α
.Lx214_1:                                                                     jmp   n23_call_builtin_icon_α
n22_disjunction_β:      mov              r11, 23
                        mov              eax, dword ptr [rsp + 3216]
                        cmp              eax, 0;                              je    n22_disjunction_af
                                                                              jmp   n22_disjunction_af
n22_disjunction_af:     mov              r11, 23
                        add              dword ptr [rsp + 3216], 1
                        mov              eax, dword ptr [rsp + 3216]
                        cmp              eax, 1;                              je    n115_lit_string_α
                                                                              jmp   n24_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_icon_α:
                        mov              r11, 24
                        mov              rax, qword ptr [rsp + 3200]
                        mov              qword ptr [rsp + 3152], rax
                        mov              rax, qword ptr [rsp + 3208]
                        mov              qword ptr [rsp + 3160], rax
                        mov              rax, qword ptr [rsp + 3184]
                        mov              qword ptr [rsp + 3136], rax
                        mov              rax, qword ptr [rsp + 3192]
                        mov              qword ptr [rsp + 3144], rax
                        .section         .rodata
.Lrkfn216:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn216]
                        lea              rsi, [rsp + 3136]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3120], rax
                        mov              qword ptr [rsp + 3128], rdx
                        cmp              al, 104;                             je    n22_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n24_lit_string_α
n23_call_builtin_icon_β:
                        mov              r11, 24;                             jmp   n22_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:       mov              r11, 25
                        mov              qword ptr [rsp + 2944], 2            # result
                        mov              dword ptr [rsp + 2948], 19
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rsp + 2952], rax;         jmp   n25_disjunction_α
.Lx217_0:               .quad            .Lx217_0_s
.Lx217_0_s:             .string          "integer(2.0) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n25_disjunction_α:      mov              r11, 26
                        mov              qword ptr [rsp + 2960], 0
                        mov              qword ptr [rsp + 2968], 0
                        mov              dword ptr [rsp + 2976], 0;           jmp   n112_lit_real_α
n25_disjunction_as:     mov              r11, 26
                        mov              eax, dword ptr [rsp + 2976]
                        cmp              eax, 0;                              jne   .Lx219_0
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 2960], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 2968], rax;         jmp   n26_call_builtin_icon_α
.Lx219_0:               cmp              eax, 1;                              jne   .Lx219_1
                        mov              rax, qword ptr [rsp + 3104]
                        mov              qword ptr [rsp + 2960], rax
                        mov              rax, qword ptr [rsp + 3112]
                        mov              qword ptr [rsp + 2968], rax;         jmp   n26_call_builtin_icon_α
.Lx219_1:                                                                     jmp   n26_call_builtin_icon_α
n25_disjunction_β:      mov              r11, 26
                        mov              eax, dword ptr [rsp + 2976]
                        cmp              eax, 0;                              je    n25_disjunction_af
                                                                              jmp   n25_disjunction_af
n25_disjunction_af:     mov              r11, 26
                        add              dword ptr [rsp + 2976], 1
                        mov              eax, dword ptr [rsp + 2976]
                        cmp              eax, 1;                              je    n111_lit_string_α
                                                                              jmp   n27_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_icon_α:
                        mov              r11, 27
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 2912], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 2920], rax
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 2896], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 2904], rax
                        .section         .rodata
.Lrkfn221:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn221]
                        lea              rsi, [rsp + 2896]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2880], rax
                        mov              qword ptr [rsp + 2888], rdx
                        cmp              al, 104;                             je    n25_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n27_lit_string_α
n26_call_builtin_icon_β:
                        mov              r11, 27;                             jmp   n25_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:       mov              r11, 28
                        mov              qword ptr [rsp + 2704], 2            # result
                        mov              dword ptr [rsp + 2708], 19
                        mov              rax, qword ptr [rip + .Lx222_0]
                        mov              qword ptr [rsp + 2712], rax;         jmp   n28_disjunction_α
.Lx222_0:               .quad            .Lx222_0_s
.Lx222_0_s:             .string          "integer(2.7) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n28_disjunction_α:      mov              r11, 29
                        mov              qword ptr [rsp + 2720], 0
                        mov              qword ptr [rsp + 2728], 0
                        mov              dword ptr [rsp + 2736], 0;           jmp   n108_lit_real_α
n28_disjunction_as:     mov              r11, 29
                        mov              eax, dword ptr [rsp + 2736]
                        cmp              eax, 0;                              jne   .Lx224_0
                        mov              rax, qword ptr [rsp + 2752]
                        mov              qword ptr [rsp + 2720], rax
                        mov              rax, qword ptr [rsp + 2760]
                        mov              qword ptr [rsp + 2728], rax;         jmp   n29_call_builtin_icon_α
.Lx224_0:               cmp              eax, 1;                              jne   .Lx224_1
                        mov              rax, qword ptr [rsp + 2864]
                        mov              qword ptr [rsp + 2720], rax
                        mov              rax, qword ptr [rsp + 2872]
                        mov              qword ptr [rsp + 2728], rax;         jmp   n29_call_builtin_icon_α
.Lx224_1:                                                                     jmp   n29_call_builtin_icon_α
n28_disjunction_β:      mov              r11, 29
                        mov              eax, dword ptr [rsp + 2736]
                        cmp              eax, 0;                              je    n28_disjunction_af
                                                                              jmp   n28_disjunction_af
n28_disjunction_af:     mov              r11, 29
                        add              dword ptr [rsp + 2736], 1
                        mov              eax, dword ptr [rsp + 2736]
                        cmp              eax, 1;                              je    n107_lit_string_α
                                                                              jmp   n30_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_icon_α:
                        mov              r11, 30
                        mov              rax, qword ptr [rsp + 2720]
                        mov              qword ptr [rsp + 2672], rax
                        mov              rax, qword ptr [rsp + 2728]
                        mov              qword ptr [rsp + 2680], rax
                        mov              rax, qword ptr [rsp + 2704]
                        mov              qword ptr [rsp + 2656], rax
                        mov              rax, qword ptr [rsp + 2712]
                        mov              qword ptr [rsp + 2664], rax
                        .section         .rodata
.Lrkfn226:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn226]
                        lea              rsi, [rsp + 2656]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2640], rax
                        mov              qword ptr [rsp + 2648], rdx
                        cmp              al, 104;                             je    n28_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n30_lit_string_α
n29_call_builtin_icon_β:
                        mov              r11, 30;                             jmp   n28_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:       mov              r11, 31
                        mov              qword ptr [rsp + 2464], 2            # result
                        mov              dword ptr [rsp + 2468], 19
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rsp + 2472], rax;         jmp   n31_disjunction_α
.Lx227_0:               .quad            .Lx227_0_s
.Lx227_0_s:             .string          "integer(\".\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n31_disjunction_α:      mov              r11, 32
                        mov              qword ptr [rsp + 2480], 0
                        mov              qword ptr [rsp + 2488], 0
                        mov              dword ptr [rsp + 2496], 0;           jmp   n104_lit_string_α
n31_disjunction_as:     mov              r11, 32
                        mov              eax, dword ptr [rsp + 2496]
                        cmp              eax, 0;                              jne   .Lx229_0
                        mov              rax, qword ptr [rsp + 2512]
                        mov              qword ptr [rsp + 2480], rax
                        mov              rax, qword ptr [rsp + 2520]
                        mov              qword ptr [rsp + 2488], rax;         jmp   n32_call_builtin_icon_α
.Lx229_0:               cmp              eax, 1;                              jne   .Lx229_1
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2480], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2488], rax;         jmp   n32_call_builtin_icon_α
.Lx229_1:                                                                     jmp   n32_call_builtin_icon_α
n31_disjunction_β:      mov              r11, 32
                        mov              eax, dword ptr [rsp + 2496]
                        cmp              eax, 0;                              je    n31_disjunction_af
                                                                              jmp   n31_disjunction_af
n31_disjunction_af:     mov              r11, 32
                        add              dword ptr [rsp + 2496], 1
                        mov              eax, dword ptr [rsp + 2496]
                        cmp              eax, 1;                              je    n103_lit_string_α
                                                                              jmp   n33_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_icon_α:
                        mov              r11, 33
                        mov              rax, qword ptr [rsp + 2480]
                        mov              qword ptr [rsp + 2432], rax
                        mov              rax, qword ptr [rsp + 2488]
                        mov              qword ptr [rsp + 2440], rax
                        mov              rax, qword ptr [rsp + 2464]
                        mov              qword ptr [rsp + 2416], rax
                        mov              rax, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 2424], rax
                        .section         .rodata
.Lrkfn231:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn231]
                        lea              rsi, [rsp + 2416]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx
                        cmp              al, 104;                             je    n31_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n33_lit_string_α
n32_call_builtin_icon_β:
                        mov              r11, 33;                             jmp   n31_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:       mov              r11, 34
                        mov              qword ptr [rsp + 2224], 2            # result
                        mov              dword ptr [rsp + 2228], 20
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n34_disjunction_α
.Lx232_0:               .quad            .Lx232_0_s
.Lx232_0_s:             .string          "integer(\".3\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n34_disjunction_α:      mov              r11, 35
                        mov              qword ptr [rsp + 2240], 0
                        mov              qword ptr [rsp + 2248], 0
                        mov              dword ptr [rsp + 2256], 0;           jmp   n100_lit_string_α
n34_disjunction_as:     mov              r11, 35
                        mov              eax, dword ptr [rsp + 2256]
                        cmp              eax, 0;                              jne   .Lx234_0
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n35_call_builtin_icon_α
.Lx234_0:               cmp              eax, 1;                              jne   .Lx234_1
                        mov              rax, qword ptr [rsp + 2384]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2392]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n35_call_builtin_icon_α
.Lx234_1:                                                                     jmp   n35_call_builtin_icon_α
n34_disjunction_β:      mov              r11, 35
                        mov              eax, dword ptr [rsp + 2256]
                        cmp              eax, 0;                              je    n34_disjunction_af
                                                                              jmp   n34_disjunction_af
n34_disjunction_af:     mov              r11, 35
                        add              dword ptr [rsp + 2256], 1
                        mov              eax, dword ptr [rsp + 2256]
                        cmp              eax, 1;                              je    n99_lit_string_α
                                                                              jmp   n36_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_icon_α:
                        mov              r11, 36
                        mov              rax, qword ptr [rsp + 2240]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 2248]
                        mov              qword ptr [rsp + 2200], rax
                        mov              rax, qword ptr [rsp + 2224]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 2184], rax
                        .section         .rodata
.Lrkfn236:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn236]
                        lea              rsi, [rsp + 2176]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx
                        cmp              al, 104;                             je    n34_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n36_lit_string_α
n35_call_builtin_icon_β:
                        mov              r11, 36;                             jmp   n34_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:       mov              r11, 37
                        mov              qword ptr [rsp + 1984], 2            # result
                        mov              dword ptr [rsp + 1988], 21
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rsp + 1992], rax;         jmp   n37_disjunction_α
.Lx237_0:               .quad            .Lx237_0_s
.Lx237_0_s:             .string          "integer(\"0.3\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n37_disjunction_α:      mov              r11, 38
                        mov              qword ptr [rsp + 2000], 0
                        mov              qword ptr [rsp + 2008], 0
                        mov              dword ptr [rsp + 2016], 0;           jmp   n96_lit_string_α
n37_disjunction_as:     mov              r11, 38
                        mov              eax, dword ptr [rsp + 2016]
                        cmp              eax, 0;                              jne   .Lx239_0
                        mov              rax, qword ptr [rsp + 2032]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2040]
                        mov              qword ptr [rsp + 2008], rax;         jmp   n38_call_builtin_icon_α
.Lx239_0:               cmp              eax, 1;                              jne   .Lx239_1
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2008], rax;         jmp   n38_call_builtin_icon_α
.Lx239_1:                                                                     jmp   n38_call_builtin_icon_α
n37_disjunction_β:      mov              r11, 38
                        mov              eax, dword ptr [rsp + 2016]
                        cmp              eax, 0;                              je    n37_disjunction_af
                                                                              jmp   n37_disjunction_af
n37_disjunction_af:     mov              r11, 38
                        add              dword ptr [rsp + 2016], 1
                        mov              eax, dword ptr [rsp + 2016]
                        cmp              eax, 1;                              je    n95_lit_string_α
                                                                              jmp   n39_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_icon_α:
                        mov              r11, 39
                        mov              rax, qword ptr [rsp + 2000]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 2008]
                        mov              qword ptr [rsp + 1960], rax
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1936], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1944], rax
                        .section         .rodata
.Lrkfn241:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn241]
                        lea              rsi, [rsp + 1936]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx
                        cmp              al, 104;                             je    n37_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n39_lit_string_α
n38_call_builtin_icon_β:
                        mov              r11, 39;                             jmp   n37_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       mov              r11, 40
                        mov              qword ptr [rsp + 1744], 2            # result
                        mov              dword ptr [rsp + 1748], 22
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n40_disjunction_α
.Lx242_0:               .quad            .Lx242_0_s
.Lx242_0_s:             .string          "integer(\" . 3\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n40_disjunction_α:      mov              r11, 41
                        mov              qword ptr [rsp + 1760], 0
                        mov              qword ptr [rsp + 1768], 0
                        mov              dword ptr [rsp + 1776], 0;           jmp   n92_lit_string_α
n40_disjunction_as:     mov              r11, 41
                        mov              eax, dword ptr [rsp + 1776]
                        cmp              eax, 0;                              jne   .Lx244_0
                        mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n41_call_builtin_icon_α
.Lx244_0:               cmp              eax, 1;                              jne   .Lx244_1
                        mov              rax, qword ptr [rsp + 1904]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1912]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n41_call_builtin_icon_α
.Lx244_1:                                                                     jmp   n41_call_builtin_icon_α
n40_disjunction_β:      mov              r11, 41
                        mov              eax, dword ptr [rsp + 1776]
                        cmp              eax, 0;                              je    n40_disjunction_af
                                                                              jmp   n40_disjunction_af
n40_disjunction_af:     mov              r11, 41
                        add              dword ptr [rsp + 1776], 1
                        mov              eax, dword ptr [rsp + 1776]
                        cmp              eax, 1;                              je    n91_lit_string_α
                                                                              jmp   n42_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n41_call_builtin_icon_α:
                        mov              r11, 42
                        mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1720], rax
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1704], rax
                        .section         .rodata
.Lrkfn246:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn246]
                        lea              rsi, [rsp + 1696]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx
                        cmp              al, 104;                             je    n40_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n42_lit_string_α
n41_call_builtin_icon_β:
                        mov              r11, 42;                             jmp   n40_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:       mov              r11, 43
                        mov              qword ptr [rsp + 1504], 2            # result
                        mov              dword ptr [rsp + 1508], 20
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n43_disjunction_α
.Lx247_0:               .quad            .Lx247_0_s
.Lx247_0_s:             .string          "integer(\"e2\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n43_disjunction_α:      mov              r11, 44
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              dword ptr [rsp + 1536], 0;           jmp   n88_lit_string_α
n43_disjunction_as:     mov              r11, 44
                        mov              eax, dword ptr [rsp + 1536]
                        cmp              eax, 0;                              jne   .Lx249_0
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n44_call_builtin_icon_α
.Lx249_0:               cmp              eax, 1;                              jne   .Lx249_1
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n44_call_builtin_icon_α
.Lx249_1:                                                                     jmp   n44_call_builtin_icon_α
n43_disjunction_β:      mov              r11, 44
                        mov              eax, dword ptr [rsp + 1536]
                        cmp              eax, 0;                              je    n43_disjunction_af
                                                                              jmp   n43_disjunction_af
n43_disjunction_af:     mov              r11, 44
                        add              dword ptr [rsp + 1536], 1
                        mov              eax, dword ptr [rsp + 1536]
                        cmp              eax, 1;                              je    n87_lit_string_α
                                                                              jmp   n45_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_icon_α:
                        mov              r11, 45
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1480], rax
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1464], rax
                        .section         .rodata
.Lrkfn251:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn251]
                        lea              rsi, [rsp + 1456]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx
                        cmp              al, 104;                             je    n43_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n45_lit_string_α
n44_call_builtin_icon_β:
                        mov              r11, 45;                             jmp   n43_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:       mov              r11, 46
                        mov              qword ptr [rsp + 1264], 2            # result
                        mov              dword ptr [rsp + 1268], 23
                        mov              rax, qword ptr [rip + .Lx252_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n46_disjunction_α
.Lx252_0:               .quad            .Lx252_0_s
.Lx252_0_s:             .string          "integer(\"3e500\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n46_disjunction_α:      mov              r11, 47
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              dword ptr [rsp + 1296], 0;           jmp   n84_lit_string_α
n46_disjunction_as:     mov              r11, 47
                        mov              eax, dword ptr [rsp + 1296]
                        cmp              eax, 0;                              jne   .Lx254_0
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n47_call_builtin_icon_α
.Lx254_0:               cmp              eax, 1;                              jne   .Lx254_1
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n47_call_builtin_icon_α
.Lx254_1:                                                                     jmp   n47_call_builtin_icon_α
n46_disjunction_β:      mov              r11, 47
                        mov              eax, dword ptr [rsp + 1296]
                        cmp              eax, 0;                              je    n46_disjunction_af
                                                                              jmp   n46_disjunction_af
n46_disjunction_af:     mov              r11, 47
                        add              dword ptr [rsp + 1296], 1
                        mov              eax, dword ptr [rsp + 1296]
                        cmp              eax, 1;                              je    n83_lit_string_α
                                                                              jmp   n48_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n47_call_builtin_icon_α:
                        mov              r11, 48
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1240], rax
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1224], rax
                        .section         .rodata
.Lrkfn256:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn256]
                        lea              rsi, [rsp + 1216]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        cmp              al, 104;                             je    n46_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n48_lit_string_α
n47_call_builtin_icon_β:
                        mov              r11, 48;                             jmp   n46_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:       mov              r11, 49
                        mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 19
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n49_disjunction_α
.Lx257_0:               .quad            .Lx257_0_s
.Lx257_0_s:             .string          "numeric(2.0) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n49_disjunction_α:      mov              r11, 50
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              dword ptr [rsp + 1056], 0;           jmp   n80_lit_real_α
n49_disjunction_as:     mov              r11, 50
                        mov              eax, dword ptr [rsp + 1056]
                        cmp              eax, 0;                              jne   .Lx259_0
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n50_call_builtin_icon_α
.Lx259_0:               cmp              eax, 1;                              jne   .Lx259_1
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n50_call_builtin_icon_α
.Lx259_1:                                                                     jmp   n50_call_builtin_icon_α
n49_disjunction_β:      mov              r11, 50
                        mov              eax, dword ptr [rsp + 1056]
                        cmp              eax, 0;                              je    n49_disjunction_af
                                                                              jmp   n49_disjunction_af
n49_disjunction_af:     mov              r11, 50
                        add              dword ptr [rsp + 1056], 1
                        mov              eax, dword ptr [rsp + 1056]
                        cmp              eax, 1;                              je    n79_lit_string_α
                                                                              jmp   n51_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n50_call_builtin_icon_α:
                        mov              r11, 51
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1000], rax
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 984], rax
                        .section         .rodata
.Lrkfn261:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn261]
                        lea              rsi, [rsp + 976]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              al, 104;                             je    n49_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n51_lit_string_α
n50_call_builtin_icon_β:
                        mov              r11, 51;                             jmp   n49_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:       mov              r11, 52
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 19
                        mov              rax, qword ptr [rip + .Lx262_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n52_disjunction_α
.Lx262_0:               .quad            .Lx262_0_s
.Lx262_0_s:             .string          "numeric(2.7) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n52_disjunction_α:      mov              r11, 53
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              dword ptr [rsp + 816], 0;            jmp   n76_lit_real_α
n52_disjunction_as:     mov              r11, 53
                        mov              eax, dword ptr [rsp + 816]
                        cmp              eax, 0;                              jne   .Lx264_0
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 808], rax;          jmp   n53_call_builtin_icon_α
.Lx264_0:               cmp              eax, 1;                              jne   .Lx264_1
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 808], rax;          jmp   n53_call_builtin_icon_α
.Lx264_1:                                                                     jmp   n53_call_builtin_icon_α
n52_disjunction_β:      mov              r11, 53
                        mov              eax, dword ptr [rsp + 816]
                        cmp              eax, 0;                              je    n52_disjunction_af
                                                                              jmp   n52_disjunction_af
n52_disjunction_af:     mov              r11, 53
                        add              dword ptr [rsp + 816], 1
                        mov              eax, dword ptr [rsp + 816]
                        cmp              eax, 1;                              je    n75_lit_string_α
                                                                              jmp   n54_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n53_call_builtin_icon_α:
                        mov              r11, 54
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 760], rax
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 744], rax
                        .section         .rodata
.Lrkfn266:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn266]
                        lea              rsi, [rsp + 736]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              al, 104;                             je    n52_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n54_lit_string_α
n53_call_builtin_icon_β:
                        mov              r11, 54;                             jmp   n52_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:       mov              r11, 55
                        mov              qword ptr [rsp + 544], 2             # result
                        mov              dword ptr [rsp + 548], 19
                        mov              rax, qword ptr [rip + .Lx267_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n55_disjunction_α
.Lx267_0:               .quad            .Lx267_0_s
.Lx267_0_s:             .string          "numeric(\".\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n55_disjunction_α:      mov              r11, 56
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              dword ptr [rsp + 576], 0;            jmp   n72_lit_string_α
n55_disjunction_as:     mov              r11, 56
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 0;                              jne   .Lx269_0
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax;          jmp   n56_call_builtin_icon_α
.Lx269_0:               cmp              eax, 1;                              jne   .Lx269_1
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 568], rax;          jmp   n56_call_builtin_icon_α
.Lx269_1:                                                                     jmp   n56_call_builtin_icon_α
n55_disjunction_β:      mov              r11, 56
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 0;                              je    n55_disjunction_af
                                                                              jmp   n55_disjunction_af
n55_disjunction_af:     mov              r11, 56
                        add              dword ptr [rsp + 576], 1
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 1;                              je    n71_lit_string_α
                                                                              jmp   n57_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n56_call_builtin_icon_α:
                        mov              r11, 57
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 520], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 504], rax
                        .section         .rodata
.Lrkfn271:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn271]
                        lea              rsi, [rsp + 496]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n55_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n57_lit_string_α
n56_call_builtin_icon_β:
                        mov              r11, 57;                             jmp   n55_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:       mov              r11, 58
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 20
                        mov              rax, qword ptr [rip + .Lx272_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n58_disjunction_α
.Lx272_0:               .quad            .Lx272_0_s
.Lx272_0_s:             .string          "numeric(\".3\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n58_disjunction_α:      mov              r11, 59
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              dword ptr [rsp + 336], 0;            jmp   n68_lit_string_α
n58_disjunction_as:     mov              r11, 59
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 0;                              jne   .Lx274_0
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax;          jmp   n59_call_builtin_icon_α
.Lx274_0:               cmp              eax, 1;                              jne   .Lx274_1
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 328], rax;          jmp   n59_call_builtin_icon_α
.Lx274_1:                                                                     jmp   n59_call_builtin_icon_α
n58_disjunction_β:      mov              r11, 59
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 0;                              je    n58_disjunction_af
                                                                              jmp   n58_disjunction_af
n58_disjunction_af:     mov              r11, 59
                        add              dword ptr [rsp + 336], 1
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 1;                              je    n67_lit_string_α
                                                                              jmp   n60_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n59_call_builtin_icon_α:
                        mov              r11, 60
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn276:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn276]
                        lea              rsi, [rsp + 256]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n58_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n60_lit_string_α
n59_call_builtin_icon_β:
                        mov              r11, 60;                             jmp   n58_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:       mov              r11, 61
                        mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 21
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n61_disjunction_α
.Lx277_0:               .quad            .Lx277_0_s
.Lx277_0_s:             .string          "numeric(\"0.3\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n61_disjunction_α:      mov              r11, 62
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              dword ptr [rsp + 96], 0;             jmp   n64_lit_string_α
n61_disjunction_as:     mov              r11, 62
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 0;                              jne   .Lx279_0
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax;           jmp   n62_call_builtin_icon_α
.Lx279_0:               cmp              eax, 1;                              jne   .Lx279_1
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 88], rax;           jmp   n62_call_builtin_icon_α
.Lx279_1:                                                                     jmp   n62_call_builtin_icon_α
n61_disjunction_β:      mov              r11, 62
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 0;                              je    n61_disjunction_af
                                                                              jmp   n61_disjunction_af
n61_disjunction_af:     mov              r11, 62
                        add              dword ptr [rsp + 96], 1
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 1;                              je    n63_lit_string_α
                                                                              jmp   p1_ω
#-----------------------------------------------------------------------------------------------------------------------
n62_call_builtin_icon_α:
                        mov              r11, 63
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn281:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn281]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    n61_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   p1_γ
n62_call_builtin_icon_β:
                        mov              r11, 63;                             jmp   n61_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:       mov              r11, 64
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 4
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n61_disjunction_as
n63_lit_string_β:       mov              r11, 64;                             jmp   n61_disjunction_af
.Lx282_0:               .quad            .Lx282_0_s
.Lx282_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:       mov              r11, 65
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 3
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n65_call_builtin_icon_α
n64_lit_string_β:       mov              r11, 65;                             jmp   n61_disjunction_af
.Lx283_0:               .quad            .Lx283_0_s
.Lx283_0_s:             .string          "0.3"
#-----------------------------------------------------------------------------------------------------------------------
n65_call_builtin_icon_α:
                        mov              r11, 66
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lrkfn285:              .string          "numeric"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn285]
                        lea              rsi, [rsp + 176]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n61_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n66_call_proc_staged_α
n65_call_builtin_icon_β:
                        mov              r11, 66;                             jmp   n61_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n66_call_proc_staged_α: mov              r11, 67
                        lea              rsi, [rsp + 160]
                        call             Image_dcα;                           jmp   .Lx287_2
.Lx287_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx287_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
.Lx287_29:              mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n61_disjunction_af
                                                                              jmp   n61_disjunction_as
n66_call_proc_staged_β: mov              r11, 67;                             jmp   n61_disjunction_af
.Lx287_0:               .quad            .Lx287_0_s
.Lx287_0_s:             .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:       mov              r11, 68
                        mov              qword ptr [rsp + 464], 2             # result
                        mov              dword ptr [rsp + 468], 4
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n58_disjunction_as
n67_lit_string_β:       mov              r11, 68;                             jmp   n58_disjunction_af
.Lx288_0:               .quad            .Lx288_0_s
.Lx288_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:       mov              r11, 69
                        mov              qword ptr [rsp + 448], 2             # result
                        mov              dword ptr [rsp + 452], 2
                        mov              rax, qword ptr [rip + .Lx289_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n69_call_builtin_icon_α
n68_lit_string_β:       mov              r11, 69;                             jmp   n58_disjunction_af
.Lx289_0:               .quad            .Lx289_0_s
.Lx289_0_s:             .string          ".3"
#-----------------------------------------------------------------------------------------------------------------------
n69_call_builtin_icon_α:
                        mov              r11, 70
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                        .section         .rodata
.Lrkfn291:              .string          "numeric"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn291]
                        lea              rsi, [rsp + 416]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n58_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n70_call_proc_staged_α
n69_call_builtin_icon_β:
                        mov              r11, 70;                             jmp   n58_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n70_call_proc_staged_α: mov              r11, 71
                        lea              rsi, [rsp + 400]
                        call             Image_dcα;                           jmp   .Lx293_2
.Lx293_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx293_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
.Lx293_29:              mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n58_disjunction_af
                                                                              jmp   n58_disjunction_as
n70_call_proc_staged_β: mov              r11, 71;                             jmp   n58_disjunction_af
.Lx293_0:               .quad            .Lx293_0_s
.Lx293_0_s:             .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:       mov              r11, 72
                        mov              qword ptr [rsp + 704], 2             # result
                        mov              dword ptr [rsp + 708], 4
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n55_disjunction_as
n71_lit_string_β:       mov              r11, 72;                             jmp   n55_disjunction_af
.Lx294_0:               .quad            .Lx294_0_s
.Lx294_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:       mov              r11, 73
                        mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 1
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n73_call_builtin_icon_α
n72_lit_string_β:       mov              r11, 73;                             jmp   n55_disjunction_af
.Lx295_0:               .quad            .Lx295_0_s
.Lx295_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n73_call_builtin_icon_α:
                        mov              r11, 74
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 664], rax
                        .section         .rodata
.Lrkfn297:              .string          "numeric"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn297]
                        lea              rsi, [rsp + 656]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              al, 104;                             je    n55_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n74_call_proc_staged_α
n73_call_builtin_icon_β:
                        mov              r11, 74;                             jmp   n55_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n74_call_proc_staged_α: mov              r11, 75
                        lea              rsi, [rsp + 640]
                        call             Image_dcα;                           jmp   .Lx299_2
.Lx299_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx299_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
.Lx299_29:              mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n55_disjunction_af
                                                                              jmp   n55_disjunction_as
n74_call_proc_staged_β: mov              r11, 75;                             jmp   n55_disjunction_af
.Lx299_0:               .quad            .Lx299_0_s
.Lx299_0_s:             .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:       mov              r11, 76
                        mov              qword ptr [rsp + 944], 2             # result
                        mov              dword ptr [rsp + 948], 4
                        mov              rax, qword ptr [rip + .Lx300_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n52_disjunction_as
n75_lit_string_β:       mov              r11, 76;                             jmp   n52_disjunction_af
.Lx300_0:               .quad            .Lx300_0_s
.Lx300_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_real_α:         mov              r11, 77
                        mov              qword ptr [rsp + 928], 5             # result
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rsp + 936], rax;          jmp   n77_call_builtin_icon_α
n76_lit_real_β:         mov              r11, 77;                             jmp   n52_disjunction_af
.Lx301_0:               .quad            4613262278296967578
#-----------------------------------------------------------------------------------------------------------------------
n77_call_builtin_icon_α:
                        mov              r11, 78
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 904], rax
                        .section         .rodata
.Lrkfn303:              .string          "numeric"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn303]
                        lea              rsi, [rsp + 896]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              al, 104;                             je    n52_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n78_call_proc_staged_α
n77_call_builtin_icon_β:
                        mov              r11, 78;                             jmp   n52_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n78_call_proc_staged_α: mov              r11, 79
                        lea              rsi, [rsp + 880]
                        call             Image_dcα;                           jmp   .Lx305_2
.Lx305_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx305_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
.Lx305_29:              mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n52_disjunction_af
                                                                              jmp   n52_disjunction_as
n78_call_proc_staged_β: mov              r11, 79;                             jmp   n52_disjunction_af
.Lx305_0:               .quad            .Lx305_0_s
.Lx305_0_s:             .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:       mov              r11, 80
                        mov              qword ptr [rsp + 1184], 2            # result
                        mov              dword ptr [rsp + 1188], 4
                        mov              rax, qword ptr [rip + .Lx306_0]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n49_disjunction_as
n79_lit_string_β:       mov              r11, 80;                             jmp   n49_disjunction_af
.Lx306_0:               .quad            .Lx306_0_s
.Lx306_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_real_α:         mov              r11, 81
                        mov              qword ptr [rsp + 1168], 5            # result
                        mov              rax, qword ptr [rip + .Lx307_0]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n81_call_builtin_icon_α
n80_lit_real_β:         mov              r11, 81;                             jmp   n49_disjunction_af
.Lx307_0:               .quad            4611686018427387904
#-----------------------------------------------------------------------------------------------------------------------
n81_call_builtin_icon_α:
                        mov              r11, 82
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1144], rax
                        .section         .rodata
.Lrkfn309:              .string          "numeric"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn309]
                        lea              rsi, [rsp + 1136]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        cmp              al, 104;                             je    n49_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n82_call_proc_staged_α
n81_call_builtin_icon_β:
                        mov              r11, 82;                             jmp   n49_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n82_call_proc_staged_α: mov              r11, 83
                        lea              rsi, [rsp + 1120]
                        call             Image_dcα;                           jmp   .Lx311_2
.Lx311_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx311_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1072]
                        mov              rdx, qword ptr [rsp + 1080]
.Lx311_29:              mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
                        cmp              al, 104;                             je    n49_disjunction_af
                                                                              jmp   n49_disjunction_as
n82_call_proc_staged_β: mov              r11, 83;                             jmp   n49_disjunction_af
.Lx311_0:               .quad            .Lx311_0_s
.Lx311_0_s:             .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:       mov              r11, 84
                        mov              qword ptr [rsp + 1424], 2            # result
                        mov              dword ptr [rsp + 1428], 4
                        mov              rax, qword ptr [rip + .Lx312_0]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n46_disjunction_as
n83_lit_string_β:       mov              r11, 84;                             jmp   n46_disjunction_af
.Lx312_0:               .quad            .Lx312_0_s
.Lx312_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:       mov              r11, 85
                        mov              qword ptr [rsp + 1408], 2            # result
                        mov              dword ptr [rsp + 1412], 5
                        mov              rax, qword ptr [rip + .Lx313_0]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n85_call_builtin_icon_α
n84_lit_string_β:       mov              r11, 85;                             jmp   n46_disjunction_af
.Lx313_0:               .quad            .Lx313_0_s
.Lx313_0_s:             .string          "3e500"
#-----------------------------------------------------------------------------------------------------------------------
n85_call_builtin_icon_α:
                        mov              r11, 86
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1384], rax
                        .section         .rodata
.Lrkfn315:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn315]
                        lea              rsi, [rsp + 1376]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                        cmp              al, 104;                             je    n46_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n86_call_proc_staged_α
n85_call_builtin_icon_β:
                        mov              r11, 86;                             jmp   n46_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n86_call_proc_staged_α: mov              r11, 87
                        lea              rsi, [rsp + 1360]
                        call             Image_dcα;                           jmp   .Lx317_2
.Lx317_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx317_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1312]
                        mov              rdx, qword ptr [rsp + 1320]
.Lx317_29:              mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        cmp              al, 104;                             je    n46_disjunction_af
                                                                              jmp   n46_disjunction_as
n86_call_proc_staged_β: mov              r11, 87;                             jmp   n46_disjunction_af
.Lx317_0:               .quad            .Lx317_0_s
.Lx317_0_s:             .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:       mov              r11, 88
                        mov              qword ptr [rsp + 1664], 2            # result
                        mov              dword ptr [rsp + 1668], 4
                        mov              rax, qword ptr [rip + .Lx318_0]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n43_disjunction_as
n87_lit_string_β:       mov              r11, 88;                             jmp   n43_disjunction_af
.Lx318_0:               .quad            .Lx318_0_s
.Lx318_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:       mov              r11, 89
                        mov              qword ptr [rsp + 1648], 2            # result
                        mov              dword ptr [rsp + 1652], 2
                        mov              rax, qword ptr [rip + .Lx319_0]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n89_call_builtin_icon_α
n88_lit_string_β:       mov              r11, 89;                             jmp   n43_disjunction_af
.Lx319_0:               .quad            .Lx319_0_s
.Lx319_0_s:             .string          "e2"
#-----------------------------------------------------------------------------------------------------------------------
n89_call_builtin_icon_α:
                        mov              r11, 90
                        mov              rax, qword ptr [rsp + 1648]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 1656]
                        mov              qword ptr [rsp + 1624], rax
                        .section         .rodata
.Lrkfn321:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn321]
                        lea              rsi, [rsp + 1616]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx
                        cmp              al, 104;                             je    n43_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n90_call_proc_staged_α
n89_call_builtin_icon_β:
                        mov              r11, 90;                             jmp   n43_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n90_call_proc_staged_α: mov              r11, 91
                        lea              rsi, [rsp + 1600]
                        call             Image_dcα;                           jmp   .Lx323_2
.Lx323_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx323_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1552]
                        mov              rdx, qword ptr [rsp + 1560]
.Lx323_29:              mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                        cmp              al, 104;                             je    n43_disjunction_af
                                                                              jmp   n43_disjunction_as
n90_call_proc_staged_β: mov              r11, 91;                             jmp   n43_disjunction_af
.Lx323_0:               .quad            .Lx323_0_s
.Lx323_0_s:             .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:       mov              r11, 92
                        mov              qword ptr [rsp + 1904], 2            # result
                        mov              dword ptr [rsp + 1908], 4
                        mov              rax, qword ptr [rip + .Lx324_0]
                        mov              qword ptr [rsp + 1912], rax;         jmp   n40_disjunction_as
n91_lit_string_β:       mov              r11, 92;                             jmp   n40_disjunction_af
.Lx324_0:               .quad            .Lx324_0_s
.Lx324_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:       mov              r11, 93
                        mov              qword ptr [rsp + 1888], 2            # result
                        mov              dword ptr [rsp + 1892], 4
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n93_call_builtin_icon_α
n92_lit_string_β:       mov              r11, 93;                             jmp   n40_disjunction_af
.Lx325_0:               .quad            .Lx325_0_s
.Lx325_0_s:             .string          " . 3"
#-----------------------------------------------------------------------------------------------------------------------
n93_call_builtin_icon_α:
                        mov              r11, 94
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 1864], rax
                        .section         .rodata
.Lrkfn327:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn327]
                        lea              rsi, [rsp + 1856]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx
                        cmp              al, 104;                             je    n40_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n94_call_proc_staged_α
n93_call_builtin_icon_β:
                        mov              r11, 94;                             jmp   n40_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n94_call_proc_staged_α: mov              r11, 95
                        lea              rsi, [rsp + 1840]
                        call             Image_dcα;                           jmp   .Lx329_2
.Lx329_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx329_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1792]
                        mov              rdx, qword ptr [rsp + 1800]
.Lx329_29:              mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
                        cmp              al, 104;                             je    n40_disjunction_af
                                                                              jmp   n40_disjunction_as
n94_call_proc_staged_β: mov              r11, 95;                             jmp   n40_disjunction_af
.Lx329_0:               .quad            .Lx329_0_s
.Lx329_0_s:             .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:       mov              r11, 96
                        mov              qword ptr [rsp + 2144], 2            # result
                        mov              dword ptr [rsp + 2148], 4
                        mov              rax, qword ptr [rip + .Lx330_0]
                        mov              qword ptr [rsp + 2152], rax;         jmp   n37_disjunction_as
n95_lit_string_β:       mov              r11, 96;                             jmp   n37_disjunction_af
.Lx330_0:               .quad            .Lx330_0_s
.Lx330_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:       mov              r11, 97
                        mov              qword ptr [rsp + 2128], 2            # result
                        mov              dword ptr [rsp + 2132], 3
                        mov              rax, qword ptr [rip + .Lx331_0]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n97_call_builtin_icon_α
n96_lit_string_β:       mov              r11, 97;                             jmp   n37_disjunction_af
.Lx331_0:               .quad            .Lx331_0_s
.Lx331_0_s:             .string          "0.3"
#-----------------------------------------------------------------------------------------------------------------------
n97_call_builtin_icon_α:
                        mov              r11, 98
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2104], rax
                        .section         .rodata
.Lrkfn333:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn333]
                        lea              rsi, [rsp + 2096]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx
                        cmp              al, 104;                             je    n37_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n98_call_proc_staged_α
n97_call_builtin_icon_β:
                        mov              r11, 98;                             jmp   n37_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n98_call_proc_staged_α: mov              r11, 99
                        lea              rsi, [rsp + 2080]
                        call             Image_dcα;                           jmp   .Lx335_2
.Lx335_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx335_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2032], rax
                        mov              qword ptr [rsp + 2040], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2032]
                        mov              rdx, qword ptr [rsp + 2040]
.Lx335_29:              mov              qword ptr [rsp + 2032], rax
                        mov              qword ptr [rsp + 2040], rdx
                        cmp              al, 104;                             je    n37_disjunction_af
                                                                              jmp   n37_disjunction_as
n98_call_proc_staged_β: mov              r11, 99;                             jmp   n37_disjunction_af
.Lx335_0:               .quad            .Lx335_0_s
.Lx335_0_s:             .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:       mov              r11, 100
                        mov              qword ptr [rsp + 2384], 2            # result
                        mov              dword ptr [rsp + 2388], 4
                        mov              rax, qword ptr [rip + .Lx336_0]
                        mov              qword ptr [rsp + 2392], rax;         jmp   n34_disjunction_as
n99_lit_string_β:       mov              r11, 100;                            jmp   n34_disjunction_af
.Lx336_0:               .quad            .Lx336_0_s
.Lx336_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:      mov              r11, 101
                        mov              qword ptr [rsp + 2368], 2            # result
                        mov              dword ptr [rsp + 2372], 2
                        mov              rax, qword ptr [rip + .Lx337_0]
                        mov              qword ptr [rsp + 2376], rax;         jmp   n101_call_builtin_icon_α
n100_lit_string_β:      mov              r11, 101;                            jmp   n34_disjunction_af
.Lx337_0:               .quad            .Lx337_0_s
.Lx337_0_s:             .string          ".3"
#-----------------------------------------------------------------------------------------------------------------------
n101_call_builtin_icon_α:
                        mov              r11, 102
                        mov              rax, qword ptr [rsp + 2368]
                        mov              qword ptr [rsp + 2336], rax
                        mov              rax, qword ptr [rsp + 2376]
                        mov              qword ptr [rsp + 2344], rax
                        .section         .rodata
.Lrkfn339:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn339]
                        lea              rsi, [rsp + 2336]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2320], rax
                        mov              qword ptr [rsp + 2328], rdx
                        cmp              al, 104;                             je    n34_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n102_call_proc_staged_α
n101_call_builtin_icon_β:
                        mov              r11, 102;                            jmp   n34_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n102_call_proc_staged_α:
                        mov              r11, 103
                        lea              rsi, [rsp + 2320]
                        call             Image_dcα;                           jmp   .Lx341_2
.Lx341_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx341_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2272]
                        mov              rdx, qword ptr [rsp + 2280]
.Lx341_29:              mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx
                        cmp              al, 104;                             je    n34_disjunction_af
                                                                              jmp   n34_disjunction_as
n102_call_proc_staged_β:
                        mov              r11, 103;                            jmp   n34_disjunction_af
.Lx341_0:               .quad            .Lx341_0_s
.Lx341_0_s:             .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:      mov              r11, 104
                        mov              qword ptr [rsp + 2624], 2            # result
                        mov              dword ptr [rsp + 2628], 4
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rsp + 2632], rax;         jmp   n31_disjunction_as
n103_lit_string_β:      mov              r11, 104;                            jmp   n31_disjunction_af
.Lx342_0:               .quad            .Lx342_0_s
.Lx342_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:      mov              r11, 105
                        mov              qword ptr [rsp + 2608], 2            # result
                        mov              dword ptr [rsp + 2612], 1
                        mov              rax, qword ptr [rip + .Lx343_0]
                        mov              qword ptr [rsp + 2616], rax;         jmp   n105_call_builtin_icon_α
n104_lit_string_β:      mov              r11, 105;                            jmp   n31_disjunction_af
.Lx343_0:               .quad            .Lx343_0_s
.Lx343_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n105_call_builtin_icon_α:
                        mov              r11, 106
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 2576], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 2584], rax
                        .section         .rodata
.Lrkfn345:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn345]
                        lea              rsi, [rsp + 2576]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx
                        cmp              al, 104;                             je    n31_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n106_call_proc_staged_α
n105_call_builtin_icon_β:
                        mov              r11, 106;                            jmp   n31_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n106_call_proc_staged_α:
                        mov              r11, 107
                        lea              rsi, [rsp + 2560]
                        call             Image_dcα;                           jmp   .Lx347_2
.Lx347_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx347_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2512], rax
                        mov              qword ptr [rsp + 2520], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2512]
                        mov              rdx, qword ptr [rsp + 2520]
.Lx347_29:              mov              qword ptr [rsp + 2512], rax
                        mov              qword ptr [rsp + 2520], rdx
                        cmp              al, 104;                             je    n31_disjunction_af
                                                                              jmp   n31_disjunction_as
n106_call_proc_staged_β:
                        mov              r11, 107;                            jmp   n31_disjunction_af
.Lx347_0:               .quad            .Lx347_0_s
.Lx347_0_s:             .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:      mov              r11, 108
                        mov              qword ptr [rsp + 2864], 2            # result
                        mov              dword ptr [rsp + 2868], 4
                        mov              rax, qword ptr [rip + .Lx348_0]
                        mov              qword ptr [rsp + 2872], rax;         jmp   n28_disjunction_as
n107_lit_string_β:      mov              r11, 108;                            jmp   n28_disjunction_af
.Lx348_0:               .quad            .Lx348_0_s
.Lx348_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_real_α:        mov              r11, 109
                        mov              qword ptr [rsp + 2848], 5            # result
                        mov              rax, qword ptr [rip + .Lx349_0]
                        mov              qword ptr [rsp + 2856], rax;         jmp   n109_call_builtin_icon_α
n108_lit_real_β:        mov              r11, 109;                            jmp   n28_disjunction_af
.Lx349_0:               .quad            4613262278296967578
#-----------------------------------------------------------------------------------------------------------------------
n109_call_builtin_icon_α:
                        mov              r11, 110
                        mov              rax, qword ptr [rsp + 2848]
                        mov              qword ptr [rsp + 2816], rax
                        mov              rax, qword ptr [rsp + 2856]
                        mov              qword ptr [rsp + 2824], rax
                        .section         .rodata
.Lrkfn351:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn351]
                        lea              rsi, [rsp + 2816]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2800], rax
                        mov              qword ptr [rsp + 2808], rdx
                        cmp              al, 104;                             je    n28_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n110_call_proc_staged_α
n109_call_builtin_icon_β:
                        mov              r11, 110;                            jmp   n28_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n110_call_proc_staged_α:
                        mov              r11, 111
                        lea              rsi, [rsp + 2800]
                        call             Image_dcα;                           jmp   .Lx353_2
.Lx353_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx353_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2752], rax
                        mov              qword ptr [rsp + 2760], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2752]
                        mov              rdx, qword ptr [rsp + 2760]
.Lx353_29:              mov              qword ptr [rsp + 2752], rax
                        mov              qword ptr [rsp + 2760], rdx
                        cmp              al, 104;                             je    n28_disjunction_af
                                                                              jmp   n28_disjunction_as
n110_call_proc_staged_β:
                        mov              r11, 111;                            jmp   n28_disjunction_af
.Lx353_0:               .quad            .Lx353_0_s
.Lx353_0_s:             .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:      mov              r11, 112
                        mov              qword ptr [rsp + 3104], 2            # result
                        mov              dword ptr [rsp + 3108], 4
                        mov              rax, qword ptr [rip + .Lx354_0]
                        mov              qword ptr [rsp + 3112], rax;         jmp   n25_disjunction_as
n111_lit_string_β:      mov              r11, 112;                            jmp   n25_disjunction_af
.Lx354_0:               .quad            .Lx354_0_s
.Lx354_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_real_α:        mov              r11, 113
                        mov              qword ptr [rsp + 3088], 5            # result
                        mov              rax, qword ptr [rip + .Lx355_0]
                        mov              qword ptr [rsp + 3096], rax;         jmp   n113_call_builtin_icon_α
n112_lit_real_β:        mov              r11, 113;                            jmp   n25_disjunction_af
.Lx355_0:               .quad            4611686018427387904
#-----------------------------------------------------------------------------------------------------------------------
n113_call_builtin_icon_α:
                        mov              r11, 114
                        mov              rax, qword ptr [rsp + 3088]
                        mov              qword ptr [rsp + 3056], rax
                        mov              rax, qword ptr [rsp + 3096]
                        mov              qword ptr [rsp + 3064], rax
                        .section         .rodata
.Lrkfn357:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn357]
                        lea              rsi, [rsp + 3056]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3040], rax
                        mov              qword ptr [rsp + 3048], rdx
                        cmp              al, 104;                             je    n25_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n114_call_proc_staged_α
n113_call_builtin_icon_β:
                        mov              r11, 114;                            jmp   n25_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n114_call_proc_staged_α:
                        mov              r11, 115
                        lea              rsi, [rsp + 3040]
                        call             Image_dcα;                           jmp   .Lx359_2
.Lx359_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx359_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2992], rax
                        mov              qword ptr [rsp + 3000], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2992]
                        mov              rdx, qword ptr [rsp + 3000]
.Lx359_29:              mov              qword ptr [rsp + 2992], rax
                        mov              qword ptr [rsp + 3000], rdx
                        cmp              al, 104;                             je    n25_disjunction_af
                                                                              jmp   n25_disjunction_as
n114_call_proc_staged_β:
                        mov              r11, 115;                            jmp   n25_disjunction_af
.Lx359_0:               .quad            .Lx359_0_s
.Lx359_0_s:             .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_string_α:      mov              r11, 116
                        mov              qword ptr [rsp + 3344], 2            # result
                        mov              dword ptr [rsp + 3348], 4
                        mov              rax, qword ptr [rip + .Lx360_0]
                        mov              qword ptr [rsp + 3352], rax;         jmp   n22_disjunction_as
n115_lit_string_β:      mov              r11, 116;                            jmp   n22_disjunction_af
.Lx360_0:               .quad            .Lx360_0_s
.Lx360_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_real_α:        mov              r11, 117
                        mov              qword ptr [rsp + 3328], 5            # result
                        mov              rax, qword ptr [rip + .Lx361_0]
                        mov              qword ptr [rsp + 3336], rax;         jmp   n117_call_proc_staged_α
n116_lit_real_β:        mov              r11, 117;                            jmp   n22_disjunction_af
.Lx361_0:               .quad            4611686018427387904
#-----------------------------------------------------------------------------------------------------------------------
n117_call_proc_staged_α:
                        mov              r11, 118
                        lea              rsi, [rsp + 3328]
                        call             Image_dcα;                           jmp   .Lx363_2
.Lx363_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx363_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3280], rax
                        mov              qword ptr [rsp + 3288], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3280]
                        mov              rdx, qword ptr [rsp + 3288]
.Lx363_29:              mov              qword ptr [rsp + 3280], rax
                        mov              qword ptr [rsp + 3288], rdx
                        cmp              al, 104;                             je    n22_disjunction_af
                                                                              jmp   n118_call_proc_staged_α
n117_call_proc_staged_β:
                        mov              r11, 118;                            jmp   n22_disjunction_af
.Lx363_0:               .quad            .Lx363_0_s
.Lx363_0_s:             .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n118_call_proc_staged_α:
                        mov              r11, 119
                        lea              rsi, [rsp + 3280]
                        call             Image_dcα;                           jmp   .Lx365_2
.Lx365_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx365_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3232], rax
                        mov              qword ptr [rsp + 3240], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3232]
                        mov              rdx, qword ptr [rsp + 3240]
.Lx365_29:              mov              qword ptr [rsp + 3232], rax
                        mov              qword ptr [rsp + 3240], rdx
                        cmp              al, 104;                             je    n22_disjunction_af
                                                                              jmp   n22_disjunction_as
n118_call_proc_staged_β:
                        mov              r11, 119;                            jmp   n22_disjunction_af
.Lx365_0:               .quad            .Lx365_0_s
.Lx365_0_s:             .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_string_α:      mov              r11, 120
                        mov              qword ptr [rsp + 3584], 2            # result
                        mov              dword ptr [rsp + 3588], 4
                        mov              rax, qword ptr [rip + .Lx366_0]
                        mov              qword ptr [rsp + 3592], rax;         jmp   n19_disjunction_as
n119_lit_string_β:      mov              r11, 120;                            jmp   n19_disjunction_af
.Lx366_0:               .quad            .Lx366_0_s
.Lx366_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_real_α:        mov              r11, 121
                        mov              qword ptr [rsp + 3568], 5            # result
                        mov              rax, qword ptr [rip + .Lx367_0]
                        mov              qword ptr [rsp + 3576], rax;         jmp   n121_call_proc_staged_α
n120_lit_real_β:        mov              r11, 121;                            jmp   n19_disjunction_af
.Lx367_0:               .quad            4558673246493684321
#-----------------------------------------------------------------------------------------------------------------------
n121_call_proc_staged_α:
                        mov              r11, 122
                        lea              rsi, [rsp + 3568]
                        call             Image_dcα;                           jmp   .Lx369_2
.Lx369_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx369_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3520], rax
                        mov              qword ptr [rsp + 3528], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3520]
                        mov              rdx, qword ptr [rsp + 3528]
.Lx369_29:              mov              qword ptr [rsp + 3520], rax
                        mov              qword ptr [rsp + 3528], rdx
                        cmp              al, 104;                             je    n19_disjunction_af
                                                                              jmp   n122_call_proc_staged_α
n121_call_proc_staged_β:
                        mov              r11, 122;                            jmp   n19_disjunction_af
.Lx369_0:               .quad            .Lx369_0_s
.Lx369_0_s:             .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n122_call_proc_staged_α:
                        mov              r11, 123
                        lea              rsi, [rsp + 3520]
                        call             Image_dcα;                           jmp   .Lx371_2
.Lx371_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx371_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3472], rax
                        mov              qword ptr [rsp + 3480], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3472]
                        mov              rdx, qword ptr [rsp + 3480]
.Lx371_29:              mov              qword ptr [rsp + 3472], rax
                        mov              qword ptr [rsp + 3480], rdx
                        cmp              al, 104;                             je    n19_disjunction_af
                                                                              jmp   n19_disjunction_as
n122_call_proc_staged_β:
                        mov              r11, 123;                            jmp   n19_disjunction_af
.Lx371_0:               .quad            .Lx371_0_s
.Lx371_0_s:             .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:      mov              r11, 124
                        mov              qword ptr [rsp + 3824], 2            # result
                        mov              dword ptr [rsp + 3828], 4
                        mov              rax, qword ptr [rip + .Lx372_0]
                        mov              qword ptr [rsp + 3832], rax;         jmp   n16_disjunction_as
n123_lit_string_β:      mov              r11, 124;                            jmp   n16_disjunction_af
.Lx372_0:               .quad            .Lx372_0_s
.Lx372_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_real_α:        mov              r11, 125
                        mov              qword ptr [rsp + 3808], 5            # result
                        mov              rax, qword ptr [rip + .Lx373_0]
                        mov              qword ptr [rsp + 3816], rax;         jmp   n125_call_proc_staged_α
n124_lit_real_β:        mov              r11, 125;                            jmp   n16_disjunction_af
.Lx373_0:               .quad            4805957202776948736
#-----------------------------------------------------------------------------------------------------------------------
n125_call_proc_staged_α:
                        mov              r11, 126
                        lea              rsi, [rsp + 3808]
                        call             Image_dcα;                           jmp   .Lx375_2
.Lx375_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx375_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3760], rax
                        mov              qword ptr [rsp + 3768], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3760]
                        mov              rdx, qword ptr [rsp + 3768]
.Lx375_29:              mov              qword ptr [rsp + 3760], rax
                        mov              qword ptr [rsp + 3768], rdx
                        cmp              al, 104;                             je    n16_disjunction_af
                                                                              jmp   n126_call_proc_staged_α
n125_call_proc_staged_β:
                        mov              r11, 126;                            jmp   n16_disjunction_af
.Lx375_0:               .quad            .Lx375_0_s
.Lx375_0_s:             .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n126_call_proc_staged_α:
                        mov              r11, 127
                        lea              rsi, [rsp + 3760]
                        call             Image_dcα;                           jmp   .Lx377_2
.Lx377_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx377_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3712], rax
                        mov              qword ptr [rsp + 3720], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3712]
                        mov              rdx, qword ptr [rsp + 3720]
.Lx377_29:              mov              qword ptr [rsp + 3712], rax
                        mov              qword ptr [rsp + 3720], rdx
                        cmp              al, 104;                             je    n16_disjunction_af
                                                                              jmp   n16_disjunction_as
n126_call_proc_staged_β:
                        mov              r11, 127;                            jmp   n16_disjunction_af
.Lx377_0:               .quad            .Lx377_0_s
.Lx377_0_s:             .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:      mov              r11, 128
                        mov              qword ptr [rsp + 4064], 2            # result
                        mov              dword ptr [rsp + 4068], 4
                        mov              rax, qword ptr [rip + .Lx378_0]
                        mov              qword ptr [rsp + 4072], rax;         jmp   n13_disjunction_as
n127_lit_string_β:      mov              r11, 128;                            jmp   n13_disjunction_af
.Lx378_0:               .quad            .Lx378_0_s
.Lx378_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_real_α:        mov              r11, 129
                        mov              qword ptr [rsp + 4048], 5            # result
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rsp + 4056], rax;         jmp   n129_call_builtin_icon_α
n128_lit_real_β:        mov              r11, 129;                            jmp   n13_disjunction_af
.Lx379_0:               .quad            4613937818241073152
#-----------------------------------------------------------------------------------------------------------------------
n129_call_builtin_icon_α:
                        mov              r11, 130
                        mov              rax, qword ptr [rsp + 4048]
                        mov              qword ptr [rsp + 4016], rax
                        mov              rax, qword ptr [rsp + 4056]
                        mov              qword ptr [rsp + 4024], rax
                        .section         .rodata
.Lrkfn381:              .string          "abs"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn381]
                        lea              rsi, [rsp + 4016]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4000], rax
                        mov              qword ptr [rsp + 4008], rdx
                        cmp              al, 104;                             je    n13_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n130_call_proc_staged_α
n129_call_builtin_icon_β:
                        mov              r11, 130;                            jmp   n13_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n130_call_proc_staged_α:
                        mov              r11, 131
                        lea              rsi, [rsp + 4000]
                        call             Image_dcα;                           jmp   .Lx383_2
.Lx383_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx383_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3952], rax
                        mov              qword ptr [rsp + 3960], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3952]
                        mov              rdx, qword ptr [rsp + 3960]
.Lx383_29:              mov              qword ptr [rsp + 3952], rax
                        mov              qword ptr [rsp + 3960], rdx
                        cmp              al, 104;                             je    n13_disjunction_af
                                                                              jmp   n13_disjunction_as
n130_call_proc_staged_β:
                        mov              r11, 131;                            jmp   n13_disjunction_af
.Lx383_0:               .quad            .Lx383_0_s
.Lx383_0_s:             .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:      mov              r11, 132
                        mov              qword ptr [rsp + 4288], 2            # result
                        mov              dword ptr [rsp + 4292], 4
                        mov              rax, qword ptr [rip + .Lx384_0]
                        mov              qword ptr [rsp + 4296], rax;         jmp   n10_disjunction_as
n131_lit_string_β:      mov              r11, 132;                            jmp   n10_disjunction_af
.Lx384_0:               .quad            .Lx384_0_s
.Lx384_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_real_α:        mov              r11, 133
                        mov              qword ptr [rsp + 4256], 5            # result
                        mov              rax, qword ptr [rip + .Lx385_0]
                        mov              qword ptr [rsp + 4264], rax;         jmp   n133_lit_real_α
n132_lit_real_β:        mov              r11, 133;                            jmp   n10_disjunction_af
.Lx385_0:               .quad            4611686018427387904
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_real_α:        mov              r11, 134
                        mov              qword ptr [rsp + 4272], 5            # result
                        mov              rax, qword ptr [rip + .Lx386_0]
                        mov              qword ptr [rsp + 4280], rax;         jmp   n134_binop_test_α
.Lx386_0:               .quad            4611686018427387904
#-----------------------------------------------------------------------------------------------------------------------
n134_binop_test_α:      mov              r11, 135
                        mov              rdi, qword ptr [rsp + 4256]
                        mov              rsi, qword ptr [rsp + 4264]
                        mov              rdx, qword ptr [rsp + 4272]
                        mov              rcx, qword ptr [rsp + 4280]
                        mov              r8d, 23
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n10_disjunction_af
                        mov              rax, qword ptr [rsp + 4272]
                        mov              qword ptr [rsp + 4240], rax
                        mov              rax, qword ptr [rsp + 4280]
                        mov              qword ptr [rsp + 4248], rax;         jmp   n135_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n135_call_proc_staged_α:
                        mov              r11, 136
                        lea              rsi, [rsp + 4240]
                        call             Image_dcα;                           jmp   .Lx389_2
.Lx389_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx389_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 4192], rax
                        mov              qword ptr [rsp + 4200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 4192]
                        mov              rdx, qword ptr [rsp + 4200]
.Lx389_29:              mov              qword ptr [rsp + 4192], rax
                        mov              qword ptr [rsp + 4200], rdx
                        cmp              al, 104;                             je    n10_disjunction_af
                                                                              jmp   n10_disjunction_as
n135_call_proc_staged_β:
                        mov              r11, 136;                            jmp   n10_disjunction_af
.Lx389_0:               .quad            .Lx389_0_s
.Lx389_0_s:             .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n136_call_proc_staged_α:
                        mov              r11, 137
                        mov              edi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det0@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx391_1
                        lea              rcx, [rip + .Lx391_3]
                        lea              rdx, [rip + .Lx391_4];               jmp   rax
.Lx391_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx391_2
.Lx391_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx391_2
.Lx391_1:               call             rt_faildescr@PLT
.Lx391_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx391_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 4416], rax
                        mov              qword ptr [rsp + 4424], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 4416]
                        mov              rdx, qword ptr [rsp + 4424]
.Lx391_29:              mov              qword ptr [rsp + 4416], rax
                        mov              qword ptr [rsp + 4424], rdx
                        cmp              al, 104;                             je    n7_disjunction_af
                                                                              jmp   n7_disjunction_as
n136_call_proc_staged_β:
                        mov              r11, 137;                            jmp   n7_disjunction_af
.Lx391_0:               .quad            .Lx391_0_s
.Lx391_0_s:             .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:      mov              r11, 138
                        mov              qword ptr [rsp + 4800], 2            # result
                        mov              dword ptr [rsp + 4804], 4
                        mov              rax, qword ptr [rip + .Lx392_0]
                        mov              qword ptr [rsp + 4808], rax;         jmp   n7_disjunction_as
n137_lit_string_β:      mov              r11, 138;                            jmp   n7_disjunction_af
.Lx392_0:               .quad            .Lx392_0_s
.Lx392_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_integer_α:     mov              r11, 139
                        mov              qword ptr [rsp + 4496], 3            # result
                        mov              rax, qword ptr [rip + .Lx393_0]
                        mov              qword ptr [rsp + 4504], rax;         jmp   n139_lit_integer_α
n138_lit_integer_β:     mov              r11, 139;                            jmp   n7_disjunction_af
.Lx393_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_integer_α:     mov              r11, 140
                        mov              qword ptr [rsp + 4512], 3            # result
                        mov              rax, qword ptr [rip + .Lx394_0]
                        mov              qword ptr [rsp + 4520], rax;         jmp   n140_to_α
.Lx394_0:               .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n140_to_α:              mov              r11, 141
                        mov              rdi, qword ptr [rsp + 4496]
                        mov              rsi, qword ptr [rsp + 4504]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4496], 3
                        mov              qword ptr [rsp + 4504], rax
                        mov              rdi, qword ptr [rsp + 4512]
                        mov              rsi, qword ptr [rsp + 4520]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4512], 3
                        mov              qword ptr [rsp + 4520], rax
                        mov              rax, qword ptr [rsp + 4504]
                        mov              qword ptr [rsp + 4480], rax
.Lx396_0:               mov              rax, qword ptr [rsp + 4480]
                        mov              rcx, qword ptr [rsp + 4520]
                        cmp              rax, rcx;                            jg    n7_disjunction_af
                        mov              qword ptr [rsp + 4464], 3
                        mov              qword ptr [rsp + 4472], rax;         jmp   n141_assign_α
n140_to_β:              mov              r11, 141
                        inc              qword ptr [rsp + 4480];              jmp   .Lx396_0
#-----------------------------------------------------------------------------------------------------------------------
n141_assign_α:          mov              r11, 142
                        mov              rax, qword ptr [rsp + 4464]
                        mov              rdx, qword ptr [rsp + 4472]
                        mov              qword ptr [rsp + 5696], rax
                        mov              qword ptr [rsp + 5704], rdx;         jmp   n142_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n142_bound_α:           mov              r11, 143
                        mov              qword ptr [rsp + 4528], rsp;         jmp   n143_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_string_α:      mov              r11, 144
                        mov              qword ptr [rsp + 4752], 2            # result
                        mov              dword ptr [rsp + 4756], 1
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rsp + 4760], rax;         jmp   n144_var_α
.Lx400_0:               .quad            .Lx400_0_s
.Lx400_0_s:             .string          "0"
#-----------------------------------------------------------------------------------------------------------------------
n144_var_α:             mov              r11, 145
                        mov              rax, qword ptr [rsp + 5696]
                        mov              qword ptr [rsp + 4768], rax
                        mov              rax, qword ptr [rsp + 5704]
                        mov              qword ptr [rsp + 4776], rax;         jmp   n145_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n145_call_builtin_icon_α:
                        mov              r11, 146
                        mov              rax, qword ptr [rsp + 4768]
                        mov              qword ptr [rsp + 4720], rax
                        mov              rax, qword ptr [rsp + 4776]
                        mov              qword ptr [rsp + 4728], rax
                        mov              rax, qword ptr [rsp + 4752]
                        mov              qword ptr [rsp + 4704], rax
                        mov              rax, qword ptr [rsp + 4760]
                        mov              qword ptr [rsp + 4712], rax
                        .section         .rodata
.Lrkfn404:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn404]
                        lea              rsi, [rsp + 4704]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4688], rax
                        mov              qword ptr [rsp + 4696], rdx
                        cmp              al, 104;                             je    n150_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n146_lit_string_α
n145_call_builtin_icon_β:
                        mov              r11, 146;                            jmp   n150_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:      mov              r11, 147
                        mov              qword ptr [rsp + 4784], 2            # result
                        mov              dword ptr [rsp + 4788], 1
                        mov              rax, qword ptr [rip + .Lx405_0]
                        mov              qword ptr [rsp + 4792], rax;         jmp   n147_binop_α
.Lx405_0:               .quad            .Lx405_0_s
.Lx405_0_s:             .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n147_binop_α:           mov              r11, 148
                        mov              rdi, qword ptr [rsp + 4688]
                        mov              rsi, qword ptr [rsp + 4696]
                        mov              rdx, qword ptr [rsp + 4784]
                        mov              rcx, qword ptr [rsp + 4792]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 4672], rax
                        mov              qword ptr [rsp + 4680], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n148_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n148_call_builtin_icon_α:
                        mov              r11, 149
                        mov              rax, qword ptr [rsp + 4672]
                        mov              qword ptr [rsp + 4640], rax
                        mov              rax, qword ptr [rsp + 4680]
                        mov              qword ptr [rsp + 4648], rax
                        .section         .rodata
.Lrkfn408:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn408]
                        lea              rsi, [rsp + 4640]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4624], rax
                        mov              qword ptr [rsp + 4632], rdx
                        cmp              al, 104;                             je    n150_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n149_call_builtin_icon_α
n148_call_builtin_icon_β:
                        mov              r11, 149;                            jmp   n150_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n149_call_builtin_icon_α:
                        mov              r11, 150
                        mov              rax, qword ptr [rsp + 4624]
                        mov              qword ptr [rsp + 4592], rax
                        mov              rax, qword ptr [rsp + 4632]
                        mov              qword ptr [rsp + 4600], rax
                        .section         .rodata
.Lrkfn410:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn410]
                        lea              rsi, [rsp + 4592]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4576], rax
                        mov              qword ptr [rsp + 4584], rdx
                        cmp              al, 104;                             je    n150_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n150_unmark_α
n149_call_builtin_icon_β:
                        mov              r11, 150;                            jmp   n150_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n150_unmark_α:          mov              r11, 151
                        mov              rsp, qword ptr [rsp + 4528];         jmp   n140_to_β
#-----------------------------------------------------------------------------------------------------------------------
n151_call_proc_staged_α:
                        mov              r11, 152
                        mov              edi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det0@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx414_1
                        lea              rcx, [rip + .Lx414_3]
                        lea              rdx, [rip + .Lx414_4];               jmp   rax
.Lx414_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx414_2
.Lx414_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx414_2
.Lx414_1:               call             rt_faildescr@PLT
.Lx414_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx414_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 4928], rax
                        mov              qword ptr [rsp + 4936], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 4928]
                        mov              rdx, qword ptr [rsp + 4936]
.Lx414_29:              mov              qword ptr [rsp + 4928], rax
                        mov              qword ptr [rsp + 4936], rdx
                        cmp              al, 104;                             je    n4_disjunction_af
                                                                              jmp   n4_disjunction_as
n151_call_proc_staged_β:
                        mov              r11, 152;                            jmp   n4_disjunction_af
.Lx414_0:               .quad            .Lx414_0_s
.Lx414_0_s:             .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:      mov              r11, 153
                        mov              qword ptr [rsp + 5296], 2            # result
                        mov              dword ptr [rsp + 5300], 4
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rsp + 5304], rax;         jmp   n4_disjunction_as
n152_lit_string_β:      mov              r11, 153;                            jmp   n4_disjunction_af
.Lx415_0:               .quad            .Lx415_0_s
.Lx415_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:     mov              r11, 154
                        mov              qword ptr [rsp + 4992], 3            # result
                        mov              rax, qword ptr [rip + .Lx416_0]
                        mov              qword ptr [rsp + 5000], rax;         jmp   n154_lit_integer_α
n153_lit_integer_β:     mov              r11, 154;                            jmp   n4_disjunction_af
.Lx416_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_integer_α:     mov              r11, 155
                        mov              qword ptr [rsp + 5008], 3            # result
                        mov              rax, qword ptr [rip + .Lx417_0]
                        mov              qword ptr [rsp + 5016], rax;         jmp   n155_to_α
.Lx417_0:               .quad            50
#-----------------------------------------------------------------------------------------------------------------------
n155_to_α:              mov              r11, 156
                        mov              rdi, qword ptr [rsp + 4992]
                        mov              rsi, qword ptr [rsp + 5000]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4992], 3
                        mov              qword ptr [rsp + 5000], rax
                        mov              rdi, qword ptr [rsp + 5008]
                        mov              rsi, qword ptr [rsp + 5016]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 5008], 3
                        mov              qword ptr [rsp + 5016], rax
                        mov              rax, qword ptr [rsp + 5000]
                        mov              qword ptr [rsp + 4976], rax
.Lx419_0:               mov              rax, qword ptr [rsp + 4976]
                        mov              rcx, qword ptr [rsp + 5016]
                        cmp              rax, rcx;                            jg    n4_disjunction_af
                        mov              qword ptr [rsp + 4960], 3
                        mov              qword ptr [rsp + 4968], rax;         jmp   n156_assign_α
n155_to_β:              mov              r11, 156
                        inc              qword ptr [rsp + 4976];              jmp   .Lx419_0
#-----------------------------------------------------------------------------------------------------------------------
n156_assign_α:          mov              r11, 157
                        mov              rax, qword ptr [rsp + 4960]
                        mov              rdx, qword ptr [rsp + 4968]
                        mov              qword ptr [rsp + 5696], rax
                        mov              qword ptr [rsp + 5704], rdx;         jmp   n157_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n157_bound_α:           mov              r11, 158
                        mov              qword ptr [rsp + 5024], rsp;         jmp   n158_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_string_α:      mov              r11, 159
                        mov              qword ptr [rsp + 5248], 2            # result
                        mov              dword ptr [rsp + 5252], 1
                        mov              rax, qword ptr [rip + .Lx423_0]
                        mov              qword ptr [rsp + 5256], rax;         jmp   n159_var_α
.Lx423_0:               .quad            .Lx423_0_s
.Lx423_0_s:             .string          "0"
#-----------------------------------------------------------------------------------------------------------------------
n159_var_α:             mov              r11, 160
                        mov              rax, qword ptr [rsp + 5696]
                        mov              qword ptr [rsp + 5264], rax
                        mov              rax, qword ptr [rsp + 5704]
                        mov              qword ptr [rsp + 5272], rax;         jmp   n160_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n160_call_builtin_icon_α:
                        mov              r11, 161
                        mov              rax, qword ptr [rsp + 5264]
                        mov              qword ptr [rsp + 5216], rax
                        mov              rax, qword ptr [rsp + 5272]
                        mov              qword ptr [rsp + 5224], rax
                        mov              rax, qword ptr [rsp + 5248]
                        mov              qword ptr [rsp + 5200], rax
                        mov              rax, qword ptr [rsp + 5256]
                        mov              qword ptr [rsp + 5208], rax
                        .section         .rodata
.Lrkfn427:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn427]
                        lea              rsi, [rsp + 5200]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5184], rax
                        mov              qword ptr [rsp + 5192], rdx
                        cmp              al, 104;                             je    n165_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n161_lit_string_α
n160_call_builtin_icon_β:
                        mov              r11, 161;                            jmp   n165_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_string_α:      mov              r11, 162
                        mov              qword ptr [rsp + 5280], 2            # result
                        mov              dword ptr [rsp + 5284], 2
                        mov              rax, qword ptr [rip + .Lx428_0]
                        mov              qword ptr [rsp + 5288], rax;         jmp   n162_binop_α
.Lx428_0:               .quad            .Lx428_0_s
.Lx428_0_s:             .string          "2."
#-----------------------------------------------------------------------------------------------------------------------
n162_binop_α:           mov              r11, 163
                        mov              rdi, qword ptr [rsp + 5184]
                        mov              rsi, qword ptr [rsp + 5192]
                        mov              rdx, qword ptr [rsp + 5280]
                        mov              rcx, qword ptr [rsp + 5288]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 5168], rax
                        mov              qword ptr [rsp + 5176], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n163_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n163_call_builtin_icon_α:
                        mov              r11, 164
                        mov              rax, qword ptr [rsp + 5168]
                        mov              qword ptr [rsp + 5136], rax
                        mov              rax, qword ptr [rsp + 5176]
                        mov              qword ptr [rsp + 5144], rax
                        .section         .rodata
.Lrkfn431:              .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn431]
                        lea              rsi, [rsp + 5136]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5120], rax
                        mov              qword ptr [rsp + 5128], rdx
                        cmp              al, 104;                             je    n165_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n164_call_builtin_icon_α
n163_call_builtin_icon_β:
                        mov              r11, 164;                            jmp   n165_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n164_call_builtin_icon_α:
                        mov              r11, 165
                        mov              rax, qword ptr [rsp + 5120]
                        mov              qword ptr [rsp + 5088], rax
                        mov              rax, qword ptr [rsp + 5128]
                        mov              qword ptr [rsp + 5096], rax
                        .section         .rodata
.Lrkfn433:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn433]
                        lea              rsi, [rsp + 5088]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5072], rax
                        mov              qword ptr [rsp + 5080], rdx
                        cmp              al, 104;                             je    n165_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n165_unmark_α
n164_call_builtin_icon_β:
                        mov              r11, 165;                            jmp   n165_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n165_unmark_α:          mov              r11, 166
                        mov              rsp, qword ptr [rsp + 5024];         jmp   n155_to_β
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:      mov              r11, 167
                        mov              qword ptr [rsp + 5680], 2            # result
                        mov              dword ptr [rsp + 5684], 4
                        mov              rax, qword ptr [rip + .Lx436_0]
                        mov              qword ptr [rsp + 5688], rax;         jmp   n1_disjunction_as
n166_lit_string_β:      mov              r11, 167;                            jmp   n1_disjunction_af
.Lx436_0:               .quad            .Lx436_0_s
.Lx436_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_integer_α:     mov              r11, 168
                        mov              qword ptr [rsp + 5456], 3            # result
                        mov              rax, qword ptr [rip + .Lx437_0]
                        mov              qword ptr [rsp + 5464], rax;         jmp   n168_lit_integer_α
n167_lit_integer_β:     mov              r11, 168;                            jmp   n1_disjunction_af
.Lx437_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_integer_α:     mov              r11, 169
                        mov              qword ptr [rsp + 5472], 3            # result
                        mov              rax, qword ptr [rip + .Lx438_0]
                        mov              qword ptr [rsp + 5480], rax;         jmp   n169_to_α
.Lx438_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n169_to_α:              mov              r11, 170
                        mov              rdi, qword ptr [rsp + 5456]
                        mov              rsi, qword ptr [rsp + 5464]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 5456], 3
                        mov              qword ptr [rsp + 5464], rax
                        mov              rdi, qword ptr [rsp + 5472]
                        mov              rsi, qword ptr [rsp + 5480]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 5472], 3
                        mov              qword ptr [rsp + 5480], rax
                        mov              rax, qword ptr [rsp + 5464]
                        mov              qword ptr [rsp + 5440], rax
.Lx440_0:               mov              rax, qword ptr [rsp + 5440]
                        mov              rcx, qword ptr [rsp + 5480]
                        cmp              rax, rcx;                            jg    n1_disjunction_af
                        mov              qword ptr [rsp + 5424], 3
                        mov              qword ptr [rsp + 5432], rax;         jmp   n170_bound_α
n169_to_β:              mov              r11, 170
                        inc              qword ptr [rsp + 5440];              jmp   .Lx440_0
#-----------------------------------------------------------------------------------------------------------------------
n170_bound_α:           mov              r11, 171
                        mov              qword ptr [rsp + 5488], rsp;         jmp   n171_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_integer_α:     mov              r11, 172
                        mov              qword ptr [rsp + 5648], 3            # result
                        mov              rax, qword ptr [rip + .Lx443_0]
                        mov              qword ptr [rsp + 5656], rax;         jmp   n172_random_α
.Lx443_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n172_random_α:          mov              r11, 173
                        mov              rdi, qword ptr [rsp + 5648]
                        mov              rsi, qword ptr [rsp + 5656]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n176_unmark_α
                        mov              qword ptr [rsp + 5632], rax
                        mov              qword ptr [rsp + 5640], rdx;         jmp   n173_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n173_deref_α:           mov              r11, 174
                        mov              rdi, qword ptr [rsp + 5632]
                        mov              rsi, qword ptr [rsp + 5640]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n176_unmark_α
                        mov              qword ptr [rsp + 5664], rax
                        mov              qword ptr [rsp + 5672], rdx;         jmp   n174_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n174_call_proc_staged_α:
                        mov              r11, 175
                        lea              rsi, [rsp + 5664]
                        call             Image_dcα;                           jmp   .Lx447_2
.Lx447_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx447_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 5584], rax
                        mov              qword ptr [rsp + 5592], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 5584]
                        mov              rdx, qword ptr [rsp + 5592]
.Lx447_29:              mov              qword ptr [rsp + 5584], rax
                        mov              qword ptr [rsp + 5592], rdx
                        cmp              al, 104;                             je    n176_unmark_α
                                                                              jmp   n175_call_builtin_icon_α
n174_call_proc_staged_β:
                        mov              r11, 175;                            jmp   n176_unmark_α
.Lx447_0:               .quad            .Lx447_0_s
.Lx447_0_s:             .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n175_call_builtin_icon_α:
                        mov              r11, 176
                        mov              rax, qword ptr [rsp + 5584]
                        mov              qword ptr [rsp + 5552], rax
                        mov              rax, qword ptr [rsp + 5592]
                        mov              qword ptr [rsp + 5560], rax
                        .section         .rodata
.Lrkfn449:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn449]
                        lea              rsi, [rsp + 5552]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5536], rax
                        mov              qword ptr [rsp + 5544], rdx
                        cmp              al, 104;                             je    n176_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n176_unmark_α
n175_call_builtin_icon_β:
                        mov              r11, 176;                            jmp   n176_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n176_unmark_α:          mov              r11, 177
                        mov              rsp, qword ptr [rsp + 5488];         jmp   n169_to_β
#-----------------------------------------------------------------------------------------------------------------------
p1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
p1_β:
                                                                              jmp   p1_ω
#-----------------------------------------------------------------------------------------------------------------------
p1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 5736]
                        add              rsp, 5760;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
p1_ω:
                        mov              rcx, qword ptr [rsp + 5744]
                        add              rsp, 5760;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
p1_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx452_2]
                        lea              rdx, [rip + .Lx452_3];               jmp   FN__p1
.Lx452_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx452_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__p2:
                        sub              rsp, 12304
                        mov              qword ptr [rsp + 12280], rcx
                        mov              qword ptr [rsp + 12288], rdx
                        mov              rdi, rsp
                        add              rdi, 12224
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
p2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n453_lit_string_α:      mov              r11, 178
                        mov              qword ptr [rsp + 12048], 2           # result
                        mov              dword ptr [rsp + 12052], 22
                        mov              rax, qword ptr [rip + .Lx825_0]
                        mov              qword ptr [rsp + 12056], rax;        jmp   n454_disjunction_α
.Lx825_0:               .quad            .Lx825_0_s
.Lx825_0_s:             .string          "numeric(\" . 3\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n454_disjunction_α:     mov              r11, 179
                        mov              qword ptr [rsp + 12064], 0
                        mov              qword ptr [rsp + 12072], 0
                        mov              dword ptr [rsp + 12080], 0;          jmp   n822_lit_string_α
n454_disjunction_as:    mov              r11, 179
                        mov              eax, dword ptr [rsp + 12080]
                        cmp              eax, 0;                              jne   .Lx827_0
                        mov              rax, qword ptr [rsp + 12096]
                        mov              qword ptr [rsp + 12064], rax
                        mov              rax, qword ptr [rsp + 12104]
                        mov              qword ptr [rsp + 12072], rax;        jmp   n455_call_builtin_icon_α
.Lx827_0:               cmp              eax, 1;                              jne   .Lx827_1
                        mov              rax, qword ptr [rsp + 12208]
                        mov              qword ptr [rsp + 12064], rax
                        mov              rax, qword ptr [rsp + 12216]
                        mov              qword ptr [rsp + 12072], rax;        jmp   n455_call_builtin_icon_α
.Lx827_1:                                                                     jmp   n455_call_builtin_icon_α
n454_disjunction_β:     mov              r11, 179
                        mov              eax, dword ptr [rsp + 12080]
                        cmp              eax, 0;                              je    n454_disjunction_af
                                                                              jmp   n454_disjunction_af
n454_disjunction_af:    mov              r11, 179
                        add              dword ptr [rsp + 12080], 1
                        mov              eax, dword ptr [rsp + 12080]
                        cmp              eax, 1;                              je    n821_lit_string_α
                                                                              jmp   n456_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n455_call_builtin_icon_α:
                        mov              r11, 180
                        mov              rax, qword ptr [rsp + 12064]
                        mov              qword ptr [rsp + 12016], rax
                        mov              rax, qword ptr [rsp + 12072]
                        mov              qword ptr [rsp + 12024], rax
                        mov              rax, qword ptr [rsp + 12048]
                        mov              qword ptr [rsp + 12000], rax
                        mov              rax, qword ptr [rsp + 12056]
                        mov              qword ptr [rsp + 12008], rax
                        .section         .rodata
.Lrkfn829:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn829]
                        lea              rsi, [rsp + 12000]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 11984], rax
                        mov              qword ptr [rsp + 11992], rdx
                        cmp              al, 104;                             je    n454_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n456_lit_string_α
n455_call_builtin_icon_β:
                        mov              r11, 180;                            jmp   n454_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n456_lit_string_α:      mov              r11, 181
                        mov              qword ptr [rsp + 11808], 2           # result
                        mov              dword ptr [rsp + 11812], 20
                        mov              rax, qword ptr [rip + .Lx830_0]
                        mov              qword ptr [rsp + 11816], rax;        jmp   n457_disjunction_α
.Lx830_0:               .quad            .Lx830_0_s
.Lx830_0_s:             .string          "numeric(\"e2\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n457_disjunction_α:     mov              r11, 182
                        mov              qword ptr [rsp + 11824], 0
                        mov              qword ptr [rsp + 11832], 0
                        mov              dword ptr [rsp + 11840], 0;          jmp   n818_lit_string_α
n457_disjunction_as:    mov              r11, 182
                        mov              eax, dword ptr [rsp + 11840]
                        cmp              eax, 0;                              jne   .Lx832_0
                        mov              rax, qword ptr [rsp + 11856]
                        mov              qword ptr [rsp + 11824], rax
                        mov              rax, qword ptr [rsp + 11864]
                        mov              qword ptr [rsp + 11832], rax;        jmp   n458_call_builtin_icon_α
.Lx832_0:               cmp              eax, 1;                              jne   .Lx832_1
                        mov              rax, qword ptr [rsp + 11968]
                        mov              qword ptr [rsp + 11824], rax
                        mov              rax, qword ptr [rsp + 11976]
                        mov              qword ptr [rsp + 11832], rax;        jmp   n458_call_builtin_icon_α
.Lx832_1:                                                                     jmp   n458_call_builtin_icon_α
n457_disjunction_β:     mov              r11, 182
                        mov              eax, dword ptr [rsp + 11840]
                        cmp              eax, 0;                              je    n457_disjunction_af
                                                                              jmp   n457_disjunction_af
n457_disjunction_af:    mov              r11, 182
                        add              dword ptr [rsp + 11840], 1
                        mov              eax, dword ptr [rsp + 11840]
                        cmp              eax, 1;                              je    n817_lit_string_α
                                                                              jmp   n459_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n458_call_builtin_icon_α:
                        mov              r11, 183
                        mov              rax, qword ptr [rsp + 11824]
                        mov              qword ptr [rsp + 11776], rax
                        mov              rax, qword ptr [rsp + 11832]
                        mov              qword ptr [rsp + 11784], rax
                        mov              rax, qword ptr [rsp + 11808]
                        mov              qword ptr [rsp + 11760], rax
                        mov              rax, qword ptr [rsp + 11816]
                        mov              qword ptr [rsp + 11768], rax
                        .section         .rodata
.Lrkfn834:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn834]
                        lea              rsi, [rsp + 11760]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 11744], rax
                        mov              qword ptr [rsp + 11752], rdx
                        cmp              al, 104;                             je    n457_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n459_lit_string_α
n458_call_builtin_icon_β:
                        mov              r11, 183;                            jmp   n457_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n459_lit_string_α:      mov              r11, 184
                        mov              qword ptr [rsp + 11568], 2           # result
                        mov              dword ptr [rsp + 11572], 23
                        mov              rax, qword ptr [rip + .Lx835_0]
                        mov              qword ptr [rsp + 11576], rax;        jmp   n460_disjunction_α
.Lx835_0:               .quad            .Lx835_0_s
.Lx835_0_s:             .string          "numeric(\"3e500\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n460_disjunction_α:     mov              r11, 185
                        mov              qword ptr [rsp + 11584], 0
                        mov              qword ptr [rsp + 11592], 0
                        mov              dword ptr [rsp + 11600], 0;          jmp   n814_lit_string_α
n460_disjunction_as:    mov              r11, 185
                        mov              eax, dword ptr [rsp + 11600]
                        cmp              eax, 0;                              jne   .Lx837_0
                        mov              rax, qword ptr [rsp + 11616]
                        mov              qword ptr [rsp + 11584], rax
                        mov              rax, qword ptr [rsp + 11624]
                        mov              qword ptr [rsp + 11592], rax;        jmp   n461_call_builtin_icon_α
.Lx837_0:               cmp              eax, 1;                              jne   .Lx837_1
                        mov              rax, qword ptr [rsp + 11728]
                        mov              qword ptr [rsp + 11584], rax
                        mov              rax, qword ptr [rsp + 11736]
                        mov              qword ptr [rsp + 11592], rax;        jmp   n461_call_builtin_icon_α
.Lx837_1:                                                                     jmp   n461_call_builtin_icon_α
n460_disjunction_β:     mov              r11, 185
                        mov              eax, dword ptr [rsp + 11600]
                        cmp              eax, 0;                              je    n460_disjunction_af
                                                                              jmp   n460_disjunction_af
n460_disjunction_af:    mov              r11, 185
                        add              dword ptr [rsp + 11600], 1
                        mov              eax, dword ptr [rsp + 11600]
                        cmp              eax, 1;                              je    n813_lit_string_α
                                                                              jmp   n462_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n461_call_builtin_icon_α:
                        mov              r11, 186
                        mov              rax, qword ptr [rsp + 11584]
                        mov              qword ptr [rsp + 11536], rax
                        mov              rax, qword ptr [rsp + 11592]
                        mov              qword ptr [rsp + 11544], rax
                        mov              rax, qword ptr [rsp + 11568]
                        mov              qword ptr [rsp + 11520], rax
                        mov              rax, qword ptr [rsp + 11576]
                        mov              qword ptr [rsp + 11528], rax
                        .section         .rodata
.Lrkfn839:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn839]
                        lea              rsi, [rsp + 11520]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 11504], rax
                        mov              qword ptr [rsp + 11512], rdx
                        cmp              al, 104;                             je    n460_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n462_lit_string_α
n461_call_builtin_icon_β:
                        mov              r11, 186;                            jmp   n460_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n462_lit_string_α:      mov              r11, 187
                        mov              qword ptr [rsp + 11328], 2           # result
                        mov              dword ptr [rsp + 11332], 14
                        mov              rax, qword ptr [rip + .Lx840_0]
                        mov              qword ptr [rsp + 11336], rax;        jmp   n463_disjunction_α
.Lx840_0:               .quad            .Lx840_0_s
.Lx840_0_s:             .string          "real(2) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n463_disjunction_α:     mov              r11, 188
                        mov              qword ptr [rsp + 11344], 0
                        mov              qword ptr [rsp + 11352], 0
                        mov              dword ptr [rsp + 11360], 0;          jmp   n810_lit_integer_α
n463_disjunction_as:    mov              r11, 188
                        mov              eax, dword ptr [rsp + 11360]
                        cmp              eax, 0;                              jne   .Lx842_0
                        mov              rax, qword ptr [rsp + 11376]
                        mov              qword ptr [rsp + 11344], rax
                        mov              rax, qword ptr [rsp + 11384]
                        mov              qword ptr [rsp + 11352], rax;        jmp   n464_call_builtin_icon_α
.Lx842_0:               cmp              eax, 1;                              jne   .Lx842_1
                        mov              rax, qword ptr [rsp + 11488]
                        mov              qword ptr [rsp + 11344], rax
                        mov              rax, qword ptr [rsp + 11496]
                        mov              qword ptr [rsp + 11352], rax;        jmp   n464_call_builtin_icon_α
.Lx842_1:                                                                     jmp   n464_call_builtin_icon_α
n463_disjunction_β:     mov              r11, 188
                        mov              eax, dword ptr [rsp + 11360]
                        cmp              eax, 0;                              je    n463_disjunction_af
                                                                              jmp   n463_disjunction_af
n463_disjunction_af:    mov              r11, 188
                        add              dword ptr [rsp + 11360], 1
                        mov              eax, dword ptr [rsp + 11360]
                        cmp              eax, 1;                              je    n809_lit_string_α
                                                                              jmp   n465_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n464_call_builtin_icon_α:
                        mov              r11, 189
                        mov              rax, qword ptr [rsp + 11344]
                        mov              qword ptr [rsp + 11296], rax
                        mov              rax, qword ptr [rsp + 11352]
                        mov              qword ptr [rsp + 11304], rax
                        mov              rax, qword ptr [rsp + 11328]
                        mov              qword ptr [rsp + 11280], rax
                        mov              rax, qword ptr [rsp + 11336]
                        mov              qword ptr [rsp + 11288], rax
                        .section         .rodata
.Lrkfn844:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn844]
                        lea              rsi, [rsp + 11280]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 11264], rax
                        mov              qword ptr [rsp + 11272], rdx
                        cmp              al, 104;                             je    n463_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n465_lit_string_α
n464_call_builtin_icon_β:
                        mov              r11, 189;                            jmp   n463_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n465_lit_string_α:      mov              r11, 190
                        mov              qword ptr [rsp + 11088], 2           # result
                        mov              dword ptr [rsp + 11092], 16
                        mov              rax, qword ptr [rip + .Lx845_0]
                        mov              qword ptr [rsp + 11096], rax;        jmp   n466_disjunction_α
.Lx845_0:               .quad            .Lx845_0_s
.Lx845_0_s:             .string          "real(2.0) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n466_disjunction_α:     mov              r11, 191
                        mov              qword ptr [rsp + 11104], 0
                        mov              qword ptr [rsp + 11112], 0
                        mov              dword ptr [rsp + 11120], 0;          jmp   n806_lit_real_α
n466_disjunction_as:    mov              r11, 191
                        mov              eax, dword ptr [rsp + 11120]
                        cmp              eax, 0;                              jne   .Lx847_0
                        mov              rax, qword ptr [rsp + 11136]
                        mov              qword ptr [rsp + 11104], rax
                        mov              rax, qword ptr [rsp + 11144]
                        mov              qword ptr [rsp + 11112], rax;        jmp   n467_call_builtin_icon_α
.Lx847_0:               cmp              eax, 1;                              jne   .Lx847_1
                        mov              rax, qword ptr [rsp + 11248]
                        mov              qword ptr [rsp + 11104], rax
                        mov              rax, qword ptr [rsp + 11256]
                        mov              qword ptr [rsp + 11112], rax;        jmp   n467_call_builtin_icon_α
.Lx847_1:                                                                     jmp   n467_call_builtin_icon_α
n466_disjunction_β:     mov              r11, 191
                        mov              eax, dword ptr [rsp + 11120]
                        cmp              eax, 0;                              je    n466_disjunction_af
                                                                              jmp   n466_disjunction_af
n466_disjunction_af:    mov              r11, 191
                        add              dword ptr [rsp + 11120], 1
                        mov              eax, dword ptr [rsp + 11120]
                        cmp              eax, 1;                              je    n805_lit_string_α
                                                                              jmp   n468_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n467_call_builtin_icon_α:
                        mov              r11, 192
                        mov              rax, qword ptr [rsp + 11104]
                        mov              qword ptr [rsp + 11056], rax
                        mov              rax, qword ptr [rsp + 11112]
                        mov              qword ptr [rsp + 11064], rax
                        mov              rax, qword ptr [rsp + 11088]
                        mov              qword ptr [rsp + 11040], rax
                        mov              rax, qword ptr [rsp + 11096]
                        mov              qword ptr [rsp + 11048], rax
                        .section         .rodata
.Lrkfn849:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn849]
                        lea              rsi, [rsp + 11040]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 11024], rax
                        mov              qword ptr [rsp + 11032], rdx
                        cmp              al, 104;                             je    n466_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n468_lit_string_α
n467_call_builtin_icon_β:
                        mov              r11, 192;                            jmp   n466_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n468_lit_string_α:      mov              r11, 193
                        mov              qword ptr [rsp + 10848], 2           # result
                        mov              dword ptr [rsp + 10852], 16
                        mov              rax, qword ptr [rip + .Lx850_0]
                        mov              qword ptr [rsp + 10856], rax;        jmp   n469_disjunction_α
.Lx850_0:               .quad            .Lx850_0_s
.Lx850_0_s:             .string          "real(2.7) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n469_disjunction_α:     mov              r11, 194
                        mov              qword ptr [rsp + 10864], 0
                        mov              qword ptr [rsp + 10872], 0
                        mov              dword ptr [rsp + 10880], 0;          jmp   n802_lit_real_α
n469_disjunction_as:    mov              r11, 194
                        mov              eax, dword ptr [rsp + 10880]
                        cmp              eax, 0;                              jne   .Lx852_0
                        mov              rax, qword ptr [rsp + 10896]
                        mov              qword ptr [rsp + 10864], rax
                        mov              rax, qword ptr [rsp + 10904]
                        mov              qword ptr [rsp + 10872], rax;        jmp   n470_call_builtin_icon_α
.Lx852_0:               cmp              eax, 1;                              jne   .Lx852_1
                        mov              rax, qword ptr [rsp + 11008]
                        mov              qword ptr [rsp + 10864], rax
                        mov              rax, qword ptr [rsp + 11016]
                        mov              qword ptr [rsp + 10872], rax;        jmp   n470_call_builtin_icon_α
.Lx852_1:                                                                     jmp   n470_call_builtin_icon_α
n469_disjunction_β:     mov              r11, 194
                        mov              eax, dword ptr [rsp + 10880]
                        cmp              eax, 0;                              je    n469_disjunction_af
                                                                              jmp   n469_disjunction_af
n469_disjunction_af:    mov              r11, 194
                        add              dword ptr [rsp + 10880], 1
                        mov              eax, dword ptr [rsp + 10880]
                        cmp              eax, 1;                              je    n801_lit_string_α
                                                                              jmp   n471_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n470_call_builtin_icon_α:
                        mov              r11, 195
                        mov              rax, qword ptr [rsp + 10864]
                        mov              qword ptr [rsp + 10816], rax
                        mov              rax, qword ptr [rsp + 10872]
                        mov              qword ptr [rsp + 10824], rax
                        mov              rax, qword ptr [rsp + 10848]
                        mov              qword ptr [rsp + 10800], rax
                        mov              rax, qword ptr [rsp + 10856]
                        mov              qword ptr [rsp + 10808], rax
                        .section         .rodata
.Lrkfn854:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn854]
                        lea              rsi, [rsp + 10800]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 10784], rax
                        mov              qword ptr [rsp + 10792], rdx
                        cmp              al, 104;                             je    n469_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n471_lit_string_α
n470_call_builtin_icon_β:
                        mov              r11, 195;                            jmp   n469_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n471_lit_string_α:      mov              r11, 196
                        mov              qword ptr [rsp + 10608], 2           # result
                        mov              dword ptr [rsp + 10612], 16
                        mov              rax, qword ptr [rip + .Lx855_0]
                        mov              qword ptr [rsp + 10616], rax;        jmp   n472_disjunction_α
.Lx855_0:               .quad            .Lx855_0_s
.Lx855_0_s:             .string          "real(\"2\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n472_disjunction_α:     mov              r11, 197
                        mov              qword ptr [rsp + 10624], 0
                        mov              qword ptr [rsp + 10632], 0
                        mov              dword ptr [rsp + 10640], 0;          jmp   n798_lit_string_α
n472_disjunction_as:    mov              r11, 197
                        mov              eax, dword ptr [rsp + 10640]
                        cmp              eax, 0;                              jne   .Lx857_0
                        mov              rax, qword ptr [rsp + 10656]
                        mov              qword ptr [rsp + 10624], rax
                        mov              rax, qword ptr [rsp + 10664]
                        mov              qword ptr [rsp + 10632], rax;        jmp   n473_call_builtin_icon_α
.Lx857_0:               cmp              eax, 1;                              jne   .Lx857_1
                        mov              rax, qword ptr [rsp + 10768]
                        mov              qword ptr [rsp + 10624], rax
                        mov              rax, qword ptr [rsp + 10776]
                        mov              qword ptr [rsp + 10632], rax;        jmp   n473_call_builtin_icon_α
.Lx857_1:                                                                     jmp   n473_call_builtin_icon_α
n472_disjunction_β:     mov              r11, 197
                        mov              eax, dword ptr [rsp + 10640]
                        cmp              eax, 0;                              je    n472_disjunction_af
                                                                              jmp   n472_disjunction_af
n472_disjunction_af:    mov              r11, 197
                        add              dword ptr [rsp + 10640], 1
                        mov              eax, dword ptr [rsp + 10640]
                        cmp              eax, 1;                              je    n797_lit_string_α
                                                                              jmp   n474_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n473_call_builtin_icon_α:
                        mov              r11, 198
                        mov              rax, qword ptr [rsp + 10624]
                        mov              qword ptr [rsp + 10576], rax
                        mov              rax, qword ptr [rsp + 10632]
                        mov              qword ptr [rsp + 10584], rax
                        mov              rax, qword ptr [rsp + 10608]
                        mov              qword ptr [rsp + 10560], rax
                        mov              rax, qword ptr [rsp + 10616]
                        mov              qword ptr [rsp + 10568], rax
                        .section         .rodata
.Lrkfn859:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn859]
                        lea              rsi, [rsp + 10560]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 10544], rax
                        mov              qword ptr [rsp + 10552], rdx
                        cmp              al, 104;                             je    n472_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n474_lit_string_α
n473_call_builtin_icon_β:
                        mov              r11, 198;                            jmp   n472_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n474_lit_string_α:      mov              r11, 199
                        mov              qword ptr [rsp + 10368], 2           # result
                        mov              dword ptr [rsp + 10372], 17
                        mov              rax, qword ptr [rip + .Lx860_0]
                        mov              qword ptr [rsp + 10376], rax;        jmp   n475_disjunction_α
.Lx860_0:               .quad            .Lx860_0_s
.Lx860_0_s:             .string          "real(\" 2\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n475_disjunction_α:     mov              r11, 200
                        mov              qword ptr [rsp + 10384], 0
                        mov              qword ptr [rsp + 10392], 0
                        mov              dword ptr [rsp + 10400], 0;          jmp   n794_lit_string_α
n475_disjunction_as:    mov              r11, 200
                        mov              eax, dword ptr [rsp + 10400]
                        cmp              eax, 0;                              jne   .Lx862_0
                        mov              rax, qword ptr [rsp + 10416]
                        mov              qword ptr [rsp + 10384], rax
                        mov              rax, qword ptr [rsp + 10424]
                        mov              qword ptr [rsp + 10392], rax;        jmp   n476_call_builtin_icon_α
.Lx862_0:               cmp              eax, 1;                              jne   .Lx862_1
                        mov              rax, qword ptr [rsp + 10528]
                        mov              qword ptr [rsp + 10384], rax
                        mov              rax, qword ptr [rsp + 10536]
                        mov              qword ptr [rsp + 10392], rax;        jmp   n476_call_builtin_icon_α
.Lx862_1:                                                                     jmp   n476_call_builtin_icon_α
n475_disjunction_β:     mov              r11, 200
                        mov              eax, dword ptr [rsp + 10400]
                        cmp              eax, 0;                              je    n475_disjunction_af
                                                                              jmp   n475_disjunction_af
n475_disjunction_af:    mov              r11, 200
                        add              dword ptr [rsp + 10400], 1
                        mov              eax, dword ptr [rsp + 10400]
                        cmp              eax, 1;                              je    n793_lit_string_α
                                                                              jmp   n477_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n476_call_builtin_icon_α:
                        mov              r11, 201
                        mov              rax, qword ptr [rsp + 10384]
                        mov              qword ptr [rsp + 10336], rax
                        mov              rax, qword ptr [rsp + 10392]
                        mov              qword ptr [rsp + 10344], rax
                        mov              rax, qword ptr [rsp + 10368]
                        mov              qword ptr [rsp + 10320], rax
                        mov              rax, qword ptr [rsp + 10376]
                        mov              qword ptr [rsp + 10328], rax
                        .section         .rodata
.Lrkfn864:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn864]
                        lea              rsi, [rsp + 10320]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 10304], rax
                        mov              qword ptr [rsp + 10312], rdx
                        cmp              al, 104;                             je    n475_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n477_lit_string_α
n476_call_builtin_icon_β:
                        mov              r11, 201;                            jmp   n475_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n477_lit_string_α:      mov              r11, 202
                        mov              qword ptr [rsp + 10128], 2           # result
                        mov              dword ptr [rsp + 10132], 17
                        mov              rax, qword ptr [rip + .Lx865_0]
                        mov              qword ptr [rsp + 10136], rax;        jmp   n478_disjunction_α
.Lx865_0:               .quad            .Lx865_0_s
.Lx865_0_s:             .string          "real(\"2 \") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n478_disjunction_α:     mov              r11, 203
                        mov              qword ptr [rsp + 10144], 0
                        mov              qword ptr [rsp + 10152], 0
                        mov              dword ptr [rsp + 10160], 0;          jmp   n790_lit_string_α
n478_disjunction_as:    mov              r11, 203
                        mov              eax, dword ptr [rsp + 10160]
                        cmp              eax, 0;                              jne   .Lx867_0
                        mov              rax, qword ptr [rsp + 10176]
                        mov              qword ptr [rsp + 10144], rax
                        mov              rax, qword ptr [rsp + 10184]
                        mov              qword ptr [rsp + 10152], rax;        jmp   n479_call_builtin_icon_α
.Lx867_0:               cmp              eax, 1;                              jne   .Lx867_1
                        mov              rax, qword ptr [rsp + 10288]
                        mov              qword ptr [rsp + 10144], rax
                        mov              rax, qword ptr [rsp + 10296]
                        mov              qword ptr [rsp + 10152], rax;        jmp   n479_call_builtin_icon_α
.Lx867_1:                                                                     jmp   n479_call_builtin_icon_α
n478_disjunction_β:     mov              r11, 203
                        mov              eax, dword ptr [rsp + 10160]
                        cmp              eax, 0;                              je    n478_disjunction_af
                                                                              jmp   n478_disjunction_af
n478_disjunction_af:    mov              r11, 203
                        add              dword ptr [rsp + 10160], 1
                        mov              eax, dword ptr [rsp + 10160]
                        cmp              eax, 1;                              je    n789_lit_string_α
                                                                              jmp   n480_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n479_call_builtin_icon_α:
                        mov              r11, 204
                        mov              rax, qword ptr [rsp + 10144]
                        mov              qword ptr [rsp + 10096], rax
                        mov              rax, qword ptr [rsp + 10152]
                        mov              qword ptr [rsp + 10104], rax
                        mov              rax, qword ptr [rsp + 10128]
                        mov              qword ptr [rsp + 10080], rax
                        mov              rax, qword ptr [rsp + 10136]
                        mov              qword ptr [rsp + 10088], rax
                        .section         .rodata
.Lrkfn869:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn869]
                        lea              rsi, [rsp + 10080]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 10064], rax
                        mov              qword ptr [rsp + 10072], rdx
                        cmp              al, 104;                             je    n478_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n480_lit_string_α
n479_call_builtin_icon_β:
                        mov              r11, 204;                            jmp   n478_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n480_lit_string_α:      mov              r11, 205
                        mov              qword ptr [rsp + 9888], 2            # result
                        mov              dword ptr [rsp + 9892], 17
                        mov              rax, qword ptr [rip + .Lx870_0]
                        mov              qword ptr [rsp + 9896], rax;         jmp   n481_disjunction_α
.Lx870_0:               .quad            .Lx870_0_s
.Lx870_0_s:             .string          "real(\"+2\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n481_disjunction_α:     mov              r11, 206
                        mov              qword ptr [rsp + 9904], 0
                        mov              qword ptr [rsp + 9912], 0
                        mov              dword ptr [rsp + 9920], 0;           jmp   n786_lit_string_α
n481_disjunction_as:    mov              r11, 206
                        mov              eax, dword ptr [rsp + 9920]
                        cmp              eax, 0;                              jne   .Lx872_0
                        mov              rax, qword ptr [rsp + 9936]
                        mov              qword ptr [rsp + 9904], rax
                        mov              rax, qword ptr [rsp + 9944]
                        mov              qword ptr [rsp + 9912], rax;         jmp   n482_call_builtin_icon_α
.Lx872_0:               cmp              eax, 1;                              jne   .Lx872_1
                        mov              rax, qword ptr [rsp + 10048]
                        mov              qword ptr [rsp + 9904], rax
                        mov              rax, qword ptr [rsp + 10056]
                        mov              qword ptr [rsp + 9912], rax;         jmp   n482_call_builtin_icon_α
.Lx872_1:                                                                     jmp   n482_call_builtin_icon_α
n481_disjunction_β:     mov              r11, 206
                        mov              eax, dword ptr [rsp + 9920]
                        cmp              eax, 0;                              je    n481_disjunction_af
                                                                              jmp   n481_disjunction_af
n481_disjunction_af:    mov              r11, 206
                        add              dword ptr [rsp + 9920], 1
                        mov              eax, dword ptr [rsp + 9920]
                        cmp              eax, 1;                              je    n785_lit_string_α
                                                                              jmp   n483_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n482_call_builtin_icon_α:
                        mov              r11, 207
                        mov              rax, qword ptr [rsp + 9904]
                        mov              qword ptr [rsp + 9856], rax
                        mov              rax, qword ptr [rsp + 9912]
                        mov              qword ptr [rsp + 9864], rax
                        mov              rax, qword ptr [rsp + 9888]
                        mov              qword ptr [rsp + 9840], rax
                        mov              rax, qword ptr [rsp + 9896]
                        mov              qword ptr [rsp + 9848], rax
                        .section         .rodata
.Lrkfn874:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn874]
                        lea              rsi, [rsp + 9840]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 9824], rax
                        mov              qword ptr [rsp + 9832], rdx
                        cmp              al, 104;                             je    n481_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n483_lit_string_α
n482_call_builtin_icon_β:
                        mov              r11, 207;                            jmp   n481_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n483_lit_string_α:      mov              r11, 208
                        mov              qword ptr [rsp + 9648], 2            # result
                        mov              dword ptr [rsp + 9652], 17
                        mov              rax, qword ptr [rip + .Lx875_0]
                        mov              qword ptr [rsp + 9656], rax;         jmp   n484_disjunction_α
.Lx875_0:               .quad            .Lx875_0_s
.Lx875_0_s:             .string          "real(\"-2\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n484_disjunction_α:     mov              r11, 209
                        mov              qword ptr [rsp + 9664], 0
                        mov              qword ptr [rsp + 9672], 0
                        mov              dword ptr [rsp + 9680], 0;           jmp   n782_lit_string_α
n484_disjunction_as:    mov              r11, 209
                        mov              eax, dword ptr [rsp + 9680]
                        cmp              eax, 0;                              jne   .Lx877_0
                        mov              rax, qword ptr [rsp + 9696]
                        mov              qword ptr [rsp + 9664], rax
                        mov              rax, qword ptr [rsp + 9704]
                        mov              qword ptr [rsp + 9672], rax;         jmp   n485_call_builtin_icon_α
.Lx877_0:               cmp              eax, 1;                              jne   .Lx877_1
                        mov              rax, qword ptr [rsp + 9808]
                        mov              qword ptr [rsp + 9664], rax
                        mov              rax, qword ptr [rsp + 9816]
                        mov              qword ptr [rsp + 9672], rax;         jmp   n485_call_builtin_icon_α
.Lx877_1:                                                                     jmp   n485_call_builtin_icon_α
n484_disjunction_β:     mov              r11, 209
                        mov              eax, dword ptr [rsp + 9680]
                        cmp              eax, 0;                              je    n484_disjunction_af
                                                                              jmp   n484_disjunction_af
n484_disjunction_af:    mov              r11, 209
                        add              dword ptr [rsp + 9680], 1
                        mov              eax, dword ptr [rsp + 9680]
                        cmp              eax, 1;                              je    n781_lit_string_α
                                                                              jmp   n486_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n485_call_builtin_icon_α:
                        mov              r11, 210
                        mov              rax, qword ptr [rsp + 9664]
                        mov              qword ptr [rsp + 9616], rax
                        mov              rax, qword ptr [rsp + 9672]
                        mov              qword ptr [rsp + 9624], rax
                        mov              rax, qword ptr [rsp + 9648]
                        mov              qword ptr [rsp + 9600], rax
                        mov              rax, qword ptr [rsp + 9656]
                        mov              qword ptr [rsp + 9608], rax
                        .section         .rodata
.Lrkfn879:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn879]
                        lea              rsi, [rsp + 9600]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 9584], rax
                        mov              qword ptr [rsp + 9592], rdx
                        cmp              al, 104;                             je    n484_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n486_lit_string_α
n485_call_builtin_icon_β:
                        mov              r11, 210;                            jmp   n484_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n486_lit_string_α:      mov              r11, 211
                        mov              qword ptr [rsp + 9408], 2            # result
                        mov              dword ptr [rsp + 9412], 18
                        mov              rax, qword ptr [rip + .Lx880_0]
                        mov              qword ptr [rsp + 9416], rax;         jmp   n487_disjunction_α
.Lx880_0:               .quad            .Lx880_0_s
.Lx880_0_s:             .string          "real(\"- 2\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n487_disjunction_α:     mov              r11, 212
                        mov              qword ptr [rsp + 9424], 0
                        mov              qword ptr [rsp + 9432], 0
                        mov              dword ptr [rsp + 9440], 0;           jmp   n778_lit_string_α
n487_disjunction_as:    mov              r11, 212
                        mov              eax, dword ptr [rsp + 9440]
                        cmp              eax, 0;                              jne   .Lx882_0
                        mov              rax, qword ptr [rsp + 9456]
                        mov              qword ptr [rsp + 9424], rax
                        mov              rax, qword ptr [rsp + 9464]
                        mov              qword ptr [rsp + 9432], rax;         jmp   n488_call_builtin_icon_α
.Lx882_0:               cmp              eax, 1;                              jne   .Lx882_1
                        mov              rax, qword ptr [rsp + 9568]
                        mov              qword ptr [rsp + 9424], rax
                        mov              rax, qword ptr [rsp + 9576]
                        mov              qword ptr [rsp + 9432], rax;         jmp   n488_call_builtin_icon_α
.Lx882_1:                                                                     jmp   n488_call_builtin_icon_α
n487_disjunction_β:     mov              r11, 212
                        mov              eax, dword ptr [rsp + 9440]
                        cmp              eax, 0;                              je    n487_disjunction_af
                                                                              jmp   n487_disjunction_af
n487_disjunction_af:    mov              r11, 212
                        add              dword ptr [rsp + 9440], 1
                        mov              eax, dword ptr [rsp + 9440]
                        cmp              eax, 1;                              je    n777_lit_string_α
                                                                              jmp   n489_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n488_call_builtin_icon_α:
                        mov              r11, 213
                        mov              rax, qword ptr [rsp + 9424]
                        mov              qword ptr [rsp + 9376], rax
                        mov              rax, qword ptr [rsp + 9432]
                        mov              qword ptr [rsp + 9384], rax
                        mov              rax, qword ptr [rsp + 9408]
                        mov              qword ptr [rsp + 9360], rax
                        mov              rax, qword ptr [rsp + 9416]
                        mov              qword ptr [rsp + 9368], rax
                        .section         .rodata
.Lrkfn884:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn884]
                        lea              rsi, [rsp + 9360]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 9344], rax
                        mov              qword ptr [rsp + 9352], rdx
                        cmp              al, 104;                             je    n487_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n489_lit_string_α
n488_call_builtin_icon_β:
                        mov              r11, 213;                            jmp   n487_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n489_lit_string_α:      mov              r11, 214
                        mov              qword ptr [rsp + 9168], 2            # result
                        mov              dword ptr [rsp + 9172], 23
                        mov              rax, qword ptr [rip + .Lx885_0]
                        mov              qword ptr [rsp + 9176], rax;         jmp   n490_disjunction_α
.Lx885_0:               .quad            .Lx885_0_s
.Lx885_0_s:             .string          "real(\" -    2 \") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n490_disjunction_α:     mov              r11, 215
                        mov              qword ptr [rsp + 9184], 0
                        mov              qword ptr [rsp + 9192], 0
                        mov              dword ptr [rsp + 9200], 0;           jmp   n774_lit_string_α
n490_disjunction_as:    mov              r11, 215
                        mov              eax, dword ptr [rsp + 9200]
                        cmp              eax, 0;                              jne   .Lx887_0
                        mov              rax, qword ptr [rsp + 9216]
                        mov              qword ptr [rsp + 9184], rax
                        mov              rax, qword ptr [rsp + 9224]
                        mov              qword ptr [rsp + 9192], rax;         jmp   n491_call_builtin_icon_α
.Lx887_0:               cmp              eax, 1;                              jne   .Lx887_1
                        mov              rax, qword ptr [rsp + 9328]
                        mov              qword ptr [rsp + 9184], rax
                        mov              rax, qword ptr [rsp + 9336]
                        mov              qword ptr [rsp + 9192], rax;         jmp   n491_call_builtin_icon_α
.Lx887_1:                                                                     jmp   n491_call_builtin_icon_α
n490_disjunction_β:     mov              r11, 215
                        mov              eax, dword ptr [rsp + 9200]
                        cmp              eax, 0;                              je    n490_disjunction_af
                                                                              jmp   n490_disjunction_af
n490_disjunction_af:    mov              r11, 215
                        add              dword ptr [rsp + 9200], 1
                        mov              eax, dword ptr [rsp + 9200]
                        cmp              eax, 1;                              je    n773_lit_string_α
                                                                              jmp   n492_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n491_call_builtin_icon_α:
                        mov              r11, 216
                        mov              rax, qword ptr [rsp + 9184]
                        mov              qword ptr [rsp + 9136], rax
                        mov              rax, qword ptr [rsp + 9192]
                        mov              qword ptr [rsp + 9144], rax
                        mov              rax, qword ptr [rsp + 9168]
                        mov              qword ptr [rsp + 9120], rax
                        mov              rax, qword ptr [rsp + 9176]
                        mov              qword ptr [rsp + 9128], rax
                        .section         .rodata
.Lrkfn889:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn889]
                        lea              rsi, [rsp + 9120]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 9104], rax
                        mov              qword ptr [rsp + 9112], rdx
                        cmp              al, 104;                             je    n490_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n492_lit_string_α
n491_call_builtin_icon_β:
                        mov              r11, 216;                            jmp   n490_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n492_lit_string_α:      mov              r11, 217
                        mov              qword ptr [rsp + 8928], 2            # result
                        mov              dword ptr [rsp + 8932], 15
                        mov              rax, qword ptr [rip + .Lx890_0]
                        mov              qword ptr [rsp + 8936], rax;         jmp   n493_disjunction_α
.Lx890_0:               .quad            .Lx890_0_s
.Lx890_0_s:             .string          "real(\"\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n493_disjunction_α:     mov              r11, 218
                        mov              qword ptr [rsp + 8944], 0
                        mov              qword ptr [rsp + 8952], 0
                        mov              dword ptr [rsp + 8960], 0;           jmp   n770_lit_string_α
n493_disjunction_as:    mov              r11, 218
                        mov              eax, dword ptr [rsp + 8960]
                        cmp              eax, 0;                              jne   .Lx892_0
                        mov              rax, qword ptr [rsp + 8976]
                        mov              qword ptr [rsp + 8944], rax
                        mov              rax, qword ptr [rsp + 8984]
                        mov              qword ptr [rsp + 8952], rax;         jmp   n494_call_builtin_icon_α
.Lx892_0:               cmp              eax, 1;                              jne   .Lx892_1
                        mov              rax, qword ptr [rsp + 9088]
                        mov              qword ptr [rsp + 8944], rax
                        mov              rax, qword ptr [rsp + 9096]
                        mov              qword ptr [rsp + 8952], rax;         jmp   n494_call_builtin_icon_α
.Lx892_1:                                                                     jmp   n494_call_builtin_icon_α
n493_disjunction_β:     mov              r11, 218
                        mov              eax, dword ptr [rsp + 8960]
                        cmp              eax, 0;                              je    n493_disjunction_af
                                                                              jmp   n493_disjunction_af
n493_disjunction_af:    mov              r11, 218
                        add              dword ptr [rsp + 8960], 1
                        mov              eax, dword ptr [rsp + 8960]
                        cmp              eax, 1;                              je    n769_lit_string_α
                                                                              jmp   n495_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n494_call_builtin_icon_α:
                        mov              r11, 219
                        mov              rax, qword ptr [rsp + 8944]
                        mov              qword ptr [rsp + 8896], rax
                        mov              rax, qword ptr [rsp + 8952]
                        mov              qword ptr [rsp + 8904], rax
                        mov              rax, qword ptr [rsp + 8928]
                        mov              qword ptr [rsp + 8880], rax
                        mov              rax, qword ptr [rsp + 8936]
                        mov              qword ptr [rsp + 8888], rax
                        .section         .rodata
.Lrkfn894:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn894]
                        lea              rsi, [rsp + 8880]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 8864], rax
                        mov              qword ptr [rsp + 8872], rdx
                        cmp              al, 104;                             je    n493_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n495_lit_string_α
n494_call_builtin_icon_β:
                        mov              r11, 219;                            jmp   n493_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n495_lit_string_α:      mov              r11, 220
                        mov              qword ptr [rsp + 8688], 2            # result
                        mov              dword ptr [rsp + 8692], 18
                        mov              rax, qword ptr [rip + .Lx895_0]
                        mov              qword ptr [rsp + 8696], rax;         jmp   n496_disjunction_α
.Lx895_0:               .quad            .Lx895_0_s
.Lx895_0_s:             .string          "real(\"--2\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n496_disjunction_α:     mov              r11, 221
                        mov              qword ptr [rsp + 8704], 0
                        mov              qword ptr [rsp + 8712], 0
                        mov              dword ptr [rsp + 8720], 0;           jmp   n766_lit_string_α
n496_disjunction_as:    mov              r11, 221
                        mov              eax, dword ptr [rsp + 8720]
                        cmp              eax, 0;                              jne   .Lx897_0
                        mov              rax, qword ptr [rsp + 8736]
                        mov              qword ptr [rsp + 8704], rax
                        mov              rax, qword ptr [rsp + 8744]
                        mov              qword ptr [rsp + 8712], rax;         jmp   n497_call_builtin_icon_α
.Lx897_0:               cmp              eax, 1;                              jne   .Lx897_1
                        mov              rax, qword ptr [rsp + 8848]
                        mov              qword ptr [rsp + 8704], rax
                        mov              rax, qword ptr [rsp + 8856]
                        mov              qword ptr [rsp + 8712], rax;         jmp   n497_call_builtin_icon_α
.Lx897_1:                                                                     jmp   n497_call_builtin_icon_α
n496_disjunction_β:     mov              r11, 221
                        mov              eax, dword ptr [rsp + 8720]
                        cmp              eax, 0;                              je    n496_disjunction_af
                                                                              jmp   n496_disjunction_af
n496_disjunction_af:    mov              r11, 221
                        add              dword ptr [rsp + 8720], 1
                        mov              eax, dword ptr [rsp + 8720]
                        cmp              eax, 1;                              je    n765_lit_string_α
                                                                              jmp   n498_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n497_call_builtin_icon_α:
                        mov              r11, 222
                        mov              rax, qword ptr [rsp + 8704]
                        mov              qword ptr [rsp + 8656], rax
                        mov              rax, qword ptr [rsp + 8712]
                        mov              qword ptr [rsp + 8664], rax
                        mov              rax, qword ptr [rsp + 8688]
                        mov              qword ptr [rsp + 8640], rax
                        mov              rax, qword ptr [rsp + 8696]
                        mov              qword ptr [rsp + 8648], rax
                        .section         .rodata
.Lrkfn899:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn899]
                        lea              rsi, [rsp + 8640]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 8624], rax
                        mov              qword ptr [rsp + 8632], rdx
                        cmp              al, 104;                             je    n496_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n498_lit_string_α
n497_call_builtin_icon_β:
                        mov              r11, 222;                            jmp   n496_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n498_lit_string_α:      mov              r11, 223
                        mov              qword ptr [rsp + 8448], 2            # result
                        mov              dword ptr [rsp + 8452], 16
                        mov              rax, qword ptr [rip + .Lx900_0]
                        mov              qword ptr [rsp + 8456], rax;         jmp   n499_disjunction_α
.Lx900_0:               .quad            .Lx900_0_s
.Lx900_0_s:             .string          "real(\" \") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n499_disjunction_α:     mov              r11, 224
                        mov              qword ptr [rsp + 8464], 0
                        mov              qword ptr [rsp + 8472], 0
                        mov              dword ptr [rsp + 8480], 0;           jmp   n762_lit_string_α
n499_disjunction_as:    mov              r11, 224
                        mov              eax, dword ptr [rsp + 8480]
                        cmp              eax, 0;                              jne   .Lx902_0
                        mov              rax, qword ptr [rsp + 8496]
                        mov              qword ptr [rsp + 8464], rax
                        mov              rax, qword ptr [rsp + 8504]
                        mov              qword ptr [rsp + 8472], rax;         jmp   n500_call_builtin_icon_α
.Lx902_0:               cmp              eax, 1;                              jne   .Lx902_1
                        mov              rax, qword ptr [rsp + 8608]
                        mov              qword ptr [rsp + 8464], rax
                        mov              rax, qword ptr [rsp + 8616]
                        mov              qword ptr [rsp + 8472], rax;         jmp   n500_call_builtin_icon_α
.Lx902_1:                                                                     jmp   n500_call_builtin_icon_α
n499_disjunction_β:     mov              r11, 224
                        mov              eax, dword ptr [rsp + 8480]
                        cmp              eax, 0;                              je    n499_disjunction_af
                                                                              jmp   n499_disjunction_af
n499_disjunction_af:    mov              r11, 224
                        add              dword ptr [rsp + 8480], 1
                        mov              eax, dword ptr [rsp + 8480]
                        cmp              eax, 1;                              je    n761_lit_string_α
                                                                              jmp   n501_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n500_call_builtin_icon_α:
                        mov              r11, 225
                        mov              rax, qword ptr [rsp + 8464]
                        mov              qword ptr [rsp + 8416], rax
                        mov              rax, qword ptr [rsp + 8472]
                        mov              qword ptr [rsp + 8424], rax
                        mov              rax, qword ptr [rsp + 8448]
                        mov              qword ptr [rsp + 8400], rax
                        mov              rax, qword ptr [rsp + 8456]
                        mov              qword ptr [rsp + 8408], rax
                        .section         .rodata
.Lrkfn904:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn904]
                        lea              rsi, [rsp + 8400]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 8384], rax
                        mov              qword ptr [rsp + 8392], rdx
                        cmp              al, 104;                             je    n499_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n501_lit_string_α
n500_call_builtin_icon_β:
                        mov              r11, 225;                            jmp   n499_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n501_lit_string_α:      mov              r11, 226
                        mov              qword ptr [rsp + 8208], 2            # result
                        mov              dword ptr [rsp + 8212], 16
                        mov              rax, qword ptr [rip + .Lx905_0]
                        mov              qword ptr [rsp + 8216], rax;         jmp   n502_disjunction_α
.Lx905_0:               .quad            .Lx905_0_s
.Lx905_0_s:             .string          "real(\"-\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n502_disjunction_α:     mov              r11, 227
                        mov              qword ptr [rsp + 8224], 0
                        mov              qword ptr [rsp + 8232], 0
                        mov              dword ptr [rsp + 8240], 0;           jmp   n758_lit_string_α
n502_disjunction_as:    mov              r11, 227
                        mov              eax, dword ptr [rsp + 8240]
                        cmp              eax, 0;                              jne   .Lx907_0
                        mov              rax, qword ptr [rsp + 8256]
                        mov              qword ptr [rsp + 8224], rax
                        mov              rax, qword ptr [rsp + 8264]
                        mov              qword ptr [rsp + 8232], rax;         jmp   n503_call_builtin_icon_α
.Lx907_0:               cmp              eax, 1;                              jne   .Lx907_1
                        mov              rax, qword ptr [rsp + 8368]
                        mov              qword ptr [rsp + 8224], rax
                        mov              rax, qword ptr [rsp + 8376]
                        mov              qword ptr [rsp + 8232], rax;         jmp   n503_call_builtin_icon_α
.Lx907_1:                                                                     jmp   n503_call_builtin_icon_α
n502_disjunction_β:     mov              r11, 227
                        mov              eax, dword ptr [rsp + 8240]
                        cmp              eax, 0;                              je    n502_disjunction_af
                                                                              jmp   n502_disjunction_af
n502_disjunction_af:    mov              r11, 227
                        add              dword ptr [rsp + 8240], 1
                        mov              eax, dword ptr [rsp + 8240]
                        cmp              eax, 1;                              je    n757_lit_string_α
                                                                              jmp   n504_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n503_call_builtin_icon_α:
                        mov              r11, 228
                        mov              rax, qword ptr [rsp + 8224]
                        mov              qword ptr [rsp + 8176], rax
                        mov              rax, qword ptr [rsp + 8232]
                        mov              qword ptr [rsp + 8184], rax
                        mov              rax, qword ptr [rsp + 8208]
                        mov              qword ptr [rsp + 8160], rax
                        mov              rax, qword ptr [rsp + 8216]
                        mov              qword ptr [rsp + 8168], rax
                        .section         .rodata
.Lrkfn909:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn909]
                        lea              rsi, [rsp + 8160]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 8144], rax
                        mov              qword ptr [rsp + 8152], rdx
                        cmp              al, 104;                             je    n502_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n504_lit_string_α
n503_call_builtin_icon_β:
                        mov              r11, 228;                            jmp   n502_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n504_lit_string_α:      mov              r11, 229
                        mov              qword ptr [rsp + 7968], 2            # result
                        mov              dword ptr [rsp + 7972], 16
                        mov              rax, qword ptr [rip + .Lx910_0]
                        mov              qword ptr [rsp + 7976], rax;         jmp   n505_disjunction_α
.Lx910_0:               .quad            .Lx910_0_s
.Lx910_0_s:             .string          "real(\"+\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n505_disjunction_α:     mov              r11, 230
                        mov              qword ptr [rsp + 7984], 0
                        mov              qword ptr [rsp + 7992], 0
                        mov              dword ptr [rsp + 8000], 0;           jmp   n754_lit_string_α
n505_disjunction_as:    mov              r11, 230
                        mov              eax, dword ptr [rsp + 8000]
                        cmp              eax, 0;                              jne   .Lx912_0
                        mov              rax, qword ptr [rsp + 8016]
                        mov              qword ptr [rsp + 7984], rax
                        mov              rax, qword ptr [rsp + 8024]
                        mov              qword ptr [rsp + 7992], rax;         jmp   n506_call_builtin_icon_α
.Lx912_0:               cmp              eax, 1;                              jne   .Lx912_1
                        mov              rax, qword ptr [rsp + 8128]
                        mov              qword ptr [rsp + 7984], rax
                        mov              rax, qword ptr [rsp + 8136]
                        mov              qword ptr [rsp + 7992], rax;         jmp   n506_call_builtin_icon_α
.Lx912_1:                                                                     jmp   n506_call_builtin_icon_α
n505_disjunction_β:     mov              r11, 230
                        mov              eax, dword ptr [rsp + 8000]
                        cmp              eax, 0;                              je    n505_disjunction_af
                                                                              jmp   n505_disjunction_af
n505_disjunction_af:    mov              r11, 230
                        add              dword ptr [rsp + 8000], 1
                        mov              eax, dword ptr [rsp + 8000]
                        cmp              eax, 1;                              je    n753_lit_string_α
                                                                              jmp   n507_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n506_call_builtin_icon_α:
                        mov              r11, 231
                        mov              rax, qword ptr [rsp + 7984]
                        mov              qword ptr [rsp + 7936], rax
                        mov              rax, qword ptr [rsp + 7992]
                        mov              qword ptr [rsp + 7944], rax
                        mov              rax, qword ptr [rsp + 7968]
                        mov              qword ptr [rsp + 7920], rax
                        mov              rax, qword ptr [rsp + 7976]
                        mov              qword ptr [rsp + 7928], rax
                        .section         .rodata
.Lrkfn914:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn914]
                        lea              rsi, [rsp + 7920]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7904], rax
                        mov              qword ptr [rsp + 7912], rdx
                        cmp              al, 104;                             je    n505_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n507_lit_string_α
n506_call_builtin_icon_β:
                        mov              r11, 231;                            jmp   n505_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n507_lit_string_α:      mov              r11, 232
                        mov              qword ptr [rsp + 7728], 2            # result
                        mov              dword ptr [rsp + 7732], 16
                        mov              rax, qword ptr [rip + .Lx915_0]
                        mov              qword ptr [rsp + 7736], rax;         jmp   n508_disjunction_α
.Lx915_0:               .quad            .Lx915_0_s
.Lx915_0_s:             .string          "real(\".\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n508_disjunction_α:     mov              r11, 233
                        mov              qword ptr [rsp + 7744], 0
                        mov              qword ptr [rsp + 7752], 0
                        mov              dword ptr [rsp + 7760], 0;           jmp   n750_lit_string_α
n508_disjunction_as:    mov              r11, 233
                        mov              eax, dword ptr [rsp + 7760]
                        cmp              eax, 0;                              jne   .Lx917_0
                        mov              rax, qword ptr [rsp + 7776]
                        mov              qword ptr [rsp + 7744], rax
                        mov              rax, qword ptr [rsp + 7784]
                        mov              qword ptr [rsp + 7752], rax;         jmp   n509_call_builtin_icon_α
.Lx917_0:               cmp              eax, 1;                              jne   .Lx917_1
                        mov              rax, qword ptr [rsp + 7888]
                        mov              qword ptr [rsp + 7744], rax
                        mov              rax, qword ptr [rsp + 7896]
                        mov              qword ptr [rsp + 7752], rax;         jmp   n509_call_builtin_icon_α
.Lx917_1:                                                                     jmp   n509_call_builtin_icon_α
n508_disjunction_β:     mov              r11, 233
                        mov              eax, dword ptr [rsp + 7760]
                        cmp              eax, 0;                              je    n508_disjunction_af
                                                                              jmp   n508_disjunction_af
n508_disjunction_af:    mov              r11, 233
                        add              dword ptr [rsp + 7760], 1
                        mov              eax, dword ptr [rsp + 7760]
                        cmp              eax, 1;                              je    n749_lit_string_α
                                                                              jmp   n510_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n509_call_builtin_icon_α:
                        mov              r11, 234
                        mov              rax, qword ptr [rsp + 7744]
                        mov              qword ptr [rsp + 7696], rax
                        mov              rax, qword ptr [rsp + 7752]
                        mov              qword ptr [rsp + 7704], rax
                        mov              rax, qword ptr [rsp + 7728]
                        mov              qword ptr [rsp + 7680], rax
                        mov              rax, qword ptr [rsp + 7736]
                        mov              qword ptr [rsp + 7688], rax
                        .section         .rodata
.Lrkfn919:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn919]
                        lea              rsi, [rsp + 7680]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7664], rax
                        mov              qword ptr [rsp + 7672], rdx
                        cmp              al, 104;                             je    n508_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n510_lit_string_α
n509_call_builtin_icon_β:
                        mov              r11, 234;                            jmp   n508_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n510_lit_string_α:      mov              r11, 235
                        mov              qword ptr [rsp + 7488], 2            # result
                        mov              dword ptr [rsp + 7492], 17
                        mov              rax, qword ptr [rip + .Lx920_0]
                        mov              qword ptr [rsp + 7496], rax;         jmp   n511_disjunction_α
.Lx920_0:               .quad            .Lx920_0_s
.Lx920_0_s:             .string          "real(\".3\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n511_disjunction_α:     mov              r11, 236
                        mov              qword ptr [rsp + 7504], 0
                        mov              qword ptr [rsp + 7512], 0
                        mov              dword ptr [rsp + 7520], 0;           jmp   n746_lit_string_α
n511_disjunction_as:    mov              r11, 236
                        mov              eax, dword ptr [rsp + 7520]
                        cmp              eax, 0;                              jne   .Lx922_0
                        mov              rax, qword ptr [rsp + 7536]
                        mov              qword ptr [rsp + 7504], rax
                        mov              rax, qword ptr [rsp + 7544]
                        mov              qword ptr [rsp + 7512], rax;         jmp   n512_call_builtin_icon_α
.Lx922_0:               cmp              eax, 1;                              jne   .Lx922_1
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 7504], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 7512], rax;         jmp   n512_call_builtin_icon_α
.Lx922_1:                                                                     jmp   n512_call_builtin_icon_α
n511_disjunction_β:     mov              r11, 236
                        mov              eax, dword ptr [rsp + 7520]
                        cmp              eax, 0;                              je    n511_disjunction_af
                                                                              jmp   n511_disjunction_af
n511_disjunction_af:    mov              r11, 236
                        add              dword ptr [rsp + 7520], 1
                        mov              eax, dword ptr [rsp + 7520]
                        cmp              eax, 1;                              je    n745_lit_string_α
                                                                              jmp   n513_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n512_call_builtin_icon_α:
                        mov              r11, 237
                        mov              rax, qword ptr [rsp + 7504]
                        mov              qword ptr [rsp + 7456], rax
                        mov              rax, qword ptr [rsp + 7512]
                        mov              qword ptr [rsp + 7464], rax
                        mov              rax, qword ptr [rsp + 7488]
                        mov              qword ptr [rsp + 7440], rax
                        mov              rax, qword ptr [rsp + 7496]
                        mov              qword ptr [rsp + 7448], rax
                        .section         .rodata
.Lrkfn924:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn924]
                        lea              rsi, [rsp + 7440]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7424], rax
                        mov              qword ptr [rsp + 7432], rdx
                        cmp              al, 104;                             je    n511_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n513_lit_string_α
n512_call_builtin_icon_β:
                        mov              r11, 237;                            jmp   n511_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n513_lit_string_α:      mov              r11, 238
                        mov              qword ptr [rsp + 7248], 2            # result
                        mov              dword ptr [rsp + 7252], 18
                        mov              rax, qword ptr [rip + .Lx925_0]
                        mov              qword ptr [rsp + 7256], rax;         jmp   n514_disjunction_α
.Lx925_0:               .quad            .Lx925_0_s
.Lx925_0_s:             .string          "real(\"0.3\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n514_disjunction_α:     mov              r11, 239
                        mov              qword ptr [rsp + 7264], 0
                        mov              qword ptr [rsp + 7272], 0
                        mov              dword ptr [rsp + 7280], 0;           jmp   n742_lit_string_α
n514_disjunction_as:    mov              r11, 239
                        mov              eax, dword ptr [rsp + 7280]
                        cmp              eax, 0;                              jne   .Lx927_0
                        mov              rax, qword ptr [rsp + 7296]
                        mov              qword ptr [rsp + 7264], rax
                        mov              rax, qword ptr [rsp + 7304]
                        mov              qword ptr [rsp + 7272], rax;         jmp   n515_call_builtin_icon_α
.Lx927_0:               cmp              eax, 1;                              jne   .Lx927_1
                        mov              rax, qword ptr [rsp + 7408]
                        mov              qword ptr [rsp + 7264], rax
                        mov              rax, qword ptr [rsp + 7416]
                        mov              qword ptr [rsp + 7272], rax;         jmp   n515_call_builtin_icon_α
.Lx927_1:                                                                     jmp   n515_call_builtin_icon_α
n514_disjunction_β:     mov              r11, 239
                        mov              eax, dword ptr [rsp + 7280]
                        cmp              eax, 0;                              je    n514_disjunction_af
                                                                              jmp   n514_disjunction_af
n514_disjunction_af:    mov              r11, 239
                        add              dword ptr [rsp + 7280], 1
                        mov              eax, dword ptr [rsp + 7280]
                        cmp              eax, 1;                              je    n741_lit_string_α
                                                                              jmp   n516_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n515_call_builtin_icon_α:
                        mov              r11, 240
                        mov              rax, qword ptr [rsp + 7264]
                        mov              qword ptr [rsp + 7216], rax
                        mov              rax, qword ptr [rsp + 7272]
                        mov              qword ptr [rsp + 7224], rax
                        mov              rax, qword ptr [rsp + 7248]
                        mov              qword ptr [rsp + 7200], rax
                        mov              rax, qword ptr [rsp + 7256]
                        mov              qword ptr [rsp + 7208], rax
                        .section         .rodata
.Lrkfn929:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn929]
                        lea              rsi, [rsp + 7200]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7184], rax
                        mov              qword ptr [rsp + 7192], rdx
                        cmp              al, 104;                             je    n514_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n516_lit_string_α
n515_call_builtin_icon_β:
                        mov              r11, 240;                            jmp   n514_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n516_lit_string_α:      mov              r11, 241
                        mov              qword ptr [rsp + 7008], 2            # result
                        mov              dword ptr [rsp + 7012], 19
                        mov              rax, qword ptr [rip + .Lx930_0]
                        mov              qword ptr [rsp + 7016], rax;         jmp   n517_disjunction_α
.Lx930_0:               .quad            .Lx930_0_s
.Lx930_0_s:             .string          "real(\" . 3\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n517_disjunction_α:     mov              r11, 242
                        mov              qword ptr [rsp + 7024], 0
                        mov              qword ptr [rsp + 7032], 0
                        mov              dword ptr [rsp + 7040], 0;           jmp   n738_lit_string_α
n517_disjunction_as:    mov              r11, 242
                        mov              eax, dword ptr [rsp + 7040]
                        cmp              eax, 0;                              jne   .Lx932_0
                        mov              rax, qword ptr [rsp + 7056]
                        mov              qword ptr [rsp + 7024], rax
                        mov              rax, qword ptr [rsp + 7064]
                        mov              qword ptr [rsp + 7032], rax;         jmp   n518_call_builtin_icon_α
.Lx932_0:               cmp              eax, 1;                              jne   .Lx932_1
                        mov              rax, qword ptr [rsp + 7168]
                        mov              qword ptr [rsp + 7024], rax
                        mov              rax, qword ptr [rsp + 7176]
                        mov              qword ptr [rsp + 7032], rax;         jmp   n518_call_builtin_icon_α
.Lx932_1:                                                                     jmp   n518_call_builtin_icon_α
n517_disjunction_β:     mov              r11, 242
                        mov              eax, dword ptr [rsp + 7040]
                        cmp              eax, 0;                              je    n517_disjunction_af
                                                                              jmp   n517_disjunction_af
n517_disjunction_af:    mov              r11, 242
                        add              dword ptr [rsp + 7040], 1
                        mov              eax, dword ptr [rsp + 7040]
                        cmp              eax, 1;                              je    n737_lit_string_α
                                                                              jmp   n519_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n518_call_builtin_icon_α:
                        mov              r11, 243
                        mov              rax, qword ptr [rsp + 7024]
                        mov              qword ptr [rsp + 6976], rax
                        mov              rax, qword ptr [rsp + 7032]
                        mov              qword ptr [rsp + 6984], rax
                        mov              rax, qword ptr [rsp + 7008]
                        mov              qword ptr [rsp + 6960], rax
                        mov              rax, qword ptr [rsp + 7016]
                        mov              qword ptr [rsp + 6968], rax
                        .section         .rodata
.Lrkfn934:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn934]
                        lea              rsi, [rsp + 6960]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6944], rax
                        mov              qword ptr [rsp + 6952], rdx
                        cmp              al, 104;                             je    n517_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n519_lit_string_α
n518_call_builtin_icon_β:
                        mov              r11, 243;                            jmp   n517_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n519_lit_string_α:      mov              r11, 244
                        mov              qword ptr [rsp + 6768], 2            # result
                        mov              dword ptr [rsp + 6772], 17
                        mov              rax, qword ptr [rip + .Lx935_0]
                        mov              qword ptr [rsp + 6776], rax;         jmp   n520_disjunction_α
.Lx935_0:               .quad            .Lx935_0_s
.Lx935_0_s:             .string          "real(\"e2\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n520_disjunction_α:     mov              r11, 245
                        mov              qword ptr [rsp + 6784], 0
                        mov              qword ptr [rsp + 6792], 0
                        mov              dword ptr [rsp + 6800], 0;           jmp   n734_lit_string_α
n520_disjunction_as:    mov              r11, 245
                        mov              eax, dword ptr [rsp + 6800]
                        cmp              eax, 0;                              jne   .Lx937_0
                        mov              rax, qword ptr [rsp + 6816]
                        mov              qword ptr [rsp + 6784], rax
                        mov              rax, qword ptr [rsp + 6824]
                        mov              qword ptr [rsp + 6792], rax;         jmp   n521_call_builtin_icon_α
.Lx937_0:               cmp              eax, 1;                              jne   .Lx937_1
                        mov              rax, qword ptr [rsp + 6928]
                        mov              qword ptr [rsp + 6784], rax
                        mov              rax, qword ptr [rsp + 6936]
                        mov              qword ptr [rsp + 6792], rax;         jmp   n521_call_builtin_icon_α
.Lx937_1:                                                                     jmp   n521_call_builtin_icon_α
n520_disjunction_β:     mov              r11, 245
                        mov              eax, dword ptr [rsp + 6800]
                        cmp              eax, 0;                              je    n520_disjunction_af
                                                                              jmp   n520_disjunction_af
n520_disjunction_af:    mov              r11, 245
                        add              dword ptr [rsp + 6800], 1
                        mov              eax, dword ptr [rsp + 6800]
                        cmp              eax, 1;                              je    n733_lit_string_α
                                                                              jmp   n522_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n521_call_builtin_icon_α:
                        mov              r11, 246
                        mov              rax, qword ptr [rsp + 6784]
                        mov              qword ptr [rsp + 6736], rax
                        mov              rax, qword ptr [rsp + 6792]
                        mov              qword ptr [rsp + 6744], rax
                        mov              rax, qword ptr [rsp + 6768]
                        mov              qword ptr [rsp + 6720], rax
                        mov              rax, qword ptr [rsp + 6776]
                        mov              qword ptr [rsp + 6728], rax
                        .section         .rodata
.Lrkfn939:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn939]
                        lea              rsi, [rsp + 6720]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6704], rax
                        mov              qword ptr [rsp + 6712], rdx
                        cmp              al, 104;                             je    n520_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n522_lit_string_α
n521_call_builtin_icon_β:
                        mov              r11, 246;                            jmp   n520_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n522_lit_string_α:      mov              r11, 247
                        mov              qword ptr [rsp + 6528], 2            # result
                        mov              dword ptr [rsp + 6532], 20
                        mov              rax, qword ptr [rip + .Lx940_0]
                        mov              qword ptr [rsp + 6536], rax;         jmp   n523_disjunction_α
.Lx940_0:               .quad            .Lx940_0_s
.Lx940_0_s:             .string          "real(\"3e500\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n523_disjunction_α:     mov              r11, 248
                        mov              qword ptr [rsp + 6544], 0
                        mov              qword ptr [rsp + 6552], 0
                        mov              dword ptr [rsp + 6560], 0;           jmp   n730_lit_string_α
n523_disjunction_as:    mov              r11, 248
                        mov              eax, dword ptr [rsp + 6560]
                        cmp              eax, 0;                              jne   .Lx942_0
                        mov              rax, qword ptr [rsp + 6576]
                        mov              qword ptr [rsp + 6544], rax
                        mov              rax, qword ptr [rsp + 6584]
                        mov              qword ptr [rsp + 6552], rax;         jmp   n524_call_builtin_icon_α
.Lx942_0:               cmp              eax, 1;                              jne   .Lx942_1
                        mov              rax, qword ptr [rsp + 6688]
                        mov              qword ptr [rsp + 6544], rax
                        mov              rax, qword ptr [rsp + 6696]
                        mov              qword ptr [rsp + 6552], rax;         jmp   n524_call_builtin_icon_α
.Lx942_1:                                                                     jmp   n524_call_builtin_icon_α
n523_disjunction_β:     mov              r11, 248
                        mov              eax, dword ptr [rsp + 6560]
                        cmp              eax, 0;                              je    n523_disjunction_af
                                                                              jmp   n523_disjunction_af
n523_disjunction_af:    mov              r11, 248
                        add              dword ptr [rsp + 6560], 1
                        mov              eax, dword ptr [rsp + 6560]
                        cmp              eax, 1;                              je    n729_lit_string_α
                                                                              jmp   n525_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n524_call_builtin_icon_α:
                        mov              r11, 249
                        mov              rax, qword ptr [rsp + 6544]
                        mov              qword ptr [rsp + 6496], rax
                        mov              rax, qword ptr [rsp + 6552]
                        mov              qword ptr [rsp + 6504], rax
                        mov              rax, qword ptr [rsp + 6528]
                        mov              qword ptr [rsp + 6480], rax
                        mov              rax, qword ptr [rsp + 6536]
                        mov              qword ptr [rsp + 6488], rax
                        .section         .rodata
.Lrkfn944:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn944]
                        lea              rsi, [rsp + 6480]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6464], rax
                        mov              qword ptr [rsp + 6472], rdx
                        cmp              al, 104;                             je    n523_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n525_lit_string_α
n524_call_builtin_icon_β:
                        mov              r11, 249;                            jmp   n523_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n525_lit_string_α:      mov              r11, 250
                        mov              qword ptr [rsp + 6288], 2            # result
                        mov              dword ptr [rsp + 6292], 18
                        mov              rax, qword ptr [rip + .Lx945_0]
                        mov              qword ptr [rsp + 6296], rax;         jmp   n526_disjunction_α
.Lx945_0:               .quad            .Lx945_0_s
.Lx945_0_s:             .string          "real(\"7r4\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n526_disjunction_α:     mov              r11, 251
                        mov              qword ptr [rsp + 6304], 0
                        mov              qword ptr [rsp + 6312], 0
                        mov              dword ptr [rsp + 6320], 0;           jmp   n726_lit_string_α
n526_disjunction_as:    mov              r11, 251
                        mov              eax, dword ptr [rsp + 6320]
                        cmp              eax, 0;                              jne   .Lx947_0
                        mov              rax, qword ptr [rsp + 6336]
                        mov              qword ptr [rsp + 6304], rax
                        mov              rax, qword ptr [rsp + 6344]
                        mov              qword ptr [rsp + 6312], rax;         jmp   n527_call_builtin_icon_α
.Lx947_0:               cmp              eax, 1;                              jne   .Lx947_1
                        mov              rax, qword ptr [rsp + 6448]
                        mov              qword ptr [rsp + 6304], rax
                        mov              rax, qword ptr [rsp + 6456]
                        mov              qword ptr [rsp + 6312], rax;         jmp   n527_call_builtin_icon_α
.Lx947_1:                                                                     jmp   n527_call_builtin_icon_α
n526_disjunction_β:     mov              r11, 251
                        mov              eax, dword ptr [rsp + 6320]
                        cmp              eax, 0;                              je    n526_disjunction_af
                                                                              jmp   n526_disjunction_af
n526_disjunction_af:    mov              r11, 251
                        add              dword ptr [rsp + 6320], 1
                        mov              eax, dword ptr [rsp + 6320]
                        cmp              eax, 1;                              je    n725_lit_string_α
                                                                              jmp   n528_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n527_call_builtin_icon_α:
                        mov              r11, 252
                        mov              rax, qword ptr [rsp + 6304]
                        mov              qword ptr [rsp + 6256], rax
                        mov              rax, qword ptr [rsp + 6312]
                        mov              qword ptr [rsp + 6264], rax
                        mov              rax, qword ptr [rsp + 6288]
                        mov              qword ptr [rsp + 6240], rax
                        mov              rax, qword ptr [rsp + 6296]
                        mov              qword ptr [rsp + 6248], rax
                        .section         .rodata
.Lrkfn949:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn949]
                        lea              rsi, [rsp + 6240]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6224], rax
                        mov              qword ptr [rsp + 6232], rdx
                        cmp              al, 104;                             je    n526_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n528_lit_string_α
n527_call_builtin_icon_β:
                        mov              r11, 252;                            jmp   n526_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n528_lit_string_α:      mov              r11, 253
                        mov              qword ptr [rsp + 6048], 2            # result
                        mov              dword ptr [rsp + 6052], 18
                        mov              rax, qword ptr [rip + .Lx950_0]
                        mov              qword ptr [rsp + 6056], rax;         jmp   n529_disjunction_α
.Lx950_0:               .quad            .Lx950_0_s
.Lx950_0_s:             .string          "real(\"4r7\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n529_disjunction_α:     mov              r11, 254
                        mov              qword ptr [rsp + 6064], 0
                        mov              qword ptr [rsp + 6072], 0
                        mov              dword ptr [rsp + 6080], 0;           jmp   n722_lit_string_α
n529_disjunction_as:    mov              r11, 254
                        mov              eax, dword ptr [rsp + 6080]
                        cmp              eax, 0;                              jne   .Lx952_0
                        mov              rax, qword ptr [rsp + 6096]
                        mov              qword ptr [rsp + 6064], rax
                        mov              rax, qword ptr [rsp + 6104]
                        mov              qword ptr [rsp + 6072], rax;         jmp   n530_call_builtin_icon_α
.Lx952_0:               cmp              eax, 1;                              jne   .Lx952_1
                        mov              rax, qword ptr [rsp + 6208]
                        mov              qword ptr [rsp + 6064], rax
                        mov              rax, qword ptr [rsp + 6216]
                        mov              qword ptr [rsp + 6072], rax;         jmp   n530_call_builtin_icon_α
.Lx952_1:                                                                     jmp   n530_call_builtin_icon_α
n529_disjunction_β:     mov              r11, 254
                        mov              eax, dword ptr [rsp + 6080]
                        cmp              eax, 0;                              je    n529_disjunction_af
                                                                              jmp   n529_disjunction_af
n529_disjunction_af:    mov              r11, 254
                        add              dword ptr [rsp + 6080], 1
                        mov              eax, dword ptr [rsp + 6080]
                        cmp              eax, 1;                              je    n721_lit_string_α
                                                                              jmp   n531_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n530_call_builtin_icon_α:
                        mov              r11, 255
                        mov              rax, qword ptr [rsp + 6064]
                        mov              qword ptr [rsp + 6016], rax
                        mov              rax, qword ptr [rsp + 6072]
                        mov              qword ptr [rsp + 6024], rax
                        mov              rax, qword ptr [rsp + 6048]
                        mov              qword ptr [rsp + 6000], rax
                        mov              rax, qword ptr [rsp + 6056]
                        mov              qword ptr [rsp + 6008], rax
                        .section         .rodata
.Lrkfn954:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn954]
                        lea              rsi, [rsp + 6000]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5984], rax
                        mov              qword ptr [rsp + 5992], rdx
                        cmp              al, 104;                             je    n529_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n531_lit_string_α
n530_call_builtin_icon_β:
                        mov              r11, 255;                            jmp   n529_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n531_lit_string_α:      mov              r11, 256
                        mov              qword ptr [rsp + 5808], 2            # result
                        mov              dword ptr [rsp + 5812], 19
                        mov              rax, qword ptr [rip + .Lx955_0]
                        mov              qword ptr [rsp + 5816], rax;         jmp   n532_disjunction_α
.Lx955_0:               .quad            .Lx955_0_s
.Lx955_0_s:             .string          "real(\"4r 7\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n532_disjunction_α:     mov              r11, 257
                        mov              qword ptr [rsp + 5824], 0
                        mov              qword ptr [rsp + 5832], 0
                        mov              dword ptr [rsp + 5840], 0;           jmp   n718_lit_string_α
n532_disjunction_as:    mov              r11, 257
                        mov              eax, dword ptr [rsp + 5840]
                        cmp              eax, 0;                              jne   .Lx957_0
                        mov              rax, qword ptr [rsp + 5856]
                        mov              qword ptr [rsp + 5824], rax
                        mov              rax, qword ptr [rsp + 5864]
                        mov              qword ptr [rsp + 5832], rax;         jmp   n533_call_builtin_icon_α
.Lx957_0:               cmp              eax, 1;                              jne   .Lx957_1
                        mov              rax, qword ptr [rsp + 5968]
                        mov              qword ptr [rsp + 5824], rax
                        mov              rax, qword ptr [rsp + 5976]
                        mov              qword ptr [rsp + 5832], rax;         jmp   n533_call_builtin_icon_α
.Lx957_1:                                                                     jmp   n533_call_builtin_icon_α
n532_disjunction_β:     mov              r11, 257
                        mov              eax, dword ptr [rsp + 5840]
                        cmp              eax, 0;                              je    n532_disjunction_af
                                                                              jmp   n532_disjunction_af
n532_disjunction_af:    mov              r11, 257
                        add              dword ptr [rsp + 5840], 1
                        mov              eax, dword ptr [rsp + 5840]
                        cmp              eax, 1;                              je    n717_lit_string_α
                                                                              jmp   n534_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n533_call_builtin_icon_α:
                        mov              r11, 258
                        mov              rax, qword ptr [rsp + 5824]
                        mov              qword ptr [rsp + 5776], rax
                        mov              rax, qword ptr [rsp + 5832]
                        mov              qword ptr [rsp + 5784], rax
                        mov              rax, qword ptr [rsp + 5808]
                        mov              qword ptr [rsp + 5760], rax
                        mov              rax, qword ptr [rsp + 5816]
                        mov              qword ptr [rsp + 5768], rax
                        .section         .rodata
.Lrkfn959:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn959]
                        lea              rsi, [rsp + 5760]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5744], rax
                        mov              qword ptr [rsp + 5752], rdx
                        cmp              al, 104;                             je    n532_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n534_lit_string_α
n533_call_builtin_icon_β:
                        mov              r11, 258;                            jmp   n532_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n534_lit_string_α:      mov              r11, 259
                        mov              qword ptr [rsp + 5568], 2            # result
                        mov              dword ptr [rsp + 5572], 19
                        mov              rax, qword ptr [rip + .Lx960_0]
                        mov              qword ptr [rsp + 5576], rax;         jmp   n535_disjunction_α
.Lx960_0:               .quad            .Lx960_0_s
.Lx960_0_s:             .string          "real(\"7r 4\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n535_disjunction_α:     mov              r11, 260
                        mov              qword ptr [rsp + 5584], 0
                        mov              qword ptr [rsp + 5592], 0
                        mov              dword ptr [rsp + 5600], 0;           jmp   n714_lit_string_α
n535_disjunction_as:    mov              r11, 260
                        mov              eax, dword ptr [rsp + 5600]
                        cmp              eax, 0;                              jne   .Lx962_0
                        mov              rax, qword ptr [rsp + 5616]
                        mov              qword ptr [rsp + 5584], rax
                        mov              rax, qword ptr [rsp + 5624]
                        mov              qword ptr [rsp + 5592], rax;         jmp   n536_call_builtin_icon_α
.Lx962_0:               cmp              eax, 1;                              jne   .Lx962_1
                        mov              rax, qword ptr [rsp + 5728]
                        mov              qword ptr [rsp + 5584], rax
                        mov              rax, qword ptr [rsp + 5736]
                        mov              qword ptr [rsp + 5592], rax;         jmp   n536_call_builtin_icon_α
.Lx962_1:                                                                     jmp   n536_call_builtin_icon_α
n535_disjunction_β:     mov              r11, 260
                        mov              eax, dword ptr [rsp + 5600]
                        cmp              eax, 0;                              je    n535_disjunction_af
                                                                              jmp   n535_disjunction_af
n535_disjunction_af:    mov              r11, 260
                        add              dword ptr [rsp + 5600], 1
                        mov              eax, dword ptr [rsp + 5600]
                        cmp              eax, 1;                              je    n713_lit_string_α
                                                                              jmp   n537_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n536_call_builtin_icon_α:
                        mov              r11, 261
                        mov              rax, qword ptr [rsp + 5584]
                        mov              qword ptr [rsp + 5536], rax
                        mov              rax, qword ptr [rsp + 5592]
                        mov              qword ptr [rsp + 5544], rax
                        mov              rax, qword ptr [rsp + 5568]
                        mov              qword ptr [rsp + 5520], rax
                        mov              rax, qword ptr [rsp + 5576]
                        mov              qword ptr [rsp + 5528], rax
                        .section         .rodata
.Lrkfn964:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn964]
                        lea              rsi, [rsp + 5520]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5504], rax
                        mov              qword ptr [rsp + 5512], rdx
                        cmp              al, 104;                             je    n535_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n537_lit_string_α
n536_call_builtin_icon_β:
                        mov              r11, 261;                            jmp   n535_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n537_lit_string_α:      mov              r11, 262
                        mov              qword ptr [rsp + 5328], 2            # result
                        mov              dword ptr [rsp + 5332], 20
                        mov              rax, qword ptr [rip + .Lx965_0]
                        mov              qword ptr [rsp + 5336], rax;         jmp   n538_disjunction_α
.Lx965_0:               .quad            .Lx965_0_s
.Lx965_0_s:             .string          "real(\"16rff\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n538_disjunction_α:     mov              r11, 263
                        mov              qword ptr [rsp + 5344], 0
                        mov              qword ptr [rsp + 5352], 0
                        mov              dword ptr [rsp + 5360], 0;           jmp   n710_lit_string_α
n538_disjunction_as:    mov              r11, 263
                        mov              eax, dword ptr [rsp + 5360]
                        cmp              eax, 0;                              jne   .Lx967_0
                        mov              rax, qword ptr [rsp + 5376]
                        mov              qword ptr [rsp + 5344], rax
                        mov              rax, qword ptr [rsp + 5384]
                        mov              qword ptr [rsp + 5352], rax;         jmp   n539_call_builtin_icon_α
.Lx967_0:               cmp              eax, 1;                              jne   .Lx967_1
                        mov              rax, qword ptr [rsp + 5488]
                        mov              qword ptr [rsp + 5344], rax
                        mov              rax, qword ptr [rsp + 5496]
                        mov              qword ptr [rsp + 5352], rax;         jmp   n539_call_builtin_icon_α
.Lx967_1:                                                                     jmp   n539_call_builtin_icon_α
n538_disjunction_β:     mov              r11, 263
                        mov              eax, dword ptr [rsp + 5360]
                        cmp              eax, 0;                              je    n538_disjunction_af
                                                                              jmp   n538_disjunction_af
n538_disjunction_af:    mov              r11, 263
                        add              dword ptr [rsp + 5360], 1
                        mov              eax, dword ptr [rsp + 5360]
                        cmp              eax, 1;                              je    n709_lit_string_α
                                                                              jmp   n540_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n539_call_builtin_icon_α:
                        mov              r11, 264
                        mov              rax, qword ptr [rsp + 5344]
                        mov              qword ptr [rsp + 5296], rax
                        mov              rax, qword ptr [rsp + 5352]
                        mov              qword ptr [rsp + 5304], rax
                        mov              rax, qword ptr [rsp + 5328]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 5336]
                        mov              qword ptr [rsp + 5288], rax
                        .section         .rodata
.Lrkfn969:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn969]
                        lea              rsi, [rsp + 5280]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5264], rax
                        mov              qword ptr [rsp + 5272], rdx
                        cmp              al, 104;                             je    n538_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n540_lit_string_α
n539_call_builtin_icon_β:
                        mov              r11, 264;                            jmp   n538_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n540_lit_string_α:      mov              r11, 265
                        mov              qword ptr [rsp + 5088], 2            # result
                        mov              dword ptr [rsp + 5092], 21
                        mov              rax, qword ptr [rip + .Lx970_0]
                        mov              qword ptr [rsp + 5096], rax;         jmp   n541_disjunction_α
.Lx970_0:               .quad            .Lx970_0_s
.Lx970_0_s:             .string          "real(\"36rcat\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n541_disjunction_α:     mov              r11, 266
                        mov              qword ptr [rsp + 5104], 0
                        mov              qword ptr [rsp + 5112], 0
                        mov              dword ptr [rsp + 5120], 0;           jmp   n706_lit_string_α
n541_disjunction_as:    mov              r11, 266
                        mov              eax, dword ptr [rsp + 5120]
                        cmp              eax, 0;                              jne   .Lx972_0
                        mov              rax, qword ptr [rsp + 5136]
                        mov              qword ptr [rsp + 5104], rax
                        mov              rax, qword ptr [rsp + 5144]
                        mov              qword ptr [rsp + 5112], rax;         jmp   n542_call_builtin_icon_α
.Lx972_0:               cmp              eax, 1;                              jne   .Lx972_1
                        mov              rax, qword ptr [rsp + 5248]
                        mov              qword ptr [rsp + 5104], rax
                        mov              rax, qword ptr [rsp + 5256]
                        mov              qword ptr [rsp + 5112], rax;         jmp   n542_call_builtin_icon_α
.Lx972_1:                                                                     jmp   n542_call_builtin_icon_α
n541_disjunction_β:     mov              r11, 266
                        mov              eax, dword ptr [rsp + 5120]
                        cmp              eax, 0;                              je    n541_disjunction_af
                                                                              jmp   n541_disjunction_af
n541_disjunction_af:    mov              r11, 266
                        add              dword ptr [rsp + 5120], 1
                        mov              eax, dword ptr [rsp + 5120]
                        cmp              eax, 1;                              je    n705_lit_string_α
                                                                              jmp   n543_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n542_call_builtin_icon_α:
                        mov              r11, 267
                        mov              rax, qword ptr [rsp + 5104]
                        mov              qword ptr [rsp + 5056], rax
                        mov              rax, qword ptr [rsp + 5112]
                        mov              qword ptr [rsp + 5064], rax
                        mov              rax, qword ptr [rsp + 5088]
                        mov              qword ptr [rsp + 5040], rax
                        mov              rax, qword ptr [rsp + 5096]
                        mov              qword ptr [rsp + 5048], rax
                        .section         .rodata
.Lrkfn974:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn974]
                        lea              rsi, [rsp + 5040]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5024], rax
                        mov              qword ptr [rsp + 5032], rdx
                        cmp              al, 104;                             je    n541_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n543_lit_string_α
n542_call_builtin_icon_β:
                        mov              r11, 267;                            jmp   n541_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n543_lit_string_α:      mov              r11, 268
                        mov              qword ptr [rsp + 4848], 2            # result
                        mov              dword ptr [rsp + 4852], 21
                        mov              rax, qword ptr [rip + .Lx975_0]
                        mov              qword ptr [rsp + 4856], rax;         jmp   n544_disjunction_α
.Lx975_0:               .quad            .Lx975_0_s
.Lx975_0_s:             .string          "real(\"36Rcat\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n544_disjunction_α:     mov              r11, 269
                        mov              qword ptr [rsp + 4864], 0
                        mov              qword ptr [rsp + 4872], 0
                        mov              dword ptr [rsp + 4880], 0;           jmp   n702_lit_string_α
n544_disjunction_as:    mov              r11, 269
                        mov              eax, dword ptr [rsp + 4880]
                        cmp              eax, 0;                              jne   .Lx977_0
                        mov              rax, qword ptr [rsp + 4896]
                        mov              qword ptr [rsp + 4864], rax
                        mov              rax, qword ptr [rsp + 4904]
                        mov              qword ptr [rsp + 4872], rax;         jmp   n545_call_builtin_icon_α
.Lx977_0:               cmp              eax, 1;                              jne   .Lx977_1
                        mov              rax, qword ptr [rsp + 5008]
                        mov              qword ptr [rsp + 4864], rax
                        mov              rax, qword ptr [rsp + 5016]
                        mov              qword ptr [rsp + 4872], rax;         jmp   n545_call_builtin_icon_α
.Lx977_1:                                                                     jmp   n545_call_builtin_icon_α
n544_disjunction_β:     mov              r11, 269
                        mov              eax, dword ptr [rsp + 4880]
                        cmp              eax, 0;                              je    n544_disjunction_af
                                                                              jmp   n544_disjunction_af
n544_disjunction_af:    mov              r11, 269
                        add              dword ptr [rsp + 4880], 1
                        mov              eax, dword ptr [rsp + 4880]
                        cmp              eax, 1;                              je    n701_lit_string_α
                                                                              jmp   n546_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n545_call_builtin_icon_α:
                        mov              r11, 270
                        mov              rax, qword ptr [rsp + 4864]
                        mov              qword ptr [rsp + 4816], rax
                        mov              rax, qword ptr [rsp + 4872]
                        mov              qword ptr [rsp + 4824], rax
                        mov              rax, qword ptr [rsp + 4848]
                        mov              qword ptr [rsp + 4800], rax
                        mov              rax, qword ptr [rsp + 4856]
                        mov              qword ptr [rsp + 4808], rax
                        .section         .rodata
.Lrkfn979:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn979]
                        lea              rsi, [rsp + 4800]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4784], rax
                        mov              qword ptr [rsp + 4792], rdx
                        cmp              al, 104;                             je    n544_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n546_lit_string_α
n545_call_builtin_icon_β:
                        mov              r11, 270;                            jmp   n544_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n546_lit_string_α:      mov              r11, 271
                        mov              qword ptr [rsp + 4608], 2            # result
                        mov              dword ptr [rsp + 4612], 21
                        mov              rax, qword ptr [rip + .Lx980_0]
                        mov              qword ptr [rsp + 4616], rax;         jmp   n547_disjunction_α
.Lx980_0:               .quad            .Lx980_0_s
.Lx980_0_s:             .string          "real(\"36rCAT\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n547_disjunction_α:     mov              r11, 272
                        mov              qword ptr [rsp + 4624], 0
                        mov              qword ptr [rsp + 4632], 0
                        mov              dword ptr [rsp + 4640], 0;           jmp   n698_lit_string_α
n547_disjunction_as:    mov              r11, 272
                        mov              eax, dword ptr [rsp + 4640]
                        cmp              eax, 0;                              jne   .Lx982_0
                        mov              rax, qword ptr [rsp + 4656]
                        mov              qword ptr [rsp + 4624], rax
                        mov              rax, qword ptr [rsp + 4664]
                        mov              qword ptr [rsp + 4632], rax;         jmp   n548_call_builtin_icon_α
.Lx982_0:               cmp              eax, 1;                              jne   .Lx982_1
                        mov              rax, qword ptr [rsp + 4768]
                        mov              qword ptr [rsp + 4624], rax
                        mov              rax, qword ptr [rsp + 4776]
                        mov              qword ptr [rsp + 4632], rax;         jmp   n548_call_builtin_icon_α
.Lx982_1:                                                                     jmp   n548_call_builtin_icon_α
n547_disjunction_β:     mov              r11, 272
                        mov              eax, dword ptr [rsp + 4640]
                        cmp              eax, 0;                              je    n547_disjunction_af
                                                                              jmp   n547_disjunction_af
n547_disjunction_af:    mov              r11, 272
                        add              dword ptr [rsp + 4640], 1
                        mov              eax, dword ptr [rsp + 4640]
                        cmp              eax, 1;                              je    n697_lit_string_α
                                                                              jmp   n549_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n548_call_builtin_icon_α:
                        mov              r11, 273
                        mov              rax, qword ptr [rsp + 4624]
                        mov              qword ptr [rsp + 4576], rax
                        mov              rax, qword ptr [rsp + 4632]
                        mov              qword ptr [rsp + 4584], rax
                        mov              rax, qword ptr [rsp + 4608]
                        mov              qword ptr [rsp + 4560], rax
                        mov              rax, qword ptr [rsp + 4616]
                        mov              qword ptr [rsp + 4568], rax
                        .section         .rodata
.Lrkfn984:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn984]
                        lea              rsi, [rsp + 4560]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4544], rax
                        mov              qword ptr [rsp + 4552], rdx
                        cmp              al, 104;                             je    n547_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n549_lit_string_α
n548_call_builtin_icon_β:
                        mov              r11, 273;                            jmp   n547_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n549_lit_string_α:      mov              r11, 274
                        mov              qword ptr [rsp + 4368], 2            # result
                        mov              dword ptr [rsp + 4372], 18
                        mov              rax, qword ptr [rip + .Lx985_0]
                        mov              qword ptr [rsp + 4376], rax;         jmp   n550_disjunction_α
.Lx985_0:               .quad            .Lx985_0_s
.Lx985_0_s:             .string          "real(\"1r1\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n550_disjunction_α:     mov              r11, 275
                        mov              qword ptr [rsp + 4384], 0
                        mov              qword ptr [rsp + 4392], 0
                        mov              dword ptr [rsp + 4400], 0;           jmp   n694_lit_string_α
n550_disjunction_as:    mov              r11, 275
                        mov              eax, dword ptr [rsp + 4400]
                        cmp              eax, 0;                              jne   .Lx987_0
                        mov              rax, qword ptr [rsp + 4416]
                        mov              qword ptr [rsp + 4384], rax
                        mov              rax, qword ptr [rsp + 4424]
                        mov              qword ptr [rsp + 4392], rax;         jmp   n551_call_builtin_icon_α
.Lx987_0:               cmp              eax, 1;                              jne   .Lx987_1
                        mov              rax, qword ptr [rsp + 4528]
                        mov              qword ptr [rsp + 4384], rax
                        mov              rax, qword ptr [rsp + 4536]
                        mov              qword ptr [rsp + 4392], rax;         jmp   n551_call_builtin_icon_α
.Lx987_1:                                                                     jmp   n551_call_builtin_icon_α
n550_disjunction_β:     mov              r11, 275
                        mov              eax, dword ptr [rsp + 4400]
                        cmp              eax, 0;                              je    n550_disjunction_af
                                                                              jmp   n550_disjunction_af
n550_disjunction_af:    mov              r11, 275
                        add              dword ptr [rsp + 4400], 1
                        mov              eax, dword ptr [rsp + 4400]
                        cmp              eax, 1;                              je    n693_lit_string_α
                                                                              jmp   n552_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n551_call_builtin_icon_α:
                        mov              r11, 276
                        mov              rax, qword ptr [rsp + 4384]
                        mov              qword ptr [rsp + 4336], rax
                        mov              rax, qword ptr [rsp + 4392]
                        mov              qword ptr [rsp + 4344], rax
                        mov              rax, qword ptr [rsp + 4368]
                        mov              qword ptr [rsp + 4320], rax
                        mov              rax, qword ptr [rsp + 4376]
                        mov              qword ptr [rsp + 4328], rax
                        .section         .rodata
.Lrkfn989:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn989]
                        lea              rsi, [rsp + 4320]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4304], rax
                        mov              qword ptr [rsp + 4312], rdx
                        cmp              al, 104;                             je    n550_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n552_lit_string_α
n551_call_builtin_icon_β:
                        mov              r11, 276;                            jmp   n550_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n552_lit_string_α:      mov              r11, 277
                        mov              qword ptr [rsp + 4128], 2            # result
                        mov              dword ptr [rsp + 4132], 18
                        mov              rax, qword ptr [rip + .Lx990_0]
                        mov              qword ptr [rsp + 4136], rax;         jmp   n553_disjunction_α
.Lx990_0:               .quad            .Lx990_0_s
.Lx990_0_s:             .string          "real(\"2r0\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n553_disjunction_α:     mov              r11, 278
                        mov              qword ptr [rsp + 4144], 0
                        mov              qword ptr [rsp + 4152], 0
                        mov              dword ptr [rsp + 4160], 0;           jmp   n690_lit_string_α
n553_disjunction_as:    mov              r11, 278
                        mov              eax, dword ptr [rsp + 4160]
                        cmp              eax, 0;                              jne   .Lx992_0
                        mov              rax, qword ptr [rsp + 4176]
                        mov              qword ptr [rsp + 4144], rax
                        mov              rax, qword ptr [rsp + 4184]
                        mov              qword ptr [rsp + 4152], rax;         jmp   n554_call_builtin_icon_α
.Lx992_0:               cmp              eax, 1;                              jne   .Lx992_1
                        mov              rax, qword ptr [rsp + 4288]
                        mov              qword ptr [rsp + 4144], rax
                        mov              rax, qword ptr [rsp + 4296]
                        mov              qword ptr [rsp + 4152], rax;         jmp   n554_call_builtin_icon_α
.Lx992_1:                                                                     jmp   n554_call_builtin_icon_α
n553_disjunction_β:     mov              r11, 278
                        mov              eax, dword ptr [rsp + 4160]
                        cmp              eax, 0;                              je    n553_disjunction_af
                                                                              jmp   n553_disjunction_af
n553_disjunction_af:    mov              r11, 278
                        add              dword ptr [rsp + 4160], 1
                        mov              eax, dword ptr [rsp + 4160]
                        cmp              eax, 1;                              je    n689_lit_string_α
                                                                              jmp   n555_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n554_call_builtin_icon_α:
                        mov              r11, 279
                        mov              rax, qword ptr [rsp + 4144]
                        mov              qword ptr [rsp + 4096], rax
                        mov              rax, qword ptr [rsp + 4152]
                        mov              qword ptr [rsp + 4104], rax
                        mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 4080], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 4088], rax
                        .section         .rodata
.Lrkfn994:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn994]
                        lea              rsi, [rsp + 4080]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4064], rax
                        mov              qword ptr [rsp + 4072], rdx
                        cmp              al, 104;                             je    n553_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n555_lit_string_α
n554_call_builtin_icon_β:
                        mov              r11, 279;                            jmp   n553_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n555_lit_string_α:      mov              r11, 280
                        mov              qword ptr [rsp + 3888], 2            # result
                        mov              dword ptr [rsp + 3892], 44
                        mov              rax, qword ptr [rip + .Lx995_0]
                        mov              qword ptr [rsp + 3896], rax;         jmp   n556_disjunction_α
.Lx995_0:               .quad            .Lx995_0_s
.Lx995_0_s:             .string          "real(\"22222222222222222222222222222\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n556_disjunction_α:     mov              r11, 281
                        mov              qword ptr [rsp + 3904], 0
                        mov              qword ptr [rsp + 3912], 0
                        mov              dword ptr [rsp + 3920], 0;           jmp   n686_lit_string_α
n556_disjunction_as:    mov              r11, 281
                        mov              eax, dword ptr [rsp + 3920]
                        cmp              eax, 0;                              jne   .Lx997_0
                        mov              rax, qword ptr [rsp + 3936]
                        mov              qword ptr [rsp + 3904], rax
                        mov              rax, qword ptr [rsp + 3944]
                        mov              qword ptr [rsp + 3912], rax;         jmp   n557_call_builtin_icon_α
.Lx997_0:               cmp              eax, 1;                              jne   .Lx997_1
                        mov              rax, qword ptr [rsp + 4048]
                        mov              qword ptr [rsp + 3904], rax
                        mov              rax, qword ptr [rsp + 4056]
                        mov              qword ptr [rsp + 3912], rax;         jmp   n557_call_builtin_icon_α
.Lx997_1:                                                                     jmp   n557_call_builtin_icon_α
n556_disjunction_β:     mov              r11, 281
                        mov              eax, dword ptr [rsp + 3920]
                        cmp              eax, 0;                              je    n556_disjunction_af
                                                                              jmp   n556_disjunction_af
n556_disjunction_af:    mov              r11, 281
                        add              dword ptr [rsp + 3920], 1
                        mov              eax, dword ptr [rsp + 3920]
                        cmp              eax, 1;                              je    n685_lit_string_α
                                                                              jmp   n558_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n557_call_builtin_icon_α:
                        mov              r11, 282
                        mov              rax, qword ptr [rsp + 3904]
                        mov              qword ptr [rsp + 3856], rax
                        mov              rax, qword ptr [rsp + 3912]
                        mov              qword ptr [rsp + 3864], rax
                        mov              rax, qword ptr [rsp + 3888]
                        mov              qword ptr [rsp + 3840], rax
                        mov              rax, qword ptr [rsp + 3896]
                        mov              qword ptr [rsp + 3848], rax
                        .section         .rodata
.Lrkfn999:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn999]
                        lea              rsi, [rsp + 3840]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3824], rax
                        mov              qword ptr [rsp + 3832], rdx
                        cmp              al, 104;                             je    n556_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n558_lit_string_α
n557_call_builtin_icon_β:
                        mov              r11, 282;                            jmp   n556_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n558_lit_string_α:      mov              r11, 283
                        mov              qword ptr [rsp + 3648], 2            # result
                        mov              dword ptr [rsp + 3652], 19
                        mov              rax, qword ptr [rip + .Lx1000_0]
                        mov              qword ptr [rsp + 3656], rax;         jmp   n559_disjunction_α
.Lx1000_0:              .quad            .Lx1000_0_s
.Lx1000_0_s:            .string          "numeric(2.0) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n559_disjunction_α:     mov              r11, 284
                        mov              qword ptr [rsp + 3664], 0
                        mov              qword ptr [rsp + 3672], 0
                        mov              dword ptr [rsp + 3680], 0;           jmp   n682_lit_real_α
n559_disjunction_as:    mov              r11, 284
                        mov              eax, dword ptr [rsp + 3680]
                        cmp              eax, 0;                              jne   .Lx1002_0
                        mov              rax, qword ptr [rsp + 3696]
                        mov              qword ptr [rsp + 3664], rax
                        mov              rax, qword ptr [rsp + 3704]
                        mov              qword ptr [rsp + 3672], rax;         jmp   n560_call_builtin_icon_α
.Lx1002_0:              cmp              eax, 1;                              jne   .Lx1002_1
                        mov              rax, qword ptr [rsp + 3808]
                        mov              qword ptr [rsp + 3664], rax
                        mov              rax, qword ptr [rsp + 3816]
                        mov              qword ptr [rsp + 3672], rax;         jmp   n560_call_builtin_icon_α
.Lx1002_1:                                                                    jmp   n560_call_builtin_icon_α
n559_disjunction_β:     mov              r11, 284
                        mov              eax, dword ptr [rsp + 3680]
                        cmp              eax, 0;                              je    n559_disjunction_af
                                                                              jmp   n559_disjunction_af
n559_disjunction_af:    mov              r11, 284
                        add              dword ptr [rsp + 3680], 1
                        mov              eax, dword ptr [rsp + 3680]
                        cmp              eax, 1;                              je    n681_lit_string_α
                                                                              jmp   n561_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n560_call_builtin_icon_α:
                        mov              r11, 285
                        mov              rax, qword ptr [rsp + 3664]
                        mov              qword ptr [rsp + 3616], rax
                        mov              rax, qword ptr [rsp + 3672]
                        mov              qword ptr [rsp + 3624], rax
                        mov              rax, qword ptr [rsp + 3648]
                        mov              qword ptr [rsp + 3600], rax
                        mov              rax, qword ptr [rsp + 3656]
                        mov              qword ptr [rsp + 3608], rax
                        .section         .rodata
.Lrkfn1004:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1004]
                        lea              rsi, [rsp + 3600]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3584], rax
                        mov              qword ptr [rsp + 3592], rdx
                        cmp              al, 104;                             je    n559_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n561_lit_string_α
n560_call_builtin_icon_β:
                        mov              r11, 285;                            jmp   n559_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n561_lit_string_α:      mov              r11, 286
                        mov              qword ptr [rsp + 3408], 2            # result
                        mov              dword ptr [rsp + 3412], 19
                        mov              rax, qword ptr [rip + .Lx1005_0]
                        mov              qword ptr [rsp + 3416], rax;         jmp   n562_disjunction_α
.Lx1005_0:              .quad            .Lx1005_0_s
.Lx1005_0_s:            .string          "numeric(2.7) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n562_disjunction_α:     mov              r11, 287
                        mov              qword ptr [rsp + 3424], 0
                        mov              qword ptr [rsp + 3432], 0
                        mov              dword ptr [rsp + 3440], 0;           jmp   n678_lit_real_α
n562_disjunction_as:    mov              r11, 287
                        mov              eax, dword ptr [rsp + 3440]
                        cmp              eax, 0;                              jne   .Lx1007_0
                        mov              rax, qword ptr [rsp + 3456]
                        mov              qword ptr [rsp + 3424], rax
                        mov              rax, qword ptr [rsp + 3464]
                        mov              qword ptr [rsp + 3432], rax;         jmp   n563_call_builtin_icon_α
.Lx1007_0:              cmp              eax, 1;                              jne   .Lx1007_1
                        mov              rax, qword ptr [rsp + 3568]
                        mov              qword ptr [rsp + 3424], rax
                        mov              rax, qword ptr [rsp + 3576]
                        mov              qword ptr [rsp + 3432], rax;         jmp   n563_call_builtin_icon_α
.Lx1007_1:                                                                    jmp   n563_call_builtin_icon_α
n562_disjunction_β:     mov              r11, 287
                        mov              eax, dword ptr [rsp + 3440]
                        cmp              eax, 0;                              je    n562_disjunction_af
                                                                              jmp   n562_disjunction_af
n562_disjunction_af:    mov              r11, 287
                        add              dword ptr [rsp + 3440], 1
                        mov              eax, dword ptr [rsp + 3440]
                        cmp              eax, 1;                              je    n677_lit_string_α
                                                                              jmp   n564_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n563_call_builtin_icon_α:
                        mov              r11, 288
                        mov              rax, qword ptr [rsp + 3424]
                        mov              qword ptr [rsp + 3376], rax
                        mov              rax, qword ptr [rsp + 3432]
                        mov              qword ptr [rsp + 3384], rax
                        mov              rax, qword ptr [rsp + 3408]
                        mov              qword ptr [rsp + 3360], rax
                        mov              rax, qword ptr [rsp + 3416]
                        mov              qword ptr [rsp + 3368], rax
                        .section         .rodata
.Lrkfn1009:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1009]
                        lea              rsi, [rsp + 3360]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3344], rax
                        mov              qword ptr [rsp + 3352], rdx
                        cmp              al, 104;                             je    n562_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n564_lit_string_α
n563_call_builtin_icon_β:
                        mov              r11, 288;                            jmp   n562_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n564_lit_string_α:      mov              r11, 289
                        mov              qword ptr [rsp + 3168], 2            # result
                        mov              dword ptr [rsp + 3172], 19
                        mov              rax, qword ptr [rip + .Lx1010_0]
                        mov              qword ptr [rsp + 3176], rax;         jmp   n565_disjunction_α
.Lx1010_0:              .quad            .Lx1010_0_s
.Lx1010_0_s:            .string          "numeric(0.3) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n565_disjunction_α:     mov              r11, 290
                        mov              qword ptr [rsp + 3184], 0
                        mov              qword ptr [rsp + 3192], 0
                        mov              dword ptr [rsp + 3200], 0;           jmp   n674_lit_real_α
n565_disjunction_as:    mov              r11, 290
                        mov              eax, dword ptr [rsp + 3200]
                        cmp              eax, 0;                              jne   .Lx1012_0
                        mov              rax, qword ptr [rsp + 3216]
                        mov              qword ptr [rsp + 3184], rax
                        mov              rax, qword ptr [rsp + 3224]
                        mov              qword ptr [rsp + 3192], rax;         jmp   n566_call_builtin_icon_α
.Lx1012_0:              cmp              eax, 1;                              jne   .Lx1012_1
                        mov              rax, qword ptr [rsp + 3328]
                        mov              qword ptr [rsp + 3184], rax
                        mov              rax, qword ptr [rsp + 3336]
                        mov              qword ptr [rsp + 3192], rax;         jmp   n566_call_builtin_icon_α
.Lx1012_1:                                                                    jmp   n566_call_builtin_icon_α
n565_disjunction_β:     mov              r11, 290
                        mov              eax, dword ptr [rsp + 3200]
                        cmp              eax, 0;                              je    n565_disjunction_af
                                                                              jmp   n565_disjunction_af
n565_disjunction_af:    mov              r11, 290
                        add              dword ptr [rsp + 3200], 1
                        mov              eax, dword ptr [rsp + 3200]
                        cmp              eax, 1;                              je    n673_lit_string_α
                                                                              jmp   n567_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n566_call_builtin_icon_α:
                        mov              r11, 291
                        mov              rax, qword ptr [rsp + 3184]
                        mov              qword ptr [rsp + 3136], rax
                        mov              rax, qword ptr [rsp + 3192]
                        mov              qword ptr [rsp + 3144], rax
                        mov              rax, qword ptr [rsp + 3168]
                        mov              qword ptr [rsp + 3120], rax
                        mov              rax, qword ptr [rsp + 3176]
                        mov              qword ptr [rsp + 3128], rax
                        .section         .rodata
.Lrkfn1014:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1014]
                        lea              rsi, [rsp + 3120]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3104], rax
                        mov              qword ptr [rsp + 3112], rdx
                        cmp              al, 104;                             je    n565_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n567_lit_string_α
n566_call_builtin_icon_β:
                        mov              r11, 291;                            jmp   n565_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n567_lit_string_α:      mov              r11, 292
                        mov              qword ptr [rsp + 2928], 2            # result
                        mov              dword ptr [rsp + 2932], 18
                        mov              rax, qword ptr [rip + .Lx1015_0]
                        mov              qword ptr [rsp + 2936], rax;         jmp   n568_disjunction_α
.Lx1015_0:              .quad            .Lx1015_0_s
.Lx1015_0_s:            .string          "numeric(e2) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n568_disjunction_α:     mov              r11, 293
                        mov              qword ptr [rsp + 2944], 0
                        mov              qword ptr [rsp + 2952], 0
                        mov              dword ptr [rsp + 2960], 0;           jmp   n670_var_α
n568_disjunction_as:    mov              r11, 293
                        mov              eax, dword ptr [rsp + 2960]
                        cmp              eax, 0;                              jne   .Lx1017_0
                        mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 2944], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 2952], rax;         jmp   n569_call_builtin_icon_α
.Lx1017_0:              cmp              eax, 1;                              jne   .Lx1017_1
                        mov              rax, qword ptr [rsp + 3088]
                        mov              qword ptr [rsp + 2944], rax
                        mov              rax, qword ptr [rsp + 3096]
                        mov              qword ptr [rsp + 2952], rax;         jmp   n569_call_builtin_icon_α
.Lx1017_1:                                                                    jmp   n569_call_builtin_icon_α
n568_disjunction_β:     mov              r11, 293
                        mov              eax, dword ptr [rsp + 2960]
                        cmp              eax, 0;                              je    n568_disjunction_af
                                                                              jmp   n568_disjunction_af
n568_disjunction_af:    mov              r11, 293
                        add              dword ptr [rsp + 2960], 1
                        mov              eax, dword ptr [rsp + 2960]
                        cmp              eax, 1;                              je    n669_lit_string_α
                                                                              jmp   n570_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n569_call_builtin_icon_α:
                        mov              r11, 294
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 2896], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 2904], rax
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 2880], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 2888], rax
                        .section         .rodata
.Lrkfn1019:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1019]
                        lea              rsi, [rsp + 2880]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx
                        cmp              al, 104;                             je    n568_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n570_lit_string_α
n569_call_builtin_icon_β:
                        mov              r11, 294;                            jmp   n568_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n570_lit_string_α:      mov              r11, 295
                        mov              qword ptr [rsp + 2736], 2            # result
                        mov              dword ptr [rsp + 2740], 14
                        mov              rax, qword ptr [rip + .Lx1020_0]
                        mov              qword ptr [rsp + 2744], rax;         jmp   n571_disjunction_α
.Lx1020_0:              .quad            .Lx1020_0_s
.Lx1020_0_s:            .string          "36. ^ 9 ----> "
#-----------------------------------------------------------------------------------------------------------------------
n571_disjunction_α:     mov              r11, 296
                        mov              qword ptr [rsp + 2752], 0
                        mov              qword ptr [rsp + 2760], 0
                        mov              dword ptr [rsp + 2768], 0;           jmp   n667_lit_real_α
n571_disjunction_as:    mov              r11, 296
                        mov              eax, dword ptr [rsp + 2768]
                        cmp              eax, 0;                              jne   .Lx1022_0
                        mov              rax, qword ptr [rsp + 2784]
                        mov              qword ptr [rsp + 2752], rax
                        mov              rax, qword ptr [rsp + 2792]
                        mov              qword ptr [rsp + 2760], rax;         jmp   n572_call_builtin_icon_α
.Lx1022_0:              cmp              eax, 1;                              jne   .Lx1022_1
                        mov              rax, qword ptr [rsp + 2848]
                        mov              qword ptr [rsp + 2752], rax
                        mov              rax, qword ptr [rsp + 2856]
                        mov              qword ptr [rsp + 2760], rax;         jmp   n572_call_builtin_icon_α
.Lx1022_1:                                                                    jmp   n572_call_builtin_icon_α
n571_disjunction_β:     mov              r11, 296
                        mov              eax, dword ptr [rsp + 2768]
                        cmp              eax, 0;                              je    n571_disjunction_af
                                                                              jmp   n571_disjunction_af
n571_disjunction_af:    mov              r11, 296
                        add              dword ptr [rsp + 2768], 1
                        mov              eax, dword ptr [rsp + 2768]
                        cmp              eax, 1;                              je    n666_lit_string_α
                                                                              jmp   n573_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n572_call_builtin_icon_α:
                        mov              r11, 297
                        mov              rax, qword ptr [rsp + 2752]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 2760]
                        mov              qword ptr [rsp + 2712], rax
                        mov              rax, qword ptr [rsp + 2736]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 2744]
                        mov              qword ptr [rsp + 2696], rax
                        .section         .rodata
.Lrkfn1024:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1024]
                        lea              rsi, [rsp + 2688]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx
                        cmp              al, 104;                             je    n571_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n573_lit_string_α
n572_call_builtin_icon_β:
                        mov              r11, 297;                            jmp   n571_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n573_lit_string_α:      mov              r11, 298
                        mov              qword ptr [rsp + 2544], 2            # result
                        mov              dword ptr [rsp + 2548], 14
                        mov              rax, qword ptr [rip + .Lx1025_0]
                        mov              qword ptr [rsp + 2552], rax;         jmp   n574_disjunction_α
.Lx1025_0:              .quad            .Lx1025_0_s
.Lx1025_0_s:            .string          "36 ^ 9. ----> "
#-----------------------------------------------------------------------------------------------------------------------
n574_disjunction_α:     mov              r11, 299
                        mov              qword ptr [rsp + 2560], 0
                        mov              qword ptr [rsp + 2568], 0
                        mov              dword ptr [rsp + 2576], 0;           jmp   n664_lit_real_α
n574_disjunction_as:    mov              r11, 299
                        mov              eax, dword ptr [rsp + 2576]
                        cmp              eax, 0;                              jne   .Lx1027_0
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 2560], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 2568], rax;         jmp   n575_call_builtin_icon_α
.Lx1027_0:              cmp              eax, 1;                              jne   .Lx1027_1
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 2560], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 2568], rax;         jmp   n575_call_builtin_icon_α
.Lx1027_1:                                                                    jmp   n575_call_builtin_icon_α
n574_disjunction_β:     mov              r11, 299
                        mov              eax, dword ptr [rsp + 2576]
                        cmp              eax, 0;                              je    n574_disjunction_af
                                                                              jmp   n574_disjunction_af
n574_disjunction_af:    mov              r11, 299
                        add              dword ptr [rsp + 2576], 1
                        mov              eax, dword ptr [rsp + 2576]
                        cmp              eax, 1;                              je    n663_lit_string_α
                                                                              jmp   n576_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n575_call_builtin_icon_α:
                        mov              r11, 300
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 2512], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 2520], rax
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 2504], rax
                        .section         .rodata
.Lrkfn1029:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1029]
                        lea              rsi, [rsp + 2496]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2480], rax
                        mov              qword ptr [rsp + 2488], rdx
                        cmp              al, 104;                             je    n574_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n576_lit_string_α
n575_call_builtin_icon_β:
                        mov              r11, 300;                            jmp   n574_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n576_lit_string_α:      mov              r11, 301
                        mov              qword ptr [rsp + 2352], 2            # result
                        mov              dword ptr [rsp + 2356], 15
                        mov              rax, qword ptr [rip + .Lx1030_0]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n577_disjunction_α
.Lx1030_0:              .quad            .Lx1030_0_s
.Lx1030_0_s:            .string          "36. ^ 9. ----> "
#-----------------------------------------------------------------------------------------------------------------------
n577_disjunction_α:     mov              r11, 302
                        mov              qword ptr [rsp + 2368], 0
                        mov              qword ptr [rsp + 2376], 0
                        mov              dword ptr [rsp + 2384], 0;           jmp   n661_lit_real_α
n577_disjunction_as:    mov              r11, 302
                        mov              eax, dword ptr [rsp + 2384]
                        cmp              eax, 0;                              jne   .Lx1032_0
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 2368], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 2376], rax;         jmp   n578_call_builtin_icon_α
.Lx1032_0:              cmp              eax, 1;                              jne   .Lx1032_1
                        mov              rax, qword ptr [rsp + 2464]
                        mov              qword ptr [rsp + 2368], rax
                        mov              rax, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 2376], rax;         jmp   n578_call_builtin_icon_α
.Lx1032_1:                                                                    jmp   n578_call_builtin_icon_α
n577_disjunction_β:     mov              r11, 302
                        mov              eax, dword ptr [rsp + 2384]
                        cmp              eax, 0;                              je    n577_disjunction_af
                                                                              jmp   n577_disjunction_af
n577_disjunction_af:    mov              r11, 302
                        add              dword ptr [rsp + 2384], 1
                        mov              eax, dword ptr [rsp + 2384]
                        cmp              eax, 1;                              je    n660_lit_string_α
                                                                              jmp   n579_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n578_call_builtin_icon_α:
                        mov              r11, 303
                        mov              rax, qword ptr [rsp + 2368]
                        mov              qword ptr [rsp + 2320], rax
                        mov              rax, qword ptr [rsp + 2376]
                        mov              qword ptr [rsp + 2328], rax
                        mov              rax, qword ptr [rsp + 2352]
                        mov              qword ptr [rsp + 2304], rax
                        mov              rax, qword ptr [rsp + 2360]
                        mov              qword ptr [rsp + 2312], rax
                        .section         .rodata
.Lrkfn1034:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1034]
                        lea              rsi, [rsp + 2304]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx
                        cmp              al, 104;                             je    n577_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n579_lit_string_α
n578_call_builtin_icon_β:
                        mov              r11, 303;                            jmp   n577_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n579_lit_string_α:      mov              r11, 304
                        mov              qword ptr [rsp + 2160], 2            # result
                        mov              dword ptr [rsp + 2164], 15
                        mov              rax, qword ptr [rip + .Lx1035_0]
                        mov              qword ptr [rsp + 2168], rax;         jmp   n580_disjunction_α
.Lx1035_0:              .quad            .Lx1035_0_s
.Lx1035_0_s:            .string          "-36. ^ 9 ----> "
#-----------------------------------------------------------------------------------------------------------------------
n580_disjunction_α:     mov              r11, 305
                        mov              qword ptr [rsp + 2176], 0
                        mov              qword ptr [rsp + 2184], 0
                        mov              dword ptr [rsp + 2192], 0;           jmp   n658_lit_real_α
n580_disjunction_as:    mov              r11, 305
                        mov              eax, dword ptr [rsp + 2192]
                        cmp              eax, 0;                              jne   .Lx1037_0
                        mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n581_call_builtin_icon_α
.Lx1037_0:              cmp              eax, 1;                              jne   .Lx1037_1
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n581_call_builtin_icon_α
.Lx1037_1:                                                                    jmp   n581_call_builtin_icon_α
n580_disjunction_β:     mov              r11, 305
                        mov              eax, dword ptr [rsp + 2192]
                        cmp              eax, 0;                              je    n580_disjunction_af
                                                                              jmp   n580_disjunction_af
n580_disjunction_af:    mov              r11, 305
                        add              dword ptr [rsp + 2192], 1
                        mov              eax, dword ptr [rsp + 2192]
                        cmp              eax, 1;                              je    n657_lit_string_α
                                                                              jmp   n582_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n581_call_builtin_icon_α:
                        mov              r11, 306
                        mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 2128], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 2136], rax
                        mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 2112], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 2120], rax
                        .section         .rodata
.Lrkfn1039:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1039]
                        lea              rsi, [rsp + 2112]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx
                        cmp              al, 104;                             je    n580_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n582_lit_string_α
n581_call_builtin_icon_β:
                        mov              r11, 306;                            jmp   n580_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n582_lit_string_α:      mov              r11, 307
                        mov              qword ptr [rsp + 1968], 2            # result
                        mov              dword ptr [rsp + 1972], 16
                        mov              rax, qword ptr [rip + .Lx1040_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n583_disjunction_α
.Lx1040_0:              .quad            .Lx1040_0_s
.Lx1040_0_s:            .string          "-36. ^ -9 ----> "
#-----------------------------------------------------------------------------------------------------------------------
n583_disjunction_α:     mov              r11, 308
                        mov              qword ptr [rsp + 1984], 0
                        mov              qword ptr [rsp + 1992], 0
                        mov              dword ptr [rsp + 2000], 0;           jmp   n655_lit_real_α
n583_disjunction_as:    mov              r11, 308
                        mov              eax, dword ptr [rsp + 2000]
                        cmp              eax, 0;                              jne   .Lx1042_0
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 1984], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 1992], rax;         jmp   n584_call_builtin_icon_α
.Lx1042_0:              cmp              eax, 1;                              jne   .Lx1042_1
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 1984], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 1992], rax;         jmp   n584_call_builtin_icon_α
.Lx1042_1:                                                                    jmp   n584_call_builtin_icon_α
n583_disjunction_β:     mov              r11, 308
                        mov              eax, dword ptr [rsp + 2000]
                        cmp              eax, 0;                              je    n583_disjunction_af
                                                                              jmp   n583_disjunction_af
n583_disjunction_af:    mov              r11, 308
                        add              dword ptr [rsp + 2000], 1
                        mov              eax, dword ptr [rsp + 2000]
                        cmp              eax, 1;                              je    n654_lit_string_α
                                                                              jmp   n585_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n584_call_builtin_icon_α:
                        mov              r11, 309
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1936], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1944], rax
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 1928], rax
                        .section         .rodata
.Lrkfn1044:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1044]
                        lea              rsi, [rsp + 1920]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx
                        cmp              al, 104;                             je    n583_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n585_disjunction_α
n584_call_builtin_icon_β:
                        mov              r11, 309;                            jmp   n583_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n585_disjunction_α:     mov              r11, 310
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              dword ptr [rsp + 1488], 0;           jmp   n640_lit_integer_α
n585_disjunction_as:    mov              r11, 310
                        mov              eax, dword ptr [rsp + 1488]
                        cmp              eax, 0;                              jne   .Lx1046_0
                                                                              jmp   n586_call_builtin_icon_α
.Lx1046_0:              cmp              eax, 1;                              jne   .Lx1046_1
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n586_call_builtin_icon_α
.Lx1046_1:                                                                    jmp   n586_call_builtin_icon_α
n585_disjunction_β:     mov              r11, 310
                        mov              eax, dword ptr [rsp + 1488]
                        cmp              eax, 0;                              je    n585_disjunction_af
                                                                              jmp   n585_disjunction_af
n585_disjunction_af:    mov              r11, 310
                        add              dword ptr [rsp + 1488], 1
                        mov              eax, dword ptr [rsp + 1488]
                        cmp              eax, 1;                              je    n639_lit_string_α
                                                                              jmp   n587_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n586_call_builtin_icon_α:
                        mov              r11, 311
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1448], rax
                        .section         .rodata
.Lrkfn1048:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1048]
                        lea              rsi, [rsp + 1440]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                        cmp              al, 104;                             je    n585_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n587_disjunction_α
n586_call_builtin_icon_β:
                        mov              r11, 311;                            jmp   n585_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n587_disjunction_α:     mov              r11, 312
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              dword ptr [rsp + 1008], 0;           jmp   n625_lit_integer_α
n587_disjunction_as:    mov              r11, 312
                        mov              eax, dword ptr [rsp + 1008]
                        cmp              eax, 0;                              jne   .Lx1050_0
                                                                              jmp   n588_call_builtin_icon_α
.Lx1050_0:              cmp              eax, 1;                              jne   .Lx1050_1
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n588_call_builtin_icon_α
.Lx1050_1:                                                                    jmp   n588_call_builtin_icon_α
n587_disjunction_β:     mov              r11, 312
                        mov              eax, dword ptr [rsp + 1008]
                        cmp              eax, 0;                              je    n587_disjunction_af
                                                                              jmp   n587_disjunction_af
n587_disjunction_af:    mov              r11, 312
                        add              dword ptr [rsp + 1008], 1
                        mov              eax, dword ptr [rsp + 1008]
                        cmp              eax, 1;                              je    n624_lit_string_α
                                                                              jmp   n589_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n588_call_builtin_icon_α:
                        mov              r11, 313
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 968], rax
                        .section         .rodata
.Lrkfn1052:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1052]
                        lea              rsi, [rsp + 960]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                        cmp              al, 104;                             je    n587_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n589_disjunction_α
n588_call_builtin_icon_β:
                        mov              r11, 313;                            jmp   n587_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n589_disjunction_α:     mov              r11, 314
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              dword ptr [rsp + 512], 0;            jmp   n608_lit_integer_α
n589_disjunction_as:    mov              r11, 314
                        mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 0;                              jne   .Lx1054_0
                                                                              jmp   n590_call_builtin_icon_α
.Lx1054_0:              cmp              eax, 1;                              jne   .Lx1054_1
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 504], rax;          jmp   n590_call_builtin_icon_α
.Lx1054_1:                                                                    jmp   n590_call_builtin_icon_α
n589_disjunction_β:     mov              r11, 314
                        mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 0;                              je    n589_disjunction_af
                                                                              jmp   n589_disjunction_af
n589_disjunction_af:    mov              r11, 314
                        add              dword ptr [rsp + 512], 1
                        mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 1;                              je    n607_lit_string_α
                                                                              jmp   n591_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n590_call_builtin_icon_α:
                        mov              r11, 315
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 472], rax
                        .section         .rodata
.Lrkfn1056:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1056]
                        lea              rsi, [rsp + 464]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n589_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n591_lit_string_α
n590_call_builtin_icon_β:
                        mov              r11, 315;                            jmp   n589_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n591_lit_string_α:      mov              r11, 316
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 19
                        mov              rax, qword ptr [rip + .Lx1057_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n592_disjunction_α
.Lx1057_0:              .quad            .Lx1057_0_s
.Lx1057_0_s:            .string          "2.0 === +2.0 ----> "
#-----------------------------------------------------------------------------------------------------------------------
n592_disjunction_α:     mov              r11, 317
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              dword ptr [rsp + 320], 0;            jmp   n603_lit_real_α
n592_disjunction_as:    mov              r11, 317
                        mov              eax, dword ptr [rsp + 320]
                        cmp              eax, 0;                              jne   .Lx1059_0
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 312], rax;          jmp   n593_call_builtin_icon_α
.Lx1059_0:              cmp              eax, 1;                              jne   .Lx1059_1
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 312], rax;          jmp   n593_call_builtin_icon_α
.Lx1059_1:                                                                    jmp   n593_call_builtin_icon_α
n592_disjunction_β:     mov              r11, 317
                        mov              eax, dword ptr [rsp + 320]
                        cmp              eax, 0;                              je    n592_disjunction_af
                                                                              jmp   n592_disjunction_af
n592_disjunction_af:    mov              r11, 317
                        add              dword ptr [rsp + 320], 1
                        mov              eax, dword ptr [rsp + 320]
                        cmp              eax, 1;                              je    n602_lit_string_α
                                                                              jmp   n594_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n593_call_builtin_icon_α:
                        mov              r11, 318
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 264], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn1061:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1061]
                        lea              rsi, [rsp + 240]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n592_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n594_lit_string_α
n593_call_builtin_icon_β:
                        mov              r11, 318;                            jmp   n592_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n594_lit_string_α:      mov              r11, 319
                        mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 12
                        mov              rax, qword ptr [rip + .Lx1062_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n595_disjunction_α
.Lx1062_0:              .quad            .Lx1062_0_s
.Lx1062_0_s:            .string          "?30.0 ----> "
#-----------------------------------------------------------------------------------------------------------------------
n595_disjunction_α:     mov              r11, 320
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              dword ptr [rsp + 96], 0;             jmp   n598_lit_real_α
n595_disjunction_as:    mov              r11, 320
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 0;                              jne   .Lx1064_0
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax;           jmp   n596_call_builtin_icon_α
.Lx1064_0:              cmp              eax, 1;                              jne   .Lx1064_1
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 88], rax;           jmp   n596_call_builtin_icon_α
.Lx1064_1:                                                                    jmp   n596_call_builtin_icon_α
n595_disjunction_β:     mov              r11, 320
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 0;                              je    n595_disjunction_af
                                                                              jmp   n595_disjunction_af
n595_disjunction_af:    mov              r11, 320
                        add              dword ptr [rsp + 96], 1
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 1;                              je    n597_lit_string_α
                                                                              jmp   p2_ω
#-----------------------------------------------------------------------------------------------------------------------
n596_call_builtin_icon_α:
                        mov              r11, 321
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn1066:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1066]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    n595_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   p2_γ
n596_call_builtin_icon_β:
                        mov              r11, 321;                            jmp   n595_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n597_lit_string_α:      mov              r11, 322
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 4
                        mov              rax, qword ptr [rip + .Lx1067_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n595_disjunction_as
n597_lit_string_β:      mov              r11, 322;                            jmp   n595_disjunction_af
.Lx1067_0:              .quad            .Lx1067_0_s
.Lx1067_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n598_lit_real_α:        mov              r11, 323
                        mov              qword ptr [rsp + 176], 5             # result
                        mov              rax, qword ptr [rip + .Lx1068_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n599_random_α
n598_lit_real_β:        mov              r11, 323;                            jmp   n595_disjunction_af
.Lx1068_0:              .quad            4629137466983448576
#-----------------------------------------------------------------------------------------------------------------------
n599_random_α:          mov              r11, 324
                        mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n595_disjunction_af
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n600_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n600_deref_α:           mov              r11, 325
                        mov              rdi, qword ptr [rsp + 160]
                        mov              rsi, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n595_disjunction_af
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n601_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n601_call_proc_staged_α:
                        mov              r11, 326
                        lea              rsi, [rsp + 192]
                        call             Image_dcα;                           jmp   .Lx1072_2
.Lx1072_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1072_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
.Lx1072_29:             mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n595_disjunction_af
                                                                              jmp   n595_disjunction_as
n601_call_proc_staged_β:
                        mov              r11, 326;                            jmp   n595_disjunction_af
.Lx1072_0:              .quad            .Lx1072_0_s
.Lx1072_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n602_lit_string_α:      mov              r11, 327
                        mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], 4
                        mov              rax, qword ptr [rip + .Lx1073_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n592_disjunction_as
n602_lit_string_β:      mov              r11, 327;                            jmp   n592_disjunction_af
.Lx1073_0:              .quad            .Lx1073_0_s
.Lx1073_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n603_lit_real_α:        mov              r11, 328
                        mov              qword ptr [rsp + 400], 5             # result
                        mov              rax, qword ptr [rip + .Lx1074_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n604_lit_real_α
n603_lit_real_β:        mov              r11, 328;                            jmp   n592_disjunction_af
.Lx1074_0:              .quad            4611686018427387904
#-----------------------------------------------------------------------------------------------------------------------
n604_lit_real_α:        mov              r11, 329
                        mov              qword ptr [rsp + 416], 5             # result
                        mov              rax, qword ptr [rip + .Lx1075_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n605_binop_test_α
.Lx1075_0:              .quad            4611686018427387904
#-----------------------------------------------------------------------------------------------------------------------
n605_binop_test_α:      mov              r11, 330
                        mov              rdi, qword ptr [rsp + 400]
                        mov              rsi, qword ptr [rsp + 408]
                        mov              rdx, qword ptr [rsp + 416]
                        mov              rcx, qword ptr [rsp + 424]
                        mov              r8d, 22
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n592_disjunction_af
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 392], rax;          jmp   n606_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n606_call_proc_staged_α:
                        mov              r11, 331
                        lea              rsi, [rsp + 384]
                        call             Image_dcα;                           jmp   .Lx1078_2
.Lx1078_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1078_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
.Lx1078_29:             mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n592_disjunction_af
                                                                              jmp   n592_disjunction_as
n606_call_proc_staged_β:
                        mov              r11, 331;                            jmp   n592_disjunction_af
.Lx1078_0:              .quad            .Lx1078_0_s
.Lx1078_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n607_lit_string_α:      mov              r11, 332
                        mov              qword ptr [rsp + 928], 2             # result
                        mov              dword ptr [rsp + 932], 6
                        mov              rax, qword ptr [rip + .Lx1079_0]
                        mov              qword ptr [rsp + 936], rax;          jmp   n589_disjunction_as
n607_lit_string_β:      mov              r11, 332;                            jmp   n589_disjunction_af
.Lx1079_0:              .quad            .Lx1079_0_s
.Lx1079_0_s:            .string          "failed"
#-----------------------------------------------------------------------------------------------------------------------
n608_lit_integer_α:     mov              r11, 333
                        mov              qword ptr [rsp + 576], 3             # result
                        mov              rax, qword ptr [rip + .Lx1080_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n609_lit_integer_α
n608_lit_integer_β:     mov              r11, 333;                            jmp   n589_disjunction_af
.Lx1080_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n609_lit_integer_α:     mov              r11, 334
                        mov              qword ptr [rsp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Lx1081_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n610_to_α
.Lx1081_0:              .quad            37
#-----------------------------------------------------------------------------------------------------------------------
n610_to_α:              mov              r11, 335
                        mov              rdi, qword ptr [rsp + 576]
                        mov              rsi, qword ptr [rsp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 576], 3
                        mov              qword ptr [rsp + 584], rax
                        mov              rdi, qword ptr [rsp + 592]
                        mov              rsi, qword ptr [rsp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 592], 3
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 560], rax
.Lx1083_0:              mov              rax, qword ptr [rsp + 560]
                        mov              rcx, qword ptr [rsp + 600]
                        cmp              rax, rcx;                            jg    n589_disjunction_af
                        mov              qword ptr [rsp + 544], 3
                        mov              qword ptr [rsp + 552], rax;          jmp   n611_assign_α
n610_to_β:              mov              r11, 335
                        inc              qword ptr [rsp + 560];               jmp   .Lx1083_0
#-----------------------------------------------------------------------------------------------------------------------
n611_assign_α:          mov              r11, 336
                        mov              rax, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 12224], rax
                        mov              qword ptr [rsp + 12232], rdx;        jmp   n612_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n612_bound_α:           mov              r11, 337
                        mov              qword ptr [rsp + 608], rsp;          jmp   n613_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n613_lit_string_α:      mov              r11, 338
                        mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 1
                        mov              rax, qword ptr [rip + .Lx1087_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n614_var_α
.Lx1087_0:              .quad            .Lx1087_0_s
.Lx1087_0_s:            .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n614_var_α:             mov              r11, 339
                        mov              rax, qword ptr [rsp + 12224]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 12232]
                        mov              qword ptr [rsp + 888], rax;          jmp   n615_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n615_call_builtin_icon_α:
                        mov              r11, 340
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 840], rax
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 824], rax
                        .section         .rodata
.Lrkfn1091:             .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1091]
                        lea              rsi, [rsp + 816]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    n623_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n616_lit_string_α
n615_call_builtin_icon_β:
                        mov              r11, 340;                            jmp   n623_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n616_lit_string_α:      mov              r11, 341
                        mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], 2
                        mov              rax, qword ptr [rip + .Lx1092_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n617_binop_α
.Lx1092_0:              .quad            .Lx1092_0_s
.Lx1092_0_s:            .string          ".2"
#-----------------------------------------------------------------------------------------------------------------------
n617_binop_α:           mov              r11, 342
                        mov              rdi, qword ptr [rsp + 800]
                        mov              rsi, qword ptr [rsp + 808]
                        mov              rdx, qword ptr [rsp + 896]
                        mov              rcx, qword ptr [rsp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n618_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n618_lit_integer_α:     mov              r11, 343
                        mov              qword ptr [rsp + 912], 3             # result
                        mov              rax, qword ptr [rip + .Lx1094_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n619_coerce_numeric_α
.Lx1094_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n619_coerce_numeric_α:  mov              r11, 344
                        mov              eax, dword ptr [rsp + 784]
                        cmp              al, 5;                               je    .Lx1096_1
                        cmp              al, 3;                               jne   .Lx1096_0
                        mov              eax, dword ptr [rsp + 912]
                        cmp              al, 3;                               jne   .Lx1096_0
.Lx1096_1:              mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 776], rax;          jmp   n620_binop_α
.Lx1096_0:              lea              rdi, [rsp + 784]
                        lea              rsi, [rsp + 912]
                        lea              rdx, [rsp + 768]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n620_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n620_binop_α:           mov              r11, 345
                        mov              eax, dword ptr [rsp + 768]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1097_2
                        mov              rax, qword ptr [rsp + 776]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 752], 3
                        mov              qword ptr [rsp + 760], rax;          jmp   .Lx1097_7
.Lx1097_2:              and              edx, 1;                              jz    .Lx1097_0
                        mov              rsi, qword ptr [rsp + 776]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1097_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1097_4
.Lx1097_3:              movq             xmm0, rsi
.Lx1097_4:              cmp              cl, 5;                               je    .Lx1097_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1097_6
.Lx1097_5:              movq             xmm1, rdi
.Lx1097_6:              addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 752], 5
                        mov              qword ptr [rsp + 760], rax
.Lx1097_7:                                                                    jmp   n621_call_proc_staged_α
.Lx1097_0:              mov              rdi, qword ptr [rsp + 768]
                        mov              rsi, qword ptr [rsp + 776]
                        mov              rdx, qword ptr [rsp + 912]
                        mov              rcx, qword ptr [rsp + 920]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n623_unmark_α
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n621_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n621_call_proc_staged_α:
                        mov              r11, 346
                        lea              rsi, [rsp + 752]
                        call             Image_dcα;                           jmp   .Lx1099_2
.Lx1099_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1099_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
.Lx1099_29:             mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              al, 104;                             je    n623_unmark_α
                                                                              jmp   n622_call_builtin_icon_α
n621_call_proc_staged_β:
                        mov              r11, 346;                            jmp   n623_unmark_α
.Lx1099_0:              .quad            .Lx1099_0_s
.Lx1099_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n622_call_builtin_icon_α:
                        mov              r11, 347
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 680], rax
                        .section         .rodata
.Lrkfn1101:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1101]
                        lea              rsi, [rsp + 672]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              al, 104;                             je    n623_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n623_unmark_α
n622_call_builtin_icon_β:
                        mov              r11, 347;                            jmp   n623_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n623_unmark_α:          mov              r11, 348
                        mov              rsp, qword ptr [rsp + 608];          jmp   n610_to_β
#-----------------------------------------------------------------------------------------------------------------------
n624_lit_string_α:      mov              r11, 349
                        mov              qword ptr [rsp + 1408], 2            # result
                        mov              dword ptr [rsp + 1412], 6
                        mov              rax, qword ptr [rip + .Lx1104_0]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n587_disjunction_as
n624_lit_string_β:      mov              r11, 349;                            jmp   n587_disjunction_af
.Lx1104_0:              .quad            .Lx1104_0_s
.Lx1104_0_s:            .string          "failed"
#-----------------------------------------------------------------------------------------------------------------------
n625_lit_integer_α:     mov              r11, 350
                        mov              qword ptr [rsp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Lx1105_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n626_lit_integer_α
n625_lit_integer_β:     mov              r11, 350;                            jmp   n587_disjunction_af
.Lx1105_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n626_lit_integer_α:     mov              r11, 351
                        mov              qword ptr [rsp + 1072], 3            # result
                        mov              rax, qword ptr [rip + .Lx1106_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n627_to_α
.Lx1106_0:              .quad            37
#-----------------------------------------------------------------------------------------------------------------------
n627_to_α:              mov              r11, 352
                        mov              rdi, qword ptr [rsp + 1056]
                        mov              rsi, qword ptr [rsp + 1064]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1056], 3
                        mov              qword ptr [rsp + 1064], rax
                        mov              rdi, qword ptr [rsp + 1072]
                        mov              rsi, qword ptr [rsp + 1080]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1072], 3
                        mov              qword ptr [rsp + 1080], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1040], rax
.Lx1108_0:              mov              rax, qword ptr [rsp + 1040]
                        mov              rcx, qword ptr [rsp + 1080]
                        cmp              rax, rcx;                            jg    n587_disjunction_af
                        mov              qword ptr [rsp + 1024], 3
                        mov              qword ptr [rsp + 1032], rax;         jmp   n628_assign_α
n627_to_β:              mov              r11, 352
                        inc              qword ptr [rsp + 1040];              jmp   .Lx1108_0
#-----------------------------------------------------------------------------------------------------------------------
n628_assign_α:          mov              r11, 353
                        mov              rax, qword ptr [rsp + 1024]
                        mov              rdx, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 12224], rax
                        mov              qword ptr [rsp + 12232], rdx;        jmp   n629_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n629_bound_α:           mov              r11, 354
                        mov              qword ptr [rsp + 1088], rsp;         jmp   n630_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n630_lit_string_α:      mov              r11, 355
                        mov              qword ptr [rsp + 1360], 2            # result
                        mov              dword ptr [rsp + 1364], 1
                        mov              rax, qword ptr [rip + .Lx1112_0]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n631_var_α
.Lx1112_0:              .quad            .Lx1112_0_s
.Lx1112_0_s:            .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n631_var_α:             mov              r11, 356
                        mov              rax, qword ptr [rsp + 12224]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 12232]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n632_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n632_call_builtin_icon_α:
                        mov              r11, 357
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1336], rax
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1320], rax
                        .section         .rodata
.Lrkfn1116:             .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1116]
                        lea              rsi, [rsp + 1312]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        cmp              al, 104;                             je    n638_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n633_lit_string_α
n632_call_builtin_icon_β:
                        mov              r11, 357;                            jmp   n638_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n633_lit_string_α:      mov              r11, 358
                        mov              qword ptr [rsp + 1392], 2            # result
                        mov              dword ptr [rsp + 1396], 2
                        mov              rax, qword ptr [rip + .Lx1117_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n634_binop_α
.Lx1117_0:              .quad            .Lx1117_0_s
.Lx1117_0_s:            .string          ".2"
#-----------------------------------------------------------------------------------------------------------------------
n634_binop_α:           mov              r11, 359
                        mov              rdi, qword ptr [rsp + 1296]
                        mov              rsi, qword ptr [rsp + 1304]
                        mov              rdx, qword ptr [rsp + 1392]
                        mov              rcx, qword ptr [rsp + 1400]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n635_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n635_call_builtin_icon_α:
                        mov              r11, 360
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1256], rax
                        .section         .rodata
.Lrkfn1120:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1120]
                        lea              rsi, [rsp + 1248]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx
                        cmp              al, 104;                             je    n638_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n636_call_proc_staged_α
n635_call_builtin_icon_β:
                        mov              r11, 360;                            jmp   n638_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n636_call_proc_staged_α:
                        mov              r11, 361
                        lea              rsi, [rsp + 1232]
                        call             Image_dcα;                           jmp   .Lx1122_2
.Lx1122_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1122_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1184]
                        mov              rdx, qword ptr [rsp + 1192]
.Lx1122_29:             mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              al, 104;                             je    n638_unmark_α
                                                                              jmp   n637_call_builtin_icon_α
n636_call_proc_staged_β:
                        mov              r11, 361;                            jmp   n638_unmark_α
.Lx1122_0:              .quad            .Lx1122_0_s
.Lx1122_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n637_call_builtin_icon_α:
                        mov              r11, 362
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1160], rax
                        .section         .rodata
.Lrkfn1124:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1124]
                        lea              rsi, [rsp + 1152]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        cmp              al, 104;                             je    n638_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n638_unmark_α
n637_call_builtin_icon_β:
                        mov              r11, 362;                            jmp   n638_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n638_unmark_α:          mov              r11, 363
                        mov              rsp, qword ptr [rsp + 1088];         jmp   n627_to_β
#-----------------------------------------------------------------------------------------------------------------------
n639_lit_string_α:      mov              r11, 364
                        mov              qword ptr [rsp + 1888], 2            # result
                        mov              dword ptr [rsp + 1892], 6
                        mov              rax, qword ptr [rip + .Lx1127_0]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n585_disjunction_as
n639_lit_string_β:      mov              r11, 364;                            jmp   n585_disjunction_af
.Lx1127_0:              .quad            .Lx1127_0_s
.Lx1127_0_s:            .string          "failed"
#-----------------------------------------------------------------------------------------------------------------------
n640_lit_integer_α:     mov              r11, 365
                        mov              qword ptr [rsp + 1536], 3            # result
                        mov              rax, qword ptr [rip + .Lx1128_0]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n641_lit_integer_α
n640_lit_integer_β:     mov              r11, 365;                            jmp   n585_disjunction_af
.Lx1128_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n641_lit_integer_α:     mov              r11, 366
                        mov              qword ptr [rsp + 1552], 3            # result
                        mov              rax, qword ptr [rip + .Lx1129_0]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n642_to_α
.Lx1129_0:              .quad            37
#-----------------------------------------------------------------------------------------------------------------------
n642_to_α:              mov              r11, 367
                        mov              rdi, qword ptr [rsp + 1536]
                        mov              rsi, qword ptr [rsp + 1544]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1536], 3
                        mov              qword ptr [rsp + 1544], rax
                        mov              rdi, qword ptr [rsp + 1552]
                        mov              rsi, qword ptr [rsp + 1560]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1552], 3
                        mov              qword ptr [rsp + 1560], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1520], rax
.Lx1131_0:              mov              rax, qword ptr [rsp + 1520]
                        mov              rcx, qword ptr [rsp + 1560]
                        cmp              rax, rcx;                            jg    n585_disjunction_af
                        mov              qword ptr [rsp + 1504], 3
                        mov              qword ptr [rsp + 1512], rax;         jmp   n643_assign_α
n642_to_β:              mov              r11, 367
                        inc              qword ptr [rsp + 1520];              jmp   .Lx1131_0
#-----------------------------------------------------------------------------------------------------------------------
n643_assign_α:          mov              r11, 368
                        mov              rax, qword ptr [rsp + 1504]
                        mov              rdx, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 12224], rax
                        mov              qword ptr [rsp + 12232], rdx;        jmp   n644_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n644_bound_α:           mov              r11, 369
                        mov              qword ptr [rsp + 1568], rsp;         jmp   n645_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n645_lit_string_α:      mov              r11, 370
                        mov              qword ptr [rsp + 1840], 2            # result
                        mov              dword ptr [rsp + 1844], 1
                        mov              rax, qword ptr [rip + .Lx1135_0]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n646_var_α
.Lx1135_0:              .quad            .Lx1135_0_s
.Lx1135_0_s:            .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n646_var_α:             mov              r11, 371
                        mov              rax, qword ptr [rsp + 12224]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 12232]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n647_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n647_call_builtin_icon_α:
                        mov              r11, 372
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1816], rax
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1800], rax
                        .section         .rodata
.Lrkfn1139:             .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1139]
                        lea              rsi, [rsp + 1792]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx
                        cmp              al, 104;                             je    n653_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n648_lit_string_α
n647_call_builtin_icon_β:
                        mov              r11, 372;                            jmp   n653_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n648_lit_string_α:      mov              r11, 373
                        mov              qword ptr [rsp + 1872], 2            # result
                        mov              dword ptr [rsp + 1876], 1
                        mov              rax, qword ptr [rip + .Lx1140_0]
                        mov              qword ptr [rsp + 1880], rax;         jmp   n649_binop_α
.Lx1140_0:              .quad            .Lx1140_0_s
.Lx1140_0_s:            .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n649_binop_α:           mov              r11, 374
                        mov              rdi, qword ptr [rsp + 1776]
                        mov              rsi, qword ptr [rsp + 1784]
                        mov              rdx, qword ptr [rsp + 1872]
                        mov              rcx, qword ptr [rsp + 1880]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n650_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n650_call_builtin_icon_α:
                        mov              r11, 375
                        mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1736], rax
                        .section         .rodata
.Lrkfn1143:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1143]
                        lea              rsi, [rsp + 1728]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx
                        cmp              al, 104;                             je    n653_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n651_call_proc_staged_α
n650_call_builtin_icon_β:
                        mov              r11, 375;                            jmp   n653_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n651_call_proc_staged_α:
                        mov              r11, 376
                        lea              rsi, [rsp + 1712]
                        call             Image_dcα;                           jmp   .Lx1145_2
.Lx1145_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1145_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1664]
                        mov              rdx, qword ptr [rsp + 1672]
.Lx1145_29:             mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx
                        cmp              al, 104;                             je    n653_unmark_α
                                                                              jmp   n652_call_builtin_icon_α
n651_call_proc_staged_β:
                        mov              r11, 376;                            jmp   n653_unmark_α
.Lx1145_0:              .quad            .Lx1145_0_s
.Lx1145_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n652_call_builtin_icon_α:
                        mov              r11, 377
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1640], rax
                        .section         .rodata
.Lrkfn1147:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1147]
                        lea              rsi, [rsp + 1632]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        cmp              al, 104;                             je    n653_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n653_unmark_α
n652_call_builtin_icon_β:
                        mov              r11, 377;                            jmp   n653_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n653_unmark_α:          mov              r11, 378
                        mov              rsp, qword ptr [rsp + 1568];         jmp   n642_to_β
#-----------------------------------------------------------------------------------------------------------------------
n654_lit_string_α:      mov              r11, 379
                        mov              qword ptr [rsp + 2080], 2            # result
                        mov              dword ptr [rsp + 2084], 4
                        mov              rax, qword ptr [rip + .Lx1150_0]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n583_disjunction_as
n654_lit_string_β:      mov              r11, 379;                            jmp   n583_disjunction_af
.Lx1150_0:              .quad            .Lx1150_0_s
.Lx1150_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n655_lit_real_α:        mov              r11, 380
                        mov              qword ptr [rsp + 2064], 5            # result
                        mov              rax, qword ptr [rip + .Lx1151_0]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n656_call_proc_staged_α
n655_lit_real_β:        mov              r11, 380;                            jmp   n583_disjunction_af
.Lx1151_0:              .quad            13620622571242290401
#-----------------------------------------------------------------------------------------------------------------------
n656_call_proc_staged_α:
                        mov              r11, 381
                        lea              rsi, [rsp + 2064]
                        call             Image_dcα;                           jmp   .Lx1153_2
.Lx1153_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1153_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2016], rax
                        mov              qword ptr [rsp + 2024], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2016]
                        mov              rdx, qword ptr [rsp + 2024]
.Lx1153_29:             mov              qword ptr [rsp + 2016], rax
                        mov              qword ptr [rsp + 2024], rdx
                        cmp              al, 104;                             je    n583_disjunction_af
                                                                              jmp   n583_disjunction_as
n656_call_proc_staged_β:
                        mov              r11, 381;                            jmp   n583_disjunction_af
.Lx1153_0:              .quad            .Lx1153_0_s
.Lx1153_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n657_lit_string_α:      mov              r11, 382
                        mov              qword ptr [rsp + 2272], 2            # result
                        mov              dword ptr [rsp + 2276], 4
                        mov              rax, qword ptr [rip + .Lx1154_0]
                        mov              qword ptr [rsp + 2280], rax;         jmp   n580_disjunction_as
n657_lit_string_β:      mov              r11, 382;                            jmp   n580_disjunction_af
.Lx1154_0:              .quad            .Lx1154_0_s
.Lx1154_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n658_lit_real_α:        mov              r11, 383
                        mov              qword ptr [rsp + 2256], 5            # result
                        mov              rax, qword ptr [rip + .Lx1155_0]
                        mov              qword ptr [rsp + 2264], rax;         jmp   n659_call_proc_staged_α
n658_lit_real_β:        mov              r11, 383;                            jmp   n580_disjunction_af
.Lx1155_0:              .quad            14039716276113244160
#-----------------------------------------------------------------------------------------------------------------------
n659_call_proc_staged_α:
                        mov              r11, 384
                        lea              rsi, [rsp + 2256]
                        call             Image_dcα;                           jmp   .Lx1157_2
.Lx1157_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1157_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2208]
                        mov              rdx, qword ptr [rsp + 2216]
.Lx1157_29:             mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                        cmp              al, 104;                             je    n580_disjunction_af
                                                                              jmp   n580_disjunction_as
n659_call_proc_staged_β:
                        mov              r11, 384;                            jmp   n580_disjunction_af
.Lx1157_0:              .quad            .Lx1157_0_s
.Lx1157_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n660_lit_string_α:      mov              r11, 385
                        mov              qword ptr [rsp + 2464], 2            # result
                        mov              dword ptr [rsp + 2468], 4
                        mov              rax, qword ptr [rip + .Lx1158_0]
                        mov              qword ptr [rsp + 2472], rax;         jmp   n577_disjunction_as
n660_lit_string_β:      mov              r11, 385;                            jmp   n577_disjunction_af
.Lx1158_0:              .quad            .Lx1158_0_s
.Lx1158_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n661_lit_real_α:        mov              r11, 386
                        mov              qword ptr [rsp + 2448], 5            # result
                        mov              rax, qword ptr [rip + .Lx1159_0]
                        mov              qword ptr [rsp + 2456], rax;         jmp   n662_call_proc_staged_α
n661_lit_real_β:        mov              r11, 386;                            jmp   n577_disjunction_af
.Lx1159_0:              .quad            4816344239258468352
#-----------------------------------------------------------------------------------------------------------------------
n662_call_proc_staged_α:
                        mov              r11, 387
                        lea              rsi, [rsp + 2448]
                        call             Image_dcα;                           jmp   .Lx1161_2
.Lx1161_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1161_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2400]
                        mov              rdx, qword ptr [rsp + 2408]
.Lx1161_29:             mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx
                        cmp              al, 104;                             je    n577_disjunction_af
                                                                              jmp   n577_disjunction_as
n662_call_proc_staged_β:
                        mov              r11, 387;                            jmp   n577_disjunction_af
.Lx1161_0:              .quad            .Lx1161_0_s
.Lx1161_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n663_lit_string_α:      mov              r11, 388
                        mov              qword ptr [rsp + 2656], 2            # result
                        mov              dword ptr [rsp + 2660], 4
                        mov              rax, qword ptr [rip + .Lx1162_0]
                        mov              qword ptr [rsp + 2664], rax;         jmp   n574_disjunction_as
n663_lit_string_β:      mov              r11, 388;                            jmp   n574_disjunction_af
.Lx1162_0:              .quad            .Lx1162_0_s
.Lx1162_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n664_lit_real_α:        mov              r11, 389
                        mov              qword ptr [rsp + 2640], 5            # result
                        mov              rax, qword ptr [rip + .Lx1163_0]
                        mov              qword ptr [rsp + 2648], rax;         jmp   n665_call_proc_staged_α
n664_lit_real_β:        mov              r11, 389;                            jmp   n574_disjunction_af
.Lx1163_0:              .quad            4816344239258468352
#-----------------------------------------------------------------------------------------------------------------------
n665_call_proc_staged_α:
                        mov              r11, 390
                        lea              rsi, [rsp + 2640]
                        call             Image_dcα;                           jmp   .Lx1165_2
.Lx1165_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1165_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2592], rax
                        mov              qword ptr [rsp + 2600], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2592]
                        mov              rdx, qword ptr [rsp + 2600]
.Lx1165_29:             mov              qword ptr [rsp + 2592], rax
                        mov              qword ptr [rsp + 2600], rdx
                        cmp              al, 104;                             je    n574_disjunction_af
                                                                              jmp   n574_disjunction_as
n665_call_proc_staged_β:
                        mov              r11, 390;                            jmp   n574_disjunction_af
.Lx1165_0:              .quad            .Lx1165_0_s
.Lx1165_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n666_lit_string_α:      mov              r11, 391
                        mov              qword ptr [rsp + 2848], 2            # result
                        mov              dword ptr [rsp + 2852], 4
                        mov              rax, qword ptr [rip + .Lx1166_0]
                        mov              qword ptr [rsp + 2856], rax;         jmp   n571_disjunction_as
n666_lit_string_β:      mov              r11, 391;                            jmp   n571_disjunction_af
.Lx1166_0:              .quad            .Lx1166_0_s
.Lx1166_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n667_lit_real_α:        mov              r11, 392
                        mov              qword ptr [rsp + 2832], 5            # result
                        mov              rax, qword ptr [rip + .Lx1167_0]
                        mov              qword ptr [rsp + 2840], rax;         jmp   n668_call_proc_staged_α
n667_lit_real_β:        mov              r11, 392;                            jmp   n571_disjunction_af
.Lx1167_0:              .quad            4816344239258468352
#-----------------------------------------------------------------------------------------------------------------------
n668_call_proc_staged_α:
                        mov              r11, 393
                        lea              rsi, [rsp + 2832]
                        call             Image_dcα;                           jmp   .Lx1169_2
.Lx1169_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1169_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2784]
                        mov              rdx, qword ptr [rsp + 2792]
.Lx1169_29:             mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx
                        cmp              al, 104;                             je    n571_disjunction_af
                                                                              jmp   n571_disjunction_as
n668_call_proc_staged_β:
                        mov              r11, 393;                            jmp   n571_disjunction_af
.Lx1169_0:              .quad            .Lx1169_0_s
.Lx1169_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n669_lit_string_α:      mov              r11, 394
                        mov              qword ptr [rsp + 3088], 2            # result
                        mov              dword ptr [rsp + 3092], 4
                        mov              rax, qword ptr [rip + .Lx1170_0]
                        mov              qword ptr [rsp + 3096], rax;         jmp   n568_disjunction_as
n669_lit_string_β:      mov              r11, 394;                            jmp   n568_disjunction_af
.Lx1170_0:              .quad            .Lx1170_0_s
.Lx1170_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n670_var_α:             mov              r11, 395
                        mov              rax, qword ptr [rsp + 12240]
                        mov              qword ptr [rsp + 3072], rax
                        mov              rax, qword ptr [rsp + 12248]
                        mov              qword ptr [rsp + 3080], rax;         jmp   n671_call_builtin_icon_α
n670_var_β:             mov              r11, 395;                            jmp   n568_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n671_call_builtin_icon_α:
                        mov              r11, 396
                        mov              rax, qword ptr [rsp + 3072]
                        mov              qword ptr [rsp + 3040], rax
                        mov              rax, qword ptr [rsp + 3080]
                        mov              qword ptr [rsp + 3048], rax
                        .section         .rodata
.Lrkfn1174:             .string          "numeric"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1174]
                        lea              rsi, [rsp + 3040]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3024], rax
                        mov              qword ptr [rsp + 3032], rdx
                        cmp              al, 104;                             je    n568_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n672_call_proc_staged_α
n671_call_builtin_icon_β:
                        mov              r11, 396;                            jmp   n568_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n672_call_proc_staged_α:
                        mov              r11, 397
                        lea              rsi, [rsp + 3024]
                        call             Image_dcα;                           jmp   .Lx1176_2
.Lx1176_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1176_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2976]
                        mov              rdx, qword ptr [rsp + 2984]
.Lx1176_29:             mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx
                        cmp              al, 104;                             je    n568_disjunction_af
                                                                              jmp   n568_disjunction_as
n672_call_proc_staged_β:
                        mov              r11, 397;                            jmp   n568_disjunction_af
.Lx1176_0:              .quad            .Lx1176_0_s
.Lx1176_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n673_lit_string_α:      mov              r11, 398
                        mov              qword ptr [rsp + 3328], 2            # result
                        mov              dword ptr [rsp + 3332], 4
                        mov              rax, qword ptr [rip + .Lx1177_0]
                        mov              qword ptr [rsp + 3336], rax;         jmp   n565_disjunction_as
n673_lit_string_β:      mov              r11, 398;                            jmp   n565_disjunction_af
.Lx1177_0:              .quad            .Lx1177_0_s
.Lx1177_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n674_lit_real_α:        mov              r11, 399
                        mov              qword ptr [rsp + 3312], 5            # result
                        mov              rax, qword ptr [rip + .Lx1178_0]
                        mov              qword ptr [rsp + 3320], rax;         jmp   n675_call_builtin_icon_α
n674_lit_real_β:        mov              r11, 399;                            jmp   n565_disjunction_af
.Lx1178_0:              .quad            4599075939470750515
#-----------------------------------------------------------------------------------------------------------------------
n675_call_builtin_icon_α:
                        mov              r11, 400
                        mov              rax, qword ptr [rsp + 3312]
                        mov              qword ptr [rsp + 3280], rax
                        mov              rax, qword ptr [rsp + 3320]
                        mov              qword ptr [rsp + 3288], rax
                        .section         .rodata
.Lrkfn1180:             .string          "numeric"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1180]
                        lea              rsi, [rsp + 3280]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3264], rax
                        mov              qword ptr [rsp + 3272], rdx
                        cmp              al, 104;                             je    n565_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n676_call_proc_staged_α
n675_call_builtin_icon_β:
                        mov              r11, 400;                            jmp   n565_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n676_call_proc_staged_α:
                        mov              r11, 401
                        lea              rsi, [rsp + 3264]
                        call             Image_dcα;                           jmp   .Lx1182_2
.Lx1182_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1182_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3216], rax
                        mov              qword ptr [rsp + 3224], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3216]
                        mov              rdx, qword ptr [rsp + 3224]
.Lx1182_29:             mov              qword ptr [rsp + 3216], rax
                        mov              qword ptr [rsp + 3224], rdx
                        cmp              al, 104;                             je    n565_disjunction_af
                                                                              jmp   n565_disjunction_as
n676_call_proc_staged_β:
                        mov              r11, 401;                            jmp   n565_disjunction_af
.Lx1182_0:              .quad            .Lx1182_0_s
.Lx1182_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n677_lit_string_α:      mov              r11, 402
                        mov              qword ptr [rsp + 3568], 2            # result
                        mov              dword ptr [rsp + 3572], 4
                        mov              rax, qword ptr [rip + .Lx1183_0]
                        mov              qword ptr [rsp + 3576], rax;         jmp   n562_disjunction_as
n677_lit_string_β:      mov              r11, 402;                            jmp   n562_disjunction_af
.Lx1183_0:              .quad            .Lx1183_0_s
.Lx1183_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n678_lit_real_α:        mov              r11, 403
                        mov              qword ptr [rsp + 3552], 5            # result
                        mov              rax, qword ptr [rip + .Lx1184_0]
                        mov              qword ptr [rsp + 3560], rax;         jmp   n679_call_builtin_icon_α
n678_lit_real_β:        mov              r11, 403;                            jmp   n562_disjunction_af
.Lx1184_0:              .quad            4613262278296967578
#-----------------------------------------------------------------------------------------------------------------------
n679_call_builtin_icon_α:
                        mov              r11, 404
                        mov              rax, qword ptr [rsp + 3552]
                        mov              qword ptr [rsp + 3520], rax
                        mov              rax, qword ptr [rsp + 3560]
                        mov              qword ptr [rsp + 3528], rax
                        .section         .rodata
.Lrkfn1186:             .string          "numeric"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1186]
                        lea              rsi, [rsp + 3520]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3504], rax
                        mov              qword ptr [rsp + 3512], rdx
                        cmp              al, 104;                             je    n562_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n680_call_proc_staged_α
n679_call_builtin_icon_β:
                        mov              r11, 404;                            jmp   n562_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n680_call_proc_staged_α:
                        mov              r11, 405
                        lea              rsi, [rsp + 3504]
                        call             Image_dcα;                           jmp   .Lx1188_2
.Lx1188_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1188_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3456], rax
                        mov              qword ptr [rsp + 3464], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3456]
                        mov              rdx, qword ptr [rsp + 3464]
.Lx1188_29:             mov              qword ptr [rsp + 3456], rax
                        mov              qword ptr [rsp + 3464], rdx
                        cmp              al, 104;                             je    n562_disjunction_af
                                                                              jmp   n562_disjunction_as
n680_call_proc_staged_β:
                        mov              r11, 405;                            jmp   n562_disjunction_af
.Lx1188_0:              .quad            .Lx1188_0_s
.Lx1188_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n681_lit_string_α:      mov              r11, 406
                        mov              qword ptr [rsp + 3808], 2            # result
                        mov              dword ptr [rsp + 3812], 4
                        mov              rax, qword ptr [rip + .Lx1189_0]
                        mov              qword ptr [rsp + 3816], rax;         jmp   n559_disjunction_as
n681_lit_string_β:      mov              r11, 406;                            jmp   n559_disjunction_af
.Lx1189_0:              .quad            .Lx1189_0_s
.Lx1189_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n682_lit_real_α:        mov              r11, 407
                        mov              qword ptr [rsp + 3792], 5            # result
                        mov              rax, qword ptr [rip + .Lx1190_0]
                        mov              qword ptr [rsp + 3800], rax;         jmp   n683_call_builtin_icon_α
n682_lit_real_β:        mov              r11, 407;                            jmp   n559_disjunction_af
.Lx1190_0:              .quad            4611686018427387904
#-----------------------------------------------------------------------------------------------------------------------
n683_call_builtin_icon_α:
                        mov              r11, 408
                        mov              rax, qword ptr [rsp + 3792]
                        mov              qword ptr [rsp + 3760], rax
                        mov              rax, qword ptr [rsp + 3800]
                        mov              qword ptr [rsp + 3768], rax
                        .section         .rodata
.Lrkfn1192:             .string          "numeric"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1192]
                        lea              rsi, [rsp + 3760]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3744], rax
                        mov              qword ptr [rsp + 3752], rdx
                        cmp              al, 104;                             je    n559_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n684_call_proc_staged_α
n683_call_builtin_icon_β:
                        mov              r11, 408;                            jmp   n559_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n684_call_proc_staged_α:
                        mov              r11, 409
                        lea              rsi, [rsp + 3744]
                        call             Image_dcα;                           jmp   .Lx1194_2
.Lx1194_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1194_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3696], rax
                        mov              qword ptr [rsp + 3704], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3696]
                        mov              rdx, qword ptr [rsp + 3704]
.Lx1194_29:             mov              qword ptr [rsp + 3696], rax
                        mov              qword ptr [rsp + 3704], rdx
                        cmp              al, 104;                             je    n559_disjunction_af
                                                                              jmp   n559_disjunction_as
n684_call_proc_staged_β:
                        mov              r11, 409;                            jmp   n559_disjunction_af
.Lx1194_0:              .quad            .Lx1194_0_s
.Lx1194_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n685_lit_string_α:      mov              r11, 410
                        mov              qword ptr [rsp + 4048], 2            # result
                        mov              dword ptr [rsp + 4052], 4
                        mov              rax, qword ptr [rip + .Lx1195_0]
                        mov              qword ptr [rsp + 4056], rax;         jmp   n556_disjunction_as
n685_lit_string_β:      mov              r11, 410;                            jmp   n556_disjunction_af
.Lx1195_0:              .quad            .Lx1195_0_s
.Lx1195_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n686_lit_string_α:      mov              r11, 411
                        mov              qword ptr [rsp + 4032], 2            # result
                        mov              dword ptr [rsp + 4036], 29
                        mov              rax, qword ptr [rip + .Lx1196_0]
                        mov              qword ptr [rsp + 4040], rax;         jmp   n687_call_builtin_icon_α
n686_lit_string_β:      mov              r11, 411;                            jmp   n556_disjunction_af
.Lx1196_0:              .quad            .Lx1196_0_s
.Lx1196_0_s:            .string          "22222222222222222222222222222"
#-----------------------------------------------------------------------------------------------------------------------
n687_call_builtin_icon_α:
                        mov              r11, 412
                        mov              rax, qword ptr [rsp + 4032]
                        mov              qword ptr [rsp + 4000], rax
                        mov              rax, qword ptr [rsp + 4040]
                        mov              qword ptr [rsp + 4008], rax
                        .section         .rodata
.Lrkfn1198:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1198]
                        lea              rsi, [rsp + 4000]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3984], rax
                        mov              qword ptr [rsp + 3992], rdx
                        cmp              al, 104;                             je    n556_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n688_call_proc_staged_α
n687_call_builtin_icon_β:
                        mov              r11, 412;                            jmp   n556_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n688_call_proc_staged_α:
                        mov              r11, 413
                        lea              rsi, [rsp + 3984]
                        call             Image_dcα;                           jmp   .Lx1200_2
.Lx1200_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1200_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3936], rax
                        mov              qword ptr [rsp + 3944], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3936]
                        mov              rdx, qword ptr [rsp + 3944]
.Lx1200_29:             mov              qword ptr [rsp + 3936], rax
                        mov              qword ptr [rsp + 3944], rdx
                        cmp              al, 104;                             je    n556_disjunction_af
                                                                              jmp   n556_disjunction_as
n688_call_proc_staged_β:
                        mov              r11, 413;                            jmp   n556_disjunction_af
.Lx1200_0:              .quad            .Lx1200_0_s
.Lx1200_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n689_lit_string_α:      mov              r11, 414
                        mov              qword ptr [rsp + 4288], 2            # result
                        mov              dword ptr [rsp + 4292], 4
                        mov              rax, qword ptr [rip + .Lx1201_0]
                        mov              qword ptr [rsp + 4296], rax;         jmp   n553_disjunction_as
n689_lit_string_β:      mov              r11, 414;                            jmp   n553_disjunction_af
.Lx1201_0:              .quad            .Lx1201_0_s
.Lx1201_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n690_lit_string_α:      mov              r11, 415
                        mov              qword ptr [rsp + 4272], 2            # result
                        mov              dword ptr [rsp + 4276], 3
                        mov              rax, qword ptr [rip + .Lx1202_0]
                        mov              qword ptr [rsp + 4280], rax;         jmp   n691_call_builtin_icon_α
n690_lit_string_β:      mov              r11, 415;                            jmp   n553_disjunction_af
.Lx1202_0:              .quad            .Lx1202_0_s
.Lx1202_0_s:            .string          "2r0"
#-----------------------------------------------------------------------------------------------------------------------
n691_call_builtin_icon_α:
                        mov              r11, 416
                        mov              rax, qword ptr [rsp + 4272]
                        mov              qword ptr [rsp + 4240], rax
                        mov              rax, qword ptr [rsp + 4280]
                        mov              qword ptr [rsp + 4248], rax
                        .section         .rodata
.Lrkfn1204:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1204]
                        lea              rsi, [rsp + 4240]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4224], rax
                        mov              qword ptr [rsp + 4232], rdx
                        cmp              al, 104;                             je    n553_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n692_call_proc_staged_α
n691_call_builtin_icon_β:
                        mov              r11, 416;                            jmp   n553_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n692_call_proc_staged_α:
                        mov              r11, 417
                        lea              rsi, [rsp + 4224]
                        call             Image_dcα;                           jmp   .Lx1206_2
.Lx1206_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1206_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 4176], rax
                        mov              qword ptr [rsp + 4184], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 4176]
                        mov              rdx, qword ptr [rsp + 4184]
.Lx1206_29:             mov              qword ptr [rsp + 4176], rax
                        mov              qword ptr [rsp + 4184], rdx
                        cmp              al, 104;                             je    n553_disjunction_af
                                                                              jmp   n553_disjunction_as
n692_call_proc_staged_β:
                        mov              r11, 417;                            jmp   n553_disjunction_af
.Lx1206_0:              .quad            .Lx1206_0_s
.Lx1206_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n693_lit_string_α:      mov              r11, 418
                        mov              qword ptr [rsp + 4528], 2            # result
                        mov              dword ptr [rsp + 4532], 4
                        mov              rax, qword ptr [rip + .Lx1207_0]
                        mov              qword ptr [rsp + 4536], rax;         jmp   n550_disjunction_as
n693_lit_string_β:      mov              r11, 418;                            jmp   n550_disjunction_af
.Lx1207_0:              .quad            .Lx1207_0_s
.Lx1207_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n694_lit_string_α:      mov              r11, 419
                        mov              qword ptr [rsp + 4512], 2            # result
                        mov              dword ptr [rsp + 4516], 3
                        mov              rax, qword ptr [rip + .Lx1208_0]
                        mov              qword ptr [rsp + 4520], rax;         jmp   n695_call_builtin_icon_α
n694_lit_string_β:      mov              r11, 419;                            jmp   n550_disjunction_af
.Lx1208_0:              .quad            .Lx1208_0_s
.Lx1208_0_s:            .string          "1r1"
#-----------------------------------------------------------------------------------------------------------------------
n695_call_builtin_icon_α:
                        mov              r11, 420
                        mov              rax, qword ptr [rsp + 4512]
                        mov              qword ptr [rsp + 4480], rax
                        mov              rax, qword ptr [rsp + 4520]
                        mov              qword ptr [rsp + 4488], rax
                        .section         .rodata
.Lrkfn1210:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1210]
                        lea              rsi, [rsp + 4480]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4464], rax
                        mov              qword ptr [rsp + 4472], rdx
                        cmp              al, 104;                             je    n550_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n696_call_proc_staged_α
n695_call_builtin_icon_β:
                        mov              r11, 420;                            jmp   n550_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n696_call_proc_staged_α:
                        mov              r11, 421
                        lea              rsi, [rsp + 4464]
                        call             Image_dcα;                           jmp   .Lx1212_2
.Lx1212_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1212_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 4416], rax
                        mov              qword ptr [rsp + 4424], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 4416]
                        mov              rdx, qword ptr [rsp + 4424]
.Lx1212_29:             mov              qword ptr [rsp + 4416], rax
                        mov              qword ptr [rsp + 4424], rdx
                        cmp              al, 104;                             je    n550_disjunction_af
                                                                              jmp   n550_disjunction_as
n696_call_proc_staged_β:
                        mov              r11, 421;                            jmp   n550_disjunction_af
.Lx1212_0:              .quad            .Lx1212_0_s
.Lx1212_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n697_lit_string_α:      mov              r11, 422
                        mov              qword ptr [rsp + 4768], 2            # result
                        mov              dword ptr [rsp + 4772], 4
                        mov              rax, qword ptr [rip + .Lx1213_0]
                        mov              qword ptr [rsp + 4776], rax;         jmp   n547_disjunction_as
n697_lit_string_β:      mov              r11, 422;                            jmp   n547_disjunction_af
.Lx1213_0:              .quad            .Lx1213_0_s
.Lx1213_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n698_lit_string_α:      mov              r11, 423
                        mov              qword ptr [rsp + 4752], 2            # result
                        mov              dword ptr [rsp + 4756], 6
                        mov              rax, qword ptr [rip + .Lx1214_0]
                        mov              qword ptr [rsp + 4760], rax;         jmp   n699_call_builtin_icon_α
n698_lit_string_β:      mov              r11, 423;                            jmp   n547_disjunction_af
.Lx1214_0:              .quad            .Lx1214_0_s
.Lx1214_0_s:            .string          "36rCAT"
#-----------------------------------------------------------------------------------------------------------------------
n699_call_builtin_icon_α:
                        mov              r11, 424
                        mov              rax, qword ptr [rsp + 4752]
                        mov              qword ptr [rsp + 4720], rax
                        mov              rax, qword ptr [rsp + 4760]
                        mov              qword ptr [rsp + 4728], rax
                        .section         .rodata
.Lrkfn1216:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1216]
                        lea              rsi, [rsp + 4720]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4704], rax
                        mov              qword ptr [rsp + 4712], rdx
                        cmp              al, 104;                             je    n547_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n700_call_proc_staged_α
n699_call_builtin_icon_β:
                        mov              r11, 424;                            jmp   n547_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n700_call_proc_staged_α:
                        mov              r11, 425
                        lea              rsi, [rsp + 4704]
                        call             Image_dcα;                           jmp   .Lx1218_2
.Lx1218_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1218_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 4656], rax
                        mov              qword ptr [rsp + 4664], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 4656]
                        mov              rdx, qword ptr [rsp + 4664]
.Lx1218_29:             mov              qword ptr [rsp + 4656], rax
                        mov              qword ptr [rsp + 4664], rdx
                        cmp              al, 104;                             je    n547_disjunction_af
                                                                              jmp   n547_disjunction_as
n700_call_proc_staged_β:
                        mov              r11, 425;                            jmp   n547_disjunction_af
.Lx1218_0:              .quad            .Lx1218_0_s
.Lx1218_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n701_lit_string_α:      mov              r11, 426
                        mov              qword ptr [rsp + 5008], 2            # result
                        mov              dword ptr [rsp + 5012], 4
                        mov              rax, qword ptr [rip + .Lx1219_0]
                        mov              qword ptr [rsp + 5016], rax;         jmp   n544_disjunction_as
n701_lit_string_β:      mov              r11, 426;                            jmp   n544_disjunction_af
.Lx1219_0:              .quad            .Lx1219_0_s
.Lx1219_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n702_lit_string_α:      mov              r11, 427
                        mov              qword ptr [rsp + 4992], 2            # result
                        mov              dword ptr [rsp + 4996], 6
                        mov              rax, qword ptr [rip + .Lx1220_0]
                        mov              qword ptr [rsp + 5000], rax;         jmp   n703_call_builtin_icon_α
n702_lit_string_β:      mov              r11, 427;                            jmp   n544_disjunction_af
.Lx1220_0:              .quad            .Lx1220_0_s
.Lx1220_0_s:            .string          "36Rcat"
#-----------------------------------------------------------------------------------------------------------------------
n703_call_builtin_icon_α:
                        mov              r11, 428
                        mov              rax, qword ptr [rsp + 4992]
                        mov              qword ptr [rsp + 4960], rax
                        mov              rax, qword ptr [rsp + 5000]
                        mov              qword ptr [rsp + 4968], rax
                        .section         .rodata
.Lrkfn1222:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1222]
                        lea              rsi, [rsp + 4960]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4944], rax
                        mov              qword ptr [rsp + 4952], rdx
                        cmp              al, 104;                             je    n544_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n704_call_proc_staged_α
n703_call_builtin_icon_β:
                        mov              r11, 428;                            jmp   n544_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n704_call_proc_staged_α:
                        mov              r11, 429
                        lea              rsi, [rsp + 4944]
                        call             Image_dcα;                           jmp   .Lx1224_2
.Lx1224_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1224_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 4896], rax
                        mov              qword ptr [rsp + 4904], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 4896]
                        mov              rdx, qword ptr [rsp + 4904]
.Lx1224_29:             mov              qword ptr [rsp + 4896], rax
                        mov              qword ptr [rsp + 4904], rdx
                        cmp              al, 104;                             je    n544_disjunction_af
                                                                              jmp   n544_disjunction_as
n704_call_proc_staged_β:
                        mov              r11, 429;                            jmp   n544_disjunction_af
.Lx1224_0:              .quad            .Lx1224_0_s
.Lx1224_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n705_lit_string_α:      mov              r11, 430
                        mov              qword ptr [rsp + 5248], 2            # result
                        mov              dword ptr [rsp + 5252], 4
                        mov              rax, qword ptr [rip + .Lx1225_0]
                        mov              qword ptr [rsp + 5256], rax;         jmp   n541_disjunction_as
n705_lit_string_β:      mov              r11, 430;                            jmp   n541_disjunction_af
.Lx1225_0:              .quad            .Lx1225_0_s
.Lx1225_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n706_lit_string_α:      mov              r11, 431
                        mov              qword ptr [rsp + 5232], 2            # result
                        mov              dword ptr [rsp + 5236], 6
                        mov              rax, qword ptr [rip + .Lx1226_0]
                        mov              qword ptr [rsp + 5240], rax;         jmp   n707_call_builtin_icon_α
n706_lit_string_β:      mov              r11, 431;                            jmp   n541_disjunction_af
.Lx1226_0:              .quad            .Lx1226_0_s
.Lx1226_0_s:            .string          "36rcat"
#-----------------------------------------------------------------------------------------------------------------------
n707_call_builtin_icon_α:
                        mov              r11, 432
                        mov              rax, qword ptr [rsp + 5232]
                        mov              qword ptr [rsp + 5200], rax
                        mov              rax, qword ptr [rsp + 5240]
                        mov              qword ptr [rsp + 5208], rax
                        .section         .rodata
.Lrkfn1228:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1228]
                        lea              rsi, [rsp + 5200]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5184], rax
                        mov              qword ptr [rsp + 5192], rdx
                        cmp              al, 104;                             je    n541_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n708_call_proc_staged_α
n707_call_builtin_icon_β:
                        mov              r11, 432;                            jmp   n541_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n708_call_proc_staged_α:
                        mov              r11, 433
                        lea              rsi, [rsp + 5184]
                        call             Image_dcα;                           jmp   .Lx1230_2
.Lx1230_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1230_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 5136], rax
                        mov              qword ptr [rsp + 5144], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 5136]
                        mov              rdx, qword ptr [rsp + 5144]
.Lx1230_29:             mov              qword ptr [rsp + 5136], rax
                        mov              qword ptr [rsp + 5144], rdx
                        cmp              al, 104;                             je    n541_disjunction_af
                                                                              jmp   n541_disjunction_as
n708_call_proc_staged_β:
                        mov              r11, 433;                            jmp   n541_disjunction_af
.Lx1230_0:              .quad            .Lx1230_0_s
.Lx1230_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n709_lit_string_α:      mov              r11, 434
                        mov              qword ptr [rsp + 5488], 2            # result
                        mov              dword ptr [rsp + 5492], 4
                        mov              rax, qword ptr [rip + .Lx1231_0]
                        mov              qword ptr [rsp + 5496], rax;         jmp   n538_disjunction_as
n709_lit_string_β:      mov              r11, 434;                            jmp   n538_disjunction_af
.Lx1231_0:              .quad            .Lx1231_0_s
.Lx1231_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n710_lit_string_α:      mov              r11, 435
                        mov              qword ptr [rsp + 5472], 2            # result
                        mov              dword ptr [rsp + 5476], 5
                        mov              rax, qword ptr [rip + .Lx1232_0]
                        mov              qword ptr [rsp + 5480], rax;         jmp   n711_call_builtin_icon_α
n710_lit_string_β:      mov              r11, 435;                            jmp   n538_disjunction_af
.Lx1232_0:              .quad            .Lx1232_0_s
.Lx1232_0_s:            .string          "16rff"
#-----------------------------------------------------------------------------------------------------------------------
n711_call_builtin_icon_α:
                        mov              r11, 436
                        mov              rax, qword ptr [rsp + 5472]
                        mov              qword ptr [rsp + 5440], rax
                        mov              rax, qword ptr [rsp + 5480]
                        mov              qword ptr [rsp + 5448], rax
                        .section         .rodata
.Lrkfn1234:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1234]
                        lea              rsi, [rsp + 5440]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5424], rax
                        mov              qword ptr [rsp + 5432], rdx
                        cmp              al, 104;                             je    n538_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n712_call_proc_staged_α
n711_call_builtin_icon_β:
                        mov              r11, 436;                            jmp   n538_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n712_call_proc_staged_α:
                        mov              r11, 437
                        lea              rsi, [rsp + 5424]
                        call             Image_dcα;                           jmp   .Lx1236_2
.Lx1236_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1236_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 5376], rax
                        mov              qword ptr [rsp + 5384], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 5376]
                        mov              rdx, qword ptr [rsp + 5384]
.Lx1236_29:             mov              qword ptr [rsp + 5376], rax
                        mov              qword ptr [rsp + 5384], rdx
                        cmp              al, 104;                             je    n538_disjunction_af
                                                                              jmp   n538_disjunction_as
n712_call_proc_staged_β:
                        mov              r11, 437;                            jmp   n538_disjunction_af
.Lx1236_0:              .quad            .Lx1236_0_s
.Lx1236_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n713_lit_string_α:      mov              r11, 438
                        mov              qword ptr [rsp + 5728], 2            # result
                        mov              dword ptr [rsp + 5732], 4
                        mov              rax, qword ptr [rip + .Lx1237_0]
                        mov              qword ptr [rsp + 5736], rax;         jmp   n535_disjunction_as
n713_lit_string_β:      mov              r11, 438;                            jmp   n535_disjunction_af
.Lx1237_0:              .quad            .Lx1237_0_s
.Lx1237_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n714_lit_string_α:      mov              r11, 439
                        mov              qword ptr [rsp + 5712], 2            # result
                        mov              dword ptr [rsp + 5716], 4
                        mov              rax, qword ptr [rip + .Lx1238_0]
                        mov              qword ptr [rsp + 5720], rax;         jmp   n715_call_builtin_icon_α
n714_lit_string_β:      mov              r11, 439;                            jmp   n535_disjunction_af
.Lx1238_0:              .quad            .Lx1238_0_s
.Lx1238_0_s:            .string          "7r 4"
#-----------------------------------------------------------------------------------------------------------------------
n715_call_builtin_icon_α:
                        mov              r11, 440
                        mov              rax, qword ptr [rsp + 5712]
                        mov              qword ptr [rsp + 5680], rax
                        mov              rax, qword ptr [rsp + 5720]
                        mov              qword ptr [rsp + 5688], rax
                        .section         .rodata
.Lrkfn1240:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1240]
                        lea              rsi, [rsp + 5680]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5664], rax
                        mov              qword ptr [rsp + 5672], rdx
                        cmp              al, 104;                             je    n535_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n716_call_proc_staged_α
n715_call_builtin_icon_β:
                        mov              r11, 440;                            jmp   n535_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n716_call_proc_staged_α:
                        mov              r11, 441
                        lea              rsi, [rsp + 5664]
                        call             Image_dcα;                           jmp   .Lx1242_2
.Lx1242_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1242_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 5616], rax
                        mov              qword ptr [rsp + 5624], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 5616]
                        mov              rdx, qword ptr [rsp + 5624]
.Lx1242_29:             mov              qword ptr [rsp + 5616], rax
                        mov              qword ptr [rsp + 5624], rdx
                        cmp              al, 104;                             je    n535_disjunction_af
                                                                              jmp   n535_disjunction_as
n716_call_proc_staged_β:
                        mov              r11, 441;                            jmp   n535_disjunction_af
.Lx1242_0:              .quad            .Lx1242_0_s
.Lx1242_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n717_lit_string_α:      mov              r11, 442
                        mov              qword ptr [rsp + 5968], 2            # result
                        mov              dword ptr [rsp + 5972], 4
                        mov              rax, qword ptr [rip + .Lx1243_0]
                        mov              qword ptr [rsp + 5976], rax;         jmp   n532_disjunction_as
n717_lit_string_β:      mov              r11, 442;                            jmp   n532_disjunction_af
.Lx1243_0:              .quad            .Lx1243_0_s
.Lx1243_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n718_lit_string_α:      mov              r11, 443
                        mov              qword ptr [rsp + 5952], 2            # result
                        mov              dword ptr [rsp + 5956], 4
                        mov              rax, qword ptr [rip + .Lx1244_0]
                        mov              qword ptr [rsp + 5960], rax;         jmp   n719_call_builtin_icon_α
n718_lit_string_β:      mov              r11, 443;                            jmp   n532_disjunction_af
.Lx1244_0:              .quad            .Lx1244_0_s
.Lx1244_0_s:            .string          "4r 7"
#-----------------------------------------------------------------------------------------------------------------------
n719_call_builtin_icon_α:
                        mov              r11, 444
                        mov              rax, qword ptr [rsp + 5952]
                        mov              qword ptr [rsp + 5920], rax
                        mov              rax, qword ptr [rsp + 5960]
                        mov              qword ptr [rsp + 5928], rax
                        .section         .rodata
.Lrkfn1246:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1246]
                        lea              rsi, [rsp + 5920]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5904], rax
                        mov              qword ptr [rsp + 5912], rdx
                        cmp              al, 104;                             je    n532_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n720_call_proc_staged_α
n719_call_builtin_icon_β:
                        mov              r11, 444;                            jmp   n532_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n720_call_proc_staged_α:
                        mov              r11, 445
                        lea              rsi, [rsp + 5904]
                        call             Image_dcα;                           jmp   .Lx1248_2
.Lx1248_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1248_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 5856], rax
                        mov              qword ptr [rsp + 5864], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 5856]
                        mov              rdx, qword ptr [rsp + 5864]
.Lx1248_29:             mov              qword ptr [rsp + 5856], rax
                        mov              qword ptr [rsp + 5864], rdx
                        cmp              al, 104;                             je    n532_disjunction_af
                                                                              jmp   n532_disjunction_as
n720_call_proc_staged_β:
                        mov              r11, 445;                            jmp   n532_disjunction_af
.Lx1248_0:              .quad            .Lx1248_0_s
.Lx1248_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n721_lit_string_α:      mov              r11, 446
                        mov              qword ptr [rsp + 6208], 2            # result
                        mov              dword ptr [rsp + 6212], 4
                        mov              rax, qword ptr [rip + .Lx1249_0]
                        mov              qword ptr [rsp + 6216], rax;         jmp   n529_disjunction_as
n721_lit_string_β:      mov              r11, 446;                            jmp   n529_disjunction_af
.Lx1249_0:              .quad            .Lx1249_0_s
.Lx1249_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n722_lit_string_α:      mov              r11, 447
                        mov              qword ptr [rsp + 6192], 2            # result
                        mov              dword ptr [rsp + 6196], 3
                        mov              rax, qword ptr [rip + .Lx1250_0]
                        mov              qword ptr [rsp + 6200], rax;         jmp   n723_call_builtin_icon_α
n722_lit_string_β:      mov              r11, 447;                            jmp   n529_disjunction_af
.Lx1250_0:              .quad            .Lx1250_0_s
.Lx1250_0_s:            .string          "4r7"
#-----------------------------------------------------------------------------------------------------------------------
n723_call_builtin_icon_α:
                        mov              r11, 448
                        mov              rax, qword ptr [rsp + 6192]
                        mov              qword ptr [rsp + 6160], rax
                        mov              rax, qword ptr [rsp + 6200]
                        mov              qword ptr [rsp + 6168], rax
                        .section         .rodata
.Lrkfn1252:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1252]
                        lea              rsi, [rsp + 6160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6144], rax
                        mov              qword ptr [rsp + 6152], rdx
                        cmp              al, 104;                             je    n529_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n724_call_proc_staged_α
n723_call_builtin_icon_β:
                        mov              r11, 448;                            jmp   n529_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n724_call_proc_staged_α:
                        mov              r11, 449
                        lea              rsi, [rsp + 6144]
                        call             Image_dcα;                           jmp   .Lx1254_2
.Lx1254_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1254_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 6096], rax
                        mov              qword ptr [rsp + 6104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 6096]
                        mov              rdx, qword ptr [rsp + 6104]
.Lx1254_29:             mov              qword ptr [rsp + 6096], rax
                        mov              qword ptr [rsp + 6104], rdx
                        cmp              al, 104;                             je    n529_disjunction_af
                                                                              jmp   n529_disjunction_as
n724_call_proc_staged_β:
                        mov              r11, 449;                            jmp   n529_disjunction_af
.Lx1254_0:              .quad            .Lx1254_0_s
.Lx1254_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n725_lit_string_α:      mov              r11, 450
                        mov              qword ptr [rsp + 6448], 2            # result
                        mov              dword ptr [rsp + 6452], 4
                        mov              rax, qword ptr [rip + .Lx1255_0]
                        mov              qword ptr [rsp + 6456], rax;         jmp   n526_disjunction_as
n725_lit_string_β:      mov              r11, 450;                            jmp   n526_disjunction_af
.Lx1255_0:              .quad            .Lx1255_0_s
.Lx1255_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n726_lit_string_α:      mov              r11, 451
                        mov              qword ptr [rsp + 6432], 2            # result
                        mov              dword ptr [rsp + 6436], 3
                        mov              rax, qword ptr [rip + .Lx1256_0]
                        mov              qword ptr [rsp + 6440], rax;         jmp   n727_call_builtin_icon_α
n726_lit_string_β:      mov              r11, 451;                            jmp   n526_disjunction_af
.Lx1256_0:              .quad            .Lx1256_0_s
.Lx1256_0_s:            .string          "7r4"
#-----------------------------------------------------------------------------------------------------------------------
n727_call_builtin_icon_α:
                        mov              r11, 452
                        mov              rax, qword ptr [rsp + 6432]
                        mov              qword ptr [rsp + 6400], rax
                        mov              rax, qword ptr [rsp + 6440]
                        mov              qword ptr [rsp + 6408], rax
                        .section         .rodata
.Lrkfn1258:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1258]
                        lea              rsi, [rsp + 6400]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6384], rax
                        mov              qword ptr [rsp + 6392], rdx
                        cmp              al, 104;                             je    n526_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n728_call_proc_staged_α
n727_call_builtin_icon_β:
                        mov              r11, 452;                            jmp   n526_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n728_call_proc_staged_α:
                        mov              r11, 453
                        lea              rsi, [rsp + 6384]
                        call             Image_dcα;                           jmp   .Lx1260_2
.Lx1260_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1260_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 6336], rax
                        mov              qword ptr [rsp + 6344], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 6336]
                        mov              rdx, qword ptr [rsp + 6344]
.Lx1260_29:             mov              qword ptr [rsp + 6336], rax
                        mov              qword ptr [rsp + 6344], rdx
                        cmp              al, 104;                             je    n526_disjunction_af
                                                                              jmp   n526_disjunction_as
n728_call_proc_staged_β:
                        mov              r11, 453;                            jmp   n526_disjunction_af
.Lx1260_0:              .quad            .Lx1260_0_s
.Lx1260_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n729_lit_string_α:      mov              r11, 454
                        mov              qword ptr [rsp + 6688], 2            # result
                        mov              dword ptr [rsp + 6692], 4
                        mov              rax, qword ptr [rip + .Lx1261_0]
                        mov              qword ptr [rsp + 6696], rax;         jmp   n523_disjunction_as
n729_lit_string_β:      mov              r11, 454;                            jmp   n523_disjunction_af
.Lx1261_0:              .quad            .Lx1261_0_s
.Lx1261_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n730_lit_string_α:      mov              r11, 455
                        mov              qword ptr [rsp + 6672], 2            # result
                        mov              dword ptr [rsp + 6676], 5
                        mov              rax, qword ptr [rip + .Lx1262_0]
                        mov              qword ptr [rsp + 6680], rax;         jmp   n731_call_builtin_icon_α
n730_lit_string_β:      mov              r11, 455;                            jmp   n523_disjunction_af
.Lx1262_0:              .quad            .Lx1262_0_s
.Lx1262_0_s:            .string          "3e500"
#-----------------------------------------------------------------------------------------------------------------------
n731_call_builtin_icon_α:
                        mov              r11, 456
                        mov              rax, qword ptr [rsp + 6672]
                        mov              qword ptr [rsp + 6640], rax
                        mov              rax, qword ptr [rsp + 6680]
                        mov              qword ptr [rsp + 6648], rax
                        .section         .rodata
.Lrkfn1264:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1264]
                        lea              rsi, [rsp + 6640]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6624], rax
                        mov              qword ptr [rsp + 6632], rdx
                        cmp              al, 104;                             je    n523_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n732_call_proc_staged_α
n731_call_builtin_icon_β:
                        mov              r11, 456;                            jmp   n523_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n732_call_proc_staged_α:
                        mov              r11, 457
                        lea              rsi, [rsp + 6624]
                        call             Image_dcα;                           jmp   .Lx1266_2
.Lx1266_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1266_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 6576], rax
                        mov              qword ptr [rsp + 6584], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 6576]
                        mov              rdx, qword ptr [rsp + 6584]
.Lx1266_29:             mov              qword ptr [rsp + 6576], rax
                        mov              qword ptr [rsp + 6584], rdx
                        cmp              al, 104;                             je    n523_disjunction_af
                                                                              jmp   n523_disjunction_as
n732_call_proc_staged_β:
                        mov              r11, 457;                            jmp   n523_disjunction_af
.Lx1266_0:              .quad            .Lx1266_0_s
.Lx1266_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n733_lit_string_α:      mov              r11, 458
                        mov              qword ptr [rsp + 6928], 2            # result
                        mov              dword ptr [rsp + 6932], 4
                        mov              rax, qword ptr [rip + .Lx1267_0]
                        mov              qword ptr [rsp + 6936], rax;         jmp   n520_disjunction_as
n733_lit_string_β:      mov              r11, 458;                            jmp   n520_disjunction_af
.Lx1267_0:              .quad            .Lx1267_0_s
.Lx1267_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n734_lit_string_α:      mov              r11, 459
                        mov              qword ptr [rsp + 6912], 2            # result
                        mov              dword ptr [rsp + 6916], 2
                        mov              rax, qword ptr [rip + .Lx1268_0]
                        mov              qword ptr [rsp + 6920], rax;         jmp   n735_call_builtin_icon_α
n734_lit_string_β:      mov              r11, 459;                            jmp   n520_disjunction_af
.Lx1268_0:              .quad            .Lx1268_0_s
.Lx1268_0_s:            .string          "e2"
#-----------------------------------------------------------------------------------------------------------------------
n735_call_builtin_icon_α:
                        mov              r11, 460
                        mov              rax, qword ptr [rsp + 6912]
                        mov              qword ptr [rsp + 6880], rax
                        mov              rax, qword ptr [rsp + 6920]
                        mov              qword ptr [rsp + 6888], rax
                        .section         .rodata
.Lrkfn1270:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1270]
                        lea              rsi, [rsp + 6880]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6864], rax
                        mov              qword ptr [rsp + 6872], rdx
                        cmp              al, 104;                             je    n520_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n736_call_proc_staged_α
n735_call_builtin_icon_β:
                        mov              r11, 460;                            jmp   n520_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n736_call_proc_staged_α:
                        mov              r11, 461
                        lea              rsi, [rsp + 6864]
                        call             Image_dcα;                           jmp   .Lx1272_2
.Lx1272_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1272_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 6816], rax
                        mov              qword ptr [rsp + 6824], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 6816]
                        mov              rdx, qword ptr [rsp + 6824]
.Lx1272_29:             mov              qword ptr [rsp + 6816], rax
                        mov              qword ptr [rsp + 6824], rdx
                        cmp              al, 104;                             je    n520_disjunction_af
                                                                              jmp   n520_disjunction_as
n736_call_proc_staged_β:
                        mov              r11, 461;                            jmp   n520_disjunction_af
.Lx1272_0:              .quad            .Lx1272_0_s
.Lx1272_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n737_lit_string_α:      mov              r11, 462
                        mov              qword ptr [rsp + 7168], 2            # result
                        mov              dword ptr [rsp + 7172], 4
                        mov              rax, qword ptr [rip + .Lx1273_0]
                        mov              qword ptr [rsp + 7176], rax;         jmp   n517_disjunction_as
n737_lit_string_β:      mov              r11, 462;                            jmp   n517_disjunction_af
.Lx1273_0:              .quad            .Lx1273_0_s
.Lx1273_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n738_lit_string_α:      mov              r11, 463
                        mov              qword ptr [rsp + 7152], 2            # result
                        mov              dword ptr [rsp + 7156], 4
                        mov              rax, qword ptr [rip + .Lx1274_0]
                        mov              qword ptr [rsp + 7160], rax;         jmp   n739_call_builtin_icon_α
n738_lit_string_β:      mov              r11, 463;                            jmp   n517_disjunction_af
.Lx1274_0:              .quad            .Lx1274_0_s
.Lx1274_0_s:            .string          " . 3"
#-----------------------------------------------------------------------------------------------------------------------
n739_call_builtin_icon_α:
                        mov              r11, 464
                        mov              rax, qword ptr [rsp + 7152]
                        mov              qword ptr [rsp + 7120], rax
                        mov              rax, qword ptr [rsp + 7160]
                        mov              qword ptr [rsp + 7128], rax
                        .section         .rodata
.Lrkfn1276:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1276]
                        lea              rsi, [rsp + 7120]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7104], rax
                        mov              qword ptr [rsp + 7112], rdx
                        cmp              al, 104;                             je    n517_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n740_call_proc_staged_α
n739_call_builtin_icon_β:
                        mov              r11, 464;                            jmp   n517_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n740_call_proc_staged_α:
                        mov              r11, 465
                        lea              rsi, [rsp + 7104]
                        call             Image_dcα;                           jmp   .Lx1278_2
.Lx1278_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1278_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 7056], rax
                        mov              qword ptr [rsp + 7064], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 7056]
                        mov              rdx, qword ptr [rsp + 7064]
.Lx1278_29:             mov              qword ptr [rsp + 7056], rax
                        mov              qword ptr [rsp + 7064], rdx
                        cmp              al, 104;                             je    n517_disjunction_af
                                                                              jmp   n517_disjunction_as
n740_call_proc_staged_β:
                        mov              r11, 465;                            jmp   n517_disjunction_af
.Lx1278_0:              .quad            .Lx1278_0_s
.Lx1278_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n741_lit_string_α:      mov              r11, 466
                        mov              qword ptr [rsp + 7408], 2            # result
                        mov              dword ptr [rsp + 7412], 4
                        mov              rax, qword ptr [rip + .Lx1279_0]
                        mov              qword ptr [rsp + 7416], rax;         jmp   n514_disjunction_as
n741_lit_string_β:      mov              r11, 466;                            jmp   n514_disjunction_af
.Lx1279_0:              .quad            .Lx1279_0_s
.Lx1279_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n742_lit_string_α:      mov              r11, 467
                        mov              qword ptr [rsp + 7392], 2            # result
                        mov              dword ptr [rsp + 7396], 3
                        mov              rax, qword ptr [rip + .Lx1280_0]
                        mov              qword ptr [rsp + 7400], rax;         jmp   n743_call_builtin_icon_α
n742_lit_string_β:      mov              r11, 467;                            jmp   n514_disjunction_af
.Lx1280_0:              .quad            .Lx1280_0_s
.Lx1280_0_s:            .string          "0.3"
#-----------------------------------------------------------------------------------------------------------------------
n743_call_builtin_icon_α:
                        mov              r11, 468
                        mov              rax, qword ptr [rsp + 7392]
                        mov              qword ptr [rsp + 7360], rax
                        mov              rax, qword ptr [rsp + 7400]
                        mov              qword ptr [rsp + 7368], rax
                        .section         .rodata
.Lrkfn1282:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1282]
                        lea              rsi, [rsp + 7360]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7344], rax
                        mov              qword ptr [rsp + 7352], rdx
                        cmp              al, 104;                             je    n514_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n744_call_proc_staged_α
n743_call_builtin_icon_β:
                        mov              r11, 468;                            jmp   n514_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n744_call_proc_staged_α:
                        mov              r11, 469
                        lea              rsi, [rsp + 7344]
                        call             Image_dcα;                           jmp   .Lx1284_2
.Lx1284_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1284_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 7296], rax
                        mov              qword ptr [rsp + 7304], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 7296]
                        mov              rdx, qword ptr [rsp + 7304]
.Lx1284_29:             mov              qword ptr [rsp + 7296], rax
                        mov              qword ptr [rsp + 7304], rdx
                        cmp              al, 104;                             je    n514_disjunction_af
                                                                              jmp   n514_disjunction_as
n744_call_proc_staged_β:
                        mov              r11, 469;                            jmp   n514_disjunction_af
.Lx1284_0:              .quad            .Lx1284_0_s
.Lx1284_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n745_lit_string_α:      mov              r11, 470
                        mov              qword ptr [rsp + 7648], 2            # result
                        mov              dword ptr [rsp + 7652], 4
                        mov              rax, qword ptr [rip + .Lx1285_0]
                        mov              qword ptr [rsp + 7656], rax;         jmp   n511_disjunction_as
n745_lit_string_β:      mov              r11, 470;                            jmp   n511_disjunction_af
.Lx1285_0:              .quad            .Lx1285_0_s
.Lx1285_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n746_lit_string_α:      mov              r11, 471
                        mov              qword ptr [rsp + 7632], 2            # result
                        mov              dword ptr [rsp + 7636], 2
                        mov              rax, qword ptr [rip + .Lx1286_0]
                        mov              qword ptr [rsp + 7640], rax;         jmp   n747_call_builtin_icon_α
n746_lit_string_β:      mov              r11, 471;                            jmp   n511_disjunction_af
.Lx1286_0:              .quad            .Lx1286_0_s
.Lx1286_0_s:            .string          ".3"
#-----------------------------------------------------------------------------------------------------------------------
n747_call_builtin_icon_α:
                        mov              r11, 472
                        mov              rax, qword ptr [rsp + 7632]
                        mov              qword ptr [rsp + 7600], rax
                        mov              rax, qword ptr [rsp + 7640]
                        mov              qword ptr [rsp + 7608], rax
                        .section         .rodata
.Lrkfn1288:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1288]
                        lea              rsi, [rsp + 7600]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7584], rax
                        mov              qword ptr [rsp + 7592], rdx
                        cmp              al, 104;                             je    n511_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n748_call_proc_staged_α
n747_call_builtin_icon_β:
                        mov              r11, 472;                            jmp   n511_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n748_call_proc_staged_α:
                        mov              r11, 473
                        lea              rsi, [rsp + 7584]
                        call             Image_dcα;                           jmp   .Lx1290_2
.Lx1290_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1290_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 7536], rax
                        mov              qword ptr [rsp + 7544], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 7536]
                        mov              rdx, qword ptr [rsp + 7544]
.Lx1290_29:             mov              qword ptr [rsp + 7536], rax
                        mov              qword ptr [rsp + 7544], rdx
                        cmp              al, 104;                             je    n511_disjunction_af
                                                                              jmp   n511_disjunction_as
n748_call_proc_staged_β:
                        mov              r11, 473;                            jmp   n511_disjunction_af
.Lx1290_0:              .quad            .Lx1290_0_s
.Lx1290_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n749_lit_string_α:      mov              r11, 474
                        mov              qword ptr [rsp + 7888], 2            # result
                        mov              dword ptr [rsp + 7892], 4
                        mov              rax, qword ptr [rip + .Lx1291_0]
                        mov              qword ptr [rsp + 7896], rax;         jmp   n508_disjunction_as
n749_lit_string_β:      mov              r11, 474;                            jmp   n508_disjunction_af
.Lx1291_0:              .quad            .Lx1291_0_s
.Lx1291_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n750_lit_string_α:      mov              r11, 475
                        mov              qword ptr [rsp + 7872], 2            # result
                        mov              dword ptr [rsp + 7876], 1
                        mov              rax, qword ptr [rip + .Lx1292_0]
                        mov              qword ptr [rsp + 7880], rax;         jmp   n751_call_builtin_icon_α
n750_lit_string_β:      mov              r11, 475;                            jmp   n508_disjunction_af
.Lx1292_0:              .quad            .Lx1292_0_s
.Lx1292_0_s:            .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n751_call_builtin_icon_α:
                        mov              r11, 476
                        mov              rax, qword ptr [rsp + 7872]
                        mov              qword ptr [rsp + 7840], rax
                        mov              rax, qword ptr [rsp + 7880]
                        mov              qword ptr [rsp + 7848], rax
                        .section         .rodata
.Lrkfn1294:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1294]
                        lea              rsi, [rsp + 7840]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7824], rax
                        mov              qword ptr [rsp + 7832], rdx
                        cmp              al, 104;                             je    n508_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n752_call_proc_staged_α
n751_call_builtin_icon_β:
                        mov              r11, 476;                            jmp   n508_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n752_call_proc_staged_α:
                        mov              r11, 477
                        lea              rsi, [rsp + 7824]
                        call             Image_dcα;                           jmp   .Lx1296_2
.Lx1296_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1296_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 7776], rax
                        mov              qword ptr [rsp + 7784], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 7776]
                        mov              rdx, qword ptr [rsp + 7784]
.Lx1296_29:             mov              qword ptr [rsp + 7776], rax
                        mov              qword ptr [rsp + 7784], rdx
                        cmp              al, 104;                             je    n508_disjunction_af
                                                                              jmp   n508_disjunction_as
n752_call_proc_staged_β:
                        mov              r11, 477;                            jmp   n508_disjunction_af
.Lx1296_0:              .quad            .Lx1296_0_s
.Lx1296_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n753_lit_string_α:      mov              r11, 478
                        mov              qword ptr [rsp + 8128], 2            # result
                        mov              dword ptr [rsp + 8132], 4
                        mov              rax, qword ptr [rip + .Lx1297_0]
                        mov              qword ptr [rsp + 8136], rax;         jmp   n505_disjunction_as
n753_lit_string_β:      mov              r11, 478;                            jmp   n505_disjunction_af
.Lx1297_0:              .quad            .Lx1297_0_s
.Lx1297_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n754_lit_string_α:      mov              r11, 479
                        mov              qword ptr [rsp + 8112], 2            # result
                        mov              dword ptr [rsp + 8116], 1
                        mov              rax, qword ptr [rip + .Lx1298_0]
                        mov              qword ptr [rsp + 8120], rax;         jmp   n755_call_builtin_icon_α
n754_lit_string_β:      mov              r11, 479;                            jmp   n505_disjunction_af
.Lx1298_0:              .quad            .Lx1298_0_s
.Lx1298_0_s:            .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n755_call_builtin_icon_α:
                        mov              r11, 480
                        mov              rax, qword ptr [rsp + 8112]
                        mov              qword ptr [rsp + 8080], rax
                        mov              rax, qword ptr [rsp + 8120]
                        mov              qword ptr [rsp + 8088], rax
                        .section         .rodata
.Lrkfn1300:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1300]
                        lea              rsi, [rsp + 8080]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 8064], rax
                        mov              qword ptr [rsp + 8072], rdx
                        cmp              al, 104;                             je    n505_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n756_call_proc_staged_α
n755_call_builtin_icon_β:
                        mov              r11, 480;                            jmp   n505_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n756_call_proc_staged_α:
                        mov              r11, 481
                        lea              rsi, [rsp + 8064]
                        call             Image_dcα;                           jmp   .Lx1302_2
.Lx1302_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1302_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 8016], rax
                        mov              qword ptr [rsp + 8024], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 8016]
                        mov              rdx, qword ptr [rsp + 8024]
.Lx1302_29:             mov              qword ptr [rsp + 8016], rax
                        mov              qword ptr [rsp + 8024], rdx
                        cmp              al, 104;                             je    n505_disjunction_af
                                                                              jmp   n505_disjunction_as
n756_call_proc_staged_β:
                        mov              r11, 481;                            jmp   n505_disjunction_af
.Lx1302_0:              .quad            .Lx1302_0_s
.Lx1302_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n757_lit_string_α:      mov              r11, 482
                        mov              qword ptr [rsp + 8368], 2            # result
                        mov              dword ptr [rsp + 8372], 4
                        mov              rax, qword ptr [rip + .Lx1303_0]
                        mov              qword ptr [rsp + 8376], rax;         jmp   n502_disjunction_as
n757_lit_string_β:      mov              r11, 482;                            jmp   n502_disjunction_af
.Lx1303_0:              .quad            .Lx1303_0_s
.Lx1303_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n758_lit_string_α:      mov              r11, 483
                        mov              qword ptr [rsp + 8352], 2            # result
                        mov              dword ptr [rsp + 8356], 1
                        mov              rax, qword ptr [rip + .Lx1304_0]
                        mov              qword ptr [rsp + 8360], rax;         jmp   n759_call_builtin_icon_α
n758_lit_string_β:      mov              r11, 483;                            jmp   n502_disjunction_af
.Lx1304_0:              .quad            .Lx1304_0_s
.Lx1304_0_s:            .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n759_call_builtin_icon_α:
                        mov              r11, 484
                        mov              rax, qword ptr [rsp + 8352]
                        mov              qword ptr [rsp + 8320], rax
                        mov              rax, qword ptr [rsp + 8360]
                        mov              qword ptr [rsp + 8328], rax
                        .section         .rodata
.Lrkfn1306:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1306]
                        lea              rsi, [rsp + 8320]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 8304], rax
                        mov              qword ptr [rsp + 8312], rdx
                        cmp              al, 104;                             je    n502_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n760_call_proc_staged_α
n759_call_builtin_icon_β:
                        mov              r11, 484;                            jmp   n502_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n760_call_proc_staged_α:
                        mov              r11, 485
                        lea              rsi, [rsp + 8304]
                        call             Image_dcα;                           jmp   .Lx1308_2
.Lx1308_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1308_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 8256], rax
                        mov              qword ptr [rsp + 8264], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 8256]
                        mov              rdx, qword ptr [rsp + 8264]
.Lx1308_29:             mov              qword ptr [rsp + 8256], rax
                        mov              qword ptr [rsp + 8264], rdx
                        cmp              al, 104;                             je    n502_disjunction_af
                                                                              jmp   n502_disjunction_as
n760_call_proc_staged_β:
                        mov              r11, 485;                            jmp   n502_disjunction_af
.Lx1308_0:              .quad            .Lx1308_0_s
.Lx1308_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n761_lit_string_α:      mov              r11, 486
                        mov              qword ptr [rsp + 8608], 2            # result
                        mov              dword ptr [rsp + 8612], 4
                        mov              rax, qword ptr [rip + .Lx1309_0]
                        mov              qword ptr [rsp + 8616], rax;         jmp   n499_disjunction_as
n761_lit_string_β:      mov              r11, 486;                            jmp   n499_disjunction_af
.Lx1309_0:              .quad            .Lx1309_0_s
.Lx1309_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n762_lit_string_α:      mov              r11, 487
                        mov              qword ptr [rsp + 8592], 2            # result
                        mov              dword ptr [rsp + 8596], 1
                        mov              rax, qword ptr [rip + .Lx1310_0]
                        mov              qword ptr [rsp + 8600], rax;         jmp   n763_call_builtin_icon_α
n762_lit_string_β:      mov              r11, 487;                            jmp   n499_disjunction_af
.Lx1310_0:              .quad            .Lx1310_0_s
.Lx1310_0_s:            .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n763_call_builtin_icon_α:
                        mov              r11, 488
                        mov              rax, qword ptr [rsp + 8592]
                        mov              qword ptr [rsp + 8560], rax
                        mov              rax, qword ptr [rsp + 8600]
                        mov              qword ptr [rsp + 8568], rax
                        .section         .rodata
.Lrkfn1312:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1312]
                        lea              rsi, [rsp + 8560]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 8544], rax
                        mov              qword ptr [rsp + 8552], rdx
                        cmp              al, 104;                             je    n499_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n764_call_proc_staged_α
n763_call_builtin_icon_β:
                        mov              r11, 488;                            jmp   n499_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n764_call_proc_staged_α:
                        mov              r11, 489
                        lea              rsi, [rsp + 8544]
                        call             Image_dcα;                           jmp   .Lx1314_2
.Lx1314_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1314_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 8496], rax
                        mov              qword ptr [rsp + 8504], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 8496]
                        mov              rdx, qword ptr [rsp + 8504]
.Lx1314_29:             mov              qword ptr [rsp + 8496], rax
                        mov              qword ptr [rsp + 8504], rdx
                        cmp              al, 104;                             je    n499_disjunction_af
                                                                              jmp   n499_disjunction_as
n764_call_proc_staged_β:
                        mov              r11, 489;                            jmp   n499_disjunction_af
.Lx1314_0:              .quad            .Lx1314_0_s
.Lx1314_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n765_lit_string_α:      mov              r11, 490
                        mov              qword ptr [rsp + 8848], 2            # result
                        mov              dword ptr [rsp + 8852], 4
                        mov              rax, qword ptr [rip + .Lx1315_0]
                        mov              qword ptr [rsp + 8856], rax;         jmp   n496_disjunction_as
n765_lit_string_β:      mov              r11, 490;                            jmp   n496_disjunction_af
.Lx1315_0:              .quad            .Lx1315_0_s
.Lx1315_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n766_lit_string_α:      mov              r11, 491
                        mov              qword ptr [rsp + 8832], 2            # result
                        mov              dword ptr [rsp + 8836], 3
                        mov              rax, qword ptr [rip + .Lx1316_0]
                        mov              qword ptr [rsp + 8840], rax;         jmp   n767_call_builtin_icon_α
n766_lit_string_β:      mov              r11, 491;                            jmp   n496_disjunction_af
.Lx1316_0:              .quad            .Lx1316_0_s
.Lx1316_0_s:            .string          "--2"
#-----------------------------------------------------------------------------------------------------------------------
n767_call_builtin_icon_α:
                        mov              r11, 492
                        mov              rax, qword ptr [rsp + 8832]
                        mov              qword ptr [rsp + 8800], rax
                        mov              rax, qword ptr [rsp + 8840]
                        mov              qword ptr [rsp + 8808], rax
                        .section         .rodata
.Lrkfn1318:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1318]
                        lea              rsi, [rsp + 8800]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 8784], rax
                        mov              qword ptr [rsp + 8792], rdx
                        cmp              al, 104;                             je    n496_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n768_call_proc_staged_α
n767_call_builtin_icon_β:
                        mov              r11, 492;                            jmp   n496_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n768_call_proc_staged_α:
                        mov              r11, 493
                        lea              rsi, [rsp + 8784]
                        call             Image_dcα;                           jmp   .Lx1320_2
.Lx1320_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1320_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 8736], rax
                        mov              qword ptr [rsp + 8744], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 8736]
                        mov              rdx, qword ptr [rsp + 8744]
.Lx1320_29:             mov              qword ptr [rsp + 8736], rax
                        mov              qword ptr [rsp + 8744], rdx
                        cmp              al, 104;                             je    n496_disjunction_af
                                                                              jmp   n496_disjunction_as
n768_call_proc_staged_β:
                        mov              r11, 493;                            jmp   n496_disjunction_af
.Lx1320_0:              .quad            .Lx1320_0_s
.Lx1320_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n769_lit_string_α:      mov              r11, 494
                        mov              qword ptr [rsp + 9088], 2            # result
                        mov              dword ptr [rsp + 9092], 4
                        mov              rax, qword ptr [rip + .Lx1321_0]
                        mov              qword ptr [rsp + 9096], rax;         jmp   n493_disjunction_as
n769_lit_string_β:      mov              r11, 494;                            jmp   n493_disjunction_af
.Lx1321_0:              .quad            .Lx1321_0_s
.Lx1321_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n770_lit_string_α:      mov              r11, 495
                        mov              qword ptr [rsp + 9072], 2            # result
                        mov              dword ptr [rsp + 9076], 0
                        mov              rax, qword ptr [rip + .Lx1322_0]
                        mov              qword ptr [rsp + 9080], rax;         jmp   n771_call_builtin_icon_α
n770_lit_string_β:      mov              r11, 495;                            jmp   n493_disjunction_af
.Lx1322_0:              .quad            .Lx1322_0_s
.Lx1322_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n771_call_builtin_icon_α:
                        mov              r11, 496
                        mov              rax, qword ptr [rsp + 9072]
                        mov              qword ptr [rsp + 9040], rax
                        mov              rax, qword ptr [rsp + 9080]
                        mov              qword ptr [rsp + 9048], rax
                        .section         .rodata
.Lrkfn1324:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1324]
                        lea              rsi, [rsp + 9040]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 9024], rax
                        mov              qword ptr [rsp + 9032], rdx
                        cmp              al, 104;                             je    n493_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n772_call_proc_staged_α
n771_call_builtin_icon_β:
                        mov              r11, 496;                            jmp   n493_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n772_call_proc_staged_α:
                        mov              r11, 497
                        lea              rsi, [rsp + 9024]
                        call             Image_dcα;                           jmp   .Lx1326_2
.Lx1326_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1326_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 8976], rax
                        mov              qword ptr [rsp + 8984], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 8976]
                        mov              rdx, qword ptr [rsp + 8984]
.Lx1326_29:             mov              qword ptr [rsp + 8976], rax
                        mov              qword ptr [rsp + 8984], rdx
                        cmp              al, 104;                             je    n493_disjunction_af
                                                                              jmp   n493_disjunction_as
n772_call_proc_staged_β:
                        mov              r11, 497;                            jmp   n493_disjunction_af
.Lx1326_0:              .quad            .Lx1326_0_s
.Lx1326_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n773_lit_string_α:      mov              r11, 498
                        mov              qword ptr [rsp + 9328], 2            # result
                        mov              dword ptr [rsp + 9332], 4
                        mov              rax, qword ptr [rip + .Lx1327_0]
                        mov              qword ptr [rsp + 9336], rax;         jmp   n490_disjunction_as
n773_lit_string_β:      mov              r11, 498;                            jmp   n490_disjunction_af
.Lx1327_0:              .quad            .Lx1327_0_s
.Lx1327_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n774_lit_string_α:      mov              r11, 499
                        mov              qword ptr [rsp + 9312], 2            # result
                        mov              dword ptr [rsp + 9316], 8
                        mov              rax, qword ptr [rip + .Lx1328_0]
                        mov              qword ptr [rsp + 9320], rax;         jmp   n775_call_builtin_icon_α
n774_lit_string_β:      mov              r11, 499;                            jmp   n490_disjunction_af
.Lx1328_0:              .quad            .Lx1328_0_s
.Lx1328_0_s:            .string          " -    2 "
#-----------------------------------------------------------------------------------------------------------------------
n775_call_builtin_icon_α:
                        mov              r11, 500
                        mov              rax, qword ptr [rsp + 9312]
                        mov              qword ptr [rsp + 9280], rax
                        mov              rax, qword ptr [rsp + 9320]
                        mov              qword ptr [rsp + 9288], rax
                        .section         .rodata
.Lrkfn1330:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1330]
                        lea              rsi, [rsp + 9280]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 9264], rax
                        mov              qword ptr [rsp + 9272], rdx
                        cmp              al, 104;                             je    n490_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n776_call_proc_staged_α
n775_call_builtin_icon_β:
                        mov              r11, 500;                            jmp   n490_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n776_call_proc_staged_α:
                        mov              r11, 501
                        lea              rsi, [rsp + 9264]
                        call             Image_dcα;                           jmp   .Lx1332_2
.Lx1332_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1332_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 9216], rax
                        mov              qword ptr [rsp + 9224], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 9216]
                        mov              rdx, qword ptr [rsp + 9224]
.Lx1332_29:             mov              qword ptr [rsp + 9216], rax
                        mov              qword ptr [rsp + 9224], rdx
                        cmp              al, 104;                             je    n490_disjunction_af
                                                                              jmp   n490_disjunction_as
n776_call_proc_staged_β:
                        mov              r11, 501;                            jmp   n490_disjunction_af
.Lx1332_0:              .quad            .Lx1332_0_s
.Lx1332_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n777_lit_string_α:      mov              r11, 502
                        mov              qword ptr [rsp + 9568], 2            # result
                        mov              dword ptr [rsp + 9572], 4
                        mov              rax, qword ptr [rip + .Lx1333_0]
                        mov              qword ptr [rsp + 9576], rax;         jmp   n487_disjunction_as
n777_lit_string_β:      mov              r11, 502;                            jmp   n487_disjunction_af
.Lx1333_0:              .quad            .Lx1333_0_s
.Lx1333_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n778_lit_string_α:      mov              r11, 503
                        mov              qword ptr [rsp + 9552], 2            # result
                        mov              dword ptr [rsp + 9556], 3
                        mov              rax, qword ptr [rip + .Lx1334_0]
                        mov              qword ptr [rsp + 9560], rax;         jmp   n779_call_builtin_icon_α
n778_lit_string_β:      mov              r11, 503;                            jmp   n487_disjunction_af
.Lx1334_0:              .quad            .Lx1334_0_s
.Lx1334_0_s:            .string          "- 2"
#-----------------------------------------------------------------------------------------------------------------------
n779_call_builtin_icon_α:
                        mov              r11, 504
                        mov              rax, qword ptr [rsp + 9552]
                        mov              qword ptr [rsp + 9520], rax
                        mov              rax, qword ptr [rsp + 9560]
                        mov              qword ptr [rsp + 9528], rax
                        .section         .rodata
.Lrkfn1336:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1336]
                        lea              rsi, [rsp + 9520]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 9504], rax
                        mov              qword ptr [rsp + 9512], rdx
                        cmp              al, 104;                             je    n487_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n780_call_proc_staged_α
n779_call_builtin_icon_β:
                        mov              r11, 504;                            jmp   n487_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n780_call_proc_staged_α:
                        mov              r11, 505
                        lea              rsi, [rsp + 9504]
                        call             Image_dcα;                           jmp   .Lx1338_2
.Lx1338_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1338_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 9456], rax
                        mov              qword ptr [rsp + 9464], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 9456]
                        mov              rdx, qword ptr [rsp + 9464]
.Lx1338_29:             mov              qword ptr [rsp + 9456], rax
                        mov              qword ptr [rsp + 9464], rdx
                        cmp              al, 104;                             je    n487_disjunction_af
                                                                              jmp   n487_disjunction_as
n780_call_proc_staged_β:
                        mov              r11, 505;                            jmp   n487_disjunction_af
.Lx1338_0:              .quad            .Lx1338_0_s
.Lx1338_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n781_lit_string_α:      mov              r11, 506
                        mov              qword ptr [rsp + 9808], 2            # result
                        mov              dword ptr [rsp + 9812], 4
                        mov              rax, qword ptr [rip + .Lx1339_0]
                        mov              qword ptr [rsp + 9816], rax;         jmp   n484_disjunction_as
n781_lit_string_β:      mov              r11, 506;                            jmp   n484_disjunction_af
.Lx1339_0:              .quad            .Lx1339_0_s
.Lx1339_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n782_lit_string_α:      mov              r11, 507
                        mov              qword ptr [rsp + 9792], 2            # result
                        mov              dword ptr [rsp + 9796], 2
                        mov              rax, qword ptr [rip + .Lx1340_0]
                        mov              qword ptr [rsp + 9800], rax;         jmp   n783_call_builtin_icon_α
n782_lit_string_β:      mov              r11, 507;                            jmp   n484_disjunction_af
.Lx1340_0:              .quad            .Lx1340_0_s
.Lx1340_0_s:            .string          "-2"
#-----------------------------------------------------------------------------------------------------------------------
n783_call_builtin_icon_α:
                        mov              r11, 508
                        mov              rax, qword ptr [rsp + 9792]
                        mov              qword ptr [rsp + 9760], rax
                        mov              rax, qword ptr [rsp + 9800]
                        mov              qword ptr [rsp + 9768], rax
                        .section         .rodata
.Lrkfn1342:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1342]
                        lea              rsi, [rsp + 9760]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 9744], rax
                        mov              qword ptr [rsp + 9752], rdx
                        cmp              al, 104;                             je    n484_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n784_call_proc_staged_α
n783_call_builtin_icon_β:
                        mov              r11, 508;                            jmp   n484_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n784_call_proc_staged_α:
                        mov              r11, 509
                        lea              rsi, [rsp + 9744]
                        call             Image_dcα;                           jmp   .Lx1344_2
.Lx1344_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1344_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 9696], rax
                        mov              qword ptr [rsp + 9704], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 9696]
                        mov              rdx, qword ptr [rsp + 9704]
.Lx1344_29:             mov              qword ptr [rsp + 9696], rax
                        mov              qword ptr [rsp + 9704], rdx
                        cmp              al, 104;                             je    n484_disjunction_af
                                                                              jmp   n484_disjunction_as
n784_call_proc_staged_β:
                        mov              r11, 509;                            jmp   n484_disjunction_af
.Lx1344_0:              .quad            .Lx1344_0_s
.Lx1344_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n785_lit_string_α:      mov              r11, 510
                        mov              qword ptr [rsp + 10048], 2           # result
                        mov              dword ptr [rsp + 10052], 4
                        mov              rax, qword ptr [rip + .Lx1345_0]
                        mov              qword ptr [rsp + 10056], rax;        jmp   n481_disjunction_as
n785_lit_string_β:      mov              r11, 510;                            jmp   n481_disjunction_af
.Lx1345_0:              .quad            .Lx1345_0_s
.Lx1345_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n786_lit_string_α:      mov              r11, 511
                        mov              qword ptr [rsp + 10032], 2           # result
                        mov              dword ptr [rsp + 10036], 2
                        mov              rax, qword ptr [rip + .Lx1346_0]
                        mov              qword ptr [rsp + 10040], rax;        jmp   n787_call_builtin_icon_α
n786_lit_string_β:      mov              r11, 511;                            jmp   n481_disjunction_af
.Lx1346_0:              .quad            .Lx1346_0_s
.Lx1346_0_s:            .string          "+2"
#-----------------------------------------------------------------------------------------------------------------------
n787_call_builtin_icon_α:
                        mov              r11, 512
                        mov              rax, qword ptr [rsp + 10032]
                        mov              qword ptr [rsp + 10000], rax
                        mov              rax, qword ptr [rsp + 10040]
                        mov              qword ptr [rsp + 10008], rax
                        .section         .rodata
.Lrkfn1348:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1348]
                        lea              rsi, [rsp + 10000]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 9984], rax
                        mov              qword ptr [rsp + 9992], rdx
                        cmp              al, 104;                             je    n481_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n788_call_proc_staged_α
n787_call_builtin_icon_β:
                        mov              r11, 512;                            jmp   n481_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n788_call_proc_staged_α:
                        mov              r11, 513
                        lea              rsi, [rsp + 9984]
                        call             Image_dcα;                           jmp   .Lx1350_2
.Lx1350_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1350_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 9936], rax
                        mov              qword ptr [rsp + 9944], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 9936]
                        mov              rdx, qword ptr [rsp + 9944]
.Lx1350_29:             mov              qword ptr [rsp + 9936], rax
                        mov              qword ptr [rsp + 9944], rdx
                        cmp              al, 104;                             je    n481_disjunction_af
                                                                              jmp   n481_disjunction_as
n788_call_proc_staged_β:
                        mov              r11, 513;                            jmp   n481_disjunction_af
.Lx1350_0:              .quad            .Lx1350_0_s
.Lx1350_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n789_lit_string_α:      mov              r11, 514
                        mov              qword ptr [rsp + 10288], 2           # result
                        mov              dword ptr [rsp + 10292], 4
                        mov              rax, qword ptr [rip + .Lx1351_0]
                        mov              qword ptr [rsp + 10296], rax;        jmp   n478_disjunction_as
n789_lit_string_β:      mov              r11, 514;                            jmp   n478_disjunction_af
.Lx1351_0:              .quad            .Lx1351_0_s
.Lx1351_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n790_lit_string_α:      mov              r11, 515
                        mov              qword ptr [rsp + 10272], 2           # result
                        mov              dword ptr [rsp + 10276], 2
                        mov              rax, qword ptr [rip + .Lx1352_0]
                        mov              qword ptr [rsp + 10280], rax;        jmp   n791_call_builtin_icon_α
n790_lit_string_β:      mov              r11, 515;                            jmp   n478_disjunction_af
.Lx1352_0:              .quad            .Lx1352_0_s
.Lx1352_0_s:            .string          "2 "
#-----------------------------------------------------------------------------------------------------------------------
n791_call_builtin_icon_α:
                        mov              r11, 516
                        mov              rax, qword ptr [rsp + 10272]
                        mov              qword ptr [rsp + 10240], rax
                        mov              rax, qword ptr [rsp + 10280]
                        mov              qword ptr [rsp + 10248], rax
                        .section         .rodata
.Lrkfn1354:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1354]
                        lea              rsi, [rsp + 10240]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 10224], rax
                        mov              qword ptr [rsp + 10232], rdx
                        cmp              al, 104;                             je    n478_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n792_call_proc_staged_α
n791_call_builtin_icon_β:
                        mov              r11, 516;                            jmp   n478_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n792_call_proc_staged_α:
                        mov              r11, 517
                        lea              rsi, [rsp + 10224]
                        call             Image_dcα;                           jmp   .Lx1356_2
.Lx1356_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1356_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 10176], rax
                        mov              qword ptr [rsp + 10184], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 10176]
                        mov              rdx, qword ptr [rsp + 10184]
.Lx1356_29:             mov              qword ptr [rsp + 10176], rax
                        mov              qword ptr [rsp + 10184], rdx
                        cmp              al, 104;                             je    n478_disjunction_af
                                                                              jmp   n478_disjunction_as
n792_call_proc_staged_β:
                        mov              r11, 517;                            jmp   n478_disjunction_af
.Lx1356_0:              .quad            .Lx1356_0_s
.Lx1356_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n793_lit_string_α:      mov              r11, 518
                        mov              qword ptr [rsp + 10528], 2           # result
                        mov              dword ptr [rsp + 10532], 4
                        mov              rax, qword ptr [rip + .Lx1357_0]
                        mov              qword ptr [rsp + 10536], rax;        jmp   n475_disjunction_as
n793_lit_string_β:      mov              r11, 518;                            jmp   n475_disjunction_af
.Lx1357_0:              .quad            .Lx1357_0_s
.Lx1357_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n794_lit_string_α:      mov              r11, 519
                        mov              qword ptr [rsp + 10512], 2           # result
                        mov              dword ptr [rsp + 10516], 2
                        mov              rax, qword ptr [rip + .Lx1358_0]
                        mov              qword ptr [rsp + 10520], rax;        jmp   n795_call_builtin_icon_α
n794_lit_string_β:      mov              r11, 519;                            jmp   n475_disjunction_af
.Lx1358_0:              .quad            .Lx1358_0_s
.Lx1358_0_s:            .string          " 2"
#-----------------------------------------------------------------------------------------------------------------------
n795_call_builtin_icon_α:
                        mov              r11, 520
                        mov              rax, qword ptr [rsp + 10512]
                        mov              qword ptr [rsp + 10480], rax
                        mov              rax, qword ptr [rsp + 10520]
                        mov              qword ptr [rsp + 10488], rax
                        .section         .rodata
.Lrkfn1360:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1360]
                        lea              rsi, [rsp + 10480]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 10464], rax
                        mov              qword ptr [rsp + 10472], rdx
                        cmp              al, 104;                             je    n475_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n796_call_proc_staged_α
n795_call_builtin_icon_β:
                        mov              r11, 520;                            jmp   n475_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n796_call_proc_staged_α:
                        mov              r11, 521
                        lea              rsi, [rsp + 10464]
                        call             Image_dcα;                           jmp   .Lx1362_2
.Lx1362_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1362_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 10416], rax
                        mov              qword ptr [rsp + 10424], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 10416]
                        mov              rdx, qword ptr [rsp + 10424]
.Lx1362_29:             mov              qword ptr [rsp + 10416], rax
                        mov              qword ptr [rsp + 10424], rdx
                        cmp              al, 104;                             je    n475_disjunction_af
                                                                              jmp   n475_disjunction_as
n796_call_proc_staged_β:
                        mov              r11, 521;                            jmp   n475_disjunction_af
.Lx1362_0:              .quad            .Lx1362_0_s
.Lx1362_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n797_lit_string_α:      mov              r11, 522
                        mov              qword ptr [rsp + 10768], 2           # result
                        mov              dword ptr [rsp + 10772], 4
                        mov              rax, qword ptr [rip + .Lx1363_0]
                        mov              qword ptr [rsp + 10776], rax;        jmp   n472_disjunction_as
n797_lit_string_β:      mov              r11, 522;                            jmp   n472_disjunction_af
.Lx1363_0:              .quad            .Lx1363_0_s
.Lx1363_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n798_lit_string_α:      mov              r11, 523
                        mov              qword ptr [rsp + 10752], 2           # result
                        mov              dword ptr [rsp + 10756], 1
                        mov              rax, qword ptr [rip + .Lx1364_0]
                        mov              qword ptr [rsp + 10760], rax;        jmp   n799_call_builtin_icon_α
n798_lit_string_β:      mov              r11, 523;                            jmp   n472_disjunction_af
.Lx1364_0:              .quad            .Lx1364_0_s
.Lx1364_0_s:            .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n799_call_builtin_icon_α:
                        mov              r11, 524
                        mov              rax, qword ptr [rsp + 10752]
                        mov              qword ptr [rsp + 10720], rax
                        mov              rax, qword ptr [rsp + 10760]
                        mov              qword ptr [rsp + 10728], rax
                        .section         .rodata
.Lrkfn1366:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1366]
                        lea              rsi, [rsp + 10720]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 10704], rax
                        mov              qword ptr [rsp + 10712], rdx
                        cmp              al, 104;                             je    n472_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n800_call_proc_staged_α
n799_call_builtin_icon_β:
                        mov              r11, 524;                            jmp   n472_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n800_call_proc_staged_α:
                        mov              r11, 525
                        lea              rsi, [rsp + 10704]
                        call             Image_dcα;                           jmp   .Lx1368_2
.Lx1368_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1368_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 10656], rax
                        mov              qword ptr [rsp + 10664], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 10656]
                        mov              rdx, qword ptr [rsp + 10664]
.Lx1368_29:             mov              qword ptr [rsp + 10656], rax
                        mov              qword ptr [rsp + 10664], rdx
                        cmp              al, 104;                             je    n472_disjunction_af
                                                                              jmp   n472_disjunction_as
n800_call_proc_staged_β:
                        mov              r11, 525;                            jmp   n472_disjunction_af
.Lx1368_0:              .quad            .Lx1368_0_s
.Lx1368_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n801_lit_string_α:      mov              r11, 526
                        mov              qword ptr [rsp + 11008], 2           # result
                        mov              dword ptr [rsp + 11012], 4
                        mov              rax, qword ptr [rip + .Lx1369_0]
                        mov              qword ptr [rsp + 11016], rax;        jmp   n469_disjunction_as
n801_lit_string_β:      mov              r11, 526;                            jmp   n469_disjunction_af
.Lx1369_0:              .quad            .Lx1369_0_s
.Lx1369_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n802_lit_real_α:        mov              r11, 527
                        mov              qword ptr [rsp + 10992], 5           # result
                        mov              rax, qword ptr [rip + .Lx1370_0]
                        mov              qword ptr [rsp + 11000], rax;        jmp   n803_call_builtin_icon_α
n802_lit_real_β:        mov              r11, 527;                            jmp   n469_disjunction_af
.Lx1370_0:              .quad            4613262278296967578
#-----------------------------------------------------------------------------------------------------------------------
n803_call_builtin_icon_α:
                        mov              r11, 528
                        mov              rax, qword ptr [rsp + 10992]
                        mov              qword ptr [rsp + 10960], rax
                        mov              rax, qword ptr [rsp + 11000]
                        mov              qword ptr [rsp + 10968], rax
                        .section         .rodata
.Lrkfn1372:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1372]
                        lea              rsi, [rsp + 10960]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 10944], rax
                        mov              qword ptr [rsp + 10952], rdx
                        cmp              al, 104;                             je    n469_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n804_call_proc_staged_α
n803_call_builtin_icon_β:
                        mov              r11, 528;                            jmp   n469_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n804_call_proc_staged_α:
                        mov              r11, 529
                        lea              rsi, [rsp + 10944]
                        call             Image_dcα;                           jmp   .Lx1374_2
.Lx1374_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1374_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 10896], rax
                        mov              qword ptr [rsp + 10904], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 10896]
                        mov              rdx, qword ptr [rsp + 10904]
.Lx1374_29:             mov              qword ptr [rsp + 10896], rax
                        mov              qword ptr [rsp + 10904], rdx
                        cmp              al, 104;                             je    n469_disjunction_af
                                                                              jmp   n469_disjunction_as
n804_call_proc_staged_β:
                        mov              r11, 529;                            jmp   n469_disjunction_af
.Lx1374_0:              .quad            .Lx1374_0_s
.Lx1374_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n805_lit_string_α:      mov              r11, 530
                        mov              qword ptr [rsp + 11248], 2           # result
                        mov              dword ptr [rsp + 11252], 4
                        mov              rax, qword ptr [rip + .Lx1375_0]
                        mov              qword ptr [rsp + 11256], rax;        jmp   n466_disjunction_as
n805_lit_string_β:      mov              r11, 530;                            jmp   n466_disjunction_af
.Lx1375_0:              .quad            .Lx1375_0_s
.Lx1375_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n806_lit_real_α:        mov              r11, 531
                        mov              qword ptr [rsp + 11232], 5           # result
                        mov              rax, qword ptr [rip + .Lx1376_0]
                        mov              qword ptr [rsp + 11240], rax;        jmp   n807_call_builtin_icon_α
n806_lit_real_β:        mov              r11, 531;                            jmp   n466_disjunction_af
.Lx1376_0:              .quad            4611686018427387904
#-----------------------------------------------------------------------------------------------------------------------
n807_call_builtin_icon_α:
                        mov              r11, 532
                        mov              rax, qword ptr [rsp + 11232]
                        mov              qword ptr [rsp + 11200], rax
                        mov              rax, qword ptr [rsp + 11240]
                        mov              qword ptr [rsp + 11208], rax
                        .section         .rodata
.Lrkfn1378:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1378]
                        lea              rsi, [rsp + 11200]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 11184], rax
                        mov              qword ptr [rsp + 11192], rdx
                        cmp              al, 104;                             je    n466_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n808_call_proc_staged_α
n807_call_builtin_icon_β:
                        mov              r11, 532;                            jmp   n466_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n808_call_proc_staged_α:
                        mov              r11, 533
                        lea              rsi, [rsp + 11184]
                        call             Image_dcα;                           jmp   .Lx1380_2
.Lx1380_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1380_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 11136], rax
                        mov              qword ptr [rsp + 11144], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 11136]
                        mov              rdx, qword ptr [rsp + 11144]
.Lx1380_29:             mov              qword ptr [rsp + 11136], rax
                        mov              qword ptr [rsp + 11144], rdx
                        cmp              al, 104;                             je    n466_disjunction_af
                                                                              jmp   n466_disjunction_as
n808_call_proc_staged_β:
                        mov              r11, 533;                            jmp   n466_disjunction_af
.Lx1380_0:              .quad            .Lx1380_0_s
.Lx1380_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n809_lit_string_α:      mov              r11, 534
                        mov              qword ptr [rsp + 11488], 2           # result
                        mov              dword ptr [rsp + 11492], 4
                        mov              rax, qword ptr [rip + .Lx1381_0]
                        mov              qword ptr [rsp + 11496], rax;        jmp   n463_disjunction_as
n809_lit_string_β:      mov              r11, 534;                            jmp   n463_disjunction_af
.Lx1381_0:              .quad            .Lx1381_0_s
.Lx1381_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n810_lit_integer_α:     mov              r11, 535
                        mov              qword ptr [rsp + 11472], 3           # result
                        mov              rax, qword ptr [rip + .Lx1382_0]
                        mov              qword ptr [rsp + 11480], rax;        jmp   n811_call_builtin_icon_α
n810_lit_integer_β:     mov              r11, 535;                            jmp   n463_disjunction_af
.Lx1382_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n811_call_builtin_icon_α:
                        mov              r11, 536
                        mov              rax, qword ptr [rsp + 11472]
                        mov              qword ptr [rsp + 11440], rax
                        mov              rax, qword ptr [rsp + 11480]
                        mov              qword ptr [rsp + 11448], rax
                        .section         .rodata
.Lrkfn1384:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1384]
                        lea              rsi, [rsp + 11440]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 11424], rax
                        mov              qword ptr [rsp + 11432], rdx
                        cmp              al, 104;                             je    n463_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n812_call_proc_staged_α
n811_call_builtin_icon_β:
                        mov              r11, 536;                            jmp   n463_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n812_call_proc_staged_α:
                        mov              r11, 537
                        lea              rsi, [rsp + 11424]
                        call             Image_dcα;                           jmp   .Lx1386_2
.Lx1386_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1386_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 11376], rax
                        mov              qword ptr [rsp + 11384], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 11376]
                        mov              rdx, qword ptr [rsp + 11384]
.Lx1386_29:             mov              qword ptr [rsp + 11376], rax
                        mov              qword ptr [rsp + 11384], rdx
                        cmp              al, 104;                             je    n463_disjunction_af
                                                                              jmp   n463_disjunction_as
n812_call_proc_staged_β:
                        mov              r11, 537;                            jmp   n463_disjunction_af
.Lx1386_0:              .quad            .Lx1386_0_s
.Lx1386_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n813_lit_string_α:      mov              r11, 538
                        mov              qword ptr [rsp + 11728], 2           # result
                        mov              dword ptr [rsp + 11732], 4
                        mov              rax, qword ptr [rip + .Lx1387_0]
                        mov              qword ptr [rsp + 11736], rax;        jmp   n460_disjunction_as
n813_lit_string_β:      mov              r11, 538;                            jmp   n460_disjunction_af
.Lx1387_0:              .quad            .Lx1387_0_s
.Lx1387_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n814_lit_string_α:      mov              r11, 539
                        mov              qword ptr [rsp + 11712], 2           # result
                        mov              dword ptr [rsp + 11716], 5
                        mov              rax, qword ptr [rip + .Lx1388_0]
                        mov              qword ptr [rsp + 11720], rax;        jmp   n815_call_builtin_icon_α
n814_lit_string_β:      mov              r11, 539;                            jmp   n460_disjunction_af
.Lx1388_0:              .quad            .Lx1388_0_s
.Lx1388_0_s:            .string          "3e500"
#-----------------------------------------------------------------------------------------------------------------------
n815_call_builtin_icon_α:
                        mov              r11, 540
                        mov              rax, qword ptr [rsp + 11712]
                        mov              qword ptr [rsp + 11680], rax
                        mov              rax, qword ptr [rsp + 11720]
                        mov              qword ptr [rsp + 11688], rax
                        .section         .rodata
.Lrkfn1390:             .string          "numeric"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1390]
                        lea              rsi, [rsp + 11680]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 11664], rax
                        mov              qword ptr [rsp + 11672], rdx
                        cmp              al, 104;                             je    n460_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n816_call_proc_staged_α
n815_call_builtin_icon_β:
                        mov              r11, 540;                            jmp   n460_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n816_call_proc_staged_α:
                        mov              r11, 541
                        lea              rsi, [rsp + 11664]
                        call             Image_dcα;                           jmp   .Lx1392_2
.Lx1392_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1392_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 11616], rax
                        mov              qword ptr [rsp + 11624], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 11616]
                        mov              rdx, qword ptr [rsp + 11624]
.Lx1392_29:             mov              qword ptr [rsp + 11616], rax
                        mov              qword ptr [rsp + 11624], rdx
                        cmp              al, 104;                             je    n460_disjunction_af
                                                                              jmp   n460_disjunction_as
n816_call_proc_staged_β:
                        mov              r11, 541;                            jmp   n460_disjunction_af
.Lx1392_0:              .quad            .Lx1392_0_s
.Lx1392_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n817_lit_string_α:      mov              r11, 542
                        mov              qword ptr [rsp + 11968], 2           # result
                        mov              dword ptr [rsp + 11972], 4
                        mov              rax, qword ptr [rip + .Lx1393_0]
                        mov              qword ptr [rsp + 11976], rax;        jmp   n457_disjunction_as
n817_lit_string_β:      mov              r11, 542;                            jmp   n457_disjunction_af
.Lx1393_0:              .quad            .Lx1393_0_s
.Lx1393_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n818_lit_string_α:      mov              r11, 543
                        mov              qword ptr [rsp + 11952], 2           # result
                        mov              dword ptr [rsp + 11956], 2
                        mov              rax, qword ptr [rip + .Lx1394_0]
                        mov              qword ptr [rsp + 11960], rax;        jmp   n819_call_builtin_icon_α
n818_lit_string_β:      mov              r11, 543;                            jmp   n457_disjunction_af
.Lx1394_0:              .quad            .Lx1394_0_s
.Lx1394_0_s:            .string          "e2"
#-----------------------------------------------------------------------------------------------------------------------
n819_call_builtin_icon_α:
                        mov              r11, 544
                        mov              rax, qword ptr [rsp + 11952]
                        mov              qword ptr [rsp + 11920], rax
                        mov              rax, qword ptr [rsp + 11960]
                        mov              qword ptr [rsp + 11928], rax
                        .section         .rodata
.Lrkfn1396:             .string          "numeric"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1396]
                        lea              rsi, [rsp + 11920]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 11904], rax
                        mov              qword ptr [rsp + 11912], rdx
                        cmp              al, 104;                             je    n457_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n820_call_proc_staged_α
n819_call_builtin_icon_β:
                        mov              r11, 544;                            jmp   n457_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n820_call_proc_staged_α:
                        mov              r11, 545
                        lea              rsi, [rsp + 11904]
                        call             Image_dcα;                           jmp   .Lx1398_2
.Lx1398_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1398_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 11856], rax
                        mov              qword ptr [rsp + 11864], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 11856]
                        mov              rdx, qword ptr [rsp + 11864]
.Lx1398_29:             mov              qword ptr [rsp + 11856], rax
                        mov              qword ptr [rsp + 11864], rdx
                        cmp              al, 104;                             je    n457_disjunction_af
                                                                              jmp   n457_disjunction_as
n820_call_proc_staged_β:
                        mov              r11, 545;                            jmp   n457_disjunction_af
.Lx1398_0:              .quad            .Lx1398_0_s
.Lx1398_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n821_lit_string_α:      mov              r11, 546
                        mov              qword ptr [rsp + 12208], 2           # result
                        mov              dword ptr [rsp + 12212], 4
                        mov              rax, qword ptr [rip + .Lx1399_0]
                        mov              qword ptr [rsp + 12216], rax;        jmp   n454_disjunction_as
n821_lit_string_β:      mov              r11, 546;                            jmp   n454_disjunction_af
.Lx1399_0:              .quad            .Lx1399_0_s
.Lx1399_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n822_lit_string_α:      mov              r11, 547
                        mov              qword ptr [rsp + 12192], 2           # result
                        mov              dword ptr [rsp + 12196], 4
                        mov              rax, qword ptr [rip + .Lx1400_0]
                        mov              qword ptr [rsp + 12200], rax;        jmp   n823_call_builtin_icon_α
n822_lit_string_β:      mov              r11, 547;                            jmp   n454_disjunction_af
.Lx1400_0:              .quad            .Lx1400_0_s
.Lx1400_0_s:            .string          " . 3"
#-----------------------------------------------------------------------------------------------------------------------
n823_call_builtin_icon_α:
                        mov              r11, 548
                        mov              rax, qword ptr [rsp + 12192]
                        mov              qword ptr [rsp + 12160], rax
                        mov              rax, qword ptr [rsp + 12200]
                        mov              qword ptr [rsp + 12168], rax
                        .section         .rodata
.Lrkfn1402:             .string          "numeric"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1402]
                        lea              rsi, [rsp + 12160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 12144], rax
                        mov              qword ptr [rsp + 12152], rdx
                        cmp              al, 104;                             je    n454_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n824_call_proc_staged_α
n823_call_builtin_icon_β:
                        mov              r11, 548;                            jmp   n454_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n824_call_proc_staged_α:
                        mov              r11, 549
                        lea              rsi, [rsp + 12144]
                        call             Image_dcα;                           jmp   .Lx1404_2
.Lx1404_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1404_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 12096], rax
                        mov              qword ptr [rsp + 12104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 12096]
                        mov              rdx, qword ptr [rsp + 12104]
.Lx1404_29:             mov              qword ptr [rsp + 12096], rax
                        mov              qword ptr [rsp + 12104], rdx
                        cmp              al, 104;                             je    n454_disjunction_af
                                                                              jmp   n454_disjunction_as
n824_call_proc_staged_β:
                        mov              r11, 549;                            jmp   n454_disjunction_af
.Lx1404_0:              .quad            .Lx1404_0_s
.Lx1404_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
p2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
p2_β:
                                                                              jmp   p2_ω
#-----------------------------------------------------------------------------------------------------------------------
p2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 12280]
                        add              rsp, 12304;                          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
p2_ω:
                        mov              rcx, qword ptr [rsp + 12288]
                        add              rsp, 12304;                          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
p2_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx1405_2]
                        lea              rdx, [rip + .Lx1405_3];              jmp   FN__p2
.Lx1405_2:              pop              r11
                        pop              r11;                                 jmp   r11
.Lx1405_3:              pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__p3:
                        sub              rsp, 1040
                        mov              qword ptr [rsp + 1016], rcx
                        mov              qword ptr [rsp + 1024], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
p3_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1406_lit_string_α:     mov              r11, 550
                        mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 16
                        mov              rax, qword ptr [rip + .Lx1435_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n1407_disjunction_α
.Lx1435_0:              .quad            .Lx1435_0_s
.Lx1435_0_s:            .string          "copy(1.0) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1407_disjunction_α:    mov              r11, 551
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              dword ptr [rsp + 848], 0;            jmp   n1432_lit_real_α
n1407_disjunction_as:   mov              r11, 551
                        mov              eax, dword ptr [rsp + 848]
                        cmp              eax, 0;                              jne   .Lx1437_0
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 840], rax;          jmp   n1408_call_builtin_icon_α
.Lx1437_0:              cmp              eax, 1;                              jne   .Lx1437_1
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 840], rax;          jmp   n1408_call_builtin_icon_α
.Lx1437_1:                                                                    jmp   n1408_call_builtin_icon_α
n1407_disjunction_β:    mov              r11, 551
                        mov              eax, dword ptr [rsp + 848]
                        cmp              eax, 0;                              je    n1407_disjunction_af
                                                                              jmp   n1407_disjunction_af
n1407_disjunction_af:   mov              r11, 551
                        add              dword ptr [rsp + 848], 1
                        mov              eax, dword ptr [rsp + 848]
                        cmp              eax, 1;                              je    n1431_lit_string_α
                                                                              jmp   n1409_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1408_call_builtin_icon_α:
                        mov              r11, 552
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 792], rax
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 776], rax
                        .section         .rodata
.Lrkfn1439:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1439]
                        lea              rsi, [rsp + 768]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              al, 104;                             je    n1407_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1409_lit_string_α
n1408_call_builtin_icon_β:
                        mov              r11, 552;                            jmp   n1407_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1409_lit_string_α:     mov              r11, 553
                        mov              qword ptr [rsp + 544], 2             # result
                        mov              dword ptr [rsp + 548], 23
                        mov              rax, qword ptr [rip + .Lx1440_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n1410_disjunction_α
.Lx1440_0:              .quad            .Lx1440_0_s
.Lx1440_0_s:            .string          "trim(3.14159,58) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1410_disjunction_α:    mov              r11, 554
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              dword ptr [rsp + 576], 0;            jmp   n1427_lit_real_α
n1410_disjunction_as:   mov              r11, 554
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 0;                              jne   .Lx1442_0
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax;          jmp   n1411_call_builtin_icon_α
.Lx1442_0:              cmp              eax, 1;                              jne   .Lx1442_1
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 568], rax;          jmp   n1411_call_builtin_icon_α
.Lx1442_1:                                                                    jmp   n1411_call_builtin_icon_α
n1410_disjunction_β:    mov              r11, 554
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 0;                              je    n1410_disjunction_af
                                                                              jmp   n1410_disjunction_af
n1410_disjunction_af:   mov              r11, 554
                        add              dword ptr [rsp + 576], 1
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 1;                              je    n1426_lit_string_α
                                                                              jmp   n1412_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1411_call_builtin_icon_α:
                        mov              r11, 555
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 520], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 504], rax
                        .section         .rodata
.Lrkfn1444:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1444]
                        lea              rsi, [rsp + 496]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n1410_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1412_lit_string_α
n1411_call_builtin_icon_β:
                        mov              r11, 555;                            jmp   n1410_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1412_lit_string_α:     mov              r11, 556
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 18
                        mov              rax, qword ptr [rip + .Lx1445_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n1413_disjunction_α
.Lx1445_0:              .quad            .Lx1445_0_s
.Lx1445_0_s:            .string          "Image(2e13) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1413_disjunction_α:    mov              r11, 557
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              dword ptr [rsp + 336], 0;            jmp   n1423_lit_real_α
n1413_disjunction_as:   mov              r11, 557
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 0;                              jne   .Lx1447_0
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax;          jmp   n1414_call_builtin_icon_α
.Lx1447_0:              cmp              eax, 1;                              jne   .Lx1447_1
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 328], rax;          jmp   n1414_call_builtin_icon_α
.Lx1447_1:                                                                    jmp   n1414_call_builtin_icon_α
n1413_disjunction_β:    mov              r11, 557
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 0;                              je    n1413_disjunction_af
                                                                              jmp   n1413_disjunction_af
n1413_disjunction_af:   mov              r11, 557
                        add              dword ptr [rsp + 336], 1
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 1;                              je    n1422_lit_string_α
                                                                              jmp   n1415_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1414_call_builtin_icon_α:
                        mov              r11, 558
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn1449:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1449]
                        lea              rsi, [rsp + 256]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n1413_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1415_lit_string_α
n1414_call_builtin_icon_β:
                        mov              r11, 558;                            jmp   n1413_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1415_lit_string_α:     mov              r11, 559
                        mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 20
                        mov              rax, qword ptr [rip + .Lx1450_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n1416_disjunction_α
.Lx1450_0:              .quad            .Lx1450_0_s
.Lx1450_0_s:            .string          "Image(0.0006) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1416_disjunction_α:    mov              r11, 560
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              dword ptr [rsp + 96], 0;             jmp   n1419_lit_real_α
n1416_disjunction_as:   mov              r11, 560
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 0;                              jne   .Lx1452_0
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax;           jmp   n1417_call_builtin_icon_α
.Lx1452_0:              cmp              eax, 1;                              jne   .Lx1452_1
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 88], rax;           jmp   n1417_call_builtin_icon_α
.Lx1452_1:                                                                    jmp   n1417_call_builtin_icon_α
n1416_disjunction_β:    mov              r11, 560
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 0;                              je    n1416_disjunction_af
                                                                              jmp   n1416_disjunction_af
n1416_disjunction_af:   mov              r11, 560
                        add              dword ptr [rsp + 96], 1
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 1;                              je    n1418_lit_string_α
                                                                              jmp   p3_ω
#-----------------------------------------------------------------------------------------------------------------------
n1417_call_builtin_icon_α:
                        mov              r11, 561
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn1454:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1454]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    n1416_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   p3_γ
n1417_call_builtin_icon_β:
                        mov              r11, 561;                            jmp   n1416_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1418_lit_string_α:     mov              r11, 562
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 4
                        mov              rax, qword ptr [rip + .Lx1455_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n1416_disjunction_as
n1418_lit_string_β:     mov              r11, 562;                            jmp   n1416_disjunction_af
.Lx1455_0:              .quad            .Lx1455_0_s
.Lx1455_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1419_lit_real_α:       mov              r11, 563
                        mov              qword ptr [rsp + 208], 5             # result
                        mov              rax, qword ptr [rip + .Lx1456_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n1420_call_proc_staged_α
n1419_lit_real_β:       mov              r11, 563;                            jmp   n1416_disjunction_af
.Lx1456_0:              .quad            4558673246493684321
#-----------------------------------------------------------------------------------------------------------------------
n1420_call_proc_staged_α:
                        mov              r11, 564
                        lea              rsi, [rsp + 208]
                        call             Image_dcα;                           jmp   .Lx1458_2
.Lx1458_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1458_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
.Lx1458_29:             mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n1416_disjunction_af
                                                                              jmp   n1421_call_proc_staged_α
n1420_call_proc_staged_β:
                        mov              r11, 564;                            jmp   n1416_disjunction_af
.Lx1458_0:              .quad            .Lx1458_0_s
.Lx1458_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n1421_call_proc_staged_α:
                        mov              r11, 565
                        lea              rsi, [rsp + 160]
                        call             Image_dcα;                           jmp   .Lx1460_2
.Lx1460_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1460_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
.Lx1460_29:             mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n1416_disjunction_af
                                                                              jmp   n1416_disjunction_as
n1421_call_proc_staged_β:
                        mov              r11, 565;                            jmp   n1416_disjunction_af
.Lx1460_0:              .quad            .Lx1460_0_s
.Lx1460_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n1422_lit_string_α:     mov              r11, 566
                        mov              qword ptr [rsp + 464], 2             # result
                        mov              dword ptr [rsp + 468], 4
                        mov              rax, qword ptr [rip + .Lx1461_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n1413_disjunction_as
n1422_lit_string_β:     mov              r11, 566;                            jmp   n1413_disjunction_af
.Lx1461_0:              .quad            .Lx1461_0_s
.Lx1461_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1423_lit_real_α:       mov              r11, 567
                        mov              qword ptr [rsp + 448], 5             # result
                        mov              rax, qword ptr [rip + .Lx1462_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n1424_call_proc_staged_α
n1423_lit_real_β:       mov              r11, 567;                            jmp   n1413_disjunction_af
.Lx1462_0:              .quad            4805957202776948736
#-----------------------------------------------------------------------------------------------------------------------
n1424_call_proc_staged_α:
                        mov              r11, 568
                        lea              rsi, [rsp + 448]
                        call             Image_dcα;                           jmp   .Lx1464_2
.Lx1464_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1464_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
.Lx1464_29:             mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n1413_disjunction_af
                                                                              jmp   n1425_call_proc_staged_α
n1424_call_proc_staged_β:
                        mov              r11, 568;                            jmp   n1413_disjunction_af
.Lx1464_0:              .quad            .Lx1464_0_s
.Lx1464_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n1425_call_proc_staged_α:
                        mov              r11, 569
                        lea              rsi, [rsp + 400]
                        call             Image_dcα;                           jmp   .Lx1466_2
.Lx1466_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1466_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
.Lx1466_29:             mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n1413_disjunction_af
                                                                              jmp   n1413_disjunction_as
n1425_call_proc_staged_β:
                        mov              r11, 569;                            jmp   n1413_disjunction_af
.Lx1466_0:              .quad            .Lx1466_0_s
.Lx1466_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n1426_lit_string_α:     mov              r11, 570
                        mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], 4
                        mov              rax, qword ptr [rip + .Lx1467_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n1410_disjunction_as
n1426_lit_string_β:     mov              r11, 570;                            jmp   n1410_disjunction_af
.Lx1467_0:              .quad            .Lx1467_0_s
.Lx1467_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1427_lit_real_α:       mov              r11, 571
                        mov              qword ptr [rsp + 704], 5             # result
                        mov              rax, qword ptr [rip + .Lx1468_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n1428_lit_integer_α
n1427_lit_real_β:       mov              r11, 571;                            jmp   n1410_disjunction_af
.Lx1468_0:              .quad            4614256650576692846
#-----------------------------------------------------------------------------------------------------------------------
n1428_lit_integer_α:    mov              r11, 572
                        mov              qword ptr [rsp + 720], 3             # result
                        mov              rax, qword ptr [rip + .Lx1469_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n1429_call_builtin_icon_α
.Lx1469_0:              .quad            58
#-----------------------------------------------------------------------------------------------------------------------
n1429_call_builtin_icon_α:
                        mov              r11, 573
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 680], rax
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 664], rax
                        .section         .rodata
.Lrkfn1471:             .string          "trim"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1471]
                        lea              rsi, [rsp + 656]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              al, 104;                             je    n1410_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1430_call_proc_staged_α
n1429_call_builtin_icon_β:
                        mov              r11, 573;                            jmp   n1410_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1430_call_proc_staged_α:
                        mov              r11, 574
                        lea              rsi, [rsp + 640]
                        call             Image_dcα;                           jmp   .Lx1473_2
.Lx1473_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1473_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
.Lx1473_29:             mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n1410_disjunction_af
                                                                              jmp   n1410_disjunction_as
n1430_call_proc_staged_β:
                        mov              r11, 574;                            jmp   n1410_disjunction_af
.Lx1473_0:              .quad            .Lx1473_0_s
.Lx1473_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
n1431_lit_string_α:     mov              r11, 575
                        mov              qword ptr [rsp + 976], 2             # result
                        mov              dword ptr [rsp + 980], 4
                        mov              rax, qword ptr [rip + .Lx1474_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n1407_disjunction_as
n1431_lit_string_β:     mov              r11, 575;                            jmp   n1407_disjunction_af
.Lx1474_0:              .quad            .Lx1474_0_s
.Lx1474_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1432_lit_real_α:       mov              r11, 576
                        mov              qword ptr [rsp + 960], 5             # result
                        mov              rax, qword ptr [rip + .Lx1475_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n1433_call_builtin_icon_α
n1432_lit_real_β:       mov              r11, 576;                            jmp   n1407_disjunction_af
.Lx1475_0:              .quad            4607182418800017408
#-----------------------------------------------------------------------------------------------------------------------
n1433_call_builtin_icon_α:
                        mov              r11, 577
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 936], rax
                        .section         .rodata
.Lrkfn1477:             .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1477]
                        lea              rsi, [rsp + 928]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    n1407_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1434_call_proc_staged_α
n1433_call_builtin_icon_β:
                        mov              r11, 577;                            jmp   n1407_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1434_call_proc_staged_α:
                        mov              r11, 578
                        lea              rsi, [rsp + 912]
                        call             Image_dcα;                           jmp   .Lx1479_2
.Lx1479_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1479_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 864]
                        mov              rdx, qword ptr [rsp + 872]
.Lx1479_29:             mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              al, 104;                             je    n1407_disjunction_af
                                                                              jmp   n1407_disjunction_as
n1434_call_proc_staged_β:
                        mov              r11, 578;                            jmp   n1407_disjunction_af
.Lx1479_0:              .quad            .Lx1479_0_s
.Lx1479_0_s:            .string          "Image"
#-----------------------------------------------------------------------------------------------------------------------
p3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
p3_β:
                                                                              jmp   p3_ω
#-----------------------------------------------------------------------------------------------------------------------
p3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1016]
                        add              rsp, 1040;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
p3_ω:
                        mov              rcx, qword ptr [rsp + 1024]
                        add              rsp, 1040;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
p3_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx1480_2]
                        lea              rdx, [rip + .Lx1480_3];              jmp   FN__p3
.Lx1480_2:              pop              r11
                        pop              r11;                                 jmp   r11
.Lx1480_3:              pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__Image:
                        sub              rsp, 2000
                        mov              qword ptr [rsp + 1976], rcx
                        mov              qword ptr [rsp + 1984], rdx
                        mov              rdi, rsp
                        add              rdi, 1808
                        xor              eax, eax
                        mov              ecx, 64
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 4
                        call             rt_icn_zframe_args_install@PLT
Image_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1481_lit_integer_α:    mov              r11, 579
                        mov              qword ptr [rsp + 1792], 3            # result
                        mov              rax, qword ptr [rip + .Lx1570_0]
                        mov              qword ptr [rsp + 1800], rax;         jmp   n1482_assign_α
.Lx1570_0:              .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n1482_assign_α:         mov              r11, 580
                        mov              rax, qword ptr [rsp + 1792]
                        mov              rdx, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx;         jmp   n1483_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1483_disjunction_α:    mov              r11, 581
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              dword ptr [rsp + 48], 0;             jmp   n1563_var_α
n1483_disjunction_as:   mov              r11, 581
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              jne   .Lx1573_0
                                                                              jmp   Image_γ
.Lx1573_0:              cmp              eax, 1;                              jne   .Lx1573_1
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 40], rax;           jmp   Image_γ
.Lx1573_1:                                                                    jmp   Image_γ
n1483_disjunction_β:    mov              r11, 581
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              je    Image_ω
                                                                              jmp   n1487_scan_β
n1483_disjunction_af:   mov              r11, 581
                        add              dword ptr [rsp + 48], 1
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 1;                              je    n1484_var_α
                                                                              jmp   Image_ω
#-----------------------------------------------------------------------------------------------------------------------
n1484_var_α:            mov              r11, 582
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n1485_scan_enter_α
n1484_var_β:            mov              r11, 582;                            jmp   Image_ω
#-----------------------------------------------------------------------------------------------------------------------
n1485_scan_enter_α:     mov              r11, 583
                        mov              rdi, qword ptr [rsp + 1776]
                        mov              rsi, qword ptr [rsp + 1784]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n1486_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1486_disjunction_α:    mov              r11, 584
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              dword ptr [rsp + 320], 0;            jmp   n1546_lit_charset_α
n1486_disjunction_as:   mov              r11, 584
                        mov              eax, dword ptr [rsp + 320]
                        cmp              eax, 0;                              jne   .Lx1579_0
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 312], rax;          jmp   n1487_scan_α
.Lx1579_0:              cmp              eax, 1;                              jne   .Lx1579_1
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 312], rax;          jmp   n1487_scan_α
.Lx1579_1:                                                                    jmp   n1487_scan_α
n1486_disjunction_β:    mov              r11, 584
                        mov              eax, dword ptr [rsp + 320]
                        cmp              eax, 0;                              je    n1562_scan_α
                                                                              jmp   n1492_disjunction_β
n1486_disjunction_af:   mov              r11, 584
                        add              dword ptr [rsp + 320], 1
                        mov              eax, dword ptr [rsp + 320]
                        cmp              eax, 1;                              je    n1489_disjunction_α
                                                                              jmp   n1562_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n1487_scan_α:           mov              r11, 585
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                        lea              rdi, [rsp + 240]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 240]
                        mov              r14, qword ptr [rsp + 248]
                        mov              r15, qword ptr [rsp + 256];          jmp   n1483_disjunction_as
n1487_scan_β:           mov              r11, 585
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_reenter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r14, rax;                            jmp   n1486_disjunction_β
                                                                              jmp   Image_ω
#-----------------------------------------------------------------------------------------------------------------------
n1488_conjunction_α:    mov              r11, 586;                            jmp   n1486_disjunction_as
n1488_conjunction_β:    mov              r11, 586;                            jmp   n1562_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n1489_disjunction_α:    mov              r11, 587
                        mov              qword ptr [rsp + 1664], 0
                        mov              qword ptr [rsp + 1672], 0
                        mov              dword ptr [rsp + 1680], 0;           jmp   n1542_var_α
n1489_disjunction_as:   mov              r11, 587
                        mov              eax, dword ptr [rsp + 1680]
                        cmp              eax, 0;                              jne   .Lx1584_0
                        mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n1490_scan_tab_α
.Lx1584_0:              cmp              eax, 1;                              jne   .Lx1584_1
                        mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n1490_scan_tab_α
.Lx1584_1:                                                                    jmp   n1490_scan_tab_α
n1489_disjunction_β:    mov              r11, 587
                        mov              eax, dword ptr [rsp + 1680]
                        cmp              eax, 0;                              je    n1489_disjunction_af
                                                                              jmp   n1489_disjunction_af
n1489_disjunction_af:   mov              r11, 587
                        add              dword ptr [rsp + 1680], 1
                        mov              eax, dword ptr [rsp + 1680]
                        cmp              eax, 1;                              je    n1541_lit_integer_α
                                                                              jmp   n1492_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1490_scan_tab_α:       mov              r11, 588
                        mov              rax, qword ptr [rsp + 1672]
                        cmp              rax, 1;                              jge   .Lx1586_0
                        add              rax, r15
                        add              rax, 1
.Lx1586_0:              cmp              rax, 1;                              jl    n1489_disjunction_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n1489_disjunction_β
                        mov              qword ptr [rsp + 1648], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             rcx
                        push             rcx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        pop              rcx
                        pop              rcx
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx;         jmp   n1491_assign_α
n1490_scan_tab_β:       mov              r11, 588
                        mov              r14, qword ptr [rsp + 1648];         jmp   n1489_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1491_assign_α:         mov              r11, 589
                        mov              rax, qword ptr [rsp + 1632]
                        mov              rdx, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx;         jmp   n1492_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1492_disjunction_α:    mov              r11, 590
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              dword ptr [rsp + 752], 0;            jmp   n1512_lit_charset_α
n1492_disjunction_as:   mov              r11, 590
                        mov              eax, dword ptr [rsp + 752]
                        cmp              eax, 0;                              jne   .Lx1589_0
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 744], rax;          jmp   n1493_conjunction_α
.Lx1589_0:              cmp              eax, 1;                              jne   .Lx1589_1
                                                                              jmp   n1493_conjunction_α
.Lx1589_1:                                                                    jmp   n1493_conjunction_α
n1492_disjunction_β:    mov              r11, 590
                        mov              eax, dword ptr [rsp + 752]
                        cmp              eax, 0;                              je    n1562_scan_α
                                                                              jmp   n1562_scan_α
n1492_disjunction_af:   mov              r11, 590
                        add              dword ptr [rsp + 752], 1
                        mov              eax, dword ptr [rsp + 752]
                        cmp              eax, 1;                              je    n1496_disjunction_α
                                                                              jmp   n1562_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n1493_conjunction_α:    mov              r11, 591
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 728], rax;          jmp   n1486_disjunction_as
n1493_conjunction_β:    mov              r11, 591;                            jmp   n1562_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n1494_conjunction_α:    mov              r11, 592;                            jmp   n1492_disjunction_as
n1494_conjunction_β:    mov              r11, 592;                            jmp   n1562_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n1495_scan_α:           mov              r11, 593
                        lea              rdi, [rsp + 784]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 784]
                        mov              r14, qword ptr [rsp + 792]
                        mov              r15, qword ptr [rsp + 800];          jmp   n1492_disjunction_as
n1495_scan_β:           mov              r11, 593;                            jmp   n1562_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n1496_disjunction_α:    mov              r11, 594
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              dword ptr [rsp + 1376], 0;           jmp   n1497_var_ref_α
n1496_disjunction_as:   mov              r11, 594
                        mov              eax, dword ptr [rsp + 1376]
                        cmp              eax, 0;                              jne   .Lx1595_0
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n1510_var_α
.Lx1595_0:                                                                    jmp   n1510_var_α
n1496_disjunction_β:    mov              r11, 594
                        mov              eax, dword ptr [rsp + 1376];         jmp   n1504_disjunction_β
n1496_disjunction_af:   mov              r11, 594
                        add              dword ptr [rsp + 1376], 1
                        mov              eax, dword ptr [rsp + 1376];         jmp   n1510_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1497_var_ref_α:        mov              r11, 595
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1840]
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx;         jmp   n1498_lit_integer_α
n1497_var_ref_β:        mov              r11, 595;                            jmp   n1496_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1498_lit_integer_α:    mov              r11, 596
                        mov              qword ptr [rsp + 1568], 3            # result
                        mov              rax, qword ptr [rip + .Lx1598_0]
                        mov              qword ptr [rsp + 1576], rax;         jmp   n1499_subscript_α
.Lx1598_0:              .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n1499_subscript_α:      mov              r11, 597
                        mov              rdi, qword ptr [rsp + 1552]
                        mov              rsi, qword ptr [rsp + 1560]
                        mov              rdx, qword ptr [rsp + 1568]
                        mov              rcx, qword ptr [rsp + 1576]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n1496_disjunction_af
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx;         jmp   n1500_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n1500_deref_α:          mov              r11, 598
                        mov              rdi, qword ptr [rsp + 1584]
                        mov              rsi, qword ptr [rsp + 1592]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n1496_disjunction_af
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx;         jmp   n1501_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1501_lit_string_α:     mov              r11, 599
                        mov              qword ptr [rsp + 1616], 2            # result
                        mov              dword ptr [rsp + 1620], 1
                        mov              rax, qword ptr [rip + .Lx1601_0]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n1502_binop_test_α
.Lx1601_0:              .quad            .Lx1601_0_s
.Lx1601_0_s:            .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n1502_binop_test_α:     mov              r11, 600
                        mov              rdi, qword ptr [rsp + 1600]
                        mov              rsi, qword ptr [rsp + 1608]
                        mov              rdx, qword ptr [rsp + 1616]
                        mov              rcx, qword ptr [rsp + 1624]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n1496_disjunction_af
                        mov              rdi, qword ptr [rsp + 1616]
                        mov              rsi, qword ptr [rsp + 1624]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1503_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1503_var_α:            mov              r11, 601
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n1504_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1504_disjunction_α:    mov              r11, 602
                        mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              dword ptr [rsp + 1456], 0;           jmp   n1508_lit_integer_α
n1504_disjunction_as:   mov              r11, 602
                        mov              eax, dword ptr [rsp + 1456]
                        cmp              eax, 0;                              jne   .Lx1606_0
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n1505_binop_α
.Lx1606_0:              cmp              eax, 1;                              jne   .Lx1606_1
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n1505_binop_α
.Lx1606_1:                                                                    jmp   n1505_binop_α
n1504_disjunction_β:    mov              r11, 602
                        mov              eax, dword ptr [rsp + 1456]
                        cmp              eax, 0;                              je    n1504_disjunction_af
                                                                              jmp   n1504_disjunction_af
n1504_disjunction_af:   mov              r11, 602
                        add              dword ptr [rsp + 1456], 1
                        mov              eax, dword ptr [rsp + 1456]
                        cmp              eax, 1;                              je    n1507_lit_string_α
                                                                              jmp   n1510_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1505_binop_α:          mov              r11, 603
                        mov              rdi, qword ptr [rsp + 1840]
                        mov              rsi, qword ptr [rsp + 1848]
                        mov              rdx, qword ptr [rsp + 1440]
                        mov              rcx, qword ptr [rsp + 1448]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1506_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1506_assign_α:         mov              r11, 604
                        mov              rax, qword ptr [rsp + 1408]
                        mov              rdx, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx;         jmp   n1496_disjunction_as
n1506_assign_β:         mov              r11, 604;                            jmp   n1510_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1507_lit_string_α:     mov              r11, 605
                        mov              qword ptr [rsp + 1520], 2            # result
                        mov              dword ptr [rsp + 1524], 1
                        mov              rax, qword ptr [rip + .Lx1609_0]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n1504_disjunction_as
n1507_lit_string_β:     mov              r11, 605;                            jmp   n1504_disjunction_af
.Lx1609_0:              .quad            .Lx1609_0_s
.Lx1609_0_s:            .string          "0"
#-----------------------------------------------------------------------------------------------------------------------
n1508_lit_integer_α:    mov              r11, 606
                        mov              qword ptr [rsp + 1504], 3            # result
                        mov              rax, qword ptr [rip + .Lx1610_0]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n1509_scan_move_α
n1508_lit_integer_β:    mov              r11, 606;                            jmp   n1504_disjunction_af
.Lx1610_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1509_scan_move_α:      mov              r11, 607
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n1504_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n1504_disjunction_af
                        mov              qword ptr [rsp + 1488], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             rcx
                        push             rcx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        pop              rcx
                        pop              rcx
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx;         jmp   n1504_disjunction_as
n1509_scan_move_β:      mov              r11, 607
                        mov              r14, qword ptr [rsp + 1488];         jmp   n1504_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1510_var_α:            mov              r11, 608
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n1511_return_α
#-----------------------------------------------------------------------------------------------------------------------
n1511_return_α:         mov              r11, 609
                        mov              rax, qword ptr [rsp + 1344]
                        mov              rdx, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   Image_γ
#-----------------------------------------------------------------------------------------------------------------------
n1512_lit_charset_α:    mov              r11, 610
                        mov              qword ptr [rsp + 1312], 2            # result
                        mov              dword ptr [rsp + 1316], -1
                        mov              rax, qword ptr [rip + .Lx1616_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n1513_scan_upto_α
n1512_lit_charset_β:    mov              r11, 610;                            jmp   n1492_disjunction_af
.Lx1616_0:              .quad            .Lx1616_0_s
.Lx1616_0_s:            .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n1513_scan_upto_α:      mov              r11, 611
                        mov              qword ptr [rsp + 1296], r14
.Lx1618_0:              mov              rax, qword ptr [rsp + 1296]
                        cmp              rax, r15;                            jge   n1492_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx1618_2]
                        push             rax
                        push             rcx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        pop              rcx
                        test             rax, rax
                        pop              rax;                                 je    .Lx1618_1
                        mov              qword ptr [rsp + 1280], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 1288], rax;         jmp   n1514_scan_tab_α
.Lx1618_1:              inc              qword ptr [rsp + 1296];              jmp   .Lx1618_0
n1513_scan_upto_β:      mov              r11, 611
                        inc              qword ptr [rsp + 1296];              jmp   .Lx1618_0
.Lx1618_2:              .quad            .Lx1618_2_s
.Lx1618_2_s:            .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n1514_scan_tab_α:       mov              r11, 612
                        mov              rax, qword ptr [rsp + 1288]
                        cmp              rax, 1;                              jge   .Lx1620_0
                        add              rax, r15
                        add              rax, 1
.Lx1620_0:              cmp              rax, 1;                              jl    n1513_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n1513_scan_upto_β
                        mov              qword ptr [rsp + 1264], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             rcx
                        push             rcx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        pop              rcx
                        pop              rcx
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx;         jmp   n1515_unop_α
n1514_scan_tab_β:       mov              r11, 612
                        mov              r14, qword ptr [rsp + 1264];         jmp   n1513_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n1515_unop_α:           mov              r11, 613
                        mov              rdi, qword ptr [rsp + 1248]
                        mov              rsi, qword ptr [rsp + 1256]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx;         jmp   n1516_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1516_assign_α:         mov              r11, 614
                        mov              rax, qword ptr [rsp + 1232]
                        mov              rdx, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx;         jmp   n1517_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1517_var_α:            mov              r11, 615
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n1518_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n1518_scan_enter_α:     mov              r11, 616
                        mov              rdi, qword ptr [rsp + 1216]
                        mov              rsi, qword ptr [rsp + 1224]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n1519_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1519_lit_integer_α:    mov              r11, 617
                        mov              qword ptr [rsp + 944], 3             # result
                        mov              rax, qword ptr [rip + .Lx1627_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n1520_scan_move_α
.Lx1627_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1520_scan_move_α:      mov              r11, 618
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    Image_ω
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    Image_ω
                        mov              qword ptr [rsp + 928], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             rcx
                        push             rcx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        pop              rcx
                        pop              rcx
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n1521_lit_string_α
n1520_scan_move_β:      mov              r11, 618
                        mov              r14, qword ptr [rsp + 928];          jmp   Image_ω
#-----------------------------------------------------------------------------------------------------------------------
n1521_lit_string_α:     mov              r11, 619
                        mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 1
                        mov              rax, qword ptr [rip + .Lx1630_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n1522_binop_α
.Lx1630_0:              .quad            .Lx1630_0_s
.Lx1630_0_s:            .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n1522_binop_α:          mov              r11, 620
                        mov              rdi, qword ptr [rsp + 912]
                        mov              rsi, qword ptr [rsp + 920]
                        mov              rdx, qword ptr [rsp + 960]
                        mov              rcx, qword ptr [rsp + 968]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1523_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1523_var_α:            mov              r11, 621
                        mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n1524_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1524_lit_integer_α:    mov              r11, 622
                        mov              qword ptr [rsp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Lx1634_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n1525_coerce_numeric_α
.Lx1634_0:              .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1525_coerce_numeric_α: mov              r11, 623
                        mov              eax, dword ptr [rsp + 1808]
                        cmp              al, 5;                               je    .Lx1636_1
                        cmp              al, 3;                               jne   .Lx1636_0
                        mov              eax, dword ptr [rsp + 1056]
                        cmp              al, 3;                               jne   .Lx1636_0
.Lx1636_1:              mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n1526_binop_α
.Lx1636_0:              lea              rdi, [rsp + 1808]
                        lea              rsi, [rsp + 1056]
                        lea              rdx, [rsp + 1024]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1526_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1526_binop_α:          mov              r11, 624
                        mov              eax, dword ptr [rsp + 1024]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1637_2
                        mov              rax, qword ptr [rsp + 1032]
                        mov              rdx, 3
                        sub              rax, rdx
                        mov              qword ptr [rsp + 1008], 3
                        mov              qword ptr [rsp + 1016], rax;         jmp   .Lx1637_7
.Lx1637_2:              and              edx, 1;                              jz    .Lx1637_0
                        mov              rsi, qword ptr [rsp + 1032]
                        mov              rdi, 3
                        cmp              al, 5;                               je    .Lx1637_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1637_4
.Lx1637_3:              movq             xmm0, rsi
.Lx1637_4:              cmp              cl, 5;                               je    .Lx1637_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1637_6
.Lx1637_5:              movq             xmm1, rdi
.Lx1637_6:              subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1008], 5
                        mov              qword ptr [rsp + 1016], rax
.Lx1637_7:                                                                    jmp   n1527_scan_move_α
.Lx1637_0:              mov              rdi, qword ptr [rsp + 1024]
                        mov              rsi, qword ptr [rsp + 1032]
                        mov              rdx, qword ptr [rsp + 1056]
                        mov              rcx, qword ptr [rsp + 1064]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             je    Image_ω
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1527_scan_move_α
#-----------------------------------------------------------------------------------------------------------------------
n1527_scan_move_α:      mov              r11, 625
                        mov              rax, qword ptr [rsp + 1016]
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    Image_ω
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    Image_ω
                        mov              qword ptr [rsp + 992], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             rcx
                        push             rcx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        pop              rcx
                        pop              rcx
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n1528_binop_α
n1527_scan_move_β:      mov              r11, 625
                        mov              r14, qword ptr [rsp + 992];          jmp   Image_ω
#-----------------------------------------------------------------------------------------------------------------------
n1528_binop_α:          mov              r11, 626
                        mov              rdi, qword ptr [rsp + 896]
                        mov              rsi, qword ptr [rsp + 904]
                        mov              rdx, qword ptr [rsp + 976]
                        mov              rcx, qword ptr [rsp + 984]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1529_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1529_lit_string_α:     mov              r11, 627
                        mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], 2
                        mov              rax, qword ptr [rip + .Lx1641_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n1530_binop_α
.Lx1641_0:              .quad            .Lx1641_0_s
.Lx1641_0_s:            .string          "e+"
#-----------------------------------------------------------------------------------------------------------------------
n1530_binop_α:          mov              r11, 628
                        mov              rdi, qword ptr [rsp + 880]
                        mov              rsi, qword ptr [rsp + 888]
                        mov              rdx, qword ptr [rsp + 1072]
                        mov              rcx, qword ptr [rsp + 1080]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1531_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1531_var_α:            mov              r11, 629
                        mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n1532_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1532_lit_integer_α:    mov              r11, 630
                        mov              qword ptr [rsp + 1184], 3            # result
                        mov              rax, qword ptr [rip + .Lx1645_0]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n1533_coerce_numeric_α
.Lx1645_0:              .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1533_coerce_numeric_α: mov              r11, 631
                        mov              eax, dword ptr [rsp + 1808]
                        cmp              al, 5;                               je    .Lx1647_1
                        cmp              al, 3;                               jne   .Lx1647_0
                        mov              eax, dword ptr [rsp + 1184]
                        cmp              al, 3;                               jne   .Lx1647_0
.Lx1647_1:              mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n1534_binop_α
.Lx1647_0:              lea              rdi, [rsp + 1808]
                        lea              rsi, [rsp + 1184]
                        lea              rdx, [rsp + 1152]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1534_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1534_binop_α:          mov              r11, 632
                        mov              eax, dword ptr [rsp + 1152]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1648_2
                        mov              rax, qword ptr [rsp + 1160]
                        mov              rdx, 3
                        sub              rax, rdx
                        mov              qword ptr [rsp + 1136], 3
                        mov              qword ptr [rsp + 1144], rax;         jmp   .Lx1648_7
.Lx1648_2:              and              edx, 1;                              jz    .Lx1648_0
                        mov              rsi, qword ptr [rsp + 1160]
                        mov              rdi, 3
                        cmp              al, 5;                               je    .Lx1648_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1648_4
.Lx1648_3:              movq             xmm0, rsi
.Lx1648_4:              cmp              cl, 5;                               je    .Lx1648_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1648_6
.Lx1648_5:              movq             xmm1, rdi
.Lx1648_6:              subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1136], 5
                        mov              qword ptr [rsp + 1144], rax
.Lx1648_7:                                                                    jmp   n1535_var_α
.Lx1648_0:              mov              rdi, qword ptr [rsp + 1152]
                        mov              rsi, qword ptr [rsp + 1160]
                        mov              rdx, qword ptr [rsp + 1184]
                        mov              rcx, qword ptr [rsp + 1192]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             je    Image_ω
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1535_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1535_var_α:            mov              r11, 633
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n1536_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n1536_coerce_numeric_α: mov              r11, 634
                        mov              eax, dword ptr [rsp + 1136]
                        cmp              al, 5;                               je    .Lx1652_1
                        cmp              al, 3;                               jne   .Lx1652_0
                        mov              eax, dword ptr [rsp + 1856]
                        cmp              al, 3;                               jne   .Lx1652_0
.Lx1652_1:              mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n1537_coerce_numeric_α
.Lx1652_0:              lea              rdi, [rsp + 1136]
                        lea              rsi, [rsp + 1856]
                        lea              rdx, [rsp + 1120]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1537_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n1537_coerce_numeric_α: mov              r11, 635
                        mov              eax, dword ptr [rsp + 1856]
                        cmp              al, 5;                               je    .Lx1654_1
                        cmp              al, 3;                               jne   .Lx1654_0
                        mov              eax, dword ptr [rsp + 1136]
                        cmp              al, 3;                               jne   .Lx1654_0
.Lx1654_1:              mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n1538_binop_α
.Lx1654_0:              lea              rdi, [rsp + 1856]
                        lea              rsi, [rsp + 1136]
                        lea              rdx, [rsp + 1104]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1538_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1538_binop_α:          mov              r11, 636
                        mov              eax, dword ptr [rsp + 1120]
                        mov              ecx, dword ptr [rsp + 1104]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1655_2
                        mov              rax, qword ptr [rsp + 1128]
                        mov              rdx, qword ptr [rsp + 1112]
                        add              rax, rdx
                        mov              qword ptr [rsp + 1088], 3
                        mov              qword ptr [rsp + 1096], rax;         jmp   .Lx1655_7
.Lx1655_2:              and              edx, 1;                              jz    .Lx1655_0
                        mov              rsi, qword ptr [rsp + 1128]
                        mov              rdi, qword ptr [rsp + 1112]
                        cmp              al, 5;                               je    .Lx1655_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1655_4
.Lx1655_3:              movq             xmm0, rsi
.Lx1655_4:              cmp              cl, 5;                               je    .Lx1655_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1655_6
.Lx1655_5:              movq             xmm1, rdi
.Lx1655_6:              addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1088], 5
                        mov              qword ptr [rsp + 1096], rax
.Lx1655_7:                                                                    jmp   n1539_binop_α
.Lx1655_0:              mov              rdi, qword ptr [rsp + 1120]
                        mov              rsi, qword ptr [rsp + 1128]
                        mov              rdx, qword ptr [rsp + 1104]
                        mov              rcx, qword ptr [rsp + 1112]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             je    Image_ω
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1539_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1539_binop_α:          mov              r11, 637
                        mov              rdi, qword ptr [rsp + 864]
                        mov              rsi, qword ptr [rsp + 872]
                        mov              rdx, qword ptr [rsp + 1088]
                        mov              rcx, qword ptr [rsp + 1096]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1540_return_α
#-----------------------------------------------------------------------------------------------------------------------
n1540_return_α:         mov              r11, 638
                        mov              rax, qword ptr [rsp + 848]
                        mov              rdx, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   Image_γ
#-----------------------------------------------------------------------------------------------------------------------
n1541_lit_integer_α:    mov              r11, 639
                        mov              qword ptr [rsp + 1760], 3            # result
                        mov              rax, qword ptr [rip + .Lx1658_0]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n1489_disjunction_as
n1541_lit_integer_β:    mov              r11, 639;                            jmp   n1489_disjunction_af
.Lx1658_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1542_var_α:            mov              r11, 640
                        mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n1543_lit_integer_α
n1542_var_β:            mov              r11, 640;                            jmp   n1489_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1543_lit_integer_α:    mov              r11, 641
                        mov              qword ptr [rsp + 1744], 3            # result
                        mov              rax, qword ptr [rip + .Lx1661_0]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n1544_coerce_numeric_α
.Lx1661_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1544_coerce_numeric_α: mov              r11, 642
                        mov              eax, dword ptr [rsp + 1808]
                        cmp              al, 5;                               je    .Lx1663_1
                        cmp              al, 3;                               jne   .Lx1663_0
                        mov              eax, dword ptr [rsp + 1744]
                        cmp              al, 3;                               jne   .Lx1663_0
.Lx1663_1:              mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n1545_binop_α
.Lx1663_0:              lea              rdi, [rsp + 1808]
                        lea              rsi, [rsp + 1744]
                        lea              rdx, [rsp + 1712]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1545_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1545_binop_α:          mov              r11, 643
                        mov              eax, dword ptr [rsp + 1712]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1664_2
                        mov              rax, qword ptr [rsp + 1720]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 1696], 3
                        mov              qword ptr [rsp + 1704], rax;         jmp   .Lx1664_7
.Lx1664_2:              and              edx, 1;                              jz    .Lx1664_0
                        mov              rsi, qword ptr [rsp + 1720]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1664_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1664_4
.Lx1664_3:              movq             xmm0, rsi
.Lx1664_4:              cmp              cl, 5;                               je    .Lx1664_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1664_6
.Lx1664_5:              movq             xmm1, rdi
.Lx1664_6:              subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1696], 5
                        mov              qword ptr [rsp + 1704], rax
.Lx1664_7:                                                                    jmp   n1489_disjunction_as
.Lx1664_0:              mov              rdi, qword ptr [rsp + 1712]
                        mov              rsi, qword ptr [rsp + 1720]
                        mov              rdx, qword ptr [rsp + 1744]
                        mov              rcx, qword ptr [rsp + 1752]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             je    n1489_disjunction_af
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1489_disjunction_as
n1545_binop_β:          mov              r11, 643;                            jmp   n1489_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1546_lit_charset_α:    mov              r11, 644
                        mov              qword ptr [rsp + 704], 2             # result
                        mov              dword ptr [rsp + 708], -1
                        mov              rax, qword ptr [rip + .Lx1665_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n1547_scan_upto_α
n1546_lit_charset_β:    mov              r11, 644;                            jmp   n1486_disjunction_af
.Lx1665_0:              .quad            .Lx1665_0_s
.Lx1665_0_s:            .string          "e"
#-----------------------------------------------------------------------------------------------------------------------
n1547_scan_upto_α:      mov              r11, 645
                        mov              qword ptr [rsp + 688], r14
.Lx1667_0:              mov              rax, qword ptr [rsp + 688]
                        cmp              rax, r15;                            jge   n1486_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx1667_2]
                        push             rax
                        push             rcx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        pop              rcx
                        test             rax, rax
                        pop              rax;                                 je    .Lx1667_1
                        mov              qword ptr [rsp + 672], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 680], rax;          jmp   n1548_scan_tab_α
.Lx1667_1:              inc              qword ptr [rsp + 688];               jmp   .Lx1667_0
n1547_scan_upto_β:      mov              r11, 645
                        inc              qword ptr [rsp + 688];               jmp   .Lx1667_0
.Lx1667_2:              .quad            .Lx1667_2_s
.Lx1667_2_s:            .string          "e"
#-----------------------------------------------------------------------------------------------------------------------
n1548_scan_tab_α:       mov              r11, 646
                        mov              rax, qword ptr [rsp + 680]
                        cmp              rax, 1;                              jge   .Lx1669_0
                        add              rax, r15
                        add              rax, 1
.Lx1669_0:              cmp              rax, 1;                              jl    n1547_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n1547_scan_upto_β
                        mov              qword ptr [rsp + 656], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             rcx
                        push             rcx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        pop              rcx
                        pop              rcx
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n1549_assign_α
n1548_scan_tab_β:       mov              r11, 646
                        mov              r14, qword ptr [rsp + 656];          jmp   n1547_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n1549_assign_α:         mov              r11, 647
                        mov              rax, qword ptr [rsp + 640]
                        mov              rdx, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx;         jmp   n1550_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1550_lit_integer_α:    mov              r11, 648
                        mov              qword ptr [rsp + 624], 3             # result
                        mov              rax, qword ptr [rip + .Lx1671_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n1551_scan_tab_α
.Lx1671_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1551_scan_tab_α:       mov              r11, 649
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lx1673_0
                        add              rax, r15
                        add              rax, 1
.Lx1673_0:              cmp              rax, 1;                              jl    n1553_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n1553_var_α
                        mov              qword ptr [rsp + 608], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             rcx
                        push             rcx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        pop              rcx
                        pop              rcx
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n1552_assign_α
n1551_scan_tab_β:       mov              r11, 649
                        mov              r14, qword ptr [rsp + 608];          jmp   n1553_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1552_assign_α:         mov              r11, 650
                        mov              rax, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 1824], rax
                        mov              qword ptr [rsp + 1832], rdx;         jmp   n1553_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1553_var_α:            mov              r11, 651
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 568], rax;          jmp   n1554_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n1554_scan_enter_α:     mov              r11, 652
                        mov              rdi, qword ptr [rsp + 560]
                        mov              rsi, qword ptr [rsp + 568]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n1555_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1555_disjunction_α:    mov              r11, 653
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              dword ptr [rsp + 496], 0;            jmp   n1561_var_α
n1555_disjunction_as:   mov              r11, 653
                        mov              eax, dword ptr [rsp + 496]
                        cmp              eax, 0;                              jne   .Lx1680_0
                        mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 488], rax;          jmp   n1556_scan_tab_α
.Lx1680_0:              cmp              eax, 1;                              jne   .Lx1680_1
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 488], rax;          jmp   n1556_scan_tab_α
.Lx1680_1:                                                                    jmp   n1556_scan_tab_α
n1555_disjunction_β:    mov              r11, 653
                        mov              eax, dword ptr [rsp + 496]
                        cmp              eax, 0;                              je    n1555_disjunction_af
                                                                              jmp   n1555_disjunction_af
n1555_disjunction_af:   mov              r11, 653
                        add              dword ptr [rsp + 496], 1
                        mov              eax, dword ptr [rsp + 496]
                        cmp              eax, 1;                              je    n1560_lit_integer_α
                                                                              jmp   Image_ω
#-----------------------------------------------------------------------------------------------------------------------
n1556_scan_tab_α:       mov              r11, 654
                        mov              rax, qword ptr [rsp + 488]
                        cmp              rax, 1;                              jge   .Lx1682_0
                        add              rax, r15
                        add              rax, 1
.Lx1682_0:              cmp              rax, 1;                              jl    n1555_disjunction_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n1555_disjunction_β
                        mov              qword ptr [rsp + 464], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             rcx
                        push             rcx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        pop              rcx
                        pop              rcx
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n1557_var_α
n1556_scan_tab_β:       mov              r11, 654
                        mov              r14, qword ptr [rsp + 464];          jmp   n1555_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1557_var_α:            mov              r11, 655
                        mov              rax, qword ptr [rsp + 1824]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 1832]
                        mov              qword ptr [rsp + 552], rax;          jmp   n1558_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1558_binop_α:          mov              r11, 656
                        mov              rdi, qword ptr [rsp + 448]
                        mov              rsi, qword ptr [rsp + 456]
                        mov              rdx, qword ptr [rsp + 1824]
                        mov              rcx, qword ptr [rsp + 1832]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1559_return_α
#-----------------------------------------------------------------------------------------------------------------------
n1559_return_α:         mov              r11, 657
                        mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   Image_γ
#-----------------------------------------------------------------------------------------------------------------------
n1560_lit_integer_α:    mov              r11, 658
                        mov              qword ptr [rsp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Lx1687_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n1555_disjunction_as
n1560_lit_integer_β:    mov              r11, 658;                            jmp   n1555_disjunction_af
.Lx1687_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1561_var_α:            mov              r11, 659
                        mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 520], rax;          jmp   n1555_disjunction_as
n1561_var_β:            mov              r11, 659;                            jmp   n1555_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1562_scan_α:           mov              r11, 660
                        lea              rdi, [rsp + 240]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 240]
                        mov              r14, qword ptr [rsp + 248]
                        mov              r15, qword ptr [rsp + 256];          jmp   Image_ω
n1562_scan_β:           mov              r11, 660;                            jmp   Image_ω
#-----------------------------------------------------------------------------------------------------------------------
n1563_var_α:            mov              r11, 661
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 200], rax;          jmp   n1564_call_builtin_icon_α
n1563_var_β:            mov              r11, 661;                            jmp   n1483_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1564_call_builtin_icon_α:
                        mov              r11, 662
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn1695:             .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1695]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n1483_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1565_lit_string_α
n1564_call_builtin_icon_β:
                        mov              r11, 662;                            jmp   n1483_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1565_lit_string_α:     mov              r11, 663
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 4
                        mov              rax, qword ptr [rip + .Lx1696_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n1566_binop_test_α
.Lx1696_0:              .quad            .Lx1696_0_s
.Lx1696_0_s:            .string          "real"
#-----------------------------------------------------------------------------------------------------------------------
n1566_binop_test_α:     mov              r11, 664
                        mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdx, qword ptr [rsp + 208]
                        mov              rcx, qword ptr [rsp + 216]
                        mov              r8d, 17
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n1483_disjunction_af
                        mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1567_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1567_var_α:            mov              r11, 665
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 120], rax;          jmp   n1568_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1568_call_builtin_icon_α:
                        mov              r11, 666
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax
                        .section         .rodata
.Lrkfn1701:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1701]
                        lea              rsi, [rsp + 80]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    Image_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1569_return_α
n1568_call_builtin_icon_β:
                        mov              r11, 666;                            jmp   Image_ω
#-----------------------------------------------------------------------------------------------------------------------
n1569_return_α:         mov              r11, 667
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   Image_γ
#-----------------------------------------------------------------------------------------------------------------------
Image_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
Image_β:
                                                                              jmp   Image_ω
#-----------------------------------------------------------------------------------------------------------------------
Image_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1976]
                        add              rsp, 2000;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
Image_ω:
                        mov              rcx, qword ptr [rsp + 1984]
                        add              rsp, 2000;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
Image_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx1703_2]
                        lea              rdx, [rip + .Lx1703_3];              jmp   FN__Image
.Lx1703_2:              pop              r11
                        pop              r11;                                 jmp   r11
.Lx1703_3:              pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 656
                        mov              qword ptr [rsp + 632], rcx
                        mov              qword ptr [rsp + 640], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1704_lit_string_α:     sub              rsp, 16
                        mov              r11, 668
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 56
                        mov              rax, qword ptr [rip + .Lx1723_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1705_call_builtin_icon_α
.Lx1723_0:              .quad            .Lx1723_0_s
.Lx1723_0_s:            .string          "This test of floating-point arithmetic is likely to show"
#-----------------------------------------------------------------------------------------------------------------------
n1705_call_builtin_icon_α:
                        sub              rsp, 16
                        mov              r11, 669
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1725:           .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1725]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1724_240
                        add              rsp, 16;                             jmp   n1706_lit_string_α
.Lx1724_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n1706_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1706_lit_string_α:     sub              rsp, 16
                        mov              r11, 670
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 60
                        mov              rax, qword ptr [rip + .Lx1726_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1707_call_builtin_icon_α
.Lx1726_0:              .quad            .Lx1726_0_s
.Lx1726_0_s:            .string          "differences from platform to platform because of differences"
#-----------------------------------------------------------------------------------------------------------------------
n1707_call_builtin_icon_α:
                        sub              rsp, 16
                        mov              r11, 671
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1728:           .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1728]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1727_240
                        add              rsp, 16;                             jmp   n1708_lit_string_α
.Lx1727_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n1708_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1708_lit_string_α:     sub              rsp, 16
                        mov              r11, 672
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 60
                        mov              rax, qword ptr [rip + .Lx1729_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1709_call_builtin_icon_α
.Lx1729_0:              .quad            .Lx1729_0_s
.Lx1729_0_s:            .string          "in floating-point precision and details of the routines that"
#-----------------------------------------------------------------------------------------------------------------------
n1709_call_builtin_icon_α:
                        sub              rsp, 16
                        mov              r11, 673
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1731:           .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1731]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1730_240
                        add              rsp, 16;                             jmp   n1710_lit_string_α
.Lx1730_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n1710_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1710_lit_string_α:     sub              rsp, 16
                        mov              r11, 674
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 57
                        mov              rax, qword ptr [rip + .Lx1732_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1711_call_builtin_icon_α
.Lx1732_0:              .quad            .Lx1732_0_s
.Lx1732_0_s:            .string          "convert floating-point numbers to strings.  If the values"
#-----------------------------------------------------------------------------------------------------------------------
n1711_call_builtin_icon_α:
                        sub              rsp, 16
                        mov              r11, 675
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1734:           .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1734]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1733_240
                        add              rsp, 16;                             jmp   n1712_lit_string_α
.Lx1733_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n1712_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1712_lit_string_α:     sub              rsp, 16
                        mov              r11, 676
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 63
                        mov              rax, qword ptr [rip + .Lx1735_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1713_call_builtin_icon_α
.Lx1735_0:              .quad            .Lx1735_0_s
.Lx1735_0_s:            .string          "produced in local tests are approximately the same in magnitude"
#-----------------------------------------------------------------------------------------------------------------------
n1713_call_builtin_icon_α:
                        sub              rsp, 16
                        mov              r11, 677
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1737:           .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1737]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1736_240
                        add              rsp, 16;                             jmp   n1714_lit_string_α
.Lx1736_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n1714_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1714_lit_string_α:     sub              rsp, 16
                        mov              r11, 678
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 65
                        mov              rax, qword ptr [rip + .Lx1738_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1715_call_builtin_icon_α
.Lx1738_0:              .quad            .Lx1738_0_s
.Lx1738_0_s:            .string          "as shown in the standard results, there's nothing to worry about."
#-----------------------------------------------------------------------------------------------------------------------
n1715_call_builtin_icon_α:
                        sub              rsp, 16
                        mov              r11, 679
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1740:           .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1740]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1739_240
                        add              rsp, 16;                             jmp   n1716_lit_string_α
.Lx1739_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n1716_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1716_lit_string_α:     sub              rsp, 16
                        mov              r11, 680
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 60
                        mov              rax, qword ptr [rip + .Lx1741_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1717_call_builtin_icon_α
.Lx1741_0:              .quad            .Lx1741_0_s
.Lx1741_0_s:            .string          "In addition, some platforms may show 0.0 as \"-0.0\".  You can"
#-----------------------------------------------------------------------------------------------------------------------
n1717_call_builtin_icon_α:
                        sub              rsp, 16
                        mov              r11, 681
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1743:           .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1743]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1742_240
                        add              rsp, 16;                             jmp   n1718_lit_string_α
.Lx1742_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n1718_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1718_lit_string_α:     sub              rsp, 16
                        mov              r11, 682
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 24
                        mov              rax, qword ptr [rip + .Lx1744_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1719_call_builtin_icon_α
.Lx1744_0:              .quad            .Lx1744_0_s
.Lx1744_0_s:            .string          "ignore this if you wish."
#-----------------------------------------------------------------------------------------------------------------------
n1719_call_builtin_icon_α:
                        sub              rsp, 16
                        mov              r11, 683
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1746:           .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1746]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1745_240
                        add              rsp, 16;                             jmp   n1720_call_proc_staged_α
.Lx1745_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n1720_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1720_call_proc_staged_α:
                        sub              rsp, 16
                        mov              r11, 684
                        call             p1_dcα;                              jmp   .Lx1748_2
.Lx1748_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1748_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx1748_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1748_240
                        add              rsp, 16;                             jmp   n1721_call_proc_staged_α
.Lx1748_240:                                                                  jmp   n1721_call_proc_staged_α
n1720_call_proc_staged_β:
                        mov              r11, 684;                            jmp   n1721_call_proc_staged_α
.Lx1748_0:              .quad            .Lx1748_0_s
.Lx1748_0_s:            .string          "p1"
#-----------------------------------------------------------------------------------------------------------------------
n1721_call_proc_staged_α:
                        sub              rsp, 16
                        mov              r11, 685
                        call             p2_dcα;                              jmp   .Lx1750_2
.Lx1750_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1750_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx1750_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1750_240
                        add              rsp, 16;                             jmp   n1722_call_proc_staged_α
.Lx1750_240:                                                                  jmp   n1722_call_proc_staged_α
n1721_call_proc_staged_β:
                        mov              r11, 685;                            jmp   n1722_call_proc_staged_α
.Lx1750_0:              .quad            .Lx1750_0_s
.Lx1750_0_s:            .string          "p2"
#-----------------------------------------------------------------------------------------------------------------------
n1722_call_proc_staged_α:
                        sub              rsp, 16
                        mov              r11, 686
                        call             p3_dcα;                              jmp   .Lx1752_2
.Lx1752_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1752_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx1752_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1752_240
                        add              rsp, 16
                        add              rsp, 288;                            jmp   main_ω
.Lx1752_240:            add              rsp, 304;                            jmp   main_γ
n1722_call_proc_staged_β:
                        mov              r11, 686;                            jmp   main_ω
.Lx1752_0:              .quad            .Lx1752_0_s
.Lx1752_0_s:            .string          "p3"
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
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "p1"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__p1
                        .quad            p1_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            5712
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "p2"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__p2
                        .quad            p2_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            12256
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "p3"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__p3
                        .quad            p3_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            992
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "Image"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__Image
                        .quad            Image_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            1872
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
