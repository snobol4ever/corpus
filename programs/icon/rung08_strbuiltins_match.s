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
                        sub              rsp, 480
                        mov              qword ptr [rsp + 456], rcx
                        mov              qword ptr [rsp + 464], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:        mov              r11, 1
                        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 5
                        mov              rax, qword ptr [rip + .Lx16_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n1_scan_enter_α
.Lx16_0:                .quad            .Lx16_0_s
.Lx16_0_s:              .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n1_scan_enter_α:        mov              r11, 2
                        mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              r11, 3
                        mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 3
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n3_scan_match_α
.Lx19_0:                .quad            .Lx19_0_s
.Lx19_0_s:              .string          "hel"
#-----------------------------------------------------------------------------------------------------------------------
n3_scan_match_α:        mov              r11, 4
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 3;                              jl    n6_scan_α
                        mov              rdi, qword ptr [rip + .Lx21_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 3
                        push             r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             memcmp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        pop              r12
                        test             eax, eax;                            jne   n6_scan_α
                        mov              qword ptr [rsp + 368], 3
                        mov              rax, r14
                        add              rax, 4
                        mov              qword ptr [rsp + 376], rax;          jmp   n4_call_builtin_icon_α
.Lx21_0:                .quad            .Lx21_0_s
.Lx21_0_s:              .string          "hel"
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_icon_α: mov              r11, 5
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax
                        .section         .rodata
.Lrkfn23:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn23]
                        lea              rsi, [rsp + 336]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n6_scan_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n5_scan_α
n4_call_builtin_icon_β: mov              r11, 5;                              jmp   n6_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n5_scan_α:              mov              r11, 6
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 296], rax
                        lea              rdi, [rsp + 256]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 256]
                        mov              r14, qword ptr [rsp + 264]
                        mov              r15, qword ptr [rsp + 272];          jmp   n7_lit_string_α
n5_scan_β:              mov              r11, 6;                              jmp   n7_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_scan_α:              mov              r11, 7
                        lea              rdi, [rsp + 256]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 256]
                        mov              r14, qword ptr [rsp + 264]
                        mov              r15, qword ptr [rsp + 272];          jmp   n7_lit_string_α
n6_scan_β:              mov              r11, 7;                              jmp   n7_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              r11, 8
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 5
                        mov              rax, qword ptr [rip + .Lx28_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n8_scan_enter_α
.Lx28_0:                .quad            .Lx28_0_s
.Lx28_0_s:              .string          "world"
#-----------------------------------------------------------------------------------------------------------------------
n8_scan_enter_α:        mov              r11, 9
                        mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n9_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n9_disjunction_α:       mov              r11, 10
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              dword ptr [rsp + 144], 0;            jmp   n13_lit_string_α
n9_disjunction_as:      mov              r11, 10
                        mov              eax, dword ptr [rsp + 144]
                        cmp              eax, 0;                              jne   .Lx32_0
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 136], rax;          jmp   n10_call_builtin_icon_α
.Lx32_0:                cmp              eax, 1;                              jne   .Lx32_1
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 136], rax;          jmp   n10_call_builtin_icon_α
.Lx32_1:                                                                      jmp   n10_call_builtin_icon_α
n9_disjunction_β:       mov              r11, 10
                        mov              eax, dword ptr [rsp + 144]
                        cmp              eax, 0;                              je    n9_disjunction_af
                                                                              jmp   n9_disjunction_af
n9_disjunction_af:      mov              r11, 10
                        add              dword ptr [rsp + 144], 1
                        mov              eax, dword ptr [rsp + 144]
                        cmp              eax, 1;                              je    n12_lit_integer_α
                                                                              jmp   n15_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_icon_α:
                        mov              r11, 11
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn34:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn34]
                        lea              rsi, [rsp + 96]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n9_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n11_scan_α
n10_call_builtin_icon_β:
                        mov              r11, 11;                             jmp   n9_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n11_scan_α:             mov              r11, 12
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        lea              rdi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 16]
                        mov              r14, qword ptr [rsp + 24]
                        mov              r15, qword ptr [rsp + 32];           jmp   main_γ
n11_scan_β:             mov              r11, 12;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      mov              r11, 13
                        mov              qword ptr [rsp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n9_disjunction_as
n12_lit_integer_β:      mov              r11, 13;                             jmp   n9_disjunction_af
.Lx37_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:       mov              r11, 14
                        mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 3
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n14_scan_match_α
n13_lit_string_β:       mov              r11, 14;                             jmp   n9_disjunction_af
.Lx38_0:                .quad            .Lx38_0_s
.Lx38_0_s:              .string          "xyz"
#-----------------------------------------------------------------------------------------------------------------------
n14_scan_match_α:       mov              r11, 15
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 3;                              jl    n9_disjunction_af
                        mov              rdi, qword ptr [rip + .Lx40_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 3
                        push             r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             memcmp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        pop              r12
                        test             eax, eax;                            jne   n9_disjunction_af
                        mov              qword ptr [rsp + 160], 3
                        mov              rax, r14
                        add              rax, 4
                        mov              qword ptr [rsp + 168], rax;          jmp   n9_disjunction_as
n14_scan_match_β:       mov              r11, 15;                             jmp   n9_disjunction_af
.Lx40_0:                .quad            .Lx40_0_s
.Lx40_0_s:              .string          "xyz"
#-----------------------------------------------------------------------------------------------------------------------
n15_scan_α:             mov              r11, 16
                        lea              rdi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 16]
                        mov              r14, qword ptr [rsp + 24]
                        mov              r15, qword ptr [rsp + 32];           jmp   main_ω
n15_scan_β:             mov              r11, 16;                             jmp   main_ω
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
