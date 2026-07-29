                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_if_ok_α
proc_if_ok_α:
                        .global          proc_if_ok_α
                        .global          proc_if_ok_β
                        .global          proc_if_ok_γ
                        .global          proc_if_ok_ω
                        sub              rsp, 160
                        mov              [rsp + 136], rcx
                        mov              [rsp + 144], rdx
                        mov              [rsp + 152], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 128
                        mov              edx, 128
                        call             rt_jmp_frame_lexprep2@PLT
proc_if_ok_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   n2_var_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx8_0
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n1_return_α
.Lx8_0:
                        cmp              eax, 1
                                                                                        jne   .Lx8_1
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n1_return_α
.Lx8_1:
                                                                                        jmp   n1_return_α
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        je    n3_goto_β
                                                                                        jmp   n0_disjunction_af
n0_disjunction_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 1
                                                                                        je    n4_lit_string_α
                                                                                        jmp   proc_if_ok_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_if_ok_γ
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n6_lit_string_α
n2_var_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n3_goto_α:
                                                                                        jmp   n0_disjunction_af
n3_goto_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        mov              qword ptr [rbp + 112], 1
                        mov              rax, qword ptr [rip + .Lx13_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n0_disjunction_as
n4_lit_string_β:
                                                                                        jmp   n0_disjunction_af
.Lx13_0:
                        .quad            .Lx13_0_s
.Lx13_0_s:
                        .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n5_conjunction_α:
                                                                                        jmp   n0_disjunction_as
n5_conjunction_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rbp + 80], 1
                        mov              rax, qword ptr [rip + .Lx15_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n5_conjunction_α
.Lx15_0:
                        .quad            .Lx15_0_s
.Lx15_0_s:
                        .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
proc_if_ok_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_if_ok_β:
                                                                                        jmp   proc_if_ok_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_if_ok_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 136]
                        lea              rsp, [rbp + 160]
                        mov              rbp, [rbp + 152]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_if_ok_ω:
                        mov              rax, [rbp + 144]
                        lea              rsp, [rbp + 160]
                        mov              rbp, [rbp + 152]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_if_ok_dcα:
                        pop              r11
                        sub              rsp, 176
                        mov              qword ptr [rsp + 152], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 128], r11
                        lea              rax, [rip + .Lx16_2]
                        mov              qword ptr [rbp + 136], rax
                        lea              rax, [rip + .Lx16_3]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 128
                        mov              edx, 128
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_if_ok_α_body
.Lx16_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -160
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx16_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -160
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "if_ok"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_if_ok_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 128
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_if_ok_dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        xor              esi, esi
                        call             main_α
                        xor              eax, eax
                        add              rsp, 24
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        .global          main_α
                        .global          main_β
                        .global          main_γ
                        .global          main_ω
                        sub              rsp, 4056
                        mov              rdi, rsp
                        mov              ecx, 4056
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 4048], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_charset_α:
                        mov              qword ptr [rbp + 4032], 1
                        mov              dword ptr [rbp + 4036], -1
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rbp + 4040], rax
                                                                                        jmp   n18_call_builtin_icon_α
.Lx137_0:
                        .quad            .Lx137_0_s
.Lx137_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 4000], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 4008], rax
                        .section         .rodata
.Lrkfn139:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn139]
                        lea              rsi, [rbp + 4000]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3984], rax
                        mov              qword ptr [rbp + 3992], rdx
                        cmp              eax, 99
                                                                                        je    n20_lit_charset_α
                                                                                        jmp   n19_call_builtin_icon_α
n18_call_builtin_icon_β:
                                                                                        jmp   n20_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3984]
                        mov              qword ptr [rbp + 3952], rax
                        mov              rax, qword ptr [rbp + 3992]
                        mov              qword ptr [rbp + 3960], rax
                        .section         .rodata
.Lrkfn141:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn141]
                        lea              rsi, [rbp + 3952]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3936], rax
                        mov              qword ptr [rbp + 3944], rdx
                        cmp              eax, 99
                                                                                        je    n20_lit_charset_α
                                                                                        jmp   n20_lit_charset_α
n19_call_builtin_icon_β:
                                                                                        jmp   n20_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_charset_α:
                        mov              qword ptr [rbp + 3920], 1
                        mov              dword ptr [rbp + 3924], -1
                        mov              rax, qword ptr [rip + .Lx142_0]
                        mov              qword ptr [rbp + 3928], rax
                                                                                        jmp   n21_call_builtin_icon_α
.Lx142_0:
                        .quad            .Lx142_0_s
.Lx142_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3920]
                        mov              qword ptr [rbp + 3888], rax
                        mov              rax, qword ptr [rbp + 3928]
                        mov              qword ptr [rbp + 3896], rax
                        .section         .rodata
.Lrkfn144:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn144]
                        lea              rsi, [rbp + 3888]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3872], rax
                        mov              qword ptr [rbp + 3880], rdx
                        cmp              eax, 99
                                                                                        je    n23_lit_charset_α
                                                                                        jmp   n22_call_builtin_icon_α
n21_call_builtin_icon_β:
                                                                                        jmp   n23_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3872]
                        mov              qword ptr [rbp + 3840], rax
                        mov              rax, qword ptr [rbp + 3880]
                        mov              qword ptr [rbp + 3848], rax
                        .section         .rodata
.Lrkfn146:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn146]
                        lea              rsi, [rbp + 3840]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3824], rax
                        mov              qword ptr [rbp + 3832], rdx
                        cmp              eax, 99
                                                                                        je    n23_lit_charset_α
                                                                                        jmp   n23_lit_charset_α
n22_call_builtin_icon_β:
                                                                                        jmp   n23_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_charset_α:
                        mov              qword ptr [rbp + 3808], 1
                        mov              dword ptr [rbp + 3812], -1
                        mov              rax, qword ptr [rip + .Lx147_0]
                        mov              qword ptr [rbp + 3816], rax
                                                                                        jmp   n24_call_builtin_icon_α
.Lx147_0:
                        .quad            .Lx147_0_s
.Lx147_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3808]
                        mov              qword ptr [rbp + 3776], rax
                        mov              rax, qword ptr [rbp + 3816]
                        mov              qword ptr [rbp + 3784], rax
                        .section         .rodata
.Lrkfn149:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn149]
                        lea              rsi, [rbp + 3776]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx
                        cmp              eax, 99
                                                                                        je    n26_lit_charset_α
                                                                                        jmp   n25_call_builtin_icon_α
n24_call_builtin_icon_β:
                                                                                        jmp   n26_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n25_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3760]
                        mov              qword ptr [rbp + 3728], rax
                        mov              rax, qword ptr [rbp + 3768]
                        mov              qword ptr [rbp + 3736], rax
                        .section         .rodata
.Lrkfn151:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn151]
                        lea              rsi, [rbp + 3728]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3712], rax
                        mov              qword ptr [rbp + 3720], rdx
                        cmp              eax, 99
                                                                                        je    n26_lit_charset_α
                                                                                        jmp   n26_lit_charset_α
n25_call_builtin_icon_β:
                                                                                        jmp   n26_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_charset_α:
                        mov              qword ptr [rbp + 3696], 1
                        mov              dword ptr [rbp + 3700], -1
                        mov              rax, qword ptr [rip + .Lx152_0]
                        mov              qword ptr [rbp + 3704], rax
                                                                                        jmp   n27_call_builtin_icon_α
.Lx152_0:
                        .quad            .Lx152_0_s
.Lx152_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3696]
                        mov              qword ptr [rbp + 3664], rax
                        mov              rax, qword ptr [rbp + 3704]
                        mov              qword ptr [rbp + 3672], rax
                        .section         .rodata
.Lrkfn154:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn154]
                        lea              rsi, [rbp + 3664]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3648], rax
                        mov              qword ptr [rbp + 3656], rdx
                        cmp              eax, 99
                                                                                        je    n29_keyword_icon_α
                                                                                        jmp   n28_call_builtin_icon_α
n27_call_builtin_icon_β:
                                                                                        jmp   n29_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3648]
                        mov              qword ptr [rbp + 3616], rax
                        mov              rax, qword ptr [rbp + 3656]
                        mov              qword ptr [rbp + 3624], rax
                        .section         .rodata
.Lrkfn156:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn156]
                        lea              rsi, [rbp + 3616]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                        cmp              eax, 99
                                                                                        je    n29_keyword_icon_α
                                                                                        jmp   n29_keyword_icon_α
n28_call_builtin_icon_β:
                                                                                        jmp   n29_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n29_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx157_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n32_keyword_icon_α
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx
                                                                                        jmp   n30_call_builtin_icon_α
n29_keyword_icon_β:
                                                                                        jmp   n32_keyword_icon_α
.Lx157_0:
                        .quad            .Lx157_0_s
.Lx157_0_s:
                        .string          "&ascii"
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3568]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3576]
                        mov              qword ptr [rbp + 3544], rax
                        .section         .rodata
.Lrkfn159:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn159]
                        lea              rsi, [rbp + 3536]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx
                        cmp              eax, 99
                                                                                        je    n32_keyword_icon_α
                                                                                        jmp   n31_call_builtin_icon_α
n30_call_builtin_icon_β:
                                                                                        jmp   n32_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 3488], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 3496], rax
                        .section         .rodata
.Lrkfn161:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn161]
                        lea              rsi, [rbp + 3488]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3472], rax
                        mov              qword ptr [rbp + 3480], rdx
                        cmp              eax, 99
                                                                                        je    n32_keyword_icon_α
                                                                                        jmp   n32_keyword_icon_α
n31_call_builtin_icon_β:
                                                                                        jmp   n32_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n32_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx162_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n35_lit_charset_α
                        mov              qword ptr [rbp + 3440], rax
                        mov              qword ptr [rbp + 3448], rdx
                                                                                        jmp   n33_call_builtin_icon_α
n32_keyword_icon_β:
                                                                                        jmp   n35_lit_charset_α
.Lx162_0:
                        .quad            .Lx162_0_s
.Lx162_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 3408], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 3416], rax
                        .section         .rodata
.Lrkfn164:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn164]
                        lea              rsi, [rbp + 3408]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                        cmp              eax, 99
                                                                                        je    n35_lit_charset_α
                                                                                        jmp   n34_call_builtin_icon_α
n33_call_builtin_icon_β:
                                                                                        jmp   n35_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 3360], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3368], rax
                        .section         .rodata
.Lrkfn166:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn166]
                        lea              rsi, [rbp + 3360]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                        cmp              eax, 99
                                                                                        je    n35_lit_charset_α
                                                                                        jmp   n35_lit_charset_α
n34_call_builtin_icon_β:
                                                                                        jmp   n35_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_charset_α:
                        mov              qword ptr [rbp + 3328], 1
                        mov              dword ptr [rbp + 3332], -1
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rbp + 3336], rax
                                                                                        jmp   n36_call_builtin_icon_α
.Lx167_0:
                        .quad            .Lx167_0_s
.Lx167_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3328]
                        mov              qword ptr [rbp + 3296], rax
                        mov              rax, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 3304], rax
                        .section         .rodata
.Lrkfn169:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn169]
                        lea              rsi, [rbp + 3296]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx
                        cmp              eax, 99
                                                                                        je    n38_lit_charset_α
                                                                                        jmp   n37_call_builtin_icon_α
n36_call_builtin_icon_β:
                                                                                        jmp   n38_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n37_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 3256], rax
                        .section         .rodata
.Lrkfn171:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn171]
                        lea              rsi, [rbp + 3248]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                        cmp              eax, 99
                                                                                        je    n38_lit_charset_α
                                                                                        jmp   n38_lit_charset_α
n37_call_builtin_icon_β:
                                                                                        jmp   n38_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_charset_α:
                        mov              qword ptr [rbp + 3216], 1
                        mov              dword ptr [rbp + 3220], -1
                        mov              rax, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rbp + 3224], rax
                                                                                        jmp   n39_call_builtin_icon_α
.Lx172_0:
                        .quad            .Lx172_0_s
.Lx172_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 3184], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 3192], rax
                        .section         .rodata
.Lrkfn174:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn174]
                        lea              rsi, [rbp + 3184]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx
                        cmp              eax, 99
                                                                                        je    n41_lit_charset_α
                                                                                        jmp   n40_call_builtin_icon_α
n39_call_builtin_icon_β:
                                                                                        jmp   n41_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3168]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 3144], rax
                        .section         .rodata
.Lrkfn176:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn176]
                        lea              rsi, [rbp + 3136]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                        cmp              eax, 99
                                                                                        je    n41_lit_charset_α
                                                                                        jmp   n41_lit_charset_α
n40_call_builtin_icon_β:
                                                                                        jmp   n41_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_charset_α:
                        mov              qword ptr [rbp + 3104], 1
                        mov              dword ptr [rbp + 3108], -1
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rbp + 3112], rax
                                                                                        jmp   n42_call_builtin_icon_α
.Lx177_0:
                        .quad            .Lx177_0_s
.Lx177_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n42_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 3080], rax
                        .section         .rodata
.Lrkfn179:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn179]
                        lea              rsi, [rbp + 3072]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
                        cmp              eax, 99
                                                                                        je    n44_lit_charset_α
                                                                                        jmp   n43_call_builtin_icon_α
n42_call_builtin_icon_β:
                                                                                        jmp   n44_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n43_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 3032], rax
                        .section         .rodata
.Lrkfn181:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn181]
                        lea              rsi, [rbp + 3024]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                        cmp              eax, 99
                                                                                        je    n44_lit_charset_α
                                                                                        jmp   n44_lit_charset_α
n43_call_builtin_icon_β:
                                                                                        jmp   n44_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_charset_α:
                        mov              qword ptr [rbp + 2992], 1
                        mov              dword ptr [rbp + 2996], -1
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rbp + 3000], rax
                                                                                        jmp   n45_call_builtin_icon_α
.Lx182_0:
                        .quad            .Lx182_0_s
.Lx182_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n45_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 2968], rax
                        .section         .rodata
.Lrkfn184:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn184]
                        lea              rsi, [rbp + 2960]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                        cmp              eax, 99
                                                                                        je    n47_keyword_icon_α
                                                                                        jmp   n46_call_builtin_icon_α
n45_call_builtin_icon_β:
                                                                                        jmp   n47_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n46_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 2912], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 2920], rax
                        .section         .rodata
.Lrkfn186:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn186]
                        lea              rsi, [rbp + 2912]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                        cmp              eax, 99
                                                                                        je    n47_keyword_icon_α
                                                                                        jmp   n47_keyword_icon_α
n46_call_builtin_icon_β:
                                                                                        jmp   n47_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n47_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx187_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n50_keyword_icon_α
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                                                                                        jmp   n48_call_builtin_icon_α
n47_keyword_icon_β:
                                                                                        jmp   n50_keyword_icon_α
.Lx187_0:
                        .quad            .Lx187_0_s
.Lx187_0_s:
                        .string          "&ascii"
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 2840], rax
                        .section         .rodata
.Lrkfn189:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn189]
                        lea              rsi, [rbp + 2832]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx
                        cmp              eax, 99
                                                                                        je    n50_keyword_icon_α
                                                                                        jmp   n49_call_builtin_icon_α
n48_call_builtin_icon_β:
                                                                                        jmp   n50_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n49_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2792], rax
                        .section         .rodata
.Lrkfn191:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn191]
                        lea              rsi, [rbp + 2784]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                        cmp              eax, 99
                                                                                        je    n50_keyword_icon_α
                                                                                        jmp   n50_keyword_icon_α
n49_call_builtin_icon_β:
                                                                                        jmp   n50_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n50_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx192_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n53_lit_charset_α
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                                                                                        jmp   n51_call_builtin_icon_α
n50_keyword_icon_β:
                                                                                        jmp   n53_lit_charset_α
.Lx192_0:
                        .quad            .Lx192_0_s
.Lx192_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n51_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2712], rax
                        .section         .rodata
.Lrkfn194:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn194]
                        lea              rsi, [rbp + 2704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        cmp              eax, 99
                                                                                        je    n53_lit_charset_α
                                                                                        jmp   n52_call_builtin_icon_α
n51_call_builtin_icon_β:
                                                                                        jmp   n53_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n52_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 2664], rax
                        .section         .rodata
.Lrkfn196:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn196]
                        lea              rsi, [rbp + 2656]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                        cmp              eax, 99
                                                                                        je    n53_lit_charset_α
                                                                                        jmp   n53_lit_charset_α
n52_call_builtin_icon_β:
                                                                                        jmp   n53_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_charset_α:
                        mov              qword ptr [rbp + 2624], 1
                        mov              dword ptr [rbp + 2628], -1
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rbp + 2632], rax
                                                                                        jmp   n54_unop_α
.Lx197_0:
                        .quad            .Lx197_0_s
.Lx197_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n54_unop_α:
                        mov              rdi, qword ptr [rbp + 2624]
                        mov              rsi, qword ptr [rbp + 2632]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                                                                                        jmp   n55_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n55_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2584], rax
                        .section         .rodata
.Lrkfn200:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn200]
                        lea              rsi, [rbp + 2576]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        cmp              eax, 99
                                                                                        je    n56_lit_charset_α
                                                                                        jmp   n56_lit_charset_α
n55_call_builtin_icon_β:
                                                                                        jmp   n56_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_charset_α:
                        mov              qword ptr [rbp + 2544], 1
                        mov              dword ptr [rbp + 2548], -1
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n57_unop_α
.Lx201_0:
                        .quad            .Lx201_0_s
.Lx201_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#-----------------------------------------------------------------------------------------------------------------------
n57_unop_α:
                        mov              rdi, qword ptr [rbp + 2544]
                        mov              rsi, qword ptr [rbp + 2552]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                                                                                        jmp   n58_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n58_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2504], rax
                        .section         .rodata
.Lrkfn204:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn204]
                        lea              rsi, [rbp + 2496]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              eax, 99
                                                                                        je    n59_lit_charset_α
                                                                                        jmp   n59_lit_charset_α
n58_call_builtin_icon_β:
                                                                                        jmp   n59_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_charset_α:
                        mov              qword ptr [rbp + 2464], 1
                        mov              dword ptr [rbp + 2468], -1
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n60_unop_α
.Lx205_0:
                        .quad            .Lx205_0_s
.Lx205_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n60_unop_α:
                        mov              rdi, qword ptr [rbp + 2464]
                        mov              rsi, qword ptr [rbp + 2472]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n61_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n61_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2424], rax
                        .section         .rodata
.Lrkfn208:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn208]
                        lea              rsi, [rbp + 2416]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              eax, 99
                                                                                        je    n62_lit_charset_α
                                                                                        jmp   n62_lit_charset_α
n61_call_builtin_icon_β:
                                                                                        jmp   n62_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_charset_α:
                        mov              qword ptr [rbp + 2384], 1
                        mov              dword ptr [rbp + 2388], -1
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n63_unop_α
.Lx209_0:
                        .quad            .Lx209_0_s
.Lx209_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n63_unop_α:
                        mov              rdi, qword ptr [rbp + 2384]
                        mov              rsi, qword ptr [rbp + 2392]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                                                                                        jmp   n64_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n64_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2344], rax
                        .section         .rodata
.Lrkfn212:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn212]
                        lea              rsi, [rbp + 2336]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              eax, 99
                                                                                        je    n65_keyword_icon_α
                                                                                        jmp   n65_keyword_icon_α
n64_call_builtin_icon_β:
                                                                                        jmp   n65_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n65_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx213_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n68_keyword_icon_α
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                                                                                        jmp   n66_unop_α
n65_keyword_icon_β:
                                                                                        jmp   n68_keyword_icon_α
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          "&ascii"
#-----------------------------------------------------------------------------------------------------------------------
n66_unop_α:
                        mov              rdi, qword ptr [rbp + 2288]
                        mov              rsi, qword ptr [rbp + 2296]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n67_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n67_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2248], rax
                        .section         .rodata
.Lrkfn216:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn216]
                        lea              rsi, [rbp + 2240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                        cmp              eax, 99
                                                                                        je    n68_keyword_icon_α
                                                                                        jmp   n68_keyword_icon_α
n67_call_builtin_icon_β:
                                                                                        jmp   n68_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n68_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx217_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n71_keyword_icon_α
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                                                                                        jmp   n69_unop_α
n68_keyword_icon_β:
                                                                                        jmp   n71_keyword_icon_α
.Lx217_0:
                        .quad            .Lx217_0_s
.Lx217_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n69_unop_α:
                        mov              rdi, qword ptr [rbp + 2192]
                        mov              rsi, qword ptr [rbp + 2200]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n70_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n70_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2152], rax
                        .section         .rodata
.Lrkfn220:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn220]
                        lea              rsi, [rbp + 2144]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        cmp              eax, 99
                                                                                        je    n71_keyword_icon_α
                                                                                        jmp   n71_keyword_icon_α
n70_call_builtin_icon_β:
                                                                                        jmp   n71_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n71_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx221_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n75_keyword_icon_α
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                                                                                        jmp   n72_lit_real_α
n71_keyword_icon_β:
                                                                                        jmp   n75_keyword_icon_α
.Lx221_0:
                        .quad            .Lx221_0_s
.Lx221_0_s:
                        .string          "&e"
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_real_α:
                        mov              qword ptr [rbp + 2112], 7
                        mov              rax, qword ptr [rip + .Lx222_0]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n73_binop_test_α
.Lx222_0:
                        .quad            4613262278296967578
#-----------------------------------------------------------------------------------------------------------------------
n73_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2080]
                        mov              rsi, qword ptr [rbp + 2088]
                        mov              rdx, qword ptr [rbp + 2112]
                        mov              rcx, qword ptr [rbp + 2120]
                        mov              r8d, 7
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n75_keyword_icon_α
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n74_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n74_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx224_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n75_keyword_icon_α
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                                                                                        jmp   n76_lit_real_α
n74_keyword_icon_β:
                                                                                        jmp   n75_keyword_icon_α
.Lx224_0:
                        .quad            .Lx224_0_s
.Lx224_0_s:
                        .string          "&e"
#-----------------------------------------------------------------------------------------------------------------------
n75_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx225_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n82_keyword_icon_α
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n77_lit_real_α
n75_keyword_icon_β:
                                                                                        jmp   n82_keyword_icon_α
.Lx225_0:
                        .quad            .Lx225_0_s
.Lx225_0_s:
                        .string          "&pi"
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_real_α:
                        mov              qword ptr [rbp + 2048], 7
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n78_binop_test_α
.Lx226_0:
                        .quad            4613487458278336102
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_real_α:
                        mov              qword ptr [rbp + 1872], 7
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rbp + 1880], rax
                                                                                        jmp   n79_binop_test_α
.Lx227_0:
                        .quad            4614253070214989087
#-----------------------------------------------------------------------------------------------------------------------
n78_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2016]
                        mov              rsi, qword ptr [rbp + 2024]
                        mov              rdx, qword ptr [rbp + 2048]
                        mov              rcx, qword ptr [rbp + 2056]
                        mov              r8d, 5
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n75_keyword_icon_α
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n80_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n79_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1840]
                        mov              rsi, qword ptr [rbp + 1848]
                        mov              rdx, qword ptr [rbp + 1872]
                        mov              rcx, qword ptr [rbp + 1880]
                        mov              r8d, 7
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n82_keyword_icon_α
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n81_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n80_conjunction_α:
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n83_call_proc_staged_α
n80_conjunction_β:
                                                                                        jmp   n75_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n81_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx231_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n82_keyword_icon_α
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   n84_lit_real_α
n81_keyword_icon_β:
                                                                                        jmp   n82_keyword_icon_α
.Lx231_0:
                        .quad            .Lx231_0_s
.Lx231_0_s:
                        .string          "&pi"
#-----------------------------------------------------------------------------------------------------------------------
n82_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx232_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n91_keyword_icon_α
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n85_lit_real_α
n82_keyword_icon_β:
                                                                                        jmp   n91_keyword_icon_α
.Lx232_0:
                        .quad            .Lx232_0_s
.Lx232_0_s:
                        .string          "&phi"
#-----------------------------------------------------------------------------------------------------------------------
n83_call_proc_staged_α:
                        lea              rsi, [rbp + 2000]
                        call             proc_if_ok_dcα
                                                                                        jmp   .Lx234_2
.Lx234_2:
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              eax, 99
                                                                                        je    n75_keyword_icon_α
                                                                                        jmp   n86_call_builtin_icon_α
n83_call_proc_staged_β:
                                                                                        jmp   n75_keyword_icon_α
.Lx234_0:
                        .quad            .Lx234_0_s
.Lx234_0_s:
                        .string          "if_ok"
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_real_α:
                        mov              qword ptr [rbp + 1808], 7
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n87_binop_test_α
.Lx235_0:
                        .quad            4614275588213125939
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_real_α:
                        mov              qword ptr [rbp + 1632], 7
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n88_binop_test_α
.Lx236_0:
                        .quad            4609929614572713411
#-----------------------------------------------------------------------------------------------------------------------
n86_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1912], rax
                        .section         .rodata
.Lrkfn238:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn238]
                        lea              rsi, [rbp + 1904]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              eax, 99
                                                                                        je    n75_keyword_icon_α
                                                                                        jmp   n75_keyword_icon_α
n86_call_builtin_icon_β:
                                                                                        jmp   n75_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n87_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1776]
                        mov              rsi, qword ptr [rbp + 1784]
                        mov              rdx, qword ptr [rbp + 1808]
                        mov              rcx, qword ptr [rbp + 1816]
                        mov              r8d, 5
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n82_keyword_icon_α
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n89_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n88_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1600]
                        mov              rsi, qword ptr [rbp + 1608]
                        mov              rdx, qword ptr [rbp + 1632]
                        mov              rcx, qword ptr [rbp + 1640]
                        mov              r8d, 7
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n91_keyword_icon_α
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n90_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n89_conjunction_α:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n92_call_proc_staged_α
n89_conjunction_β:
                                                                                        jmp   n82_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n90_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx242_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n91_keyword_icon_α
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n93_lit_real_α
n90_keyword_icon_β:
                                                                                        jmp   n91_keyword_icon_α
.Lx242_0:
                        .quad            .Lx242_0_s
.Lx242_0_s:
                        .string          "&phi"
#-----------------------------------------------------------------------------------------------------------------------
n91_keyword_icon_α:
                        mov              qword ptr [rbp + 1376], 0
                        mov              qword ptr [rbp + 1384], 0
                                                                                        jmp   n94_call_builtin_icon_α
n91_keyword_icon_β:
                                                                                        jmp   n98_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n92_call_proc_staged_α:
                        lea              rsi, [rbp + 1760]
                        call             proc_if_ok_dcα
                                                                                        jmp   .Lx245_2
.Lx245_2:
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              eax, 99
                                                                                        je    n82_keyword_icon_α
                                                                                        jmp   n95_call_builtin_icon_α
n92_call_proc_staged_β:
                                                                                        jmp   n82_keyword_icon_α
.Lx245_0:
                        .quad            .Lx245_0_s
.Lx245_0_s:
                        .string          "if_ok"
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_real_α:
                        mov              qword ptr [rbp + 1568], 7
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n96_binop_test_α
.Lx246_0:
                        .quad            4609974650568987116
#-----------------------------------------------------------------------------------------------------------------------
n94_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1352], rax
                        .section         .rodata
.Lrkfn248:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn248]
                        lea              rsi, [rbp + 1344]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 99
                                                                                        je    n98_disjunction_α
                                                                                        jmp   n97_call_builtin_icon_α
n94_call_builtin_icon_β:
                                                                                        jmp   n98_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n95_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1672], rax
                        .section         .rodata
.Lrkfn250:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn250]
                        lea              rsi, [rbp + 1664]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              eax, 99
                                                                                        je    n82_keyword_icon_α
                                                                                        jmp   n82_keyword_icon_α
n95_call_builtin_icon_β:
                                                                                        jmp   n82_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n96_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1536]
                        mov              rsi, qword ptr [rbp + 1544]
                        mov              rdx, qword ptr [rbp + 1568]
                        mov              rcx, qword ptr [rbp + 1576]
                        mov              r8d, 5
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n91_keyword_icon_α
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n99_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n97_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1304], rax
                        .section         .rodata
.Lrkfn253:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn253]
                        lea              rsi, [rbp + 1296]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 99
                                                                                        je    n98_disjunction_α
                                                                                        jmp   n98_disjunction_α
n97_call_builtin_icon_β:
                                                                                        jmp   n98_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n98_disjunction_α:
                        mov              qword ptr [rbp + 1184], 0
                        mov              qword ptr [rbp + 1192], 0
                        mov              dword ptr [rbp + 1200], 0
                                                                                        jmp   n101_keyword_icon_α
n98_disjunction_as:
                        mov              eax, dword ptr [rbp + 1200]
                        cmp              eax, 0
                                                                                        jne   .Lx255_0
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n100_call_builtin_icon_α
.Lx255_0:
                        cmp              eax, 1
                                                                                        jne   .Lx255_1
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n100_call_builtin_icon_α
.Lx255_1:
                                                                                        jmp   n100_call_builtin_icon_α
n98_disjunction_β:
                        mov              eax, dword ptr [rbp + 1200]
                        cmp              eax, 0
                                                                                        je    n98_disjunction_af
                                                                                        jmp   n98_disjunction_af
n98_disjunction_af:
                        add              dword ptr [rbp + 1200], 1
                        mov              eax, dword ptr [rbp + 1200]
                        cmp              eax, 1
                                                                                        je    n102_lit_string_α
                                                                                        jmp   n105_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n99_conjunction_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n104_call_proc_staged_α
n99_conjunction_β:
                                                                                        jmp   n91_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n100_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1160], rax
                        .section         .rodata
.Lrkfn258:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn258]
                        lea              rsi, [rbp + 1152]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 99
                                                                                        je    n98_disjunction_β
                                                                                        jmp   n105_disjunction_α
n100_call_builtin_icon_β:
                                                                                        jmp   n98_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n101_keyword_icon_α:
                        mov              qword ptr [rbp + 1232], 0
                        mov              qword ptr [rbp + 1240], 0
                                                                                        jmp   n103_unop_test_α
n101_keyword_icon_β:
                                                                                        jmp   n98_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:
                        mov              qword ptr [rbp + 1264], 1
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n98_disjunction_as
n102_lit_string_β:
                                                                                        jmp   n98_disjunction_af
.Lx260_0:
                        .quad            .Lx260_0_s
.Lx260_0_s:
                        .string          "null-is-null"
#-----------------------------------------------------------------------------------------------------------------------
n103_unop_test_α:
                        mov              eax, dword ptr [rbp + 1232]
                        cmp              eax, 99
                                                                                        je    n98_disjunction_af
                        cmp              eax, 0
                                                                                        je    n98_disjunction_af
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n98_disjunction_as
n103_unop_test_β:
                                                                                        jmp   n98_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n104_call_proc_staged_α:
                        lea              rsi, [rbp + 1520]
                        call             proc_if_ok_dcα
                                                                                        jmp   .Lx263_2
.Lx263_2:
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    n91_keyword_icon_α
                                                                                        jmp   n106_call_builtin_icon_α
n104_call_proc_staged_β:
                                                                                        jmp   n91_keyword_icon_α
.Lx263_0:
                        .quad            .Lx263_0_s
.Lx263_0_s:
                        .string          "if_ok"
#-----------------------------------------------------------------------------------------------------------------------
n105_disjunction_α:
                        mov              qword ptr [rbp + 1056], 0
                        mov              qword ptr [rbp + 1064], 0
                        mov              dword ptr [rbp + 1072], 0
                                                                                        jmp   n108_keyword_icon_α
n105_disjunction_as:
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 0
                                                                                        jne   .Lx265_0
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n107_call_builtin_icon_α
.Lx265_0:
                        cmp              eax, 1
                                                                                        jne   .Lx265_1
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n107_call_builtin_icon_α
.Lx265_1:
                                                                                        jmp   n107_call_builtin_icon_α
n105_disjunction_β:
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 0
                                                                                        je    n105_disjunction_af
                                                                                        jmp   n105_disjunction_af
n105_disjunction_af:
                        add              dword ptr [rbp + 1072], 1
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 1
                                                                                        je    n109_lit_string_α
                                                                                        jmp   n110_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n106_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1432], rax
                        .section         .rodata
.Lrkfn267:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn267]
                        lea              rsi, [rbp + 1424]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    n91_keyword_icon_α
                                                                                        jmp   n91_keyword_icon_α
n106_call_builtin_icon_β:
                                                                                        jmp   n91_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n107_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1032], rax
                        .section         .rodata
.Lrkfn269:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn269]
                        lea              rsi, [rbp + 1024]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 99
                                                                                        je    n105_disjunction_β
                                                                                        jmp   n110_lit_integer_α
n107_call_builtin_icon_β:
                                                                                        jmp   n105_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n108_keyword_icon_α:
                                                                                        jmp   n105_disjunction_af
n108_keyword_icon_β:
                                                                                        jmp   n105_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n105_disjunction_as
n109_lit_string_β:
                                                                                        jmp   n105_disjunction_af
.Lx271_0:
                        .quad            .Lx271_0_s
.Lx271_0_s:
                        .string          "fail-failed"
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_integer_α:
                        mov              qword ptr [rbp + 992], 6
                        mov              rax, qword ptr [rip + .Lx272_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n111_keyword_assign_α
.Lx272_0:
                        .quad            42
#-----------------------------------------------------------------------------------------------------------------------
n111_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 992]
                        mov              rsi, qword ptr [rbp + 1000]
                        call             rt_keyword_error_set@PLT
                        cmp              eax, 99
                                                                                        je    n112_keyword_icon_α
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n112_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n112_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx274_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n114_lit_integer_α
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n113_call_builtin_icon_α
n112_keyword_icon_β:
                                                                                        jmp   n114_lit_integer_α
.Lx274_0:
                        .quad            .Lx274_0_s
.Lx274_0_s:
                        .string          "&error"
#-----------------------------------------------------------------------------------------------------------------------
n113_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax
                        .section         .rodata
.Lrkfn276:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn276]
                        lea              rsi, [rbp + 912]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n114_lit_integer_α
                                                                                        jmp   n114_lit_integer_α
n113_call_builtin_icon_β:
                                                                                        jmp   n114_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_integer_α:
                        mov              qword ptr [rbp + 880], 6
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n115_keyword_assign_α
.Lx277_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n115_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        call             rt_keyword_error_set@PLT
                        cmp              eax, 99
                                                                                        je    n116_keyword_icon_α
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n116_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n116_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx279_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n118_keyword_icon_α
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n117_call_builtin_icon_α
n116_keyword_icon_β:
                                                                                        jmp   n118_keyword_icon_α
.Lx279_0:
                        .quad            .Lx279_0_s
.Lx279_0_s:
                        .string          "&error"
#-----------------------------------------------------------------------------------------------------------------------
n117_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lrkfn281:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn281]
                        lea              rsi, [rbp + 800]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n118_keyword_icon_α
                                                                                        jmp   n118_keyword_icon_α
n117_call_builtin_icon_β:
                                                                                        jmp   n118_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n118_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx282_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n121_keyword_icon_α
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n119_call_builtin_icon_α
n118_keyword_icon_β:
                                                                                        jmp   n121_keyword_icon_α
.Lx282_0:
                        .quad            .Lx282_0_s
.Lx282_0_s:
                        .string          "&dump"
#-----------------------------------------------------------------------------------------------------------------------
n119_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax
                        .section         .rodata
.Lrkfn284:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn284]
                        lea              rsi, [rbp + 720]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n121_keyword_icon_α
                                                                                        jmp   n120_call_builtin_icon_α
n119_call_builtin_icon_β:
                                                                                        jmp   n121_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n120_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                        .section         .rodata
.Lrkfn286:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn286]
                        lea              rsi, [rbp + 672]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n121_keyword_icon_α
                                                                                        jmp   n121_keyword_icon_α
n120_call_builtin_icon_β:
                                                                                        jmp   n121_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n121_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx287_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n124_keyword_icon_α
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n122_call_builtin_icon_α
n121_keyword_icon_β:
                                                                                        jmp   n124_keyword_icon_α
.Lx287_0:
                        .quad            .Lx287_0_s
.Lx287_0_s:
                        .string          "&trace"
#-----------------------------------------------------------------------------------------------------------------------
n122_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        .section         .rodata
.Lrkfn289:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn289]
                        lea              rsi, [rbp + 592]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n124_keyword_icon_α
                                                                                        jmp   n123_call_builtin_icon_α
n122_call_builtin_icon_β:
                                                                                        jmp   n124_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n123_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        .section         .rodata
.Lrkfn291:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn291]
                        lea              rsi, [rbp + 544]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n124_keyword_icon_α
                                                                                        jmp   n124_keyword_icon_α
n123_call_builtin_icon_β:
                                                                                        jmp   n124_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n124_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx292_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n127_keyword_icon_α
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n125_call_builtin_icon_α
n124_keyword_icon_β:
                                                                                        jmp   n127_keyword_icon_α
.Lx292_0:
                        .quad            .Lx292_0_s
.Lx292_0_s:
                        .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n125_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        .section         .rodata
.Lrkfn294:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn294]
                        lea              rsi, [rbp + 464]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n127_keyword_icon_α
                                                                                        jmp   n126_call_builtin_icon_α
n125_call_builtin_icon_β:
                                                                                        jmp   n127_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n126_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lrkfn296:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn296]
                        lea              rsi, [rbp + 416]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n127_keyword_icon_α
                                                                                        jmp   n127_keyword_icon_α
n126_call_builtin_icon_β:
                                                                                        jmp   n127_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n127_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx297_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n129_keyword_icon_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n128_call_builtin_icon_α
n127_keyword_icon_β:
                                                                                        jmp   n129_keyword_icon_α
.Lx297_0:
                        .quad            .Lx297_0_s
.Lx297_0_s:
                        .string          "&col"
#-----------------------------------------------------------------------------------------------------------------------
n128_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn299:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn299]
                        lea              rsi, [rbp + 336]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n129_keyword_icon_α
                                                                                        jmp   n129_keyword_icon_α
n128_call_builtin_icon_β:
                                                                                        jmp   n129_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n129_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx300_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n131_keyword_icon_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n130_call_builtin_icon_α
n129_keyword_icon_β:
                                                                                        jmp   n131_keyword_icon_α
.Lx300_0:
                        .quad            .Lx300_0_s
.Lx300_0_s:
                        .string          "&row"
#-----------------------------------------------------------------------------------------------------------------------
n130_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn302:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn302]
                        lea              rsi, [rbp + 256]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n131_keyword_icon_α
                                                                                        jmp   n131_keyword_icon_α
n130_call_builtin_icon_β:
                                                                                        jmp   n131_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n131_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx303_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n133_keyword_icon_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n132_call_builtin_icon_α
n131_keyword_icon_β:
                                                                                        jmp   n133_keyword_icon_α
.Lx303_0:
                        .quad            .Lx303_0_s
.Lx303_0_s:
                        .string          "&x"
#-----------------------------------------------------------------------------------------------------------------------
n132_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn305:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn305]
                        lea              rsi, [rbp + 176]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n133_keyword_icon_α
                                                                                        jmp   n133_keyword_icon_α
n132_call_builtin_icon_β:
                                                                                        jmp   n133_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n133_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx306_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n135_keyword_icon_α
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n134_call_builtin_icon_α
n133_keyword_icon_β:
                                                                                        jmp   n135_keyword_icon_α
.Lx306_0:
                        .quad            .Lx306_0_s
.Lx306_0_s:
                        .string          "&y"
#-----------------------------------------------------------------------------------------------------------------------
n134_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn308:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn308]
                        lea              rsi, [rbp + 96]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n135_keyword_icon_α
                                                                                        jmp   n135_keyword_icon_α
n134_call_builtin_icon_β:
                                                                                        jmp   n135_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n135_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx309_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    main_ω
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n136_call_builtin_icon_α
n135_keyword_icon_β:
                                                                                        jmp   main_ω
.Lx309_0:
                        .quad            .Lx309_0_s
.Lx309_0_s:
                        .string          "&level"
#-----------------------------------------------------------------------------------------------------------------------
n136_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn311:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn311]
                        lea              rsi, [rbp + 16]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n136_call_builtin_icon_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 4048]
                        add              rsp, 4056
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 4048]
                        add              rsp, 4056
                        ret
                        .section         .note.GNU-stack,"",@progbits
