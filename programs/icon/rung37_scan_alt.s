                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 1136], 0
                        mov              qword ptr [rbp + 1144], 0
                        mov              dword ptr [rbp + 1152], 0
                                                                                        jmp   n9_lit_string_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 0
                                                                                        jne   .Lx22_0
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n1_scan_enter_α
.Lx22_0:
                        cmp              eax, 1
                                                                                        jne   .Lx22_1
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n1_scan_enter_α
.Lx22_1:
                        cmp              eax, 2
                                                                                        jne   .Lx22_2
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n1_scan_enter_α
.Lx22_2:
                                                                                        jmp   n1_scan_enter_α
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 0
                                                                                        je    n0_disjunction_af
                        cmp              eax, 1
                                                                                        je    n0_disjunction_af
                                                                                        jmp   n0_disjunction_af
n0_disjunction_af:
                        add              dword ptr [rbp + 1152], 1
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 1
                                                                                        je    n8_lit_string_α
                        cmp              eax, 2
                                                                                        je    n7_lit_string_α
                                                                                        jmp   n10_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 1136]                    # lo
                        mov              rsi, qword ptr [rbp + 1144]                    # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 1120], 3                      # result
                        mov              rax, qword ptr [rip + .Lx25_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n3_scan_move_α
.Lx25_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n3_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx27_239
                        add              rsp, 16
                        add              rsp, 208
                                                                                        jmp   n6_scan_α
.Lx27_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx27_240
                        add              rsp, 16
                        add              rsp, 208
                                                                                        jmp   n6_scan_α
.Lx27_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n4_scan_α
n3_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 208
                                                                                        jmp   n6_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n4_scan_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax
                        lea              rdi, [rbp + 1024]                              # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 1024]
                        mov              r14, qword ptr [rbp + 1032]
                        mov              r15, qword ptr [rbp + 1040]
                                                                                        jmp   n5_call_builtin_icon_α
n4_scan_β:
                        add              rsp, 208
                                                                                        jmp   n10_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 984], rax
                        .section         .rodata
.Lrkfn31:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn31]                          # fn
                        lea              rsi, [rbp + 976]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 104
                                                                                        je    n0_disjunction_β
                                                                                        jmp   n0_disjunction_β
n5_call_builtin_icon_β:
                                                                                        jmp   n0_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n6_scan_α:
                        lea              rdi, [rbp + 1024]                              # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 1024]
                        mov              r14, qword ptr [rbp + 1032]
                        mov              r15, qword ptr [rbp + 1040]
                                                                                        jmp   n0_disjunction_β
n6_scan_β:
                                                                                        jmp   n0_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 1200], 2                      # result
                        mov              dword ptr [rbp + 1204], 2
                        mov              rax, qword ptr [rip + .Lx34_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n0_disjunction_as
n7_lit_string_β:
                                                                                        jmp   n0_disjunction_af
.Lx34_0:
                        .quad            .Lx34_0_s
.Lx34_0_s:
                        .string          "ef"
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        mov              qword ptr [rbp + 1184], 2                      # result
                        mov              dword ptr [rbp + 1188], 2
                        mov              rax, qword ptr [rip + .Lx35_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n0_disjunction_as
n8_lit_string_β:
                                                                                        jmp   n0_disjunction_af
.Lx35_0:
                        .quad            .Lx35_0_s
.Lx35_0_s:
                        .string          "cd"
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 1168], 2                      # result
                        mov              dword ptr [rbp + 1172], 2
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n0_disjunction_as
n9_lit_string_β:
                                                                                        jmp   n0_disjunction_af
.Lx36_0:
                        .quad            .Lx36_0_s
.Lx36_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn38:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn38]                          # fn
                        lea              rsi, [rbp + 944]                               # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 104
                                                                                        je    n11_disjunction_α
                                                                                        jmp   n11_disjunction_α
n10_call_builtin_icon_β:
                                                                                        jmp   n11_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n11_disjunction_α:
                        mov              qword ptr [rbp + 848], 0
                        mov              qword ptr [rbp + 856], 0
                        mov              dword ptr [rbp + 864], 0
                                                                                        jmp   n20_lit_string_α
n11_disjunction_as:
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 0
                                                                                        jne   .Lx40_0
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n12_scan_enter_α
.Lx40_0:
                        cmp              eax, 1
                                                                                        jne   .Lx40_1
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n12_scan_enter_α
.Lx40_1:
                        cmp              eax, 2
                                                                                        jne   .Lx40_2
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n12_scan_enter_α
.Lx40_2:
                                                                                        jmp   n12_scan_enter_α
n11_disjunction_β:
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 0
                                                                                        je    n11_disjunction_af
                        cmp              eax, 1
                                                                                        je    n11_disjunction_af
                                                                                        jmp   n11_disjunction_af
n11_disjunction_af:
                        add              dword ptr [rbp + 864], 1
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 1
                                                                                        je    n19_lit_string_α
                        cmp              eax, 2
                                                                                        je    n18_lit_string_α
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n12_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 848]                     # lo
                        mov              rsi, qword ptr [rbp + 856]                     # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n13_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:
                        mov              qword ptr [rbp + 832], 3                       # result
                        mov              rax, qword ptr [rip + .Lx43_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n14_scan_tab_α
.Lx43_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n14_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 2
                        cmp              rax, 1
                                                                                        jge   .Lx45_0
                        add              rax, r15
                        add              rax, 1
.Lx45_0:
                        cmp              rax, 1
                                                                                        jge   .Lx45_239
                        add              rsp, 16
                                                                                        jmp   n17_scan_α
.Lx45_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx45_240
                        add              rsp, 16
                                                                                        jmp   n17_scan_α
.Lx45_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n15_scan_α
n14_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n17_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n15_scan_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 736]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 736]
                        mov              r14, qword ptr [rbp + 744]
                        mov              r15, qword ptr [rbp + 752]
                                                                                        jmp   n16_call_builtin_icon_α
n15_scan_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 696], rax
                        .section         .rodata
.Lrkfn49:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn49]                          # fn
                        lea              rsi, [rbp + 688]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 104
                                                                                        je    n11_disjunction_β
                                                                                        jmp   n11_disjunction_β
n16_call_builtin_icon_β:
                                                                                        jmp   n11_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n17_scan_α:
                        lea              rdi, [rbp + 736]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 736]
                        mov              r14, qword ptr [rbp + 744]
                        mov              r15, qword ptr [rbp + 752]
                                                                                        jmp   n11_disjunction_β
n17_scan_β:
                                                                                        jmp   n11_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        mov              qword ptr [rbp + 912], 2                       # result
                        mov              dword ptr [rbp + 916], 4
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n11_disjunction_as
n18_lit_string_β:
                                                                                        jmp   n11_disjunction_af
.Lx52_0:
                        .quad            .Lx52_0_s
.Lx52_0_s:
                        .string          "icon"
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        mov              qword ptr [rbp + 896], 2                       # result
                        mov              dword ptr [rbp + 900], 5
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n11_disjunction_as
n19_lit_string_β:
                                                                                        jmp   n11_disjunction_af
.Lx53_0:
                        .quad            .Lx53_0_s
.Lx53_0_s:
                        .string          "world"
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 880], 2                       # result
                        mov              dword ptr [rbp + 884], 5
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n11_disjunction_as
n20_lit_string_β:
                                                                                        jmp   n11_disjunction_af
.Lx54_0:
                        .quad            .Lx54_0_s
.Lx54_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
