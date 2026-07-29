                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
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
                        sub              rsp, 1240
                        mov              rdi, rsp
                        mov              ecx, 1240
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 1232], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 1136], 0
                        mov              qword ptr [rbp + 1144], 0
                        mov              dword ptr [rbp + 1152], 0
                                                                                        jmp   n2_lit_string_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 0
                                                                                        jne   .Lx50_0
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n1_scan_enter_α
.Lx50_0:
                        cmp              eax, 1
                                                                                        jne   .Lx50_1
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n1_scan_enter_α
.Lx50_1:
                        cmp              eax, 2
                                                                                        jne   .Lx50_2
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n1_scan_enter_α
.Lx50_2:
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
                                                                                        je    n3_lit_string_α
                        cmp              eax, 2
                                                                                        je    n4_lit_string_α
                                                                                        jmp   n10_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 1136]
                        mov              rsi, qword ptr [rbp + 1144]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n5_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 1168], 1
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n0_disjunction_as
n2_lit_string_β:
                                                                                        jmp   n0_disjunction_af
.Lx53_0:
                        .quad            .Lx53_0_s
.Lx53_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rbp + 1184], 1
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n0_disjunction_as
n3_lit_string_β:
                                                                                        jmp   n0_disjunction_af
.Lx54_0:
                        .quad            .Lx54_0_s
.Lx54_0_s:
                        .string          "cd"
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        mov              qword ptr [rbp + 1200], 1
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n0_disjunction_as
n4_lit_string_β:
                                                                                        jmp   n0_disjunction_af
.Lx55_0:
                        .quad            .Lx55_0_s
.Lx55_0_s:
                        .string          "ef"
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:
                        mov              qword ptr [rbp + 1120], 6
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n6_scan_move_α
.Lx56_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n6_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx58_239
                        add              rsp, 16
                                                                                        jmp   n8_scan_α
.Lx58_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx58_240
                        add              rsp, 16
                                                                                        jmp   n8_scan_α
.Lx58_240:
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
                                                                                        jmp   n7_scan_α
n6_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n8_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n7_scan_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax
                        lea              rdi, [rbp + 1024]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 1024]
                        mov              r14, qword ptr [rbp + 1032]
                        mov              r15, qword ptr [rbp + 1040]
                                                                                        jmp   n9_call_builtin_icon_α
n7_scan_β:
                                                                                        jmp   n10_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n8_scan_α:
                        lea              rdi, [rbp + 1024]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 1024]
                        mov              r14, qword ptr [rbp + 1032]
                        mov              r15, qword ptr [rbp + 1040]
                                                                                        jmp   n0_disjunction_β
n8_scan_β:
                                                                                        jmp   n0_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 984], rax
                        .section         .rodata
.Lrkfn64:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn64]
                        lea              rsi, [rbp + 976]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n0_disjunction_β
                                                                                        jmp   n0_disjunction_β
n9_call_builtin_icon_β:
                                                                                        jmp   n0_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn66:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn66]
                        lea              rsi, [rbp + 944]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n11_disjunction_α
                                                                                        jmp   n11_disjunction_α
n10_call_builtin_icon_β:
                                                                                        jmp   n11_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n11_disjunction_α:
                        mov              qword ptr [rbp + 848], 0
                        mov              qword ptr [rbp + 856], 0
                        mov              dword ptr [rbp + 864], 0
                                                                                        jmp   n14_lit_string_α
n11_disjunction_as:
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 0
                                                                                        jne   .Lx68_0
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n12_scan_enter_α
.Lx68_0:
                        cmp              eax, 1
                                                                                        jne   .Lx68_1
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n12_scan_enter_α
.Lx68_1:
                        cmp              eax, 2
                                                                                        jne   .Lx68_2
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n12_scan_enter_α
.Lx68_2:
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
                                                                                        je    n15_lit_string_α
                        cmp              eax, 2
                                                                                        je    n16_lit_string_α
                                                                                        jmp   n13_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n12_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 848]
                        mov              rsi, qword ptr [rbp + 856]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n17_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn72:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn72]
                        lea              rsi, [rbp + 656]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n18_lit_integer_α
                                                                                        jmp   n18_lit_integer_α
n13_call_builtin_icon_β:
                                                                                        jmp   n18_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        mov              qword ptr [rbp + 880], 1
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n11_disjunction_as
n14_lit_string_β:
                                                                                        jmp   n11_disjunction_af
.Lx73_0:
                        .quad            .Lx73_0_s
.Lx73_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx74_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n11_disjunction_as
n15_lit_string_β:
                                                                                        jmp   n11_disjunction_af
.Lx74_0:
                        .quad            .Lx74_0_s
.Lx74_0_s:
                        .string          "world"
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        mov              qword ptr [rbp + 912], 1
                        mov              rax, qword ptr [rip + .Lx75_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n11_disjunction_as
n16_lit_string_β:
                                                                                        jmp   n11_disjunction_af
.Lx75_0:
                        .quad            .Lx75_0_s
.Lx75_0_s:
                        .string          "icon"
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:
                        mov              qword ptr [rbp + 832], 6
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n19_scan_tab_α
.Lx76_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:
                        mov              qword ptr [rbp + 624], 6
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n20_assign_α
.Lx77_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n19_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 2
                        cmp              rax, 1
                                                                                        jge   .Lx79_0
                        add              rax, r15
                        add              rax, 1
.Lx79_0:
                        cmp              rax, 1
                                                                                        jge   .Lx79_239
                        add              rsp, 16
                                                                                        jmp   n22_scan_α
.Lx79_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx79_240
                        add              rsp, 16
                                                                                        jmp   n22_scan_α
.Lx79_240:
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
                                                                                        jmp   n21_scan_α
n19_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n22_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n23_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n21_scan_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 736]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 736]
                        mov              r14, qword ptr [rbp + 744]
                        mov              r15, qword ptr [rbp + 752]
                                                                                        jmp   n24_call_builtin_icon_α
n21_scan_β:
                                                                                        jmp   n13_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n22_scan_α:
                        lea              rdi, [rbp + 736]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 736]
                        mov              r14, qword ptr [rbp + 744]
                        mov              r15, qword ptr [rbp + 752]
                                                                                        jmp   n11_disjunction_β
n22_scan_β:
                                                                                        jmp   n11_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n23_disjunction_α:
                        mov              qword ptr [rbp + 528], 0
                        mov              qword ptr [rbp + 536], 0
                        mov              dword ptr [rbp + 544], 0
                                                                                        jmp   n27_lit_string_α
n23_disjunction_as:
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 0
                                                                                        jne   .Lx86_0
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n25_scan_enter_α
.Lx86_0:
                        cmp              eax, 1
                                                                                        jne   .Lx86_1
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n25_scan_enter_α
.Lx86_1:
                        cmp              eax, 2
                                                                                        jne   .Lx86_2
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n25_scan_enter_α
.Lx86_2:
                                                                                        jmp   n25_scan_enter_α
n23_disjunction_β:
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 0
                                                                                        je    n23_disjunction_af
                        cmp              eax, 1
                                                                                        je    n23_disjunction_af
                                                                                        jmp   n23_disjunction_af
n23_disjunction_af:
                        add              dword ptr [rbp + 544], 1
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 1
                                                                                        je    n28_lit_string_α
                        cmp              eax, 2
                                                                                        je    n29_lit_string_α
                                                                                        jmp   n26_var_α
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 696], rax
                        .section         .rodata
.Lrkfn88:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn88]
                        lea              rsi, [rbp + 688]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n11_disjunction_β
                                                                                        jmp   n11_disjunction_β
n24_call_builtin_icon_β:
                                                                                        jmp   n11_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n25_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n30_var_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n31_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n23_disjunction_as
n27_lit_string_β:
                                                                                        jmp   n23_disjunction_af
.Lx93_0:
                        .quad            .Lx93_0_s
.Lx93_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n23_disjunction_as
n28_lit_string_β:
                                                                                        jmp   n23_disjunction_af
.Lx94_0:
                        .quad            .Lx94_0_s
.Lx94_0_s:
                        .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n23_disjunction_as
n29_lit_string_β:
                                                                                        jmp   n23_disjunction_af
.Lx95_0:
                        .quad            .Lx95_0_s
.Lx95_0_s:
                        .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n33_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn99:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn99]
                        lea              rsi, [rbp + 320]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n32_call_builtin_icon_α
                                                                                        jmp   n32_call_builtin_icon_α
n31_call_builtin_icon_β:
                                                                                        jmp   n32_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn101:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn101]
                        lea              rsi, [rbp + 288]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n35_disjunction_α
                                                                                        jmp   n35_disjunction_α
n32_call_builtin_icon_β:
                                                                                        jmp   n35_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:
                        mov              qword ptr [rbp + 512], 6
                        mov              rax, qword ptr [rip + .Lx102_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n36_op75_α
.Lx102_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n34_scan_α:
                        lea              rdi, [rbp + 384]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 384]
                        mov              r14, qword ptr [rbp + 392]
                        mov              r15, qword ptr [rbp + 400]
                                                                                        jmp   n23_disjunction_β
n34_scan_β:
                                                                                        jmp   n23_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n35_disjunction_α:
                        mov              qword ptr [rbp + 208], 0
                        mov              qword ptr [rbp + 216], 0
                        mov              dword ptr [rbp + 224], 0
                                                                                        jmp   n39_lit_string_α
n35_disjunction_as:
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 0
                                                                                        jne   .Lx106_0
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n37_scan_enter_α
.Lx106_0:
                        cmp              eax, 1
                                                                                        jne   .Lx106_1
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n37_scan_enter_α
.Lx106_1:
                                                                                        jmp   n37_scan_enter_α
n35_disjunction_β:
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 0
                                                                                        je    n35_disjunction_af
                                                                                        jmp   n35_disjunction_af
n35_disjunction_af:
                        add              dword ptr [rbp + 224], 1
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 1
                                                                                        je    n40_lit_string_α
                                                                                        jmp   n38_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n36_op75_α:
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 7
                                                                                        je    .Lx108_1
                        cmp              eax, 6
                                                                                        jne   .Lx108_0
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 6
                                                                                        jne   .Lx108_0
.Lx108_1:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n41_binop_α
.Lx108_0:
                        lea              rdi, [rbp + 1216]
                        lea              rsi, [rbp + 512]
                        lea              rdx, [rbp + 480]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n41_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n37_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n42_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn112:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn112]
                        lea              rsi, [rbp + 16]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n38_call_builtin_icon_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n35_disjunction_as
n39_lit_string_β:
                                                                                        jmp   n35_disjunction_af
.Lx113_0:
                        .quad            .Lx113_0_s
.Lx113_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n35_disjunction_as
n40_lit_string_β:
                                                                                        jmp   n35_disjunction_af
.Lx114_0:
                        .quad            .Lx114_0_s
.Lx114_0_s:
                        .string          "abcdef"
#-----------------------------------------------------------------------------------------------------------------------
n41_binop_α:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 6
                                                                                        jne   .Lx115_0
                        mov              rax, qword ptr [rbp + 488]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 464], 6
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n43_assign_α
.Lx115_0:
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 520]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n34_scan_α
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n43_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n44_scan_move_α
.Lx116_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n45_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n44_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 5
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx119_239
                        add              rsp, 16
                                                                                        jmp   n47_scan_α
.Lx119_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx119_240
                        add              rsp, 16
                                                                                        jmp   n47_scan_α
.Lx119_240:
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
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n46_scan_α
n44_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n47_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n45_scan_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 384]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 384]
                        mov              r14, qword ptr [rbp + 392]
                        mov              r15, qword ptr [rbp + 400]
                                                                                        jmp   n23_disjunction_β
n45_scan_β:
                                                                                        jmp   n26_var_α
#-----------------------------------------------------------------------------------------------------------------------
n46_scan_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 96]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 96]
                        mov              r14, qword ptr [rbp + 104]
                        mov              r15, qword ptr [rbp + 112]
                                                                                        jmp   n48_call_builtin_icon_α
n46_scan_β:
                                                                                        jmp   n38_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n47_scan_α:
                        lea              rdi, [rbp + 96]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 96]
                        mov              r14, qword ptr [rbp + 104]
                        mov              r15, qword ptr [rbp + 112]
                                                                                        jmp   n35_disjunction_β
n47_scan_β:
                                                                                        jmp   n35_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lrkfn127:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn127]
                        lea              rsi, [rbp + 48]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    n35_disjunction_β
                                                                                        jmp   n35_disjunction_β
n48_call_builtin_icon_β:
                                                                                        jmp   n35_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 1232]
                        add              rsp, 1240
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 1232]
                        add              rsp, 1240
                        ret
                        .section         .note.GNU-stack,"",@progbits
