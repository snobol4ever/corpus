                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__if_ok:
                        sub              rsp, 192
                        mov              qword ptr [rsp + 168], rcx
                        mov              qword ptr [rsp + 176], rdx
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
if_ok_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:       mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              dword ptr [rsp + 48], 0;             jmp   n4_var_α
n0_disjunction_as:      mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              jne   .Lx8_0
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax;           jmp   n1_return_α
.Lx8_0:                 cmp              eax, 1;                              jne   .Lx8_1
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 40], rax;           jmp   n1_return_α
.Lx8_1:                                                                       jmp   n1_return_α
n0_disjunction_β:       mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              je    n3_goto_β
                                                                              jmp   n0_disjunction_af
n0_disjunction_af:      add              dword ptr [rsp + 48], 1
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 1;                              je    n2_lit_string_α
                                                                              jmp   if_ok_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_return_α:            mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   if_ok_γ
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              qword ptr [rsp + 112], 2             # result
                        mov              dword ptr [rsp + 116], 2
                        mov              rax, qword ptr [rip + .Lx10_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n0_disjunction_as
n2_lit_string_β:                                                              jmp   n0_disjunction_af
.Lx10_0:                .quad            .Lx10_0_s
.Lx10_0_s:              .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n3_goto_α:                                                                    jmp   n0_disjunction_af
n3_goto_β:                                                                    jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 104], rax;          jmp   n5_lit_string_α
n4_var_β:                                                                     jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              qword ptr [rsp + 80], 2              # result
                        mov              dword ptr [rsp + 84], 3
                        mov              rax, qword ptr [rip + .Lx14_0]
                        mov              qword ptr [rsp + 88], rax;           jmp   n6_conjunction_α
.Lx14_0:                .quad            .Lx14_0_s
.Lx14_0_s:              .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n6_conjunction_α:       mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 72], rax;           jmp   n0_disjunction_as
n6_conjunction_β:                                                             jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
if_ok_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
if_ok_β:
                                                                              jmp   if_ok_ω
#-----------------------------------------------------------------------------------------------------------------------
if_ok_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 168]
                        add              rsp, 192;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
if_ok_ω:
                        mov              rcx, qword ptr [rsp + 176]
                        add              rsp, 192;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
if_ok_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx16_2]
                        lea              rdx, [rip + .Lx16_3];                jmp   FN__if_ok
.Lx16_2:                pop              r11
                        pop              r11;                                 jmp   r11
.Lx16_3:                pop              r11
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
                        sub              rsp, 4096
                        mov              qword ptr [rsp + 4072], rcx
                        mov              qword ptr [rsp + 4080], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_charset_α:      mov              qword ptr [rsp + 4032], 2            # result
                        mov              dword ptr [rsp + 4036], -1
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rsp + 4040], rax;         jmp   n18_call_builtin_icon_α
.Lx137_0:               .quad            .Lx137_0_s
.Lx137_0_s:             .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4032]
                        mov              qword ptr [rsp + 4000], rax
                        mov              rax, qword ptr [rsp + 4040]
                        mov              qword ptr [rsp + 4008], rax
                        .section         .rodata
.Lrkfn139:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn139]
                        lea              rsi, [rsp + 4000]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3984], rax
                        mov              qword ptr [rsp + 3992], rdx
                        cmp              eax, 104;                            je    n20_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n19_call_builtin_icon_α
n18_call_builtin_icon_β:
                                                                              jmp   n20_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3984]
                        mov              qword ptr [rsp + 3952], rax
                        mov              rax, qword ptr [rsp + 3992]
                        mov              qword ptr [rsp + 3960], rax
                        .section         .rodata
.Lrkfn141:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn141]
                        lea              rsi, [rsp + 3952]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3936], rax
                        mov              qword ptr [rsp + 3944], rdx
                        cmp              eax, 104;                            je    n20_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n20_lit_charset_α
n19_call_builtin_icon_β:
                                                                              jmp   n20_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_charset_α:      mov              qword ptr [rsp + 3920], 2            # result
                        mov              dword ptr [rsp + 3924], -1
                        mov              rax, qword ptr [rip + .Lx142_0]
                        mov              qword ptr [rsp + 3928], rax;         jmp   n21_call_builtin_icon_α
.Lx142_0:               .quad            .Lx142_0_s
.Lx142_0_s:             .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3920]
                        mov              qword ptr [rsp + 3888], rax
                        mov              rax, qword ptr [rsp + 3928]
                        mov              qword ptr [rsp + 3896], rax
                        .section         .rodata
.Lrkfn144:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn144]
                        lea              rsi, [rsp + 3888]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3872], rax
                        mov              qword ptr [rsp + 3880], rdx
                        cmp              eax, 104;                            je    n23_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n22_call_builtin_icon_α
n21_call_builtin_icon_β:
                                                                              jmp   n23_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3872]
                        mov              qword ptr [rsp + 3840], rax
                        mov              rax, qword ptr [rsp + 3880]
                        mov              qword ptr [rsp + 3848], rax
                        .section         .rodata
.Lrkfn146:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn146]
                        lea              rsi, [rsp + 3840]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3824], rax
                        mov              qword ptr [rsp + 3832], rdx
                        cmp              eax, 104;                            je    n23_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n23_lit_charset_α
n22_call_builtin_icon_β:
                                                                              jmp   n23_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_charset_α:      mov              qword ptr [rsp + 3808], 2            # result
                        mov              dword ptr [rsp + 3812], -1
                        mov              rax, qword ptr [rip + .Lx147_0]
                        mov              qword ptr [rsp + 3816], rax;         jmp   n24_call_builtin_icon_α
.Lx147_0:               .quad            .Lx147_0_s
.Lx147_0_s:             .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3808]
                        mov              qword ptr [rsp + 3776], rax
                        mov              rax, qword ptr [rsp + 3816]
                        mov              qword ptr [rsp + 3784], rax
                        .section         .rodata
.Lrkfn149:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn149]
                        lea              rsi, [rsp + 3776]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3760], rax
                        mov              qword ptr [rsp + 3768], rdx
                        cmp              eax, 104;                            je    n26_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n25_call_builtin_icon_α
n24_call_builtin_icon_β:
                                                                              jmp   n26_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n25_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3760]
                        mov              qword ptr [rsp + 3728], rax
                        mov              rax, qword ptr [rsp + 3768]
                        mov              qword ptr [rsp + 3736], rax
                        .section         .rodata
.Lrkfn151:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn151]
                        lea              rsi, [rsp + 3728]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3712], rax
                        mov              qword ptr [rsp + 3720], rdx
                        cmp              eax, 104;                            je    n26_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n26_lit_charset_α
n25_call_builtin_icon_β:
                                                                              jmp   n26_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_charset_α:      mov              qword ptr [rsp + 3696], 2            # result
                        mov              dword ptr [rsp + 3700], -1
                        mov              rax, qword ptr [rip + .Lx152_0]
                        mov              qword ptr [rsp + 3704], rax;         jmp   n27_call_builtin_icon_α
.Lx152_0:               .quad            .Lx152_0_s
.Lx152_0_s:             .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3696]
                        mov              qword ptr [rsp + 3664], rax
                        mov              rax, qword ptr [rsp + 3704]
                        mov              qword ptr [rsp + 3672], rax
                        .section         .rodata
.Lrkfn154:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn154]
                        lea              rsi, [rsp + 3664]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3648], rax
                        mov              qword ptr [rsp + 3656], rdx
                        cmp              eax, 104;                            je    n29_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n28_call_builtin_icon_α
n27_call_builtin_icon_β:
                                                                              jmp   n29_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3648]
                        mov              qword ptr [rsp + 3616], rax
                        mov              rax, qword ptr [rsp + 3656]
                        mov              qword ptr [rsp + 3624], rax
                        .section         .rodata
.Lrkfn156:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn156]
                        lea              rsi, [rsp + 3616]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3600], rax
                        mov              qword ptr [rsp + 3608], rdx
                        cmp              eax, 104;                            je    n29_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n29_keyword_icon_α
n28_call_builtin_icon_β:
                                                                              jmp   n29_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n29_keyword_icon_α:     mov              rdi, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n32_keyword_icon_α
                        mov              qword ptr [rsp + 3568], rax
                        mov              qword ptr [rsp + 3576], rdx;         jmp   n30_call_builtin_icon_α
n29_keyword_icon_β:                                                           jmp   n32_keyword_icon_α
.Lx157_0:               .quad            .Lx157_0_s
.Lx157_0_s:             .string          "&ascii"
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3568]
                        mov              qword ptr [rsp + 3536], rax
                        mov              rax, qword ptr [rsp + 3576]
                        mov              qword ptr [rsp + 3544], rax
                        .section         .rodata
.Lrkfn159:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn159]
                        lea              rsi, [rsp + 3536]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3520], rax
                        mov              qword ptr [rsp + 3528], rdx
                        cmp              eax, 104;                            je    n32_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n31_call_builtin_icon_α
n30_call_builtin_icon_β:
                                                                              jmp   n32_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3520]
                        mov              qword ptr [rsp + 3488], rax
                        mov              rax, qword ptr [rsp + 3528]
                        mov              qword ptr [rsp + 3496], rax
                        .section         .rodata
.Lrkfn161:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn161]
                        lea              rsi, [rsp + 3488]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3472], rax
                        mov              qword ptr [rsp + 3480], rdx
                        cmp              eax, 104;                            je    n32_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n32_keyword_icon_α
n31_call_builtin_icon_β:
                                                                              jmp   n32_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n32_keyword_icon_α:     mov              rdi, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n35_lit_charset_α
                        mov              qword ptr [rsp + 3440], rax
                        mov              qword ptr [rsp + 3448], rdx;         jmp   n33_call_builtin_icon_α
n32_keyword_icon_β:                                                           jmp   n35_lit_charset_α
.Lx162_0:               .quad            .Lx162_0_s
.Lx162_0_s:             .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3440]
                        mov              qword ptr [rsp + 3408], rax
                        mov              rax, qword ptr [rsp + 3448]
                        mov              qword ptr [rsp + 3416], rax
                        .section         .rodata
.Lrkfn164:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn164]
                        lea              rsi, [rsp + 3408]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3392], rax
                        mov              qword ptr [rsp + 3400], rdx
                        cmp              eax, 104;                            je    n35_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n34_call_builtin_icon_α
n33_call_builtin_icon_β:
                                                                              jmp   n35_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3392]
                        mov              qword ptr [rsp + 3360], rax
                        mov              rax, qword ptr [rsp + 3400]
                        mov              qword ptr [rsp + 3368], rax
                        .section         .rodata
.Lrkfn166:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn166]
                        lea              rsi, [rsp + 3360]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3344], rax
                        mov              qword ptr [rsp + 3352], rdx
                        cmp              eax, 104;                            je    n35_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n35_lit_charset_α
n34_call_builtin_icon_β:
                                                                              jmp   n35_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_charset_α:      mov              qword ptr [rsp + 3328], 2            # result
                        mov              dword ptr [rsp + 3332], -1
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rsp + 3336], rax;         jmp   n36_call_builtin_icon_α
.Lx167_0:               .quad            .Lx167_0_s
.Lx167_0_s:             .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3328]
                        mov              qword ptr [rsp + 3296], rax
                        mov              rax, qword ptr [rsp + 3336]
                        mov              qword ptr [rsp + 3304], rax
                        .section         .rodata
.Lrkfn169:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn169]
                        lea              rsi, [rsp + 3296]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3280], rax
                        mov              qword ptr [rsp + 3288], rdx
                        cmp              eax, 104;                            je    n38_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n37_call_builtin_icon_α
n36_call_builtin_icon_β:
                                                                              jmp   n38_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n37_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3280]
                        mov              qword ptr [rsp + 3248], rax
                        mov              rax, qword ptr [rsp + 3288]
                        mov              qword ptr [rsp + 3256], rax
                        .section         .rodata
.Lrkfn171:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn171]
                        lea              rsi, [rsp + 3248]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3232], rax
                        mov              qword ptr [rsp + 3240], rdx
                        cmp              eax, 104;                            je    n38_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n38_lit_charset_α
n37_call_builtin_icon_β:
                                                                              jmp   n38_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_charset_α:      mov              qword ptr [rsp + 3216], 2            # result
                        mov              dword ptr [rsp + 3220], -1
                        mov              rax, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rsp + 3224], rax;         jmp   n39_call_builtin_icon_α
.Lx172_0:               .quad            .Lx172_0_s
.Lx172_0_s:             .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3216]
                        mov              qword ptr [rsp + 3184], rax
                        mov              rax, qword ptr [rsp + 3224]
                        mov              qword ptr [rsp + 3192], rax
                        .section         .rodata
.Lrkfn174:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn174]
                        lea              rsi, [rsp + 3184]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3168], rax
                        mov              qword ptr [rsp + 3176], rdx
                        cmp              eax, 104;                            je    n41_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n40_call_builtin_icon_α
n39_call_builtin_icon_β:
                                                                              jmp   n41_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3168]
                        mov              qword ptr [rsp + 3136], rax
                        mov              rax, qword ptr [rsp + 3176]
                        mov              qword ptr [rsp + 3144], rax
                        .section         .rodata
.Lrkfn176:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn176]
                        lea              rsi, [rsp + 3136]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3120], rax
                        mov              qword ptr [rsp + 3128], rdx
                        cmp              eax, 104;                            je    n41_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n41_lit_charset_α
n40_call_builtin_icon_β:
                                                                              jmp   n41_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_charset_α:      mov              qword ptr [rsp + 3104], 2            # result
                        mov              dword ptr [rsp + 3108], -1
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rsp + 3112], rax;         jmp   n42_call_builtin_icon_α
.Lx177_0:               .quad            .Lx177_0_s
.Lx177_0_s:             .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n42_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3104]
                        mov              qword ptr [rsp + 3072], rax
                        mov              rax, qword ptr [rsp + 3112]
                        mov              qword ptr [rsp + 3080], rax
                        .section         .rodata
.Lrkfn179:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn179]
                        lea              rsi, [rsp + 3072]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3056], rax
                        mov              qword ptr [rsp + 3064], rdx
                        cmp              eax, 104;                            je    n44_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n43_call_builtin_icon_α
n42_call_builtin_icon_β:
                                                                              jmp   n44_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n43_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 3024], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 3032], rax
                        .section         .rodata
.Lrkfn181:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn181]
                        lea              rsi, [rsp + 3024]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3008], rax
                        mov              qword ptr [rsp + 3016], rdx
                        cmp              eax, 104;                            je    n44_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n44_lit_charset_α
n43_call_builtin_icon_β:
                                                                              jmp   n44_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_charset_α:      mov              qword ptr [rsp + 2992], 2            # result
                        mov              dword ptr [rsp + 2996], -1
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rsp + 3000], rax;         jmp   n45_call_builtin_icon_α
.Lx182_0:               .quad            .Lx182_0_s
.Lx182_0_s:             .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n45_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 2960], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 2968], rax
                        .section         .rodata
.Lrkfn184:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn184]
                        lea              rsi, [rsp + 2960]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2944], rax
                        mov              qword ptr [rsp + 2952], rdx
                        cmp              eax, 104;                            je    n47_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n46_call_builtin_icon_α
n45_call_builtin_icon_β:
                                                                              jmp   n47_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n46_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 2912], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 2920], rax
                        .section         .rodata
.Lrkfn186:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn186]
                        lea              rsi, [rsp + 2912]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2896], rax
                        mov              qword ptr [rsp + 2904], rdx
                        cmp              eax, 104;                            je    n47_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n47_keyword_icon_α
n46_call_builtin_icon_β:
                                                                              jmp   n47_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n47_keyword_icon_α:     mov              rdi, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n50_keyword_icon_α
                        mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx;         jmp   n48_call_builtin_icon_α
n47_keyword_icon_β:                                                           jmp   n50_keyword_icon_α
.Lx187_0:               .quad            .Lx187_0_s
.Lx187_0_s:             .string          "&ascii"
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2864]
                        mov              qword ptr [rsp + 2832], rax
                        mov              rax, qword ptr [rsp + 2872]
                        mov              qword ptr [rsp + 2840], rax
                        .section         .rodata
.Lrkfn189:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn189]
                        lea              rsi, [rsp + 2832]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2816], rax
                        mov              qword ptr [rsp + 2824], rdx
                        cmp              eax, 104;                            je    n50_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n49_call_builtin_icon_α
n48_call_builtin_icon_β:
                                                                              jmp   n50_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n49_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2816]
                        mov              qword ptr [rsp + 2784], rax
                        mov              rax, qword ptr [rsp + 2824]
                        mov              qword ptr [rsp + 2792], rax
                        .section         .rodata
.Lrkfn191:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn191]
                        lea              rsi, [rsp + 2784]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2768], rax
                        mov              qword ptr [rsp + 2776], rdx
                        cmp              eax, 104;                            je    n50_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n50_keyword_icon_α
n49_call_builtin_icon_β:
                                                                              jmp   n50_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n50_keyword_icon_α:     mov              rdi, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n53_lit_charset_α
                        mov              qword ptr [rsp + 2736], rax
                        mov              qword ptr [rsp + 2744], rdx;         jmp   n51_call_builtin_icon_α
n50_keyword_icon_β:                                                           jmp   n53_lit_charset_α
.Lx192_0:               .quad            .Lx192_0_s
.Lx192_0_s:             .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n51_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2736]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 2744]
                        mov              qword ptr [rsp + 2712], rax
                        .section         .rodata
.Lrkfn194:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn194]
                        lea              rsi, [rsp + 2704]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx
                        cmp              eax, 104;                            je    n53_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n52_call_builtin_icon_α
n51_call_builtin_icon_β:
                                                                              jmp   n53_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n52_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2688]
                        mov              qword ptr [rsp + 2656], rax
                        mov              rax, qword ptr [rsp + 2696]
                        mov              qword ptr [rsp + 2664], rax
                        .section         .rodata
.Lrkfn196:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn196]
                        lea              rsi, [rsp + 2656]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2640], rax
                        mov              qword ptr [rsp + 2648], rdx
                        cmp              eax, 104;                            je    n53_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n53_lit_charset_α
n52_call_builtin_icon_β:
                                                                              jmp   n53_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_charset_α:      mov              qword ptr [rsp + 2624], 2            # result
                        mov              dword ptr [rsp + 2628], -1
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rsp + 2632], rax;         jmp   n54_unop_α
.Lx197_0:               .quad            .Lx197_0_s
.Lx197_0_s:             .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n54_unop_α:             mov              rdi, qword ptr [rsp + 2624]
                        mov              rsi, qword ptr [rsp + 2632]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx;         jmp   n55_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n55_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 2576], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 2584], rax
                        .section         .rodata
.Lrkfn200:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn200]
                        lea              rsi, [rsp + 2576]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx
                        cmp              eax, 104;                            je    n56_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n56_lit_charset_α
n55_call_builtin_icon_β:
                                                                              jmp   n56_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_charset_α:      mov              qword ptr [rsp + 2544], 2            # result
                        mov              dword ptr [rsp + 2548], -1
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rsp + 2552], rax;         jmp   n57_unop_α
.Lx201_0:               .quad            .Lx201_0_s
.Lx201_0_s:             .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#-----------------------------------------------------------------------------------------------------------------------
n57_unop_α:             mov              rdi, qword ptr [rsp + 2544]
                        mov              rsi, qword ptr [rsp + 2552]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx;         jmp   n58_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n58_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 2504], rax
                        .section         .rodata
.Lrkfn204:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn204]
                        lea              rsi, [rsp + 2496]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2480], rax
                        mov              qword ptr [rsp + 2488], rdx
                        cmp              eax, 104;                            je    n59_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n59_lit_charset_α
n58_call_builtin_icon_β:
                                                                              jmp   n59_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_charset_α:      mov              qword ptr [rsp + 2464], 2            # result
                        mov              dword ptr [rsp + 2468], -1
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rsp + 2472], rax;         jmp   n60_unop_α
.Lx205_0:               .quad            .Lx205_0_s
.Lx205_0_s:             .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n60_unop_α:             mov              rdi, qword ptr [rsp + 2464]
                        mov              rsi, qword ptr [rsp + 2472]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx;         jmp   n61_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n61_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 2416], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 2424], rax
                        .section         .rodata
.Lrkfn208:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn208]
                        lea              rsi, [rsp + 2416]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx
                        cmp              eax, 104;                            je    n62_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n62_lit_charset_α
n61_call_builtin_icon_β:
                                                                              jmp   n62_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_charset_α:      mov              qword ptr [rsp + 2384], 2            # result
                        mov              dword ptr [rsp + 2388], -1
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rsp + 2392], rax;         jmp   n63_unop_α
.Lx209_0:               .quad            .Lx209_0_s
.Lx209_0_s:             .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n63_unop_α:             mov              rdi, qword ptr [rsp + 2384]
                        mov              rsi, qword ptr [rsp + 2392]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2368], rax
                        mov              qword ptr [rsp + 2376], rdx;         jmp   n64_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n64_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2368]
                        mov              qword ptr [rsp + 2336], rax
                        mov              rax, qword ptr [rsp + 2376]
                        mov              qword ptr [rsp + 2344], rax
                        .section         .rodata
.Lrkfn212:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn212]
                        lea              rsi, [rsp + 2336]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2320], rax
                        mov              qword ptr [rsp + 2328], rdx
                        cmp              eax, 104;                            je    n65_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n65_keyword_icon_α
n64_call_builtin_icon_β:
                                                                              jmp   n65_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n65_keyword_icon_α:     mov              rdi, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n68_keyword_icon_α
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx;         jmp   n66_unop_α
n65_keyword_icon_β:                                                           jmp   n68_keyword_icon_α
.Lx213_0:               .quad            .Lx213_0_s
.Lx213_0_s:             .string          "&ascii"
#-----------------------------------------------------------------------------------------------------------------------
n66_unop_α:             mov              rdi, qword ptr [rsp + 2288]
                        mov              rsi, qword ptr [rsp + 2296]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx;         jmp   n67_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n67_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 2248], rax
                        .section         .rodata
.Lrkfn216:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn216]
                        lea              rsi, [rsp + 2240]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx
                        cmp              eax, 104;                            je    n68_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n68_keyword_icon_α
n67_call_builtin_icon_β:
                                                                              jmp   n68_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n68_keyword_icon_α:     mov              rdi, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n71_keyword_icon_α
                        mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx;         jmp   n69_unop_α
n68_keyword_icon_β:                                                           jmp   n71_keyword_icon_α
.Lx217_0:               .quad            .Lx217_0_s
.Lx217_0_s:             .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n69_unop_α:             mov              rdi, qword ptr [rsp + 2192]
                        mov              rsi, qword ptr [rsp + 2200]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2184], rdx;         jmp   n70_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n70_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 2152], rax
                        .section         .rodata
.Lrkfn220:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn220]
                        lea              rsi, [rsp + 2144]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx
                        cmp              eax, 104;                            je    n71_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n71_keyword_icon_α
n70_call_builtin_icon_β:
                                                                              jmp   n71_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n71_keyword_icon_α:     mov              rdi, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n80_keyword_icon_α
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx;         jmp   n72_lit_real_α
n71_keyword_icon_β:                                                           jmp   n80_keyword_icon_α
.Lx221_0:               .quad            .Lx221_0_s
.Lx221_0_s:             .string          "&e"
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_real_α:         mov              qword ptr [rsp + 2112], 5            # result
                        mov              rax, qword ptr [rip + .Lx222_0]
                        mov              qword ptr [rsp + 2120], rax;         jmp   n73_binop_test_α
.Lx222_0:               .quad            4613262278296967578
#-----------------------------------------------------------------------------------------------------------------------
n73_binop_test_α:       mov              rdi, qword ptr [rsp + 2080]
                        mov              rsi, qword ptr [rsp + 2088]
                        mov              rdx, qword ptr [rsp + 2112]
                        mov              rcx, qword ptr [rsp + 2120]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n80_keyword_icon_α
                        mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n74_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n74_keyword_icon_α:     mov              rdi, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n80_keyword_icon_α
                        mov              qword ptr [rsp + 2016], rax
                        mov              qword ptr [rsp + 2024], rdx;         jmp   n75_lit_real_α
n74_keyword_icon_β:                                                           jmp   n80_keyword_icon_α
.Lx224_0:               .quad            .Lx224_0_s
.Lx224_0_s:             .string          "&e"
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_real_α:         mov              qword ptr [rsp + 2048], 5            # result
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n76_binop_test_α
.Lx225_0:               .quad            4613487458278336102
#-----------------------------------------------------------------------------------------------------------------------
n76_binop_test_α:       mov              rdi, qword ptr [rsp + 2016]
                        mov              rsi, qword ptr [rsp + 2024]
                        mov              rdx, qword ptr [rsp + 2048]
                        mov              rcx, qword ptr [rsp + 2056]
                        mov              r8d, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n80_keyword_icon_α
                        mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [rsp + 2008], rax;         jmp   n77_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n77_conjunction_α:      mov              rax, qword ptr [rsp + 2000]
                        mov              qword ptr [rsp + 1984], rax
                        mov              rax, qword ptr [rsp + 2008]
                        mov              qword ptr [rsp + 1992], rax;         jmp   n78_call_proc_staged_α
n77_conjunction_β:                                                            jmp   n80_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n78_call_proc_staged_α: lea              rsi, [rsp + 2000]
                        call             if_ok_dcα;                           jmp   .Lx229_2
.Lx229_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx229_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1936]
                        mov              rdx, qword ptr [rsp + 1944]
.Lx229_29:              mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        cmp              eax, 104;                            je    n80_keyword_icon_α
                                                                              jmp   n79_call_builtin_icon_α
n78_call_proc_staged_β:                                                       jmp   n80_keyword_icon_α
.Lx229_0:               .quad            .Lx229_0_s
.Lx229_0_s:             .string          "if_ok"
#-----------------------------------------------------------------------------------------------------------------------
n79_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1912], rax
                        .section         .rodata
.Lrkfn231:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn231]
                        lea              rsi, [rsp + 1904]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx
                        cmp              eax, 104;                            je    n80_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n80_keyword_icon_α
n79_call_builtin_icon_β:
                                                                              jmp   n80_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n80_keyword_icon_α:     mov              rdi, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n89_keyword_icon_α
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx;         jmp   n81_lit_real_α
n80_keyword_icon_β:                                                           jmp   n89_keyword_icon_α
.Lx232_0:               .quad            .Lx232_0_s
.Lx232_0_s:             .string          "&pi"
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_real_α:         mov              qword ptr [rsp + 1872], 5            # result
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rsp + 1880], rax;         jmp   n82_binop_test_α
.Lx233_0:               .quad            4614253070214989087
#-----------------------------------------------------------------------------------------------------------------------
n82_binop_test_α:       mov              rdi, qword ptr [rsp + 1840]
                        mov              rsi, qword ptr [rsp + 1848]
                        mov              rdx, qword ptr [rsp + 1872]
                        mov              rcx, qword ptr [rsp + 1880]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n89_keyword_icon_α
                        mov              rax, qword ptr [rsp + 1872]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 1880]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n83_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n83_keyword_icon_α:     mov              rdi, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n89_keyword_icon_α
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx;         jmp   n84_lit_real_α
n83_keyword_icon_β:                                                           jmp   n89_keyword_icon_α
.Lx235_0:               .quad            .Lx235_0_s
.Lx235_0_s:             .string          "&pi"
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_real_α:         mov              qword ptr [rsp + 1808], 5            # result
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n85_binop_test_α
.Lx236_0:               .quad            4614275588213125939
#-----------------------------------------------------------------------------------------------------------------------
n85_binop_test_α:       mov              rdi, qword ptr [rsp + 1776]
                        mov              rsi, qword ptr [rsp + 1784]
                        mov              rdx, qword ptr [rsp + 1808]
                        mov              rcx, qword ptr [rsp + 1816]
                        mov              r8d, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n89_keyword_icon_α
                        mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n86_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n86_conjunction_α:      mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n87_call_proc_staged_α
n86_conjunction_β:                                                            jmp   n89_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n87_call_proc_staged_α: lea              rsi, [rsp + 1760]
                        call             if_ok_dcα;                           jmp   .Lx240_2
.Lx240_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx240_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1696]
                        mov              rdx, qword ptr [rsp + 1704]
.Lx240_29:              mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx
                        cmp              eax, 104;                            je    n89_keyword_icon_α
                                                                              jmp   n88_call_builtin_icon_α
n87_call_proc_staged_β:                                                       jmp   n89_keyword_icon_α
.Lx240_0:               .quad            .Lx240_0_s
.Lx240_0_s:             .string          "if_ok"
#-----------------------------------------------------------------------------------------------------------------------
n88_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 1672], rax
                        .section         .rodata
.Lrkfn242:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn242]
                        lea              rsi, [rsp + 1664]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx
                        cmp              eax, 104;                            je    n89_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n89_keyword_icon_α
n88_call_builtin_icon_β:
                                                                              jmp   n89_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n89_keyword_icon_α:     mov              rdi, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n98_keyword_icon_α
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx;         jmp   n90_lit_real_α
n89_keyword_icon_β:                                                           jmp   n98_keyword_icon_α
.Lx243_0:               .quad            .Lx243_0_s
.Lx243_0_s:             .string          "&phi"
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_real_α:         mov              qword ptr [rsp + 1632], 5            # result
                        mov              rax, qword ptr [rip + .Lx244_0]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n91_binop_test_α
.Lx244_0:               .quad            4609929614572713411
#-----------------------------------------------------------------------------------------------------------------------
n91_binop_test_α:       mov              rdi, qword ptr [rsp + 1600]
                        mov              rsi, qword ptr [rsp + 1608]
                        mov              rdx, qword ptr [rsp + 1632]
                        mov              rcx, qword ptr [rsp + 1640]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n98_keyword_icon_α
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n92_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n92_keyword_icon_α:     mov              rdi, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n98_keyword_icon_α
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx;         jmp   n93_lit_real_α
n92_keyword_icon_β:                                                           jmp   n98_keyword_icon_α
.Lx246_0:               .quad            .Lx246_0_s
.Lx246_0_s:             .string          "&phi"
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_real_α:         mov              qword ptr [rsp + 1568], 5            # result
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rsp + 1576], rax;         jmp   n94_binop_test_α
.Lx247_0:               .quad            4609974650568987116
#-----------------------------------------------------------------------------------------------------------------------
n94_binop_test_α:       mov              rdi, qword ptr [rsp + 1536]
                        mov              rsi, qword ptr [rsp + 1544]
                        mov              rdx, qword ptr [rsp + 1568]
                        mov              rcx, qword ptr [rsp + 1576]
                        mov              r8d, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n98_keyword_icon_α
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n95_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n95_conjunction_α:      mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n96_call_proc_staged_α
n95_conjunction_β:                                                            jmp   n98_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n96_call_proc_staged_α: lea              rsi, [rsp + 1520]
                        call             if_ok_dcα;                           jmp   .Lx251_2
.Lx251_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx251_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1456]
                        mov              rdx, qword ptr [rsp + 1464]
.Lx251_29:              mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              eax, 104;                            je    n98_keyword_icon_α
                                                                              jmp   n97_call_builtin_icon_α
n96_call_proc_staged_β:                                                       jmp   n98_keyword_icon_α
.Lx251_0:               .quad            .Lx251_0_s
.Lx251_0_s:             .string          "if_ok"
#-----------------------------------------------------------------------------------------------------------------------
n97_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1432], rax
                        .section         .rodata
.Lrkfn253:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn253]
                        lea              rsi, [rsp + 1424]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        cmp              eax, 104;                            je    n98_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n98_keyword_icon_α
n97_call_builtin_icon_β:
                                                                              jmp   n98_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n98_keyword_icon_α:     mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0;           jmp   n99_call_builtin_icon_α
n98_keyword_icon_β:                                                           jmp   n101_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n99_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1352], rax
                        .section         .rodata
.Lrkfn256:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn256]
                        lea              rsi, [rsp + 1344]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx
                        cmp              eax, 104;                            je    n101_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n100_call_builtin_icon_α
n99_call_builtin_icon_β:
                                                                              jmp   n101_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n100_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1304], rax
                        .section         .rodata
.Lrkfn258:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn258]
                        lea              rsi, [rsp + 1296]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        cmp              eax, 104;                            je    n101_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n101_disjunction_α
n100_call_builtin_icon_β:
                                                                              jmp   n101_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n101_disjunction_α:     mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              dword ptr [rsp + 1200], 0;           jmp   n135_keyword_icon_α
n101_disjunction_as:    mov              eax, dword ptr [rsp + 1200]
                        cmp              eax, 0;                              jne   .Lx260_0
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n102_call_builtin_icon_α
.Lx260_0:               cmp              eax, 1;                              jne   .Lx260_1
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n102_call_builtin_icon_α
.Lx260_1:                                                                     jmp   n102_call_builtin_icon_α
n101_disjunction_β:     mov              eax, dword ptr [rsp + 1200]
                        cmp              eax, 0;                              je    n101_disjunction_af
                                                                              jmp   n101_disjunction_af
n101_disjunction_af:    add              dword ptr [rsp + 1200], 1
                        mov              eax, dword ptr [rsp + 1200]
                        cmp              eax, 1;                              je    n134_lit_string_α
                                                                              jmp   n103_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n102_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1160], rax
                        .section         .rodata
.Lrkfn262:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn262]
                        lea              rsi, [rsp + 1152]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        cmp              eax, 104;                            je    n101_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n103_disjunction_α
n102_call_builtin_icon_β:
                                                                              jmp   n101_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n103_disjunction_α:     mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              dword ptr [rsp + 1072], 0;           jmp   n133_keyword_icon_α
n103_disjunction_as:    mov              eax, dword ptr [rsp + 1072]
                        cmp              eax, 0;                              jne   .Lx264_0
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n104_call_builtin_icon_α
.Lx264_0:               cmp              eax, 1;                              jne   .Lx264_1
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n104_call_builtin_icon_α
.Lx264_1:                                                                     jmp   n104_call_builtin_icon_α
n103_disjunction_β:     mov              eax, dword ptr [rsp + 1072]
                        cmp              eax, 0;                              je    n103_disjunction_af
                                                                              jmp   n103_disjunction_af
n103_disjunction_af:    add              dword ptr [rsp + 1072], 1
                        mov              eax, dword ptr [rsp + 1072]
                        cmp              eax, 1;                              je    n132_lit_string_α
                                                                              jmp   n105_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n104_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1032], rax
                        .section         .rodata
.Lrkfn266:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn266]
                        lea              rsi, [rsp + 1024]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                        cmp              eax, 104;                            je    n103_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n105_lit_integer_α
n104_call_builtin_icon_β:
                                                                              jmp   n103_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_integer_α:     mov              qword ptr [rsp + 992], 3             # result
                        mov              rax, qword ptr [rip + .Lx267_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n106_keyword_assign_α
.Lx267_0:               .quad            42
#-----------------------------------------------------------------------------------------------------------------------
n106_keyword_assign_α:  mov              rdi, qword ptr [rsp + 992]
                        mov              rsi, qword ptr [rsp + 1000]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_error_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n107_keyword_icon_α
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n107_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n107_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n109_lit_integer_α
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n108_call_builtin_icon_α
n107_keyword_icon_β:                                                          jmp   n109_lit_integer_α
.Lx269_0:               .quad            .Lx269_0_s
.Lx269_0_s:             .string          "&error"
#-----------------------------------------------------------------------------------------------------------------------
n108_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 920], rax
                        .section         .rodata
.Lrkfn271:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn271]
                        lea              rsi, [rsp + 912]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              eax, 104;                            je    n109_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n109_lit_integer_α
n108_call_builtin_icon_β:
                                                                              jmp   n109_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_integer_α:     mov              qword ptr [rsp + 880], 3             # result
                        mov              rax, qword ptr [rip + .Lx272_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n110_keyword_assign_α
.Lx272_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n110_keyword_assign_α:  mov              rdi, qword ptr [rsp + 880]
                        mov              rsi, qword ptr [rsp + 888]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_error_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n111_keyword_icon_α
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n111_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n111_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n113_keyword_icon_α
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n112_call_builtin_icon_α
n111_keyword_icon_β:                                                          jmp   n113_keyword_icon_α
.Lx274_0:               .quad            .Lx274_0_s
.Lx274_0_s:             .string          "&error"
#-----------------------------------------------------------------------------------------------------------------------
n112_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 808], rax
                        .section         .rodata
.Lrkfn276:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn276]
                        lea              rsi, [rsp + 800]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              eax, 104;                            je    n113_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n113_keyword_icon_α
n112_call_builtin_icon_β:
                                                                              jmp   n113_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n113_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n116_keyword_icon_α
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n114_call_builtin_icon_α
n113_keyword_icon_β:                                                          jmp   n116_keyword_icon_α
.Lx277_0:               .quad            .Lx277_0_s
.Lx277_0_s:             .string          "&dump"
#-----------------------------------------------------------------------------------------------------------------------
n114_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 728], rax
                        .section         .rodata
.Lrkfn279:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn279]
                        lea              rsi, [rsp + 720]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              eax, 104;                            je    n116_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n115_call_builtin_icon_α
n114_call_builtin_icon_β:
                                                                              jmp   n116_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n115_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 680], rax
                        .section         .rodata
.Lrkfn281:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn281]
                        lea              rsi, [rsp + 672]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              eax, 104;                            je    n116_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n116_keyword_icon_α
n115_call_builtin_icon_β:
                                                                              jmp   n116_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n116_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n119_keyword_icon_α
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n117_call_builtin_icon_α
n116_keyword_icon_β:                                                          jmp   n119_keyword_icon_α
.Lx282_0:               .quad            .Lx282_0_s
.Lx282_0_s:             .string          "&trace"
#-----------------------------------------------------------------------------------------------------------------------
n117_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 600], rax
                        .section         .rodata
.Lrkfn284:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn284]
                        lea              rsi, [rsp + 592]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              eax, 104;                            je    n119_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n118_call_builtin_icon_α
n117_call_builtin_icon_β:
                                                                              jmp   n119_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n118_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                        .section         .rodata
.Lrkfn286:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn286]
                        lea              rsi, [rsp + 544]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              eax, 104;                            je    n119_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n119_keyword_icon_α
n118_call_builtin_icon_β:
                                                                              jmp   n119_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n119_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx287_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n122_keyword_icon_α
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n120_call_builtin_icon_α
n119_keyword_icon_β:                                                          jmp   n122_keyword_icon_α
.Lx287_0:               .quad            .Lx287_0_s
.Lx287_0_s:             .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n120_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 472], rax
                        .section         .rodata
.Lrkfn289:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn289]
                        lea              rsi, [rsp + 464]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              eax, 104;                            je    n122_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n121_call_builtin_icon_α
n120_call_builtin_icon_β:
                                                                              jmp   n122_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n121_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                        .section         .rodata
.Lrkfn291:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn291]
                        lea              rsi, [rsp + 416]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              eax, 104;                            je    n122_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n122_keyword_icon_α
n121_call_builtin_icon_β:
                                                                              jmp   n122_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n122_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n124_keyword_icon_α
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n123_call_builtin_icon_α
n122_keyword_icon_β:                                                          jmp   n124_keyword_icon_α
.Lx292_0:               .quad            .Lx292_0_s
.Lx292_0_s:             .string          "&col"
#-----------------------------------------------------------------------------------------------------------------------
n123_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax
                        .section         .rodata
.Lrkfn294:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn294]
                        lea              rsi, [rsp + 336]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              eax, 104;                            je    n124_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n124_keyword_icon_α
n123_call_builtin_icon_β:
                                                                              jmp   n124_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n124_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n126_keyword_icon_α
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n125_call_builtin_icon_α
n124_keyword_icon_β:                                                          jmp   n126_keyword_icon_α
.Lx295_0:               .quad            .Lx295_0_s
.Lx295_0_s:             .string          "&row"
#-----------------------------------------------------------------------------------------------------------------------
n125_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn297:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn297]
                        lea              rsi, [rsp + 256]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              eax, 104;                            je    n126_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n126_keyword_icon_α
n125_call_builtin_icon_β:
                                                                              jmp   n126_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n126_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n128_keyword_icon_α
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n127_call_builtin_icon_α
n126_keyword_icon_β:                                                          jmp   n128_keyword_icon_α
.Lx298_0:               .quad            .Lx298_0_s
.Lx298_0_s:             .string          "&x"
#-----------------------------------------------------------------------------------------------------------------------
n127_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lrkfn300:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn300]
                        lea              rsi, [rsp + 176]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              eax, 104;                            je    n128_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n128_keyword_icon_α
n127_call_builtin_icon_β:
                                                                              jmp   n128_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n128_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n130_keyword_icon_α
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n129_call_builtin_icon_α
n128_keyword_icon_β:                                                          jmp   n130_keyword_icon_α
.Lx301_0:               .quad            .Lx301_0_s
.Lx301_0_s:             .string          "&y"
#-----------------------------------------------------------------------------------------------------------------------
n129_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn303:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn303]
                        lea              rsi, [rsp + 96]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 104;                            je    n130_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n130_keyword_icon_α
n129_call_builtin_icon_β:
                                                                              jmp   n130_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n130_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    main_ω
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx;           jmp   n131_call_builtin_icon_α
n130_keyword_icon_β:                                                          jmp   main_ω
.Lx304_0:               .quad            .Lx304_0_s
.Lx304_0_s:             .string          "&level"
#-----------------------------------------------------------------------------------------------------------------------
n131_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn306:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn306]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   main_γ
n131_call_builtin_icon_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:      mov              qword ptr [rsp + 1120], 2            # result
                        mov              dword ptr [rsp + 1124], 11
                        mov              rax, qword ptr [rip + .Lx307_0]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n103_disjunction_as
n132_lit_string_β:                                                            jmp   n103_disjunction_af
.Lx307_0:               .quad            .Lx307_0_s
.Lx307_0_s:             .string          "fail-failed"
#-----------------------------------------------------------------------------------------------------------------------
n133_keyword_icon_α:                                                          jmp   n103_disjunction_af
n133_keyword_icon_β:                                                          jmp   n103_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_string_α:      mov              qword ptr [rsp + 1264], 2            # result
                        mov              dword ptr [rsp + 1268], 12
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n101_disjunction_as
n134_lit_string_β:                                                            jmp   n101_disjunction_af
.Lx309_0:               .quad            .Lx309_0_s
.Lx309_0_s:             .string          "null-is-null"
#-----------------------------------------------------------------------------------------------------------------------
n135_keyword_icon_α:    mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0;           jmp   n136_unop_test_α
n135_keyword_icon_β:                                                          jmp   n101_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n136_unop_test_α:       mov              eax, dword ptr [rsp + 1232]
                        cmp              eax, 104;                            je    n101_disjunction_af
                        cmp              eax, 0;                              je    n101_disjunction_af
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n101_disjunction_as
n136_unop_test_β:                                                             jmp   n101_disjunction_af
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
.Lstartup_pname0:       .string          "if_ok"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__if_ok
                        .quad            if_ok_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            128
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
