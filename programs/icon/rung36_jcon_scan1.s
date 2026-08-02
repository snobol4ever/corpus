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
                        mov              qword ptr [rbp + 10880], 0
                        mov              qword ptr [rbp + 10888], 0
                        mov              dword ptr [rbp + 10896], 0
                                                                                        jmp   n117_lit_charset_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 10896]
                        cmp              eax, 0
                                                                                        jne   .Lx137_0
                        mov              rax, qword ptr [rbp + 10912]
                        mov              qword ptr [rbp + 10880], rax
                        mov              rax, qword ptr [rbp + 10920]
                        mov              qword ptr [rbp + 10888], rax
                                                                                        jmp   n1_call_builtin_icon_α
.Lx137_0:
                        cmp              eax, 1
                                                                                        jne   .Lx137_1
                        mov              rax, qword ptr [rbp + 11072]
                        mov              qword ptr [rbp + 10880], rax
                        mov              rax, qword ptr [rbp + 11080]
                        mov              qword ptr [rbp + 10888], rax
                                                                                        jmp   n1_call_builtin_icon_α
.Lx137_1:
                                                                                        jmp   n1_call_builtin_icon_α
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 10896]
                        cmp              eax, 0
                                                                                        je    n0_disjunction_af
                                                                                        jmp   n0_disjunction_af
n0_disjunction_af:
                        add              dword ptr [rbp + 10896], 1
                        mov              eax, dword ptr [rbp + 10896]
                        cmp              eax, 1
                                                                                        je    n116_lit_string_α
                                                                                        jmp   n2_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 10880]
                        mov              qword ptr [rbp + 10848], rax
                        mov              rax, qword ptr [rbp + 10888]
                        mov              qword ptr [rbp + 10856], rax
                        .section         .rodata
.Lrkfn139:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn139]                         # fn
                        lea              rsi, [rbp + 10848]                             # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10832], rax
                        mov              qword ptr [rbp + 10840], rdx
                        cmp              eax, 104
                                                                                        je    n0_disjunction_β
                                                                                        jmp   n2_disjunction_α
n1_call_builtin_icon_β:
                                                                                        jmp   n0_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n2_disjunction_α:
                        mov              qword ptr [rbp + 10624], 0
                        mov              qword ptr [rbp + 10632], 0
                        mov              dword ptr [rbp + 10640], 0
                                                                                        jmp   n111_lit_charset_α
n2_disjunction_as:
                        mov              eax, dword ptr [rbp + 10640]
                        cmp              eax, 0
                                                                                        jne   .Lx141_0
                        mov              rax, qword ptr [rbp + 10656]
                        mov              qword ptr [rbp + 10624], rax
                        mov              rax, qword ptr [rbp + 10664]
                        mov              qword ptr [rbp + 10632], rax
                                                                                        jmp   n3_call_builtin_icon_α
.Lx141_0:
                        cmp              eax, 1
                                                                                        jne   .Lx141_1
                        mov              rax, qword ptr [rbp + 10816]
                        mov              qword ptr [rbp + 10624], rax
                        mov              rax, qword ptr [rbp + 10824]
                        mov              qword ptr [rbp + 10632], rax
                                                                                        jmp   n3_call_builtin_icon_α
.Lx141_1:
                                                                                        jmp   n3_call_builtin_icon_α
n2_disjunction_β:
                        mov              eax, dword ptr [rbp + 10640]
                        cmp              eax, 0
                                                                                        je    n2_disjunction_af
                                                                                        jmp   n2_disjunction_af
n2_disjunction_af:
                        add              dword ptr [rbp + 10640], 1
                        mov              eax, dword ptr [rbp + 10640]
                        cmp              eax, 1
                                                                                        je    n110_lit_string_α
                                                                                        jmp   n4_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 10624]
                        mov              qword ptr [rbp + 10592], rax
                        mov              rax, qword ptr [rbp + 10632]
                        mov              qword ptr [rbp + 10600], rax
                        .section         .rodata
.Lrkfn143:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn143]                         # fn
                        lea              rsi, [rbp + 10592]                             # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10576], rax
                        mov              qword ptr [rbp + 10584], rdx
                        cmp              eax, 104
                                                                                        je    n2_disjunction_β
                                                                                        jmp   n4_disjunction_α
n3_call_builtin_icon_β:
                                                                                        jmp   n2_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n4_disjunction_α:
                        mov              qword ptr [rbp + 10368], 0
                        mov              qword ptr [rbp + 10376], 0
                        mov              dword ptr [rbp + 10384], 0
                                                                                        jmp   n105_lit_charset_α
n4_disjunction_as:
                        mov              eax, dword ptr [rbp + 10384]
                        cmp              eax, 0
                                                                                        jne   .Lx145_0
                        mov              rax, qword ptr [rbp + 10400]
                        mov              qword ptr [rbp + 10368], rax
                        mov              rax, qword ptr [rbp + 10408]
                        mov              qword ptr [rbp + 10376], rax
                                                                                        jmp   n5_call_builtin_icon_α
.Lx145_0:
                        cmp              eax, 1
                                                                                        jne   .Lx145_1
                        mov              rax, qword ptr [rbp + 10560]
                        mov              qword ptr [rbp + 10368], rax
                        mov              rax, qword ptr [rbp + 10568]
                        mov              qword ptr [rbp + 10376], rax
                                                                                        jmp   n5_call_builtin_icon_α
.Lx145_1:
                                                                                        jmp   n5_call_builtin_icon_α
n4_disjunction_β:
                        mov              eax, dword ptr [rbp + 10384]
                        cmp              eax, 0
                                                                                        je    n4_disjunction_af
                                                                                        jmp   n4_disjunction_af
n4_disjunction_af:
                        add              dword ptr [rbp + 10384], 1
                        mov              eax, dword ptr [rbp + 10384]
                        cmp              eax, 1
                                                                                        je    n104_lit_string_α
                                                                                        jmp   n6_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 10368]
                        mov              qword ptr [rbp + 10336], rax
                        mov              rax, qword ptr [rbp + 10376]
                        mov              qword ptr [rbp + 10344], rax
                        .section         .rodata
.Lrkfn147:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn147]                         # fn
                        lea              rsi, [rbp + 10336]                             # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10320], rax
                        mov              qword ptr [rbp + 10328], rdx
                        cmp              eax, 104
                                                                                        je    n4_disjunction_β
                                                                                        jmp   n6_disjunction_α
n5_call_builtin_icon_β:
                                                                                        jmp   n4_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n6_disjunction_α:
                        mov              qword ptr [rbp + 10144], 0
                        mov              qword ptr [rbp + 10152], 0
                        mov              dword ptr [rbp + 10160], 0
                                                                                        jmp   n100_lit_charset_α
n6_disjunction_as:
                        mov              eax, dword ptr [rbp + 10160]
                        cmp              eax, 0
                                                                                        jne   .Lx149_0
                        mov              rax, qword ptr [rbp + 10176]
                        mov              qword ptr [rbp + 10144], rax
                        mov              rax, qword ptr [rbp + 10184]
                        mov              qword ptr [rbp + 10152], rax
                                                                                        jmp   n7_call_builtin_icon_α
.Lx149_0:
                        cmp              eax, 1
                                                                                        jne   .Lx149_1
                        mov              rax, qword ptr [rbp + 10304]
                        mov              qword ptr [rbp + 10144], rax
                        mov              rax, qword ptr [rbp + 10312]
                        mov              qword ptr [rbp + 10152], rax
                                                                                        jmp   n7_call_builtin_icon_α
.Lx149_1:
                                                                                        jmp   n7_call_builtin_icon_α
n6_disjunction_β:
                        mov              eax, dword ptr [rbp + 10160]
                        cmp              eax, 0
                                                                                        je    n6_disjunction_af
                                                                                        jmp   n6_disjunction_af
n6_disjunction_af:
                        add              dword ptr [rbp + 10160], 1
                        mov              eax, dword ptr [rbp + 10160]
                        cmp              eax, 1
                                                                                        je    n99_lit_string_α
                                                                                        jmp   n8_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 10144]
                        mov              qword ptr [rbp + 10112], rax
                        mov              rax, qword ptr [rbp + 10152]
                        mov              qword ptr [rbp + 10120], rax
                        .section         .rodata
.Lrkfn151:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn151]                         # fn
                        lea              rsi, [rbp + 10112]                             # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10096], rax
                        mov              qword ptr [rbp + 10104], rdx
                        cmp              eax, 104
                                                                                        je    n6_disjunction_β
                                                                                        jmp   n8_disjunction_α
n7_call_builtin_icon_β:
                                                                                        jmp   n6_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n8_disjunction_α:
                        mov              qword ptr [rbp + 9952], 0
                        mov              qword ptr [rbp + 9960], 0
                        mov              dword ptr [rbp + 9968], 0
                                                                                        jmp   n96_lit_charset_α
n8_disjunction_as:
                        mov              eax, dword ptr [rbp + 9968]
                        cmp              eax, 0
                                                                                        jne   .Lx153_0
                        mov              rax, qword ptr [rbp + 9984]
                        mov              qword ptr [rbp + 9952], rax
                        mov              rax, qword ptr [rbp + 9992]
                        mov              qword ptr [rbp + 9960], rax
                                                                                        jmp   n9_call_builtin_icon_α
.Lx153_0:
                        cmp              eax, 1
                                                                                        jne   .Lx153_1
                        mov              rax, qword ptr [rbp + 10080]
                        mov              qword ptr [rbp + 9952], rax
                        mov              rax, qword ptr [rbp + 10088]
                        mov              qword ptr [rbp + 9960], rax
                                                                                        jmp   n9_call_builtin_icon_α
.Lx153_1:
                                                                                        jmp   n9_call_builtin_icon_α
n8_disjunction_β:
                        mov              eax, dword ptr [rbp + 9968]
                        cmp              eax, 0
                                                                                        je    n8_disjunction_af
                                                                                        jmp   n8_disjunction_af
n8_disjunction_af:
                        add              dword ptr [rbp + 9968], 1
                        mov              eax, dword ptr [rbp + 9968]
                        cmp              eax, 1
                                                                                        je    n95_lit_string_α
                                                                                        jmp   n10_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 9952]
                        mov              qword ptr [rbp + 9920], rax
                        mov              rax, qword ptr [rbp + 9960]
                        mov              qword ptr [rbp + 9928], rax
                        .section         .rodata
.Lrkfn155:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn155]                         # fn
                        lea              rsi, [rbp + 9920]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 9904], rax
                        mov              qword ptr [rbp + 9912], rdx
                        cmp              eax, 104
                                                                                        je    n8_disjunction_β
                                                                                        jmp   n10_lit_string_α
n9_call_builtin_icon_β:
                                                                                        jmp   n8_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        mov              qword ptr [rbp + 9888], 2                      # result
                        mov              dword ptr [rbp + 9892], 6
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rbp + 9896], rax
                                                                                        jmp   n11_scan_enter_α
.Lx156_0:
                        .quad            .Lx156_0_s
.Lx156_0_s:
                        .string          "1234ab"
#-----------------------------------------------------------------------------------------------------------------------
n11_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 9888]                    # lo
                        mov              rsi, qword ptr [rbp + 9896]                    # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n12_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n12_disjunction_α:
                        mov              qword ptr [rbp + 9744], 0
                        mov              qword ptr [rbp + 9752], 0
                        mov              dword ptr [rbp + 9760], 0
                                                                                        jmp   n92_lit_charset_α
n12_disjunction_as:
                        mov              eax, dword ptr [rbp + 9760]
                        cmp              eax, 0
                                                                                        jne   .Lx160_0
                        mov              rax, qword ptr [rbp + 9776]
                        mov              qword ptr [rbp + 9744], rax
                        mov              rax, qword ptr [rbp + 9784]
                        mov              qword ptr [rbp + 9752], rax
                                                                                        jmp   n13_call_builtin_icon_α
.Lx160_0:
                        cmp              eax, 1
                                                                                        jne   .Lx160_1
                        mov              rax, qword ptr [rbp + 9872]
                        mov              qword ptr [rbp + 9744], rax
                        mov              rax, qword ptr [rbp + 9880]
                        mov              qword ptr [rbp + 9752], rax
                                                                                        jmp   n13_call_builtin_icon_α
.Lx160_1:
                                                                                        jmp   n13_call_builtin_icon_α
n12_disjunction_β:
                        mov              eax, dword ptr [rbp + 9760]
                        cmp              eax, 0
                                                                                        je    n12_disjunction_af
                                                                                        jmp   n12_disjunction_af
n12_disjunction_af:
                        add              dword ptr [rbp + 9760], 1
                        mov              eax, dword ptr [rbp + 9760]
                        cmp              eax, 1
                                                                                        je    n91_lit_string_α
                                                                                        jmp   n122_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 9744]
                        mov              qword ptr [rbp + 9712], rax
                        mov              rax, qword ptr [rbp + 9752]
                        mov              qword ptr [rbp + 9720], rax
                        .section         .rodata
.Lrkfn162:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn162]                         # fn
                        lea              rsi, [rbp + 9712]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 9696], rax
                        mov              qword ptr [rbp + 9704], rdx
                        cmp              eax, 104
                                                                                        je    n12_disjunction_β
                                                                                        jmp   n14_scan_α
n13_call_builtin_icon_β:
                                                                                        jmp   n12_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n14_scan_α:
                        mov              rax, qword ptr [rbp + 9696]
                        mov              qword ptr [rbp + 9664], rax
                        mov              rax, qword ptr [rbp + 9704]
                        mov              qword ptr [rbp + 9672], rax
                        lea              rdi, [rbp + 9632]                              # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 9632]
                        mov              r14, qword ptr [rbp + 9640]
                        mov              r15, qword ptr [rbp + 9648]
                                                                                        jmp   n15_lit_string_α
n14_scan_β:
                                                                                        jmp   n15_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        mov              qword ptr [rbp + 9600], 2                      # result
                        mov              dword ptr [rbp + 9604], 6
                        mov              rax, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rbp + 9608], rax
                                                                                        jmp   n16_scan_enter_α
.Lx165_0:
                        .quad            .Lx165_0_s
.Lx165_0_s:
                        .string          "1234ab"
#-----------------------------------------------------------------------------------------------------------------------
n16_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 9600]                    # lo
                        mov              rsi, qword ptr [rbp + 9608]                    # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n17_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n17_disjunction_α:
                        mov              qword ptr [rbp + 9520], 0
                        mov              qword ptr [rbp + 9528], 0
                        mov              dword ptr [rbp + 9536], 0
                                                                                        jmp   n89_lit_charset_α
n17_disjunction_as:
                        mov              eax, dword ptr [rbp + 9536]
                        cmp              eax, 0
                                                                                        jne   .Lx169_0
                        mov              rax, qword ptr [rbp + 9552]
                        mov              qword ptr [rbp + 9520], rax
                        mov              rax, qword ptr [rbp + 9560]
                        mov              qword ptr [rbp + 9528], rax
                                                                                        jmp   n18_call_builtin_icon_α
.Lx169_0:
                        cmp              eax, 1
                                                                                        jne   .Lx169_1
                        mov              rax, qword ptr [rbp + 9584]
                        mov              qword ptr [rbp + 9520], rax
                        mov              rax, qword ptr [rbp + 9592]
                        mov              qword ptr [rbp + 9528], rax
                                                                                        jmp   n18_call_builtin_icon_α
.Lx169_1:
                                                                                        jmp   n18_call_builtin_icon_α
n17_disjunction_β:
                        mov              eax, dword ptr [rbp + 9536]
                        cmp              eax, 0
                                                                                        je    n17_disjunction_af
                                                                                        jmp   n17_disjunction_af
n17_disjunction_af:
                        add              dword ptr [rbp + 9536], 1
                        mov              eax, dword ptr [rbp + 9536]
                        cmp              eax, 1
                                                                                        je    n88_lit_string_α
                                                                                        jmp   n123_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 9520]
                        mov              qword ptr [rbp + 9488], rax
                        mov              rax, qword ptr [rbp + 9528]
                        mov              qword ptr [rbp + 9496], rax
                        .section         .rodata
.Lrkfn171:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn171]                         # fn
                        lea              rsi, [rbp + 9488]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 9472], rax
                        mov              qword ptr [rbp + 9480], rdx
                        cmp              eax, 104
                                                                                        je    n17_disjunction_β
                                                                                        jmp   n19_scan_α
n18_call_builtin_icon_β:
                                                                                        jmp   n17_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n19_scan_α:
                        mov              rax, qword ptr [rbp + 9472]
                        mov              qword ptr [rbp + 9440], rax
                        mov              rax, qword ptr [rbp + 9480]
                        mov              qword ptr [rbp + 9448], rax
                        lea              rdi, [rbp + 9408]                              # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 9408]
                        mov              r14, qword ptr [rbp + 9416]
                        mov              r15, qword ptr [rbp + 9424]
                                                                                        jmp   n20_lit_string_α
n19_scan_β:
                                                                                        jmp   n20_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 9376], 2                      # result
                        mov              dword ptr [rbp + 9380], 6
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rbp + 9384], rax
                                                                                        jmp   n21_scan_enter_α
.Lx174_0:
                        .quad            .Lx174_0_s
.Lx174_0_s:
                        .string          "1234ab"
#-----------------------------------------------------------------------------------------------------------------------
n21_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 9376]                    # lo
                        mov              rsi, qword ptr [rbp + 9384]                    # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n22_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:
                        mov              qword ptr [rbp + 9360], 3                      # result
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rbp + 9368], rax
                                                                                        jmp   n23_keyword_assign_α
.Lx177_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n23_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 9360]                    # v
                        mov              rsi, qword ptr [rbp + 9368]                    # v
                        call             rt_keyword_pos_set@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx178_240
                        add              rsp, 3648
                                                                                        jmp   n31_scan_α
.Lx178_240:
                        mov              qword ptr [rbp + 9344], rax
                        mov              qword ptr [rbp + 9352], rdx
                        mov              r14, rdx
                        sub              r14, 1
                                                                                        jmp   n24_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n24_disjunction_α:
                        mov              qword ptr [rbp + 9264], 0
                        mov              qword ptr [rbp + 9272], 0
                        mov              dword ptr [rbp + 9280], 0
                                                                                        jmp   n29_lit_charset_α
n24_disjunction_as:
                        mov              eax, dword ptr [rbp + 9280]
                        cmp              eax, 0
                                                                                        jne   .Lx180_0
                        mov              rax, qword ptr [rbp + 9296]
                        mov              qword ptr [rbp + 9264], rax
                        mov              rax, qword ptr [rbp + 9304]
                        mov              qword ptr [rbp + 9272], rax
                                                                                        jmp   n25_call_builtin_icon_α
.Lx180_0:
                        cmp              eax, 1
                                                                                        jne   .Lx180_1
                        mov              rax, qword ptr [rbp + 9328]
                        mov              qword ptr [rbp + 9264], rax
                        mov              rax, qword ptr [rbp + 9336]
                        mov              qword ptr [rbp + 9272], rax
                                                                                        jmp   n25_call_builtin_icon_α
.Lx180_1:
                                                                                        jmp   n25_call_builtin_icon_α
n24_disjunction_β:
                        mov              eax, dword ptr [rbp + 9280]
                        cmp              eax, 0
                                                                                        je    n24_disjunction_af
                                                                                        jmp   n24_disjunction_af
n24_disjunction_af:
                        add              dword ptr [rbp + 9280], 1
                        mov              eax, dword ptr [rbp + 9280]
                        cmp              eax, 1
                                                                                        je    n28_lit_string_α
                                                                                        jmp   n31_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n25_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 9264]
                        mov              qword ptr [rbp + 9232], rax
                        mov              rax, qword ptr [rbp + 9272]
                        mov              qword ptr [rbp + 9240], rax
                        .section         .rodata
.Lrkfn182:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn182]                         # fn
                        lea              rsi, [rbp + 9232]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 9216], rax
                        mov              qword ptr [rbp + 9224], rdx
                        cmp              eax, 104
                                                                                        je    n24_disjunction_β
                                                                                        jmp   n26_conjunction_α
n25_call_builtin_icon_β:
                                                                                        jmp   n24_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n26_conjunction_α:
                        mov              rax, qword ptr [rbp + 9216]
                        mov              qword ptr [rbp + 9200], rax
                        mov              rax, qword ptr [rbp + 9224]
                        mov              qword ptr [rbp + 9208], rax
                                                                                        jmp   n27_scan_α
n26_conjunction_β:
                                                                                        jmp   n31_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n27_scan_α:
                        mov              rax, qword ptr [rbp + 9200]
                        mov              qword ptr [rbp + 9168], rax
                        mov              rax, qword ptr [rbp + 9208]
                        mov              qword ptr [rbp + 9176], rax
                        lea              rdi, [rbp + 9136]                              # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 9136]
                        mov              r14, qword ptr [rbp + 9144]
                        mov              r15, qword ptr [rbp + 9152]
                                                                                        jmp   n32_call_builtin_icon_α
n27_scan_β:
                                                                                        jmp   n32_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        mov              qword ptr [rbp + 9328], 2                      # result
                        mov              dword ptr [rbp + 9332], 4
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rbp + 9336], rax
                                                                                        jmp   n24_disjunction_as
n28_lit_string_β:
                                                                                        jmp   n24_disjunction_af
.Lx186_0:
                        .quad            .Lx186_0_s
.Lx186_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_charset_α:
                        mov              qword ptr [rbp + 9312], 2                      # result
                        mov              dword ptr [rbp + 9316], -1
                        mov              rax, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rbp + 9320], rax
                                                                                        jmp   n30_scan_any_α
n29_lit_charset_β:
                                                                                        jmp   n24_disjunction_af
.Lx187_0:
                        .quad            .Lx187_0_s
.Lx187_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n30_scan_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n24_disjunction_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx189_0]
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                                                                                        je    n24_disjunction_af
                        mov              qword ptr [rbp + 9296], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 9304], rax
                                                                                        jmp   n24_disjunction_as
n30_scan_any_β:
                                                                                        jmp   n24_disjunction_af
.Lx189_0:
                        .quad            .Lx189_0_s
.Lx189_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n31_scan_α:
                        lea              rdi, [rbp + 9136]                              # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 9136]
                        mov              r14, qword ptr [rbp + 9144]
                        mov              r15, qword ptr [rbp + 9152]
                                                                                        jmp   n32_call_builtin_icon_α
n31_scan_β:
                                                                                        jmp   n32_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn193:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn193]                         # fn
                        lea              rsi, [rbp + 9104]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 9088], rax
                        mov              qword ptr [rbp + 9096], rdx
                        cmp              eax, 104
                                                                                        je    n33_disjunction_α
                                                                                        jmp   n33_disjunction_α
n32_call_builtin_icon_β:
                                                                                        jmp   n33_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n33_disjunction_α:
                        mov              qword ptr [rbp + 8944], 0
                        mov              qword ptr [rbp + 8952], 0
                        mov              dword ptr [rbp + 8960], 0
                                                                                        jmp   n85_lit_charset_α
n33_disjunction_as:
                        mov              eax, dword ptr [rbp + 8960]
                        cmp              eax, 0
                                                                                        jne   .Lx195_0
                        mov              rax, qword ptr [rbp + 8976]
                        mov              qword ptr [rbp + 8944], rax
                        mov              rax, qword ptr [rbp + 8984]
                        mov              qword ptr [rbp + 8952], rax
                                                                                        jmp   n34_call_builtin_icon_α
.Lx195_0:
                        cmp              eax, 1
                                                                                        jne   .Lx195_1
                        mov              rax, qword ptr [rbp + 9072]
                        mov              qword ptr [rbp + 8944], rax
                        mov              rax, qword ptr [rbp + 9080]
                        mov              qword ptr [rbp + 8952], rax
                                                                                        jmp   n34_call_builtin_icon_α
.Lx195_1:
                                                                                        jmp   n34_call_builtin_icon_α
n33_disjunction_β:
                        mov              eax, dword ptr [rbp + 8960]
                        cmp              eax, 0
                                                                                        je    n33_disjunction_af
                                                                                        jmp   n33_disjunction_af
n33_disjunction_af:
                        add              dword ptr [rbp + 8960], 1
                        mov              eax, dword ptr [rbp + 8960]
                        cmp              eax, 1
                                                                                        je    n84_lit_string_α
                                                                                        jmp   n35_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 8944]
                        mov              qword ptr [rbp + 8912], rax
                        mov              rax, qword ptr [rbp + 8952]
                        mov              qword ptr [rbp + 8920], rax
                        .section         .rodata
.Lrkfn197:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn197]                         # fn
                        lea              rsi, [rbp + 8912]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8896], rax
                        mov              qword ptr [rbp + 8904], rdx
                        cmp              eax, 104
                                                                                        je    n33_disjunction_β
                                                                                        jmp   n35_disjunction_α
n34_call_builtin_icon_β:
                                                                                        jmp   n33_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n35_disjunction_α:
                        mov              qword ptr [rbp + 8752], 0
                        mov              qword ptr [rbp + 8760], 0
                        mov              dword ptr [rbp + 8768], 0
                                                                                        jmp   n81_lit_charset_α
n35_disjunction_as:
                        mov              eax, dword ptr [rbp + 8768]
                        cmp              eax, 0
                                                                                        jne   .Lx199_0
                        mov              rax, qword ptr [rbp + 8784]
                        mov              qword ptr [rbp + 8752], rax
                        mov              rax, qword ptr [rbp + 8792]
                        mov              qword ptr [rbp + 8760], rax
                                                                                        jmp   n36_call_builtin_icon_α
.Lx199_0:
                        cmp              eax, 1
                                                                                        jne   .Lx199_1
                        mov              rax, qword ptr [rbp + 8880]
                        mov              qword ptr [rbp + 8752], rax
                        mov              rax, qword ptr [rbp + 8888]
                        mov              qword ptr [rbp + 8760], rax
                                                                                        jmp   n36_call_builtin_icon_α
.Lx199_1:
                                                                                        jmp   n36_call_builtin_icon_α
n35_disjunction_β:
                        mov              eax, dword ptr [rbp + 8768]
                        cmp              eax, 0
                                                                                        je    n35_disjunction_af
                                                                                        jmp   n35_disjunction_af
n35_disjunction_af:
                        add              dword ptr [rbp + 8768], 1
                        mov              eax, dword ptr [rbp + 8768]
                        cmp              eax, 1
                                                                                        je    n80_lit_string_α
                                                                                        jmp   n37_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 8752]
                        mov              qword ptr [rbp + 8720], rax
                        mov              rax, qword ptr [rbp + 8760]
                        mov              qword ptr [rbp + 8728], rax
                        .section         .rodata
.Lrkfn201:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn201]                         # fn
                        lea              rsi, [rbp + 8720]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8704], rax
                        mov              qword ptr [rbp + 8712], rdx
                        cmp              eax, 104
                                                                                        je    n35_disjunction_β
                                                                                        jmp   n37_disjunction_α
n36_call_builtin_icon_β:
                                                                                        jmp   n35_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n37_disjunction_α:
                        mov              qword ptr [rbp + 8560], 0
                        mov              qword ptr [rbp + 8568], 0
                        mov              dword ptr [rbp + 8576], 0
                                                                                        jmp   n77_lit_charset_α
n37_disjunction_as:
                        mov              eax, dword ptr [rbp + 8576]
                        cmp              eax, 0
                                                                                        jne   .Lx203_0
                        mov              rax, qword ptr [rbp + 8592]
                        mov              qword ptr [rbp + 8560], rax
                        mov              rax, qword ptr [rbp + 8600]
                        mov              qword ptr [rbp + 8568], rax
                                                                                        jmp   n38_call_builtin_icon_α
.Lx203_0:
                        cmp              eax, 1
                                                                                        jne   .Lx203_1
                        mov              rax, qword ptr [rbp + 8688]
                        mov              qword ptr [rbp + 8560], rax
                        mov              rax, qword ptr [rbp + 8696]
                        mov              qword ptr [rbp + 8568], rax
                                                                                        jmp   n38_call_builtin_icon_α
.Lx203_1:
                                                                                        jmp   n38_call_builtin_icon_α
n37_disjunction_β:
                        mov              eax, dword ptr [rbp + 8576]
                        cmp              eax, 0
                                                                                        je    n37_disjunction_af
                                                                                        jmp   n37_disjunction_af
n37_disjunction_af:
                        add              dword ptr [rbp + 8576], 1
                        mov              eax, dword ptr [rbp + 8576]
                        cmp              eax, 1
                                                                                        je    n76_lit_string_α
                                                                                        jmp   n39_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 8560]
                        mov              qword ptr [rbp + 8528], rax
                        mov              rax, qword ptr [rbp + 8568]
                        mov              qword ptr [rbp + 8536], rax
                        .section         .rodata
.Lrkfn205:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn205]                         # fn
                        lea              rsi, [rbp + 8528]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8512], rax
                        mov              qword ptr [rbp + 8520], rdx
                        cmp              eax, 104
                                                                                        je    n37_disjunction_β
                                                                                        jmp   n39_call_builtin_icon_α
n38_call_builtin_icon_β:
                                                                                        jmp   n37_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn207:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn207]                         # fn
                        lea              rsi, [rbp + 8496]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8480], rax
                        mov              qword ptr [rbp + 8488], rdx
                        cmp              eax, 104
                                                                                        je    n40_disjunction_α
                                                                                        jmp   n40_disjunction_α
n39_call_builtin_icon_β:
                                                                                        jmp   n40_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n40_disjunction_α:
                        mov              qword ptr [rbp + 8336], 0
                        mov              qword ptr [rbp + 8344], 0
                        mov              dword ptr [rbp + 8352], 0
                                                                                        jmp   n73_lit_string_α
n40_disjunction_as:
                        mov              eax, dword ptr [rbp + 8352]
                        cmp              eax, 0
                                                                                        jne   .Lx209_0
                        mov              rax, qword ptr [rbp + 8368]
                        mov              qword ptr [rbp + 8336], rax
                        mov              rax, qword ptr [rbp + 8376]
                        mov              qword ptr [rbp + 8344], rax
                                                                                        jmp   n41_call_builtin_icon_α
.Lx209_0:
                        cmp              eax, 1
                                                                                        jne   .Lx209_1
                        mov              rax, qword ptr [rbp + 8464]
                        mov              qword ptr [rbp + 8336], rax
                        mov              rax, qword ptr [rbp + 8472]
                        mov              qword ptr [rbp + 8344], rax
                                                                                        jmp   n41_call_builtin_icon_α
.Lx209_1:
                                                                                        jmp   n41_call_builtin_icon_α
n40_disjunction_β:
                        mov              eax, dword ptr [rbp + 8352]
                        cmp              eax, 0
                                                                                        je    n40_disjunction_af
                                                                                        jmp   n40_disjunction_af
n40_disjunction_af:
                        add              dword ptr [rbp + 8352], 1
                        mov              eax, dword ptr [rbp + 8352]
                        cmp              eax, 1
                                                                                        je    n72_lit_string_α
                                                                                        jmp   n42_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n41_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 8336]
                        mov              qword ptr [rbp + 8304], rax
                        mov              rax, qword ptr [rbp + 8344]
                        mov              qword ptr [rbp + 8312], rax
                        .section         .rodata
.Lrkfn211:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn211]                         # fn
                        lea              rsi, [rbp + 8304]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8288], rax
                        mov              qword ptr [rbp + 8296], rdx
                        cmp              eax, 104
                                                                                        je    n40_disjunction_β
                                                                                        jmp   n42_disjunction_α
n41_call_builtin_icon_β:
                                                                                        jmp   n40_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n42_disjunction_α:
                        mov              qword ptr [rbp + 8144], 0
                        mov              qword ptr [rbp + 8152], 0
                        mov              dword ptr [rbp + 8160], 0
                                                                                        jmp   n69_lit_string_α
n42_disjunction_as:
                        mov              eax, dword ptr [rbp + 8160]
                        cmp              eax, 0
                                                                                        jne   .Lx213_0
                        mov              rax, qword ptr [rbp + 8176]
                        mov              qword ptr [rbp + 8144], rax
                        mov              rax, qword ptr [rbp + 8184]
                        mov              qword ptr [rbp + 8152], rax
                                                                                        jmp   n43_call_builtin_icon_α
.Lx213_0:
                        cmp              eax, 1
                                                                                        jne   .Lx213_1
                        mov              rax, qword ptr [rbp + 8272]
                        mov              qword ptr [rbp + 8144], rax
                        mov              rax, qword ptr [rbp + 8280]
                        mov              qword ptr [rbp + 8152], rax
                                                                                        jmp   n43_call_builtin_icon_α
.Lx213_1:
                                                                                        jmp   n43_call_builtin_icon_α
n42_disjunction_β:
                        mov              eax, dword ptr [rbp + 8160]
                        cmp              eax, 0
                                                                                        je    n42_disjunction_af
                                                                                        jmp   n42_disjunction_af
n42_disjunction_af:
                        add              dword ptr [rbp + 8160], 1
                        mov              eax, dword ptr [rbp + 8160]
                        cmp              eax, 1
                                                                                        je    n68_lit_string_α
                                                                                        jmp   n44_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n43_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 8144]
                        mov              qword ptr [rbp + 8112], rax
                        mov              rax, qword ptr [rbp + 8152]
                        mov              qword ptr [rbp + 8120], rax
                        .section         .rodata
.Lrkfn215:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn215]                         # fn
                        lea              rsi, [rbp + 8112]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8096], rax
                        mov              qword ptr [rbp + 8104], rdx
                        cmp              eax, 104
                                                                                        je    n42_disjunction_β
                                                                                        jmp   n44_disjunction_α
n43_call_builtin_icon_β:
                                                                                        jmp   n42_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n44_disjunction_α:
                        mov              qword ptr [rbp + 7952], 0
                        mov              qword ptr [rbp + 7960], 0
                        mov              dword ptr [rbp + 7968], 0
                                                                                        jmp   n65_lit_string_α
n44_disjunction_as:
                        mov              eax, dword ptr [rbp + 7968]
                        cmp              eax, 0
                                                                                        jne   .Lx217_0
                        mov              rax, qword ptr [rbp + 7984]
                        mov              qword ptr [rbp + 7952], rax
                        mov              rax, qword ptr [rbp + 7992]
                        mov              qword ptr [rbp + 7960], rax
                                                                                        jmp   n45_call_builtin_icon_α
.Lx217_0:
                        cmp              eax, 1
                                                                                        jne   .Lx217_1
                        mov              rax, qword ptr [rbp + 8080]
                        mov              qword ptr [rbp + 7952], rax
                        mov              rax, qword ptr [rbp + 8088]
                        mov              qword ptr [rbp + 7960], rax
                                                                                        jmp   n45_call_builtin_icon_α
.Lx217_1:
                                                                                        jmp   n45_call_builtin_icon_α
n44_disjunction_β:
                        mov              eax, dword ptr [rbp + 7968]
                        cmp              eax, 0
                                                                                        je    n44_disjunction_af
                                                                                        jmp   n44_disjunction_af
n44_disjunction_af:
                        add              dword ptr [rbp + 7968], 1
                        mov              eax, dword ptr [rbp + 7968]
                        cmp              eax, 1
                                                                                        je    n64_lit_string_α
                                                                                        jmp   n46_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n45_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7952]
                        mov              qword ptr [rbp + 7920], rax
                        mov              rax, qword ptr [rbp + 7960]
                        mov              qword ptr [rbp + 7928], rax
                        .section         .rodata
.Lrkfn219:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn219]                         # fn
                        lea              rsi, [rbp + 7920]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7904], rax
                        mov              qword ptr [rbp + 7912], rdx
                        cmp              eax, 104
                                                                                        je    n44_disjunction_β
                                                                                        jmp   n46_disjunction_α
n45_call_builtin_icon_β:
                                                                                        jmp   n44_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n46_disjunction_α:
                        mov              qword ptr [rbp + 7760], 0
                        mov              qword ptr [rbp + 7768], 0
                        mov              dword ptr [rbp + 7776], 0
                                                                                        jmp   n61_lit_string_α
n46_disjunction_as:
                        mov              eax, dword ptr [rbp + 7776]
                        cmp              eax, 0
                                                                                        jne   .Lx221_0
                        mov              rax, qword ptr [rbp + 7792]
                        mov              qword ptr [rbp + 7760], rax
                        mov              rax, qword ptr [rbp + 7800]
                        mov              qword ptr [rbp + 7768], rax
                                                                                        jmp   n47_call_builtin_icon_α
.Lx221_0:
                        cmp              eax, 1
                                                                                        jne   .Lx221_1
                        mov              rax, qword ptr [rbp + 7888]
                        mov              qword ptr [rbp + 7760], rax
                        mov              rax, qword ptr [rbp + 7896]
                        mov              qword ptr [rbp + 7768], rax
                                                                                        jmp   n47_call_builtin_icon_α
.Lx221_1:
                                                                                        jmp   n47_call_builtin_icon_α
n46_disjunction_β:
                        mov              eax, dword ptr [rbp + 7776]
                        cmp              eax, 0
                                                                                        je    n46_disjunction_af
                                                                                        jmp   n46_disjunction_af
n46_disjunction_af:
                        add              dword ptr [rbp + 7776], 1
                        mov              eax, dword ptr [rbp + 7776]
                        cmp              eax, 1
                                                                                        je    n60_lit_string_α
                                                                                        jmp   n48_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n47_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7760]
                        mov              qword ptr [rbp + 7728], rax
                        mov              rax, qword ptr [rbp + 7768]
                        mov              qword ptr [rbp + 7736], rax
                        .section         .rodata
.Lrkfn223:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn223]                         # fn
                        lea              rsi, [rbp + 7728]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7712], rax
                        mov              qword ptr [rbp + 7720], rdx
                        cmp              eax, 104
                                                                                        je    n46_disjunction_β
                                                                                        jmp   n48_call_builtin_icon_α
n47_call_builtin_icon_β:
                                                                                        jmp   n46_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn225:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn225]                         # fn
                        lea              rsi, [rbp + 7696]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7680], rax
                        mov              qword ptr [rbp + 7688], rdx
                        cmp              eax, 104
                                                                                        je    n49_disjunction_α
                                                                                        jmp   n49_disjunction_α
n48_call_builtin_icon_β:
                                                                                        jmp   n49_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n49_disjunction_α:
                        mov              qword ptr [rbp + 7440], 0
                        mov              qword ptr [rbp + 7448], 0
                        mov              dword ptr [rbp + 7456], 0
                                                                                        jmp   n52_lit_string_α
n49_disjunction_as:
                        mov              eax, dword ptr [rbp + 7456]
                        cmp              eax, 0
                                                                                        jne   .Lx227_0
                        mov              rax, qword ptr [rbp + 7472]
                        mov              qword ptr [rbp + 7440], rax
                        mov              rax, qword ptr [rbp + 7480]
                        mov              qword ptr [rbp + 7448], rax
                                                                                        jmp   n50_call_builtin_icon_α
.Lx227_0:
                        cmp              eax, 1
                                                                                        jne   .Lx227_1
                        mov              rax, qword ptr [rbp + 7664]
                        mov              qword ptr [rbp + 7440], rax
                        mov              rax, qword ptr [rbp + 7672]
                        mov              qword ptr [rbp + 7448], rax
                                                                                        jmp   n50_call_builtin_icon_α
.Lx227_1:
                                                                                        jmp   n50_call_builtin_icon_α
n49_disjunction_β:
                        mov              eax, dword ptr [rbp + 7456]
                        cmp              eax, 0
                                                                                        je    n54_call_builtin_gen_β
                                                                                        jmp   n49_disjunction_af
n49_disjunction_af:
                        add              dword ptr [rbp + 7456], 1
                        mov              eax, dword ptr [rbp + 7456]
                        cmp              eax, 1
                                                                                        je    n51_lit_string_α
                                                                                        jmp   n124_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n50_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7440]
                        mov              qword ptr [rbp + 7408], rax
                        mov              rax, qword ptr [rbp + 7448]
                        mov              qword ptr [rbp + 7416], rax
                        .section         .rodata
.Lrkfn229:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn229]                         # fn
                        lea              rsi, [rbp + 7408]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7392], rax
                        mov              qword ptr [rbp + 7400], rdx
                        cmp              eax, 104
                                                                                        je    n49_disjunction_β
                                                                                        jmp   n49_disjunction_β
n50_call_builtin_icon_β:
                                                                                        jmp   n49_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:
                        mov              qword ptr [rbp + 7664], 2                      # result
                        mov              dword ptr [rbp + 7668], 4
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rbp + 7672], rax
                                                                                        jmp   n49_disjunction_as
n51_lit_string_β:
                                                                                        jmp   n49_disjunction_af
.Lx230_0:
                        .quad            .Lx230_0_s
.Lx230_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:
                        mov              qword ptr [rbp + 7536], 2                      # result
                        mov              dword ptr [rbp + 7540], 2
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rbp + 7544], rax
                                                                                        jmp   n53_disjunction_α
n52_lit_string_β:
                                                                                        jmp   n49_disjunction_af
.Lx231_0:
                        .quad            .Lx231_0_s
.Lx231_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n53_disjunction_α:
                        mov              qword ptr [rbp + 7552], 0
                        mov              qword ptr [rbp + 7560], 0
                        mov              dword ptr [rbp + 7568], 0
                                                                                        jmp   n59_lit_string_α
n53_disjunction_as:
                        mov              eax, dword ptr [rbp + 7568]
                        cmp              eax, 0
                                                                                        jne   .Lx233_0
                        mov              rax, qword ptr [rbp + 7584]
                        mov              qword ptr [rbp + 7552], rax
                        mov              rax, qword ptr [rbp + 7592]
                        mov              qword ptr [rbp + 7560], rax
                                                                                        jmp   n54_call_builtin_gen_α
.Lx233_0:
                        cmp              eax, 1
                                                                                        jne   .Lx233_1
                        mov              rax, qword ptr [rbp + 7600]
                        mov              qword ptr [rbp + 7552], rax
                        mov              rax, qword ptr [rbp + 7608]
                        mov              qword ptr [rbp + 7560], rax
                                                                                        jmp   n54_call_builtin_gen_α
.Lx233_1:
                        cmp              eax, 2
                                                                                        jne   .Lx233_2
                        mov              rax, qword ptr [rbp + 7616]
                        mov              qword ptr [rbp + 7552], rax
                        mov              rax, qword ptr [rbp + 7624]
                        mov              qword ptr [rbp + 7560], rax
                                                                                        jmp   n54_call_builtin_gen_α
.Lx233_2:
                        cmp              eax, 3
                                                                                        jne   .Lx233_3
                        mov              rax, qword ptr [rbp + 7632]
                        mov              qword ptr [rbp + 7552], rax
                        mov              rax, qword ptr [rbp + 7640]
                        mov              qword ptr [rbp + 7560], rax
                                                                                        jmp   n54_call_builtin_gen_α
.Lx233_3:
                        cmp              eax, 4
                                                                                        jne   .Lx233_4
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 7552], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 7560], rax
                                                                                        jmp   n54_call_builtin_gen_α
.Lx233_4:
                                                                                        jmp   n54_call_builtin_gen_α
n53_disjunction_β:
                        mov              eax, dword ptr [rbp + 7568]
                        cmp              eax, 0
                                                                                        je    n53_disjunction_af
                        cmp              eax, 1
                                                                                        je    n53_disjunction_af
                        cmp              eax, 2
                                                                                        je    n53_disjunction_af
                        cmp              eax, 3
                                                                                        je    n53_disjunction_af
                                                                                        jmp   n53_disjunction_af
n53_disjunction_af:
                        add              dword ptr [rbp + 7568], 1
                        mov              eax, dword ptr [rbp + 7568]
                        cmp              eax, 1
                                                                                        je    n58_lit_string_α
                        cmp              eax, 2
                                                                                        je    n57_lit_string_α
                        cmp              eax, 3
                                                                                        je    n56_lit_string_α
                        cmp              eax, 4
                                                                                        je    n55_lit_string_α
                                                                                        jmp   n49_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n54_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 7536]
                        mov              qword ptr [rbp + 7488], rax
                        mov              rax, qword ptr [rbp + 7544]
                        mov              qword ptr [rbp + 7496], rax
                        mov              rax, qword ptr [rbp + 7552]
                        mov              qword ptr [rbp + 7504], rax
                        mov              rax, qword ptr [rbp + 7560]
                        mov              qword ptr [rbp + 7512], rax
                        mov              qword ptr [rbp + 7520], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx234_60:
                        .section         .rodata
.Lbynamegenfn55:        .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn55]                   # fn
                        lea              rsi, [rbp + 7488]                              # args
                        mov              edx, 2                                         # nargs
                        lea              rcx, [rbp + 7520]                              # resume
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 7472], rax
                        mov              qword ptr [rbp + 7480], rdx
                        cmp              eax, 104
                                                                                        je    n53_disjunction_β
                                                                                        jmp   n49_disjunction_as
n54_call_builtin_gen_β:
                                                                                        jmp   .Lx234_60
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:
                        mov              qword ptr [rbp + 7648], 2                      # result
                        mov              dword ptr [rbp + 7652], 0
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rbp + 7656], rax
                                                                                        jmp   n53_disjunction_as
n55_lit_string_β:
                                                                                        jmp   n53_disjunction_af
.Lx235_0:
                        .quad            .Lx235_0_s
.Lx235_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:
                        mov              qword ptr [rbp + 7632], 2                      # result
                        mov              dword ptr [rbp + 7636], 1
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rbp + 7640], rax
                                                                                        jmp   n53_disjunction_as
n56_lit_string_β:
                                                                                        jmp   n53_disjunction_af
.Lx236_0:
                        .quad            .Lx236_0_s
.Lx236_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:
                        mov              qword ptr [rbp + 7616], 2                      # result
                        mov              dword ptr [rbp + 7620], 2
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rbp + 7624], rax
                                                                                        jmp   n53_disjunction_as
n57_lit_string_β:
                                                                                        jmp   n53_disjunction_af
.Lx237_0:
                        .quad            .Lx237_0_s
.Lx237_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:
                        mov              qword ptr [rbp + 7600], 2                      # result
                        mov              dword ptr [rbp + 7604], 5
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rbp + 7608], rax
                                                                                        jmp   n53_disjunction_as
n58_lit_string_β:
                                                                                        jmp   n53_disjunction_af
.Lx238_0:
                        .quad            .Lx238_0_s
.Lx238_0_s:
                        .string          "ababa"
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        mov              qword ptr [rbp + 7584], 2                      # result
                        mov              dword ptr [rbp + 7588], 6
                        mov              rax, qword ptr [rip + .Lx239_0]
                        mov              qword ptr [rbp + 7592], rax
                                                                                        jmp   n53_disjunction_as
n59_lit_string_β:
                                                                                        jmp   n53_disjunction_af
.Lx239_0:
                        .quad            .Lx239_0_s
.Lx239_0_s:
                        .string          "ababab"
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        mov              qword ptr [rbp + 7888], 2                      # result
                        mov              dword ptr [rbp + 7892], 4
                        mov              rax, qword ptr [rip + .Lx240_0]
                        mov              qword ptr [rbp + 7896], rax
                                                                                        jmp   n46_disjunction_as
n60_lit_string_β:
                                                                                        jmp   n46_disjunction_af
.Lx240_0:
                        .quad            .Lx240_0_s
.Lx240_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:
                        mov              qword ptr [rbp + 7856], 2                      # result
                        mov              dword ptr [rbp + 7860], 2
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rbp + 7864], rax
                                                                                        jmp   n62_lit_string_α
n61_lit_string_β:
                                                                                        jmp   n46_disjunction_af
.Lx241_0:
                        .quad            .Lx241_0_s
.Lx241_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:
                        mov              qword ptr [rbp + 7872], 2                      # result
                        mov              dword ptr [rbp + 7876], 1
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rbp + 7880], rax
                                                                                        jmp   n63_call_α
.Lx242_0:
                        .quad            .Lx242_0_s
.Lx242_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n63_call_α:
                        mov              rax, qword ptr [rbp + 7856]
                        mov              qword ptr [rbp + 7808], rax
                        mov              rax, qword ptr [rbp + 7864]
                        mov              qword ptr [rbp + 7816], rax
                        mov              rax, qword ptr [rbp + 7872]
                        mov              qword ptr [rbp + 7824], rax
                        mov              rax, qword ptr [rbp + 7880]
                        mov              qword ptr [rbp + 7832], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn64:           .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn64]                      # fn
                        lea              rsi, [rbp + 7808]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7792], rax
                        mov              qword ptr [rbp + 7800], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n46_disjunction_af
                                                                                        jmp   n46_disjunction_as
n63_call_β:
                                                                                        jmp   n46_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:
                        mov              qword ptr [rbp + 8080], 2                      # result
                        mov              dword ptr [rbp + 8084], 4
                        mov              rax, qword ptr [rip + .Lx244_0]
                        mov              qword ptr [rbp + 8088], rax
                                                                                        jmp   n44_disjunction_as
n64_lit_string_β:
                                                                                        jmp   n44_disjunction_af
.Lx244_0:
                        .quad            .Lx244_0_s
.Lx244_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:
                        mov              qword ptr [rbp + 8048], 2                      # result
                        mov              dword ptr [rbp + 8052], 2
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rbp + 8056], rax
                                                                                        jmp   n66_lit_string_α
n65_lit_string_β:
                                                                                        jmp   n44_disjunction_af
.Lx245_0:
                        .quad            .Lx245_0_s
.Lx245_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:
                        mov              qword ptr [rbp + 8064], 2                      # result
                        mov              dword ptr [rbp + 8068], 2
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rbp + 8072], rax
                                                                                        jmp   n67_call_α
.Lx246_0:
                        .quad            .Lx246_0_s
.Lx246_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n67_call_α:
                        mov              rax, qword ptr [rbp + 8048]
                        mov              qword ptr [rbp + 8000], rax
                        mov              rax, qword ptr [rbp + 8056]
                        mov              qword ptr [rbp + 8008], rax
                        mov              rax, qword ptr [rbp + 8064]
                        mov              qword ptr [rbp + 8016], rax
                        mov              rax, qword ptr [rbp + 8072]
                        mov              qword ptr [rbp + 8024], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn68:           .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn68]                      # fn
                        lea              rsi, [rbp + 8000]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7984], rax
                        mov              qword ptr [rbp + 7992], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n44_disjunction_af
                                                                                        jmp   n44_disjunction_as
n67_call_β:
                                                                                        jmp   n44_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:
                        mov              qword ptr [rbp + 8272], 2                      # result
                        mov              dword ptr [rbp + 8276], 4
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rbp + 8280], rax
                                                                                        jmp   n42_disjunction_as
n68_lit_string_β:
                                                                                        jmp   n42_disjunction_af
.Lx248_0:
                        .quad            .Lx248_0_s
.Lx248_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:
                        mov              qword ptr [rbp + 8240], 2                      # result
                        mov              dword ptr [rbp + 8244], 2
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rbp + 8248], rax
                                                                                        jmp   n70_lit_string_α
n69_lit_string_β:
                                                                                        jmp   n42_disjunction_af
.Lx249_0:
                        .quad            .Lx249_0_s
.Lx249_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:
                        mov              qword ptr [rbp + 8256], 2                      # result
                        mov              dword ptr [rbp + 8260], 6
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rbp + 8264], rax
                                                                                        jmp   n71_call_α
.Lx250_0:
                        .quad            .Lx250_0_s
.Lx250_0_s:
                        .string          "bbabab"
#-----------------------------------------------------------------------------------------------------------------------
n71_call_α:
                        mov              rax, qword ptr [rbp + 8240]
                        mov              qword ptr [rbp + 8192], rax
                        mov              rax, qword ptr [rbp + 8248]
                        mov              qword ptr [rbp + 8200], rax
                        mov              rax, qword ptr [rbp + 8256]
                        mov              qword ptr [rbp + 8208], rax
                        mov              rax, qword ptr [rbp + 8264]
                        mov              qword ptr [rbp + 8216], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn72:           .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn72]                      # fn
                        lea              rsi, [rbp + 8192]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8176], rax
                        mov              qword ptr [rbp + 8184], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n42_disjunction_af
                                                                                        jmp   n42_disjunction_as
n71_call_β:
                                                                                        jmp   n42_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:
                        mov              qword ptr [rbp + 8464], 2                      # result
                        mov              dword ptr [rbp + 8468], 4
                        mov              rax, qword ptr [rip + .Lx252_0]
                        mov              qword ptr [rbp + 8472], rax
                                                                                        jmp   n40_disjunction_as
n72_lit_string_β:
                                                                                        jmp   n40_disjunction_af
.Lx252_0:
                        .quad            .Lx252_0_s
.Lx252_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:
                        mov              qword ptr [rbp + 8432], 2                      # result
                        mov              dword ptr [rbp + 8436], 2
                        mov              rax, qword ptr [rip + .Lx253_0]
                        mov              qword ptr [rbp + 8440], rax
                                                                                        jmp   n74_lit_string_α
n73_lit_string_β:
                                                                                        jmp   n40_disjunction_af
.Lx253_0:
                        .quad            .Lx253_0_s
.Lx253_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:
                        mov              qword ptr [rbp + 8448], 2                      # result
                        mov              dword ptr [rbp + 8452], 6
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rbp + 8456], rax
                                                                                        jmp   n75_call_α
.Lx254_0:
                        .quad            .Lx254_0_s
.Lx254_0_s:
                        .string          "ababab"
#-----------------------------------------------------------------------------------------------------------------------
n75_call_α:
                        mov              rax, qword ptr [rbp + 8432]
                        mov              qword ptr [rbp + 8384], rax
                        mov              rax, qword ptr [rbp + 8440]
                        mov              qword ptr [rbp + 8392], rax
                        mov              rax, qword ptr [rbp + 8448]
                        mov              qword ptr [rbp + 8400], rax
                        mov              rax, qword ptr [rbp + 8456]
                        mov              qword ptr [rbp + 8408], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn76:           .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn76]                      # fn
                        lea              rsi, [rbp + 8384]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8368], rax
                        mov              qword ptr [rbp + 8376], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n40_disjunction_af
                                                                                        jmp   n40_disjunction_as
n75_call_β:
                                                                                        jmp   n40_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:
                        mov              qword ptr [rbp + 8688], 2                      # result
                        mov              dword ptr [rbp + 8692], 4
                        mov              rax, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rbp + 8696], rax
                                                                                        jmp   n37_disjunction_as
n76_lit_string_β:
                                                                                        jmp   n37_disjunction_af
.Lx256_0:
                        .quad            .Lx256_0_s
.Lx256_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_charset_α:
                        mov              qword ptr [rbp + 8656], 2                      # result
                        mov              dword ptr [rbp + 8660], -1
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rbp + 8664], rax
                                                                                        jmp   n78_lit_string_α
n77_lit_charset_β:
                                                                                        jmp   n37_disjunction_af
.Lx257_0:
                        .quad            .Lx257_0_s
.Lx257_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:
                        mov              qword ptr [rbp + 8672], 2                      # result
                        mov              dword ptr [rbp + 8676], 7
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rbp + 8680], rax
                                                                                        jmp   n79_call_builtin_icon_α
.Lx258_0:
                        .quad            .Lx258_0_s
.Lx258_0_s:
                        .string          "cababab"
#-----------------------------------------------------------------------------------------------------------------------
n79_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 8656]
                        mov              qword ptr [rbp + 8608], rax
                        mov              rax, qword ptr [rbp + 8664]
                        mov              qword ptr [rbp + 8616], rax
                        mov              rax, qword ptr [rbp + 8672]
                        mov              qword ptr [rbp + 8624], rax
                        mov              rax, qword ptr [rbp + 8680]
                        mov              qword ptr [rbp + 8632], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn80:           .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn80]                      # fn
                        lea              rsi, [rbp + 8608]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8592], rax
                        mov              qword ptr [rbp + 8600], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n37_disjunction_af
                                                                                        jmp   n37_disjunction_as
n79_call_builtin_icon_β:
                                                                                        jmp   n37_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:
                        mov              qword ptr [rbp + 8880], 2                      # result
                        mov              dword ptr [rbp + 8884], 4
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rbp + 8888], rax
                                                                                        jmp   n35_disjunction_as
n80_lit_string_β:
                                                                                        jmp   n35_disjunction_af
.Lx260_0:
                        .quad            .Lx260_0_s
.Lx260_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_charset_α:
                        mov              qword ptr [rbp + 8848], 2                      # result
                        mov              dword ptr [rbp + 8852], -1
                        mov              rax, qword ptr [rip + .Lx261_0]
                        mov              qword ptr [rbp + 8856], rax
                                                                                        jmp   n82_lit_string_α
n81_lit_charset_β:
                                                                                        jmp   n35_disjunction_af
.Lx261_0:
                        .quad            .Lx261_0_s
.Lx261_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:
                        mov              qword ptr [rbp + 8864], 2                      # result
                        mov              dword ptr [rbp + 8868], 6
                        mov              rax, qword ptr [rip + .Lx262_0]
                        mov              qword ptr [rbp + 8872], rax
                                                                                        jmp   n83_call_builtin_icon_α
.Lx262_0:
                        .quad            .Lx262_0_s
.Lx262_0_s:
                        .string          "ababab"
#-----------------------------------------------------------------------------------------------------------------------
n83_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 8848]
                        mov              qword ptr [rbp + 8800], rax
                        mov              rax, qword ptr [rbp + 8856]
                        mov              qword ptr [rbp + 8808], rax
                        mov              rax, qword ptr [rbp + 8864]
                        mov              qword ptr [rbp + 8816], rax
                        mov              rax, qword ptr [rbp + 8872]
                        mov              qword ptr [rbp + 8824], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn84:           .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn84]                      # fn
                        lea              rsi, [rbp + 8800]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8784], rax
                        mov              qword ptr [rbp + 8792], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n35_disjunction_af
                                                                                        jmp   n35_disjunction_as
n83_call_builtin_icon_β:
                                                                                        jmp   n35_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:
                        mov              qword ptr [rbp + 9072], 2                      # result
                        mov              dword ptr [rbp + 9076], 4
                        mov              rax, qword ptr [rip + .Lx264_0]
                        mov              qword ptr [rbp + 9080], rax
                                                                                        jmp   n33_disjunction_as
n84_lit_string_β:
                                                                                        jmp   n33_disjunction_af
.Lx264_0:
                        .quad            .Lx264_0_s
.Lx264_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_charset_α:
                        mov              qword ptr [rbp + 9040], 2                      # result
                        mov              dword ptr [rbp + 9044], -1
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rbp + 9048], rax
                                                                                        jmp   n86_lit_string_α
n85_lit_charset_β:
                                                                                        jmp   n33_disjunction_af
.Lx265_0:
                        .quad            .Lx265_0_s
.Lx265_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:
                        mov              qword ptr [rbp + 9056], 2                      # result
                        mov              dword ptr [rbp + 9060], 6
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rbp + 9064], rax
                                                                                        jmp   n87_call_builtin_icon_α
.Lx266_0:
                        .quad            .Lx266_0_s
.Lx266_0_s:
                        .string          "ababac"
#-----------------------------------------------------------------------------------------------------------------------
n87_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 9040]
                        mov              qword ptr [rbp + 8992], rax
                        mov              rax, qword ptr [rbp + 9048]
                        mov              qword ptr [rbp + 9000], rax
                        mov              rax, qword ptr [rbp + 9056]
                        mov              qword ptr [rbp + 9008], rax
                        mov              rax, qword ptr [rbp + 9064]
                        mov              qword ptr [rbp + 9016], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn88:           .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn88]                      # fn
                        lea              rsi, [rbp + 8992]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8976], rax
                        mov              qword ptr [rbp + 8984], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n33_disjunction_af
                                                                                        jmp   n33_disjunction_as
n87_call_builtin_icon_β:
                                                                                        jmp   n33_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:
                        mov              qword ptr [rbp + 9584], 2                      # result
                        mov              dword ptr [rbp + 9588], 4
                        mov              rax, qword ptr [rip + .Lx268_0]
                        mov              qword ptr [rbp + 9592], rax
                                                                                        jmp   n17_disjunction_as
n88_lit_string_β:
                                                                                        jmp   n17_disjunction_af
.Lx268_0:
                        .quad            .Lx268_0_s
.Lx268_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_charset_α:
                        mov              qword ptr [rbp + 9568], 2                      # result
                        mov              dword ptr [rbp + 9572], -1
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rbp + 9576], rax
                                                                                        jmp   n90_scan_any_α
n89_lit_charset_β:
                                                                                        jmp   n17_disjunction_af
.Lx269_0:
                        .quad            .Lx269_0_s
.Lx269_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n90_scan_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n17_disjunction_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx271_0]
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                                                                                        je    n17_disjunction_af
                        mov              qword ptr [rbp + 9552], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 9560], rax
                                                                                        jmp   n17_disjunction_as
n90_scan_any_β:
                                                                                        jmp   n17_disjunction_af
.Lx271_0:
                        .quad            .Lx271_0_s
.Lx271_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:
                        mov              qword ptr [rbp + 9872], 2                      # result
                        mov              dword ptr [rbp + 9876], 4
                        mov              rax, qword ptr [rip + .Lx272_0]
                        mov              qword ptr [rbp + 9880], rax
                                                                                        jmp   n12_disjunction_as
n91_lit_string_β:
                                                                                        jmp   n12_disjunction_af
.Lx272_0:
                        .quad            .Lx272_0_s
.Lx272_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_charset_α:
                        mov              qword ptr [rbp + 9840], 2                      # result
                        mov              dword ptr [rbp + 9844], -1
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rbp + 9848], rax
                                                                                        jmp   n93_lit_string_α
n92_lit_charset_β:
                                                                                        jmp   n12_disjunction_af
.Lx273_0:
                        .quad            .Lx273_0_s
.Lx273_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:
                        mov              qword ptr [rbp + 9856], 2                      # result
                        mov              dword ptr [rbp + 9860], 6
                        mov              rax, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rbp + 9864], rax
                                                                                        jmp   n94_call_builtin_icon_α
.Lx274_0:
                        .quad            .Lx274_0_s
.Lx274_0_s:
                        .string          "1234ab"
#-----------------------------------------------------------------------------------------------------------------------
n94_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 9840]
                        mov              qword ptr [rbp + 9792], rax
                        mov              rax, qword ptr [rbp + 9848]
                        mov              qword ptr [rbp + 9800], rax
                        mov              rax, qword ptr [rbp + 9856]
                        mov              qword ptr [rbp + 9808], rax
                        mov              rax, qword ptr [rbp + 9864]
                        mov              qword ptr [rbp + 9816], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn95:           .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn95]                      # fn
                        lea              rsi, [rbp + 9792]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 9776], rax
                        mov              qword ptr [rbp + 9784], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n12_disjunction_af
                                                                                        jmp   n12_disjunction_as
n94_call_builtin_icon_β:
                                                                                        jmp   n12_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:
                        mov              qword ptr [rbp + 10080], 2                     # result
                        mov              dword ptr [rbp + 10084], 4
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rbp + 10088], rax
                                                                                        jmp   n8_disjunction_as
n95_lit_string_β:
                                                                                        jmp   n8_disjunction_af
.Lx276_0:
                        .quad            .Lx276_0_s
.Lx276_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_charset_α:
                        mov              qword ptr [rbp + 10048], 2                     # result
                        mov              dword ptr [rbp + 10052], -1
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rbp + 10056], rax
                                                                                        jmp   n97_lit_string_α
n96_lit_charset_β:
                                                                                        jmp   n8_disjunction_af
.Lx277_0:
                        .quad            .Lx277_0_s
.Lx277_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:
                        mov              qword ptr [rbp + 10064], 2                     # result
                        mov              dword ptr [rbp + 10068], 6
                        mov              rax, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rbp + 10072], rax
                                                                                        jmp   n98_call_builtin_icon_α
.Lx278_0:
                        .quad            .Lx278_0_s
.Lx278_0_s:
                        .string          "1234ab"
#-----------------------------------------------------------------------------------------------------------------------
n98_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 10048]
                        mov              qword ptr [rbp + 10000], rax
                        mov              rax, qword ptr [rbp + 10056]
                        mov              qword ptr [rbp + 10008], rax
                        mov              rax, qword ptr [rbp + 10064]
                        mov              qword ptr [rbp + 10016], rax
                        mov              rax, qword ptr [rbp + 10072]
                        mov              qword ptr [rbp + 10024], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn99:           .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn99]                      # fn
                        lea              rsi, [rbp + 10000]                             # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 9984], rax
                        mov              qword ptr [rbp + 9992], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n8_disjunction_af
                                                                                        jmp   n8_disjunction_as
n98_call_builtin_icon_β:
                                                                                        jmp   n8_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:
                        mov              qword ptr [rbp + 10304], 2                     # result
                        mov              dword ptr [rbp + 10308], 4
                        mov              rax, qword ptr [rip + .Lx280_0]
                        mov              qword ptr [rbp + 10312], rax
                                                                                        jmp   n6_disjunction_as
n99_lit_string_β:
                                                                                        jmp   n6_disjunction_af
.Lx280_0:
                        .quad            .Lx280_0_s
.Lx280_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_charset_α:
                        mov              qword ptr [rbp + 10256], 2                     # result
                        mov              dword ptr [rbp + 10260], -1
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rbp + 10264], rax
                                                                                        jmp   n101_lit_string_α
n100_lit_charset_β:
                                                                                        jmp   n6_disjunction_af
.Lx281_0:
                        .quad            .Lx281_0_s
.Lx281_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:
                        mov              qword ptr [rbp + 10272], 2                     # result
                        mov              dword ptr [rbp + 10276], 6
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rbp + 10280], rax
                                                                                        jmp   n102_lit_integer_α
.Lx282_0:
                        .quad            .Lx282_0_s
.Lx282_0_s:
                        .string          "1234ab"
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_integer_α:
                        mov              qword ptr [rbp + 10288], 3                     # result
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rbp + 10296], rax
                                                                                        jmp   n103_call_builtin_icon_α
.Lx283_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n103_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 10256]
                        mov              qword ptr [rbp + 10192], rax
                        mov              rax, qword ptr [rbp + 10264]
                        mov              qword ptr [rbp + 10200], rax
                        mov              rax, qword ptr [rbp + 10272]
                        mov              qword ptr [rbp + 10208], rax
                        mov              rax, qword ptr [rbp + 10280]
                        mov              qword ptr [rbp + 10216], rax
                        mov              rax, qword ptr [rbp + 10288]
                        mov              qword ptr [rbp + 10224], rax
                        mov              rax, qword ptr [rbp + 10296]
                        mov              qword ptr [rbp + 10232], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn104:          .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn104]                     # fn
                        lea              rsi, [rbp + 10192]                             # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10176], rax
                        mov              qword ptr [rbp + 10184], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n6_disjunction_af
                                                                                        jmp   n6_disjunction_as
n103_call_builtin_icon_β:
                                                                                        jmp   n6_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:
                        mov              qword ptr [rbp + 10560], 2                     # result
                        mov              dword ptr [rbp + 10564], 4
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rbp + 10568], rax
                                                                                        jmp   n4_disjunction_as
n104_lit_string_β:
                                                                                        jmp   n4_disjunction_af
.Lx285_0:
                        .quad            .Lx285_0_s
.Lx285_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_charset_α:
                        mov              qword ptr [rbp + 10496], 2                     # result
                        mov              dword ptr [rbp + 10500], -1
                        mov              rax, qword ptr [rip + .Lx286_0]
                        mov              qword ptr [rbp + 10504], rax
                                                                                        jmp   n106_lit_string_α
n105_lit_charset_β:
                                                                                        jmp   n4_disjunction_af
.Lx286_0:
                        .quad            .Lx286_0_s
.Lx286_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:
                        mov              qword ptr [rbp + 10512], 2                     # result
                        mov              dword ptr [rbp + 10516], 6
                        mov              rax, qword ptr [rip + .Lx287_0]
                        mov              qword ptr [rbp + 10520], rax
                                                                                        jmp   n107_lit_integer_α
.Lx287_0:
                        .quad            .Lx287_0_s
.Lx287_0_s:
                        .string          "1234ab"
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_integer_α:
                        mov              qword ptr [rbp + 10528], 3                     # result
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rbp + 10536], rax
                                                                                        jmp   n108_lit_integer_α
.Lx288_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_integer_α:
                        mov              qword ptr [rbp + 10544], 3                     # result
                        mov              rax, qword ptr [rip + .Lx289_0]
                        mov              qword ptr [rbp + 10552], rax
                                                                                        jmp   n109_call_builtin_icon_α
.Lx289_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n109_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 10416], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 10424], rax
                        mov              rax, qword ptr [rbp + 10512]
                        mov              qword ptr [rbp + 10432], rax
                        mov              rax, qword ptr [rbp + 10520]
                        mov              qword ptr [rbp + 10440], rax
                        mov              rax, qword ptr [rbp + 10528]
                        mov              qword ptr [rbp + 10448], rax
                        mov              rax, qword ptr [rbp + 10536]
                        mov              qword ptr [rbp + 10456], rax
                        mov              rax, qword ptr [rbp + 10544]
                        mov              qword ptr [rbp + 10464], rax
                        mov              rax, qword ptr [rbp + 10552]
                        mov              qword ptr [rbp + 10472], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn110:          .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn110]                     # fn
                        lea              rsi, [rbp + 10416]                             # args
                        mov              edx, 4                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10400], rax
                        mov              qword ptr [rbp + 10408], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n4_disjunction_af
                                                                                        jmp   n4_disjunction_as
n109_call_builtin_icon_β:
                                                                                        jmp   n4_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:
                        mov              qword ptr [rbp + 10816], 2                     # result
                        mov              dword ptr [rbp + 10820], 4
                        mov              rax, qword ptr [rip + .Lx291_0]
                        mov              qword ptr [rbp + 10824], rax
                                                                                        jmp   n2_disjunction_as
n110_lit_string_β:
                                                                                        jmp   n2_disjunction_af
.Lx291_0:
                        .quad            .Lx291_0_s
.Lx291_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_charset_α:
                        mov              qword ptr [rbp + 10752], 2                     # result
                        mov              dword ptr [rbp + 10756], -1
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rbp + 10760], rax
                                                                                        jmp   n112_lit_string_α
n111_lit_charset_β:
                                                                                        jmp   n2_disjunction_af
.Lx292_0:
                        .quad            .Lx292_0_s
.Lx292_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_string_α:
                        mov              qword ptr [rbp + 10768], 2                     # result
                        mov              dword ptr [rbp + 10772], 6
                        mov              rax, qword ptr [rip + .Lx293_0]
                        mov              qword ptr [rbp + 10776], rax
                                                                                        jmp   n113_lit_integer_α
.Lx293_0:
                        .quad            .Lx293_0_s
.Lx293_0_s:
                        .string          "1234ab"
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_integer_α:
                        mov              qword ptr [rbp + 10784], 3                     # result
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rbp + 10792], rax
                                                                                        jmp   n114_lit_integer_α
.Lx294_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_integer_α:
                        mov              qword ptr [rbp + 10800], 3                     # result
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rbp + 10808], rax
                                                                                        jmp   n115_call_builtin_icon_α
.Lx295_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n115_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 10752]
                        mov              qword ptr [rbp + 10672], rax
                        mov              rax, qword ptr [rbp + 10760]
                        mov              qword ptr [rbp + 10680], rax
                        mov              rax, qword ptr [rbp + 10768]
                        mov              qword ptr [rbp + 10688], rax
                        mov              rax, qword ptr [rbp + 10776]
                        mov              qword ptr [rbp + 10696], rax
                        mov              rax, qword ptr [rbp + 10784]
                        mov              qword ptr [rbp + 10704], rax
                        mov              rax, qword ptr [rbp + 10792]
                        mov              qword ptr [rbp + 10712], rax
                        mov              rax, qword ptr [rbp + 10800]
                        mov              qword ptr [rbp + 10720], rax
                        mov              rax, qword ptr [rbp + 10808]
                        mov              qword ptr [rbp + 10728], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn116:          .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn116]                     # fn
                        lea              rsi, [rbp + 10672]                             # args
                        mov              edx, 4                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10656], rax
                        mov              qword ptr [rbp + 10664], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n2_disjunction_af
                                                                                        jmp   n2_disjunction_as
n115_call_builtin_icon_β:
                                                                                        jmp   n2_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:
                        mov              qword ptr [rbp + 11072], 2                     # result
                        mov              dword ptr [rbp + 11076], 4
                        mov              rax, qword ptr [rip + .Lx297_0]
                        mov              qword ptr [rbp + 11080], rax
                                                                                        jmp   n0_disjunction_as
n116_lit_string_β:
                                                                                        jmp   n0_disjunction_af
.Lx297_0:
                        .quad            .Lx297_0_s
.Lx297_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_charset_α:
                        mov              qword ptr [rbp + 11008], 2                     # result
                        mov              dword ptr [rbp + 11012], -1
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rbp + 11016], rax
                                                                                        jmp   n118_lit_string_α
n117_lit_charset_β:
                                                                                        jmp   n0_disjunction_af
.Lx298_0:
                        .quad            .Lx298_0_s
.Lx298_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:
                        mov              qword ptr [rbp + 11024], 2                     # result
                        mov              dword ptr [rbp + 11028], 6
                        mov              rax, qword ptr [rip + .Lx299_0]
                        mov              qword ptr [rbp + 11032], rax
                                                                                        jmp   n119_lit_integer_α
.Lx299_0:
                        .quad            .Lx299_0_s
.Lx299_0_s:
                        .string          "1234ab"
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_integer_α:
                        mov              qword ptr [rbp + 11040], 3                     # result
                        mov              rax, qword ptr [rip + .Lx300_0]
                        mov              qword ptr [rbp + 11048], rax
                                                                                        jmp   n120_lit_integer_α
.Lx300_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_integer_α:
                        mov              qword ptr [rbp + 11056], 3                     # result
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rbp + 11064], rax
                                                                                        jmp   n121_call_builtin_icon_α
.Lx301_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n121_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 11008]
                        mov              qword ptr [rbp + 10928], rax
                        mov              rax, qword ptr [rbp + 11016]
                        mov              qword ptr [rbp + 10936], rax
                        mov              rax, qword ptr [rbp + 11024]
                        mov              qword ptr [rbp + 10944], rax
                        mov              rax, qword ptr [rbp + 11032]
                        mov              qword ptr [rbp + 10952], rax
                        mov              rax, qword ptr [rbp + 11040]
                        mov              qword ptr [rbp + 10960], rax
                        mov              rax, qword ptr [rbp + 11048]
                        mov              qword ptr [rbp + 10968], rax
                        mov              rax, qword ptr [rbp + 11056]
                        mov              qword ptr [rbp + 10976], rax
                        mov              rax, qword ptr [rbp + 11064]
                        mov              qword ptr [rbp + 10984], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn122:          .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn122]                     # fn
                        lea              rsi, [rbp + 10928]                             # args
                        mov              edx, 4                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10912], rax
                        mov              qword ptr [rbp + 10920], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n0_disjunction_af
                                                                                        jmp   n0_disjunction_as
n121_call_builtin_icon_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n122_scan_α:
                        lea              rdi, [rbp + 9632]                              # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 9632]
                        mov              r14, qword ptr [rbp + 9640]
                        mov              r15, qword ptr [rbp + 9648]
                                                                                        jmp   n15_lit_string_α
n122_scan_β:
                                                                                        jmp   n15_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n123_scan_α:
                        lea              rdi, [rbp + 9408]                              # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 9408]
                        mov              r14, qword ptr [rbp + 9416]
                        mov              r15, qword ptr [rbp + 9424]
                                                                                        jmp   n20_lit_string_α
n123_scan_β:
                                                                                        jmp   n20_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n124_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn308:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn308]                         # fn
                        lea              rsi, [rbp + 7376]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7360], rax
                        mov              qword ptr [rbp + 7368], rdx
                        cmp              eax, 104
                                                                                        je    n125_disjunction_α
                                                                                        jmp   n125_disjunction_α
n124_call_builtin_icon_β:
                                                                                        jmp   n125_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n125_disjunction_α:
                        mov              qword ptr [rbp + 7120], 0
                        mov              qword ptr [rbp + 7128], 0
                        mov              dword ptr [rbp + 7136], 0
                                                                                        jmp   n128_lit_charset_α
n125_disjunction_as:
                        mov              eax, dword ptr [rbp + 7136]
                        cmp              eax, 0
                                                                                        jne   .Lx310_0
                        mov              rax, qword ptr [rbp + 7152]
                        mov              qword ptr [rbp + 7120], rax
                        mov              rax, qword ptr [rbp + 7160]
                        mov              qword ptr [rbp + 7128], rax
                                                                                        jmp   n126_call_builtin_icon_α
.Lx310_0:
                        cmp              eax, 1
                                                                                        jne   .Lx310_1
                        mov              rax, qword ptr [rbp + 7344]
                        mov              qword ptr [rbp + 7120], rax
                        mov              rax, qword ptr [rbp + 7352]
                        mov              qword ptr [rbp + 7128], rax
                                                                                        jmp   n126_call_builtin_icon_α
.Lx310_1:
                                                                                        jmp   n126_call_builtin_icon_α
n125_disjunction_β:
                        mov              eax, dword ptr [rbp + 7136]
                        cmp              eax, 0
                                                                                        je    n130_call_builtin_gen_β
                                                                                        jmp   n125_disjunction_af
n125_disjunction_af:
                        add              dword ptr [rbp + 7136], 1
                        mov              eax, dword ptr [rbp + 7136]
                        cmp              eax, 1
                                                                                        je    n127_lit_string_α
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n126_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7120]
                        mov              qword ptr [rbp + 7088], rax
                        mov              rax, qword ptr [rbp + 7128]
                        mov              qword ptr [rbp + 7096], rax
                        .section         .rodata
.Lrkfn312:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn312]                         # fn
                        lea              rsi, [rbp + 7088]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7072], rax
                        mov              qword ptr [rbp + 7080], rdx
                        cmp              eax, 104
                                                                                        je    n125_disjunction_β
                                                                                        jmp   n125_disjunction_β
n126_call_builtin_icon_β:
                                                                                        jmp   n125_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:
                        mov              qword ptr [rbp + 7344], 2                      # result
                        mov              dword ptr [rbp + 7348], 4
                        mov              rax, qword ptr [rip + .Lx313_0]
                        mov              qword ptr [rbp + 7352], rax
                                                                                        jmp   n125_disjunction_as
n127_lit_string_β:
                                                                                        jmp   n125_disjunction_af
.Lx313_0:
                        .quad            .Lx313_0_s
.Lx313_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_charset_α:
                        mov              qword ptr [rbp + 7216], 2                      # result
                        mov              dword ptr [rbp + 7220], -1
                        mov              rax, qword ptr [rip + .Lx314_0]
                        mov              qword ptr [rbp + 7224], rax
                                                                                        jmp   n129_disjunction_α
n128_lit_charset_β:
                                                                                        jmp   n125_disjunction_af
.Lx314_0:
                        .quad            .Lx314_0_s
.Lx314_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n129_disjunction_α:
                        mov              qword ptr [rbp + 7232], 0
                        mov              qword ptr [rbp + 7240], 0
                        mov              dword ptr [rbp + 7248], 0
                                                                                        jmp   n135_lit_string_α
n129_disjunction_as:
                        mov              eax, dword ptr [rbp + 7248]
                        cmp              eax, 0
                                                                                        jne   .Lx316_0
                        mov              rax, qword ptr [rbp + 7264]
                        mov              qword ptr [rbp + 7232], rax
                        mov              rax, qword ptr [rbp + 7272]
                        mov              qword ptr [rbp + 7240], rax
                                                                                        jmp   n130_call_builtin_gen_α
.Lx316_0:
                        cmp              eax, 1
                                                                                        jne   .Lx316_1
                        mov              rax, qword ptr [rbp + 7280]
                        mov              qword ptr [rbp + 7232], rax
                        mov              rax, qword ptr [rbp + 7288]
                        mov              qword ptr [rbp + 7240], rax
                                                                                        jmp   n130_call_builtin_gen_α
.Lx316_1:
                        cmp              eax, 2
                                                                                        jne   .Lx316_2
                        mov              rax, qword ptr [rbp + 7296]
                        mov              qword ptr [rbp + 7232], rax
                        mov              rax, qword ptr [rbp + 7304]
                        mov              qword ptr [rbp + 7240], rax
                                                                                        jmp   n130_call_builtin_gen_α
.Lx316_2:
                        cmp              eax, 3
                                                                                        jne   .Lx316_3
                        mov              rax, qword ptr [rbp + 7312]
                        mov              qword ptr [rbp + 7232], rax
                        mov              rax, qword ptr [rbp + 7320]
                        mov              qword ptr [rbp + 7240], rax
                                                                                        jmp   n130_call_builtin_gen_α
.Lx316_3:
                        cmp              eax, 4
                                                                                        jne   .Lx316_4
                        mov              rax, qword ptr [rbp + 7328]
                        mov              qword ptr [rbp + 7232], rax
                        mov              rax, qword ptr [rbp + 7336]
                        mov              qword ptr [rbp + 7240], rax
                                                                                        jmp   n130_call_builtin_gen_α
.Lx316_4:
                                                                                        jmp   n130_call_builtin_gen_α
n129_disjunction_β:
                        mov              eax, dword ptr [rbp + 7248]
                        cmp              eax, 0
                                                                                        je    n129_disjunction_af
                        cmp              eax, 1
                                                                                        je    n129_disjunction_af
                        cmp              eax, 2
                                                                                        je    n129_disjunction_af
                        cmp              eax, 3
                                                                                        je    n129_disjunction_af
                                                                                        jmp   n129_disjunction_af
n129_disjunction_af:
                        add              dword ptr [rbp + 7248], 1
                        mov              eax, dword ptr [rbp + 7248]
                        cmp              eax, 1
                                                                                        je    n134_lit_string_α
                        cmp              eax, 2
                                                                                        je    n133_lit_string_α
                        cmp              eax, 3
                                                                                        je    n132_lit_string_α
                        cmp              eax, 4
                                                                                        je    n131_lit_string_α
                                                                                        jmp   n125_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n130_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 7216]
                        mov              qword ptr [rbp + 7168], rax
                        mov              rax, qword ptr [rbp + 7224]
                        mov              qword ptr [rbp + 7176], rax
                        mov              rax, qword ptr [rbp + 7232]
                        mov              qword ptr [rbp + 7184], rax
                        mov              rax, qword ptr [rbp + 7240]
                        mov              qword ptr [rbp + 7192], rax
                        mov              qword ptr [rbp + 7200], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx317_60:
                        .section         .rodata
.Lbynamegenfn131:       .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn131]                  # fn
                        lea              rsi, [rbp + 7168]                              # args
                        mov              edx, 2                                         # nargs
                        lea              rcx, [rbp + 7200]                              # resume
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 7152], rax
                        mov              qword ptr [rbp + 7160], rdx
                        cmp              eax, 104
                                                                                        je    n129_disjunction_β
                                                                                        jmp   n125_disjunction_as
n130_call_builtin_gen_β:
                                                                                        jmp   .Lx317_60
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:
                        mov              qword ptr [rbp + 7328], 2                      # result
                        mov              dword ptr [rbp + 7332], 0
                        mov              rax, qword ptr [rip + .Lx318_0]
                        mov              qword ptr [rbp + 7336], rax
                                                                                        jmp   n129_disjunction_as
n131_lit_string_β:
                                                                                        jmp   n129_disjunction_af
.Lx318_0:
                        .quad            .Lx318_0_s
.Lx318_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:
                        mov              qword ptr [rbp + 7312], 2                      # result
                        mov              dword ptr [rbp + 7316], 1
                        mov              rax, qword ptr [rip + .Lx319_0]
                        mov              qword ptr [rbp + 7320], rax
                                                                                        jmp   n129_disjunction_as
n132_lit_string_β:
                                                                                        jmp   n129_disjunction_af
.Lx319_0:
                        .quad            .Lx319_0_s
.Lx319_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_string_α:
                        mov              qword ptr [rbp + 7296], 2                      # result
                        mov              dword ptr [rbp + 7300], 2
                        mov              rax, qword ptr [rip + .Lx320_0]
                        mov              qword ptr [rbp + 7304], rax
                                                                                        jmp   n129_disjunction_as
n133_lit_string_β:
                                                                                        jmp   n129_disjunction_af
.Lx320_0:
                        .quad            .Lx320_0_s
.Lx320_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_string_α:
                        mov              qword ptr [rbp + 7280], 2                      # result
                        mov              dword ptr [rbp + 7284], 5
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rbp + 7288], rax
                                                                                        jmp   n129_disjunction_as
n134_lit_string_β:
                                                                                        jmp   n129_disjunction_af
.Lx321_0:
                        .quad            .Lx321_0_s
.Lx321_0_s:
                        .string          "cbabc"
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:
                        mov              qword ptr [rbp + 7264], 2                      # result
                        mov              dword ptr [rbp + 7268], 6
                        mov              rax, qword ptr [rip + .Lx322_0]
                        mov              qword ptr [rbp + 7272], rax
                                                                                        jmp   n129_disjunction_as
n135_lit_string_β:
                                                                                        jmp   n129_disjunction_af
.Lx322_0:
                        .quad            .Lx322_0_s
.Lx322_0_s:
                        .string          "abccab"
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
